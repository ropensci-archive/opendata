# CRAN Task View: Working with data on the web

* Maintainer: Scott Chamberlain, Karthik Ram, Christopher Gandrud
* Contact:	scott at ropensci.org
* Version:	2013-09-13

## Introduction

This Task View contains information about using R to obtain and parse data from the web.

The base version of R does not ship with many tools for interacting with the web. Thankfully, there are an increasingly large number of tools for interacting with the web.

If you have any comments or suggestions for additions or improvements for this taskview, go to Github and [submit an issue](https://github.com/ropensci/webservices/issues) or make some changes and [submit a pull request](https://github.com/ropensci/webservices/pulls). If you have an issue with one of the packages, please contact the maintainer of the package.

A list of available packages and functions is presented below, grouped by the type of activity.

## Tools for working with the web from R

### curl/http/ftp

* [RCurl][RCurl]: a low level curl wrapper for R. 
* [httr][httr]: is a light wrapper around RCurl that makes many things easier, but still allows you to access the lower level functionality of RCurl. 

httr has convenient http verbs: `GET()`, `POST()`, `PUT()`, `DELETE()`, `PATCH()`, `HEAD()`, `BROWSE()`. These wrap functions in RCurl, making them more convenient to use, though less configurable than counterparts in RCurl. Though note that you can pass in additional Curl options to the `config` parameter in http calls. The equivalent of httr's `GET()` in RCurl is `getForm()`. Likewise, the equivalent of httr's `POST()` in RCurl is `postForm()`. 

[http status codes](http://en.wikipedia.org/wiki/Http_status_codes) are helpful for debugging http calls. httr package makes this easier using, for example, `stop_for_status()` gets the http status code from a response object, and stops the function if the call was not successful. 

### Authentication

Using web resources can require authentication, either via API keys, OAuth, username:password combination, or via other means. Additionally, sometimes web resources require that authentication be in the header of an http call, which requires a little bit of extra work.  API keys and username:password combos can be combined within a url for a call to a web resource, or can be specified via commands in RCurl or httr. OAuth is the most complicated authentication process, and can be done using RCurl or httr. See the demos within httr, where there are 6 demos, three for OAuth 1.0 (linkedin, twitter, vimeo) and three for OAuth 2.0 (facebook, github, google).

### Web frameworks

RStudio recently created [Shiny][shiny], which combines R, html, css, and javascript to make web applications. Related tools are available, including [openCPU][opencpu] and [Rook][rook]. However, Shiny is the most promising of these.

### Parsing data from the web

* txt, csv, etc.: you can use `read.csv()` after acquiring the csv file from the web via e.g., `getURL()` from RCurl. The [repmis][repmis] package contains a `source_data` command to simplify this process, while also assigning SHA-1 hashes to uniquely identify file versions.
* xml/html: the package [XML][XML] by Duncan Temple-Lang contains functions for parsing xml and html, and supports [xpath][xpath] for searching xml (think regex for strings).
* json/json-ld: [RJSONIO][RJSONIO] by Duncan Temple-Lang. Another package, [rjson][rjson], does many of the same tasks which RJSONIO does.
* custom formats: Some web APIs provide custom data formats (e.g., X), which are usually modified xml or json, and handled by XML and RJSONIO, respectively.

### Javascript

Javascript provides many libraries to make interactive visualizations for the browser, either locally or on the web. An increasing number of R packages are providing the ability to make visualizations using various javascript libraries. Some of them include:

* [r2d3](https://github.com/hadley/r2d3) Convert ggplto2 graphics code to d3 code (not on CRAN)
* [gg2v](https://github.com/hadley/gg2v) Render ggplot2 graphics using vega (not on CRAN)
* [rCharts](https://github.com/ramnathv/rCharts) Interactive javascript charts from R (not on CRAN)
* [rVega](https://github.com/metagraf/rVega) An R wrapper for Vega (not on CRAN)
* [clickme](https://github.com/nachocab/clickme) An R package to create interactive plots (not on CRAN)

## Data sources on the web available from R

### Ecological and evolutionary biology data

* [rvertnet][rvertnet]: A wrapper to the VertNet collections database API.
* [rgbif][rgbif]: Interface to the Global Biodiversity Information Facility API methods
* [rfishbase][rfishbase]: A programmatic interface to fishbase.org.
* [rtreebase][rtreebase]: An R package for discovery, access and manipulation of online phylogenies
* [taxize][taxize]: Taxonomic information from around the web
* [dismo][dismo]: Species distribution modeling, with wrappers to some APIs. [vignette](http://cran.r-project.org/web/packages/dismo/vignettes/brt.pdf)
* [rnbn][rnbn]: Access to the UK National Biodiversity Network data (not on CRAN)
* [rWBclimate][rwbclimate]: R interface for the World Bank climate data (not on CRAN)
* [rbison][rbison]: Wrapper to the USGS Bison API  (not on CRAN)
* [neotoma][neotoma]: Programmatic R interface to the Neotoma Paleoecological Database (not on CRAN)
* [rnoaa][rnoaa]: R interface to NOAA Climate data API (not on CRAN)
* [rnpn][rnpn]: Wrapper to the National Phenology Network database API
* [rfisheries][rfisheries]: Package for interacting with fisheries databases at openfisheries.org [more](http://openfisheries.org/)
* [rebird][rebird]: A programmatic interface to the eBird database

### Genes/genomes

* [cgdsr][cgdsr]: R-Based API for accessing the MSKCC Cancer Genomics Data Server (CGDS). [more](http://www.cbioportal.org/public-portal)
* [rsnps][rsnps]: Wrapper to the openSNP data API and the Broad Institute SNP Annotation and Proxy Search. 
* [rentrez][rentrez]: Talk with NCBI entrez using R

### Earth Science Data

* [RNCEP][RNCEP]: Global weather and climate data at your fingertips. [more](https://sites.google.com/site/michaelukemp/rncep)
* [crn][crn]: Downloads and Builds datasets for Climate Reference Network. [more](http://stevemosher.wordpress.com/)
* [BerkeleyEarth][BerkeleyEarth]: Data Input for Berkeley Earth Surface Temperature. [more](http://stevemosher.wordpress.com/)
* [waterData][waterData]: An R Package for Retrieval, Analysis, and Anomaly Calculation of Daily Hydrologic Time Series Data. [more](http://pubs.usgs.gov/of/2012/1168/), [vignette](  http://cran.r-project.org/web/packages/waterData/vignettes/vignette.pdf)

### Economics Data

* [WDI][WDI]: Search, extract and format data from the World Bank's World Development Indicators. [more](https://sites.google.com/site/michaelukemp/rncep)
* [FAOSTAT][FAOSTAT]: The package hosts a list of functions to download, manipulate, construct and aggregate agricultural statistics provided by the FAOSTAT databasthe Food and Agricultural Organization of the United Nations [more](http://cran.r-project.org/web/packages/FAOSTAT/index.html), [vignette](http://cran.r-project.org/web/packages/FAOSTAT/vignettes/FAOSTAT.pdf)

### Chemistry

* [rpubchem][rpubchem]: Interface to the PubChem Collection.

### Agriculture

* [cimis][cimis]: R package for retrieving data from CIMIS.

### Literature, metadata, and altmetrics

* [rplos][rplos]: A programmatic interface to the Web Service methods provided by the Public Library of Science journals for search.
* [rbhl][rbhl]: R interface to the Biodiversity Heritage Library (BHL) API (not on CRAN)
* [rmetadata][rmetadata]: Get scholarly metadata from around the web (not on CRAN)
* [RMendeley][RMendeley]: Implementation of the Mendeley API in R
* [rentrez][rentrez]: Talk with NCBI entrez using R
* [rorcid][rorcid]: A programmatic interface the Orcid.org API (not on CRAN)
* [rpubmed][rpubmed]: Tools for extracting and processing Pubmed and Pubmed Central records (not on CRAN)
* [rAltmetic][rAltmetic]: Query and visualize metrics from Altmetric.com (not on CRAN)
* [rImpactStory][rImpactStory]: Programmatic interface to the ImpactStory API
* [alm][alm]: R wrapper to the almetrics API platform developed by PLoS (not on CRAN)

### Marketing

* [anametrix][anametrix]: Bidirectional connector to Anametrix API

### Data depots

* [rfigshare][rfigshare]: Programmatic interface for Figshare [more](http://figshare.com/)
* [factualR][factualR]: Thin wrapper for the Factual.com server API. [more](http://www.exmachinatech.net/01/factualr/)
* [dataone][dataone]: A package that provides read/write access to data and metadata from the DataONE network of Member Node data repositories. [more](http://releases.dataone.org/online/dataone_r/)
* [yhatr][yhatr]: yhatr lets you deploy, maintain, and invoke models via the Yhat REST API.

### Machine learning as a service (MLaaS anyone?)

* [bigml][bigml]: BigML, a machine learning web service [more](https://bigml.com/)
* [MTurkR][MTurkR]: Access to Amazon Mechanical Turk Requester API via R. [more](http://thomasleeper.com/MTurkR/index.html)

### Analytics

* [rgauges][rgauges]: Interface to Gaug.es API [more](https://secure.gaug.es) (not on CRAN)

### Other data

* [dvn][dvn]: Provides access to The Dataverse Network API. [more](http://thedata.org/)
* [sos4R][sos4R]: R client for the OGC Sensor Observation Service. [more](http://www.nordholmen.net/sos4r)
* [datamart][datamart]: Unified access to various data sources.
* [rDrop][rDrop]: Dropbox interface.

## CRAN packages:

* [rfishbase][rfishbase]
* [rtreebase][rtreebase]
* [rdryad][rdryad]
* [rgbif][rgbif]
* [rplos][rplos]
* [RMendeley][RMendeley]
* [govdat][govdat]
* [OAIHarvester][OAIHarvester]
* [rdatamarket][rdatamarket]
* [googlePublicData][googlePublicData]
* [RWeather][RWeather]
* [NCBI2R][NCBI2R]
* [RNCBI][RNCBI]
* [osmar][osmar]
* [factualR][factualR]
* [rpubchem][rpubchem]
* [RTDAmeritrade][RTDAmeritrade]
* [sos4R][sos4R]
* [SynergizeR][SynergizeR]
* [twitteR][twitteR]

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
[datamart]: http://cran.r-project.org/web/packages/datamart/index.html
[dvn]: http://cran.r-project.org/web/packages/dvn/index.html
[sos4R]: http://cran.r-project.org/src/contrib/Archive/sos4R/
[dataone]: http://cran.r-project.org/web/packages/dataone/index.html
[factualR]: http://cran.r-project.org/web/packages/factualR/index.html
[MTurkR]: http://cran.r-project.org/web/packages/MTurkR/index.html
[rpubchem]: http://cran.r-project.org/web/packages/rpubchem/index.html
[cimis]: http://cran.r-project.org/web/packages/cimis/index.html
[WDI]: http://cran.r-project.org/web/packages/WDI/index.html
[FAOSTAT]: http://cran.r-project.org/web/packages/FAOSTAT/index.html
[RNCEP]: http://cran.r-project.org/web/packages/RNCEP/index.html
[crn]: http://cran.r-project.org/web/packages/crn/index.html
[BerkeleyEarth]: http://cran.r-project.org/web/packages/BerkeleyEarth/index.html
[waterData]: http://cran.r-project.org/web/packages/waterData/index.html
[cgdsr]: http://cran.r-project.org/web/packages/cgdsr/index.html
[dismo]: http://cran.r-project.org/web/packages/dismo/index.html
[rmetadata]: https://github.com/ropensci/rmetadata
[repmis]: http://cran.r-project.org/web/packages/repmis/index.html
[rDrop]: https://github.com/karthikram/rDrop
[xpath]: http://www.w3schools.com/xpath/default.asp
[rsnsps]: https://github.com/ropensci/rsnps
[rbison]: https://github.com/ropensci/rbison
[rfishbase]: http://cran.r-project.org/web/packages/rfishbase/index.html
[rtreebase]: http://cran.r-project.org/web/packages/treebase/index.html
[rnbn]: https://github.com/JNCC-UK/rnbn
[rfisheries]: http://cran.r-project.org/web/packages/rfisheries/index.html
[rsnps]: http://cran.r-project.org/web/packages/ropensnp/index.html
[shiny]: http://www.rstudio.com/shiny/
[opencpu]: https://public.opencpu.org/
[rook]: http://cran.r-project.org/web/packages/Rook/index.html
[rwbclimate]: https://github.com/ropensci/rWBclimate
[anametrix]: http://cran.r-project.org/web/packages/anametrix/index.html
[bigml]: http://cran.r-project.org/web/packages/bigml/index.html
[neotoma]: https://github.com/ropensci/neotoma
[rnoaa]: https://github.com/ropensci/rnoaa
[rnpn]: https://github.com/ropensci/rnpn
[RMendeley]: http://cran.r-project.org/web/packages/RMendeley/index.html
[rgauges]: https://github.com/ropensci/rgauges
[rentrez]: http://cran.r-project.org/web/packages/rentrez/index.html
[rorcid]: https://github.com/ropensci/rorcid
[rpubmed]: https://github.com/ropensci/rpubmed
[rebird]: http://cran.r-project.org/web/packages/rebird/index.html
[rImpactStory]: http://cran.r-project.org/web/packages/rImpactStory/index.html
[rAltmetic]: https://github.com/ropensci/rAltmetric
[alm]: https://github.com/ropensci/alm
[rbhl]: https://github.com/ropensci/rbhl
[rdryad]: https://github.com/ropensci/rdryad
[govdat]: https://github.com/schamberlain/govdat
[OAIHarvester]: http://cran.r-project.org/web/packages/OAIHarvester/index.html
[rdatamarket]: http://cran.r-project.org/web/packages/rdatamarket/index.html
[googlePublicData]: http://cran.r-project.org/web/packages/googlePublicData/index.html
[RWeather]: http://cran.r-project.org/web/packages/RWeather/index.html
[NCBI2R]: http://cran.r-project.org/web/packages/NCBI2R/index.html
[RNCBI]: http://cran.r-project.org/web/packages/RNCBI/index.html
[osmar]: http://cran.r-project.org/web/packages/osmar/index.html
[RTDAmeritrade]: http://cran.r-project.org/web/packages/RTDAmeritrade/index.html
[SynergizeR]: http://cran.r-project.org/web/packages/SynergizeR/index.html
[twitteR]: http://cran.r-project.org/web/packages/twitteR/index.html