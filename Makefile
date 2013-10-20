all:
	Rscript -e 'library(ctv); ctv2html("WebTechnologies.ctv")'
	pandoc WebTechnologies.html -o README.md
	pandoc README.md -o index.html