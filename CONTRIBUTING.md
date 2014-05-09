If you want to edit the task view:

Requirements:

* R (to create the `.html` from the `.ctv` file) [Installation](http://cran.r-project.org/)
* `pandoc`: [Installation](http://johnmacfarlane.net/pandoc/installing.html)
* The JSON conversion in the Makefile isn't done on executing `make`, but after `make` you can do `make json` to get that done. Requires `xml2json` CLI tool. [Install instructions](https://github.com/buglabs/node-xml2json#installation).

If you don't want to or can't install these things, then just edit the `WebTechnologies.ctv` file, and submit a pull request.

1. Fork this repo
2. Edit the [WebTechnologies.ctv](https://github.com/ropensci/webservices/blob/master/WebTechnologies.ctv) file. If the package you are adding is on CRAN, add a new `<li>` element with your package name within a `<pkg>` tag. If it's not on CRAN, put it within an `<a>` tag, and include a link to the repo with `href`. Whether on CRAN or not, add the package to the list of packages at the bottom. If on CRAN, add to the list of packages within the `<packagelist>` tag. If not on CRAN, add to the list of packages within the `<links>` tag.
3. Check to make sure the `.ctv` file is correct, by doing in R

    ```coffee
    setwd("/path/to/webservices/")
    install.packages("ctv")
    library("ctv")
    check_ctv_packages("WebTechnologies.ctv")
    ```

    And you should get

    ```coffee
    $`Packages in <info> but not in <packagelist>`
    character(0)

    $`Packages in <packagelist> but not in <info>`
    character(0)

    $`Packages in <packagelist> but not in repos`
    character(0)
    ```

    If you don't, follow the error messages to fix. If you can't figure out how to fix, just send the PR anyway, and the maintainer will fix.

4. On the command line type `make` and press enter, which creates the `WebTechnologies.html`, `README.md`, and `index.html` files. (Optionally): if you installed `xml2json`, execute `make json`
5. Push back up to your account, then send a pull request to `ropensci/webservices`

If you just want to submit an issue, then go to the [issues page](https://github.com/ropensci/webservices/issues?state=open) and do that.

Thanks for your contribution!
