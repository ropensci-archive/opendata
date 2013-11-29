all:
	Rscript -e 'library(ctv); ctv2html("WebTechnologies.ctv")'
	mv WebTechnologies.html doc.html
	sed 's@../packages/@http://cran.r-project.org/web/packages/@g' doc.html > doc2.html
	sed 's@<strong>@<h3>@g' doc2.html > doc3.html
	sed 's@</strong>@</h3>@g' doc3.html > doc4.html
	pandoc doc4.html -o README.md
	pandoc README.md -o index.html
	rm doc.html doc2.html doc3.html doc4.html