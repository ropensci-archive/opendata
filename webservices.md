# CRAN Task View: Web services

* Maintainer:	Scott Chamberlain
* Contact:	scott at ropensci.org
* Version:	2013-09-09

## Introduction

This Task View contains information about using R to obtain and parse data from the web.

The base version of R does not ship with many tools for interacting with the web. Thankfully, there are an increasingly large number of tools for interacting with the web. XXXX

If you have any comments or suggestions for additions or improvements, then please contact the maintainer of the package, not me.

A list of available packages and functions is presented below, grouped by the type of activity.

## curl and http in R

* [RCurl][RCurl]: a low level wrapper around curl for R. 
* [httr][httr]: is a light wrapper around RCurl that makes many things easier, but still allows you to access the lower level functionality of RCurl. 

## Parsing data from the web

* txt, csv, etc.: you can use read.csv() after acquiring the csv file from the web via e.g., getURL() from RCurl
* xml: the package [XML][XML] by Duncan Temple-Lang 
* json: [RJSONIO][RJSONIO] by Duncan Temple-Lang XXX. Another package, [rjson][rjson], does many of the same tasks which RJSONIO does.

## stuff

* [yhatr][yhatr]: yhatr lets you deploy, maintain, and invoke models via the Yhat REST API.
* asdf

## Ecological and evolutionary biology data

* [rvertnet][rvertnet]: A wrapper to the VertNet collections database API.
* [rbison][rbison]: X
* [rgbif][rgbif]: X
* [rWBclimate][rWBclimate]: X
* [rfishbase][rfishbase]: X
* [rtreebase][rtreebase]: X
* [rnbn][rnbn]: X
* [taxize][taxize]: X
* [rsnps][rsnps]: X

## Literature and metadata

* [rplos][rplos]: A programmatic interface to the Web Service methods provided by the Public Library of Science journals for search.
* rmetadata

## CRAN packages:

* rfishbase
* treebase
* rdryad
* rgbif
* rplos
* RMendeley
* govdat
* OAIHarvester
* rdatamarket
* googlePublicData
* RWeather
* NCBI2
* RNCBIAxis2Libs
* RNCBIEUtilsLibs
* RNCBI
* ralastfm
* osmar
* metadata
* factualR
* rpubchem
* RTDAmeritrade
* sos4R
* SynergizeR
* twitteR

## Related links:

XXXXXXX

[RCurl]: http://cran.r-project.org/web/packages/RCurl/index.html
[httr]: http://cran.r-project.org/web/packages/httr/index.html
[XML]: http://cran.r-project.org/web/packages/XML/index.html
[RJSONIO]: http://cran.r-project.org/web/packages/RJSONIO/index.html
[rjson]: http://cran.r-project.org/web/packages/rjson/index.html
[yhatr]: http://cran.r-project.org/web/packages/yhatr/index.html
[rvertnet]: http://cran.r-project.org/web/packages/rvertnet/index.html
[taxize]: http://cran.r-project.org/web/packages/taxize/index.html
[rplos]: http://cran.r-project.org/web/packages/rplos/index.html
[rgbif]: http://cran.r-project.org/web/packages/rgbif/index.html
[rfigshare]: http://cran.r-project.org/web/packages/rfigshare/index.html