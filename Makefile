all:
	Rscript -e 'library(ctv); ctv2html("WebTechnologies.ctv")'
	mv WebTechnologies.html doc.html
	sed 's@../packages/@http://cran.r-project.org/web/packages/@g' doc.html > doc2.html
	pandoc doc2.html -o README.md
	pandoc README.md -o index.html
	rm doc.html doc2.html