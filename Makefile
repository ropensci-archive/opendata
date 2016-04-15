all: README.md

OpenData.ctv: opendata.md buildxml.R
	pandoc -w html -o OpenData.ctv opendata.md
	Rscript --vanilla -e 'source("buildxml.R")'

OpenData.html: OpenData.ctv
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv", repos = "http://cran.rstudio.com/"); ctv::ctv2html("OpenData.ctv")'

README.md: OpenData.html
	pandoc -w markdown_github -o README.md OpenData.html
	sed -i.tmp -e 's|( \[|(\[|g' README.md
	sed -i.tmp -e 's| : |: |g' README.md
	sed -i.tmp -e 's|../packages/|http://cran.rstudio.com/web/packages/|g' README.md
	sed -i.tmp -e '4s/.*/| | |\n|---|---|/' README.md
	sed -i.tmp -e '4i*Do not edit this README by hand. See \[CONTRIBUTING.md\]\(CONTRIBUTING.md\).*\n' README.md
	rm *.tmp

check:
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv", repos = "http://cran.rstudio.com/"); print(ctv::check_ctv_packages("OpenData.ctv", repos = "http://cran.rstudio.com/"))'

README.html: README.md
	pandoc --from=markdown_github -o README.html README.md
