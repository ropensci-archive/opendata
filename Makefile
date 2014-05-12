all: r sed pandoc1 sedtoc pandoc2 cleanup

getdumber:
	sed 's@<li class="removeme">.\+<\/li>@ @g' WebTechnologies.ctv > WebTechnologiesDumber.ctv

r:
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv"); library("ctv"); ctv2html("WebTechnologies.ctv")'

sed:
	mv WebTechnologies.html doc.html
	sed 's@../packages/@http://cran.r-project.org/web/packages/@g' doc.html > doc2.html
	sed 's@<strong>@<h3>@g' doc2.html > doc3.html
	sed 's@</strong>@</h3>@g' doc3.html > doc4.html

pandoc1:
	pandoc doc4.html -o README_prep.md

sedtoc:
	sed 's@tochref@<a href@g' README_prep.md > README2.md
	sed 's@endhref@>#</a>@g' README2.md > README3.md
	sed 's@lb-@#@g' README3.md > README.md

pandoc2:
	pandoc README.md -o index.html

cleanup:
	rm doc.html doc2.html doc3.html doc4.html README_prep.md README2.md README3.md

json:
	xml2json < WebTechnologies.ctv > webservices.json
