all: README.md

OpenData.ctv: opendata.md buildxml.R $(wildcard archived_on_cran.txt)
	touch archived_on_cran.txt
	grep -v -f archived_on_cran.txt opendata.md | grep -v -e "[nN]ot on CRAN"  -e "[aA]rchived on CRAN" > tmp.md
	pandoc -w html -o OpenData.ctv tmp.md
	Rscript --vanilla -e 'source("buildxml.R")'
	rm tmp.md

FullOpenData.html: opendata.md buildxml.R OpenData.ctv
	mv OpenData.ctv OpenData.bak
	pandoc -w html -o OpenData.ctv opendata.md
	Rscript --vanilla -e 'source("buildxml.R")'
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv", repos = "http://cran.rstudio.com/"); ctv::ctv2html("OpenData.ctv")'
	mv OpenData.bak OpenData.ctv
	mv OpenData.html FullOpenData.html

OpenData.html: buildxml.R OpenData.ctv
	Rscript --vanilla -e 'source("buildxml.R")'
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv", repos = "http://cran.rstudio.com/"); ctv::ctv2html("OpenData.ctv")'

README.md: opendata.md FullOpenData.html
	pandoc -w markdown_github -o README.md FullOpenData.html
	sed -i.tmp -e 's|( \[|(\[|g' README.md
	sed -i.tmp -e 's| : |: |g' README.md
	sed -i.tmp -e 's|../packages/|http://cran.rstudio.com/web/packages/|g' README.md
	sed -i.tmp -e '4s/.*/| | |\n|---|---|/' README.md
	sed -i.tmp -e '4i*Do not edit this README by hand. See \[CONTRIBUTING.md\]\(CONTRIBUTING.md\).*\n' README.md
	rm *.tmp

check: OpenData.ctv
	-rm archived_on_cran.txt
	Rscript --vanilla -e 'if(!require("ctv")) install.packages("ctv", repos = "http://cran.rstudio.com/"); a <- ctv::check_ctv_packages("OpenData.ctv", repos = "http://cran.rstudio.com/"); print(a); if(length(a[[3]]) > 0){cat(a[[3]], sep="\n", file="archived_on_cran.txt")}'
	echo "any archived files stored in 'archived_on_cran.txt'); re-run 'make OpenData.ctv' to remove them"

checkurls:
	Rscript --vanilla -e 'source("checkurls.R")'

README.html: README.md
	pandoc --from=markdown_github -o README.html README.md
