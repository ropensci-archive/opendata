# CRAN Task View: Working with data on the web

* Maintainer: Scott Chamberlain, Karthik Ram, Christopher Gandrud
* Contact:	scott at ropensci.org
* Version:	2013-09-09

## Introduction

This Task View contains information about using R to obtain and parse data from the web.

The base version of R does not ship with many tools for interacting with the web. Thankfully, there are an increasingly large number of tools for interacting with the web. XXXX

If you have any comments or suggestions for additions or improvements, then please contact the maintainer of the package, not me.

A list of available packages and functions is presented below, grouped by the type of activity.

## Tools for working with the web from R

### curl/http/ftp

* [RCurl][RCurl]: a low level curl wrapper. 
* [httr][httr]: is a light wrapper around RCurl that makes many things easier, but still allows you to access the lower level functionality of RCurl. 

httr has convenient http verbs: GET(), POST(), PUT(), DELETE(), PATCH(), HEAD(), BROWSE(). These wrap functions in RCurl, making them more convenient to use, though less configurable than counterparts in RCurl. The equivalent of httr's GET() in RCurl is getForm(). Likewise, the equivalent of httr's POST() in RCurl is postForm(). 

### Web frameworks

RStudio recently created [Shiny][shiny], which combines R, html, css, and javascript to make web applications. Related tools are available, including [openCPU][opencpu] and [Rook][rook]. However, Shiny is the most promising of these.

### Parsing data from the web

* txt, csv, etc.: you can use `read.csv()` after acquiring the csv file from the web via e.g., `getURL()` from RCurl. The [repmis][repmis] package contains a `source_data` command to simplify this process, while also assigning SHA-1 hashes to uniquely identify file versions.
* xml/html: the package [XML][XML] by Duncan Temple-Lang contains functions for parsing xml and html, and supports [xpath][xpath] for searching xml (think regex for strings).
* json/json-ld: [RJSONIO][RJSONIO] by Duncan Temple-Lang. Another package, [rjson][rjson], does many of the same tasks which RJSONIO does.
* custom formats: Some web APIs provide custom data formats (e.g., X), which are usually modified xml or json, and handled by XML and RJSONIO, respectively.

## Data sources

### Ecological and evolutionary biology data

* [rvertnet][rvertnet]: A wrapper to the VertNet collections database API.
* [rgbif][rgbif]: Interface to the Global Biodiversity Information Facility API methods
* [rfishbase][rfishbase]: A programmatic interface to fishbase.org.
* [rtreebase][rtreebase]: An R package for discovery, access and manipulation of online phylogenies
* [taxize][taxize]: Taxonomic information from around the web
* [rfisheries][rfisheries]: A programmatic interface to openfisheries.org
* [dismo][dismo]: Species distribution modeling, with wrappers to some APIs. [vignette](http://cran.r-project.org/web/packages/dismo/vignettes/brt.pdf)

Not on CRAN

* [rnbn][rnbn]: Access to the UK National Biodiversity Network data
* [rWBclimate][rwbclimate]: R interface for the World Bank climate data
* [rbison][rbison]: Wrapper to the USGS Bison API 

### Genes/genomes

* [cgdsr][cgdsr]: R-Based API for accessing the MSKCC Cancer Genomics Data Server (CGDS). [more](http://www.cbioportal.org/public-portal)
* [rsnps][rsnps]: Wrapper to the openSNP data API and the Broad Institute SNP Annotation and Proxy Search. 

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

### Data depots and mechanical turk like things

* [MTurkR][MTurkR]: Access to Amazon Mechanical Turk Requester API via R. [more](http://thomasleeper.com/MTurkR/index.html)
* [factualR][factualR]: Thin wrapper for the Factual.com server API. [more](http://www.exmachinatech.net/01/factualr/)
* [dataone][dataone]: A package that provides read/write access to data and metadata from the DataONE network of Member Node data repositories. [more](http://releases.dataone.org/online/dataone_r/)
* [yhatr][yhatr]: yhatr lets you deploy, maintain, and invoke models via the Yhat REST API.

### Literature and metadata

* [rplos][rplos]: A programmatic interface to the Web Service methods provided by the Public Library of Science journals for search.
* [rmetadata][rmetadata]: Get scholarly metadata from around the web.

### Other data

* [dvn][dvn]: Provides access to The Dataverse Network API. [more](http://thedata.org/)
* [sos4R][sos4R]: R client for the OGC Sensor Observation Service. [more](http://www.nordholmen.net/sos4r)
* [datamart][datamart]: Unified access to various data sources.
* [rDrop][rDrop]: Dropbox interface.

### Marketing

* [anametrix][anametrix]: Bidirectional connector to Anametrix API

### 

* [bigml][bigml]: BigML, a machine learning web service [more](https://bigml.com/)

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