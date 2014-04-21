all: dorstuff sed pandoc cleanup

getdumber:
	sed 's@<li class="removeme">.\+<\/li>@ @g' WebTechnologies.ctv > WebTechnologiesDumber.ctv

dorstuff:	
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv"); library("ctv"); ctv2html("WebTechnologies.ctv")'

sed:
	mv WebTechnologies.html doc.html
	sed 's@../packages/@http://cran.r-project.org/web/packages/@g' doc.html > doc2.html
	sed 's@<strong>@<h3>@g' doc2.html > doc3.html
	sed 's@</strong>@</h3>@g' doc3.html > doc4.html

pandoc:
	pandoc doc4.html -o README.md
	pandoc README.md -o index.html

cleanup:
	rm doc.html doc2.html doc3.html doc4.html

makejson:
	xml2json < WebTechnologies.ctv > webservices.json