If you want to edit the task view:

Requirements:

* R (to create the `.html` from the `.ctv` file) [Installation](http://cran.r-project.org/)
* `pandoc`: [Installation](http://johnmacfarlane.net/pandoc/installing.html)
* The JSON conversion in the Makefile isn't done on executing `make`, but after `make` you can do `make json` to get that done. Requires `xml2json` CLI tool. [Install instructions](https://github.com/buglabs/node-xml2json#installation).

If you don't want to or can't install these things, then just edit the `WebTechnologies.ctv` file, and submit a pull request.

1. Fork this repo
2. Edit the [WebTechnologies.ctv](https://github.com/ropensci/webservices/blob/master/WebTechnologies.ctv) file
3. On the command line type `make` and press enter, which creates the `WebTechnologies.html`, `README.md`, `index.html`, and `webservices.json` files.
4. Push back up to your account, then send a pull request to `ropensci/webservices`

If you just want to submit an issue, then go to the [issues page](https://github.com/ropensci/webservices/issues?state=open) and do that.

Thanks for your contribution!
