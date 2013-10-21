CRAN Task View: Web Technologies and Services
---------------------------------------------

  ----------------- -------------------------------------------------------------------
  **Maintainer:**   Scott Chamberlain, Karthik Ram, Christopher Gandrud, Patrick Mair
  **Contact:**      scott at ropensci.org
  **Version:**      2013-10-20
  ----------------- -------------------------------------------------------------------

This task view contains information about using R to obtain and parse
data from the web. The base version of R does not ship with many tools
for interacting with the web. Thankfully, there are an increasingly
large number of tools for interacting with the web. A list of available
packages and functions is presented below, grouped by the type of
activity. If you have any comments or suggestions for additions or
improvements for this taskview, go to Github and [submit an
issue](https://github.com/ropensci/webservices/issues), or make some
changes and [submit a pull
request](https://github.com/ropensci/webservices/pulls). If you can't
contribute on Github, [send Scott an email](mailto:scott@ropensci.org).
If you have an issue with one of the packages discussed below, please
contact the maintainer of that package.

Tools for Working with the Web from R
-------------------------------------

**Parsing Data from the Web**

-   txt, csv, etc.: you can use `read.csv()` after acquiring the csv
    file from the web via e.g., `getURL()` from RCurl. `read.csv()`
    works with http but not https, i.e.: `read.csv("http://...")`, but
    not `read.csv("https://...")`.
-   The [repmis](../packages/repmis/index.html) package contains a
    `source_data()` command to load plain-text data from a URL (either
    http or https).
-   The package [XML](../packages/XML/index.html) contains functions for
    parsing XML and HTML, and supports xpath for searching XML (think
    regex for strings). A helpful function to read data from one or more
    HTML tables is `readHTMLTable()`.
-   [scrapeR](../packages/scrapeR/index.html) provides additional tools
    for scraping data from HTML and XML documents.
-   The [XML2R](https://github.com/cpsievert/XML2R) package (to be on
    CRAN soon) is a collection of convenient functions for coercing XML
    into data frames.
-   The [rjson](../packages/rjson/index.html) converts R object into
    Javascript object notation (JSON) objects and vice-versa.
-   An alternative to the [rjson](../packages/rjson/index.html) is
    [RJSONIO](../packages/RJSONIO/index.html) which also converts to and
    from data in JSON format (it is fast for parsing).
-   An alternative to the [XML](../packages/XML/index.html) package is
    [selectr](../packages/selectr/index.html), which parses CSS3
    Selectors and translates them to XPath 1.0 expressions.
-   Custom formats: Some web APIs provide custom data formats which are
    usually modified xml or json, and handled by
    [XML](../packages/XML/index.html) and
    [rjson](../packages/rjson/index.html) or
    [RJSONIO](../packages/RJSONIO/index.html), respectively.
-   An alternative to [XML](../packages/XML/index.html) is
    [selectr](http://sjp.co.nz/projects/selectr/), which parses CSS3
    Selectors and translates them to XPath 1.0 expressions.
    [XML](../packages/XML/index.html) package is often used for parsing
    xml and html, but [selectr](http://sjp.co.nz/projects/selectr/)
    translates CSS selectors to XPath, so can use the CSS selectors
    instead of XPath. The [selectorgadget browser
    extension](http://selectorgadget.com/) can be used to identify page
    elements.

**Curl/HTTP/FTP**

-   [RCurl](../packages/RCurl/index.html): A low level curl wrapper that
    allows one to compose general HTTP requests and provides convenient
    functions to fetch URIs, get/post forms, etc. and process the
    results returned by the Web server. This provides a great deal of
    control over the HTTP/FTP connection and the form of the request
    while providing a higher-level interface than is available just
    using R socket connections. It also provide tools for Web
    authentication.
-   [httr](../packages/httr/index.html): A light wrapper around
    [RCurl](../packages/RCurl/index.html) that makes many things easier,
    but still allows you to access the lower level functionality of
    [RCurl](../packages/RCurl/index.html). It has convenient http verbs:
    `GET()`, `POST()`, `PUT()`, `DELETE()`, `PATCH()`, `HEAD()`,
    `BROWSE()`. These wrap functions are more convenient to use, though
    less configurable than counterparts in
    [RCurl](../packages/RCurl/index.html). The equivalent of httr's
    `GET()` in [RCurl](../packages/RCurl/index.html) is `getForm()`.
    Likewise, the equivalent of [httr](../packages/httr/index.html) 's
    `POST()` in [RCurl](../packages/RCurl/index.html) is `postForm()`.
    http status codes are helpful for debugging http calls. This package
    makes this easier using, for example, `stop_for_status()` gets the
    http status code from a response object, and stops the function if
    the call was not successful. See also `warn_for_status()`. Note that
    you can pass in additional Curl options to the `config` parameter in
    http calls.

**Authentication**

-   Using web resources can require authentication, either via API keys,
    OAuth, username:password combination, or via other means.
    Additionally, sometimes web resources that require authentication be
    in the header of an http call, which requires a little bit of extra
    work. API keys and username:password combos can be combined within a
    url for a call to a web resource (api key:
    http://api.foo.org/?key=yourkey; user/pass:
    http://username:password@api.foo.org), or can be specified via
    commands in [RCurl](../packages/RCurl/index.html) or
    [httr](../packages/httr/index.html). OAuth is the most complicated
    authentication process, and can be most easily done using
    [httr](../packages/httr/index.html). See the 6 demos within
    [httr](../packages/httr/index.html), three for OAuth 1.0 (linkedin,
    twitter, vimeo) and three for OAuth 2.0 (facebook, github, google).
    [ROAuth](../packages/ROAuth/index.html) is a package that provides a
    separate R interface to OAuth. OAuth is easier to to do in
    [httr](../packages/httr/index.html), so start there.

**Web Frameworks**

-   The [shiny](../packages/shiny/index.html) package makes it easy to
    build interactive web applications with R.
-   The [Rook](../packages/Rook/index.html) web server interface
    contains the specification and convenience software for building and
    running Rook applications.
-   The [opencpu](../packages/opencpu/index.html) framework for embedded
    statistical computation and reproducible research exposes a web API
    interfacing R, LaTeX and Pandoc. This API is used for example to
    integrate statistical functionality into systems, share and execute
    scripts or reports on centralized servers, and build R based apps.
    See also [opencpucran](../packages/opencpucran/index.html).
-   A package by Yihui Xie called [servr](../packages/servr/index.html)
    provides a simple HTTP server to serve files under a given directory
    based on the [httpuv](../packages/httpuv/index.html) package.
-   The [httpuv](../packages/httpuv/index.html) package, made by Joe
    Cheng at RStudio, provides low-level socket and protocol support for
    handling HTTP and WebSocket requests directly within R.
-   Plot.ly is a company that allows you to create visualizations in the
    web using R (and Python). They have an R package in development
    [here](https://github.com/cparmer/Plotly/tree/master/API/packages/R),
    as well as access to their services via an API
    [here](https://plot.ly/API/).

**JavaScript**

-   [ggvis](https://github.com/rstudio/ggvis) (not on CRAN) makes it
    easy to describe interactive web graphics in R. It fuses the ideas
    of ggplot2 and [shiny](../packages/shiny/index.html), rendering
    graphics on the web with Vega.
-   [rCharts](https://github.com/ramnathv/rCharts) (not on CRAN) allows
    for interactive javascript charts from R.
-   [rVega](https://github.com/metagraf/rVega) (not on CRAN) is an R
    wrapper for Vega.
-   [clickme](https://github.com/nachocab/clickme) (not on CRAN) is an R
    package to create interactive plots.
-   [animint](https://github.com/tdhock/animint) (not on CRAN) allows an
    interactive animation to be defined using a list of ggplots with
    clickSelects and showSelected aesthetics, then exported to
    CSV/JSON/D3/JavaScript for viewing in a web browser.

Data Sources on the Web Accessible via R
----------------------------------------

**Ecological and Evolutionary Biology**

-   [rvertnet](../packages/rvertnet/index.html): A wrapper to the
    VertNet collections database API.
-   [rgbif](../packages/rgbif/index.html): Interface to the Global
    Biodiversity Information Facility API methods.
-   [rfishbase](../packages/rfishbase/index.html): A programmatic
    interface to fishbase.org.
-   [treebase](../packages/treebase/index.html): An R package for
    discovery, access and manipulation of online phylogenies.
-   [taxize](../packages/taxize/index.html): Taxonomic information from
    around the web.
-   [dismo](../packages/dismo/index.html): Species distribution
    modeling, with wrappers to some APIs.
-   [rnbn](https://github.com/JNCC-UK/rnbn) (not on CRAN): Access to the
    UK National Biodiversity Network data.
-   [rWBclimate](https://github.com/ropensci/rWBclimate) (not on CRAN):
    R interface for the World Bank climate data.
-   [rbison](https://github.com/ropensci/rbison) (not on CRAN): Wrapper
    to the USGS Bison API.
-   [neotoma](https://github.com/ropensci/neotoma) (not on CRAN):
    Programmatic R interface to the Neotoma Paleoecological Database.
-   [rnoaa](https://github.com/ropensci/rnoaa) (not on CRAN): R
    interface to NOAA Climate data API.
-   [rnpn](https://github.com/ropensci/rnpn) (not on CRAN): Wrapper to
    the National Phenology Network database API.
-   [rfisheries](../packages/rfisheries/index.html): Package for
    interacting with fisheries databases at openfisheries.org.
-   [rebird](../packages/rebird/index.html): A programmatic interface to
    the eBird database.
-   [flora](../packages/flora/index.html): Retrieve taxonomical
    information of botanical names from the Flora do Brasil website.
-   [Rcolombos](../packages/Rcolombos/index.html): This package provides
    programmatic access to Colombos, a web based interface for exploring
    and analyzing comprehensive organism-specific cross-platform
    expression compendia of bacterial organisms.
-   [Reol](../packages/Reol/index.html): An R interface to the
    Encyclopedia of Life (EOL) API. Includes functions for downloading
    and extracting information off the EOL pages.
-   [rPlant](../packages/rPlant/index.html): An R interface to the the
    many computational resources iPlant offers through their RESTful
    application programming interface. Currently,
    [rPlant](../packages/rPlant/index.html) functions interact with the
    iPlant foundational API, the Taxonomic Name Resolution Service API,
    and the Phylotastic Taxosaurus API. Before using rPlant, users will
    have to register with the iPlant Collaborative.
    [http://www.iplantcollaborative.org/discover/discovery-environment](http://www.iplantcollaborative.org/discover/discovery-environment)

**Genes and Genomes**

-   [cgdsr](../packages/cgdsr/index.html): R-Based API for accessing the
    MSKCC Cancer Genomics Data Server (CGDS).
-   [rsnps](https://github.com/ropensci/rsnps) (not on CRAN): Wrapper to
    the openSNP data API and the Broad Institute SNP Annotation and
    Proxy Search.
-   [rentrez](../packages/rentrez/index.html): Talk with NCBI entrez
    using R.

**Earth Science**

-   [RNCEP](../packages/RNCEP/index.html): Obtain, organize, and
    visualize NCEP weather data.
-   [crn](../packages/crn/index.html): Provides the core functions
    required to download and format data from the Climate Reference
    Network. Both daily and hourly data are downloaded from the ftp, a
    consolidated file of all stations is created, station metadata is
    extracted. In addition functions for selecting individual variables
    and creating R friendly datasets for them is provided.
-   [BerkeleyEarth](../packages/BerkeleyEarth/index.html): Data input
    for Berkeley Earth Surface Temperature.
-   [waterData](../packages/waterData/index.html): An R Package for
    retrieval, analysis, and anomaly calculation of daily hydrologic
    time series data.
-   [CHCN](../packages/CHCN/index.html): A compilation of historical
    through contemporary climate measurements scraped from the
    Environment Canada Website Including tools for scraping data,
    creating metadata and formating temperature files.
-   [decctools](../packages/decctools/index.html): Provides functions
    for retrieving energy statistics from the United Kingdom Department
    of Energy and Climate Change and related data sources. The current
    version focuses on total final energy consumption statistics at the
    local authority, MSOA, and LSOA geographies. Methods for calculating
    the generation mix of grid electricity and its associated carbon
    intensity are also provided.
-   [Metadata](../packages/Metadata/index.html): Collates metadata for
    climate surface stations.
-   [sos4R](../packages/sos4R/index.html): A client for Sensor
    Observation Services (SOS) as specified by the Open Geospatial
    Consortium (OGC). It allows users to retrieve metadata from SOS web
    services and to interactively create requests for near real-time
    observation data based on the available sensors, phenomena,
    observations et cetera using thematic, temporal and spatial
    filtering.

**Economics**

-   [WDI](../packages/WDI/index.html): Search, extract and format data
    from the World Bank's World Development Indicators.
-   [FAOSTAT](../packages/FAOSTAT/index.html): The package hosts a list
    of functions to download, manipulate, construct and aggregate
    agricultural statistics provided by the FAOSTAT (Food and
    Agricultural Organization of the United Nations) database.

**Chemistry**

-   [rpubchem](../packages/rpubchem/index.html): Interface to the
    PubChem Collection.

**Agriculture**

-   [cimis](../packages/cimis/index.html): R package for retrieving data
    from CIMIS, the California Irrigation Management Information System.

**Literature, Metadata, Text, and Altmetrics**

-   [rplos](../packages/rplos/index.html): A programmatic interface to
    the Web Service methods provided by the Public Library of Science
    journals for search.
-   [rbhl](https://github.com/ropensci/rbhl) (not on CRAN): R interface
    to the Biodiversity Heritage Library (BHL) API.
-   [rmetadata](https://github.com/ropensci/rmetadata) (not on CRAN):
    Get scholarly metadata from around the web.
-   [RMendeley](../packages/RMendeley/index.html): Implementation of the
    Mendeley API in R.
-   [rentrez](../packages/rentrez/index.html): Talk with NCBI entrez
    using R.
-   [rorcid](https://github.com/ropensci/rorcid) (not on CRAN): A
    programmatic interface the Orcid.org API.
-   [rpubmed](https://github.com/ropensci/rpubmed) (not on CRAN): Tools
    for extracting and processing Pubmed and Pubmed Central records.
-   [rAltmetic](https://github.com/ropensci/rAltmetric) (not on CRAN):
    Query and visualize metrics from Altmetric.com.
-   [alm](https://github.com/ropensci/alm) (not on CRAN): R wrapper to
    the almetrics API platform developed by PLoS.
-   [ngramr](../packages/ngramr/index.html): Retrieve and plot word
    frequencies through time from the Google Ngram Viewer.

**Marketing**

-   [anametrix](../packages/anametrix/index.html): Bidirectional
    connector to Anametrix API.

**Data Depots**

-   [dvn](../packages/dvn/index.html): Provides access to The Dataverse
    Network API.
-   [rfigshare](../packages/rfigshare/index.html): Programmatic
    interface for Figshare.
-   [factualR](../packages/factualR/index.html): Thin wrapper for the
    Factual.com server API.
-   [dataone](../packages/dataone/index.html): A package that provides
    read/write access to data and metadata from the DataONE network of
    Member Node data repositories.
-   [yhatr](../packages/yhatr/index.html): Lets you deploy, maintain,
    and invoke models via the Yhat REST API.
-   [RSocrata](../packages/RSocrata/index.html): Provided with a Socrata
    dataset resource URL, or a Socrata SoDA web API query, returns an R
    data frame. Converts dates to POSIX format. Supports CSV and JSON.
    Manages throttling by Socrata.
-   [OAIHarvester](../packages/OAIHarvester/index.html): Harvest
    metadata using the Open Archives Initiative Protocol for Metadata
    Harvesting (OAI-PMH).

**Machine Learning as a Service**

-   [bigml](../packages/bigml/index.html): BigML, a machine learning web
    service.
-   [MTurkR](../packages/MTurkR/index.html): Access to Amazon Mechanical
    Turk Requester API via R.

**Web Analytics**

-   [rgauges](https://github.com/ropensci/rgauges) (not on CRAN):
    Interface to Gaug.es API.
-   [RSiteCatalyst](../packages/RSiteCatalyst/index.html): Functions for
    accessing the Adobe Analytics (Omniture SiteCatalyst) Reporting API.
-   [r-google-analytics](http://code.google.com/p/r-google-analytics/)
    (not on CRAN): Provides access to Google Analytics.

**News**

-   [GuardianR](../packages/GuardianR/index.html): Provides an interface
    to the Open Platform's Content API of the Guardian Media Group. It
    retrieves content from news outlets The Observer, The Guardian, and
    guardian.co.uk from 1999 to current day.

**Images, Videos, Music**

-   [imguR](../packages/imguR/index.html): A package to share plots
    using the image hosting service imgur.com.
-   [RLastFM](../packages/RLastFM/index.html): A package to interface to
    the last.fm API.

**Sports**

-   [nhlscrapr](../packages/nhlscrapr/index.html): Compiling the NHL
    Real Time Scoring System Database for easy use in R.
-   [pitchRx](../packages/pitchRx/index.html): Tools for Collecting and
    Visualizing Major League Baseball PITCHfx Data

**Maps**

-   [RgoogleMaps](../packages/RgoogleMaps/index.html): This package
    serves two purposes: It provides a comfortable R interface to query
    the Google server for static maps, and use the map as a background
    image to overlay plots within R.
-   [osmar](../packages/osmar/index.html): This package provides
    infrastructure to access OpenStreetMap data from different sources
    to work with the data in common R manner and to convert data into
    available infrastructure provided by existing R packages (e.g., into
    sp and igraph objects).
-   [ggmap](../packages/ggmap/index.html): Allows for the easy
    visualization of spatial data and models on top of Google Maps,
    OpenStreetMaps, Stamen Maps, or CloudMade Maps using ggplot2.

**Social media**

-   [streamR](../packages/streamR/index.html): This package provides a
    series of functions that allow R users to access Twitter's filter,
    sample, and user streams, and to parse the output into data frames.
    OAuth authentication is supported.
-   [twitteR](../packages/twitteR/index.html): Provides an interface to
    the Twitter web API.

**Government**

-   [wethepeople](../packages/wethepeople/index.html): An R client for
    interacting with the White House's "We The People" petition API.
-   [govdat](../packages/govdat/index.html): Interface to various APIs
    for government data, including New York Times congress API, and the
    Sunlight Foundation set of APIs.
-   [govStatJPN](../packages/govStatJPN/index.html): Functions to get
    public survey data in Japan.

**Other**

-   [sos4R](../packages/sos4R/index.html): R client for the OGC Sensor
    Observation Service.
-   [datamart](../packages/datamart/index.html): Provides an S4
    infrastructure for unified handling of internal datasets and web
    based data sources. Examples include dbpedia, eurostat and
    sourceforge.
-   [rDrop](https://github.com/karthikram/rDrop) (not on CRAN): Dropbox
    interface.
-   [zendeskR](../packages/zendeskR/index.html): This package provides
    an R wrapper for the Zendesk API.
-   [AWS.tools](../packages/AWS.tools/index.html): An R package to
    interact with Amazon Web Services (EC2/S3).

### CRAN packages:

-   [anametrix](../packages/anametrix/index.html)
-   [AWS.tools](../packages/AWS.tools/index.html)
-   [BerkeleyEarth](../packages/BerkeleyEarth/index.html)
-   [bigml](../packages/bigml/index.html)
-   [cgdsr](../packages/cgdsr/index.html)
-   [CHCN](../packages/CHCN/index.html)
-   [cimis](../packages/cimis/index.html)
-   [crn](../packages/crn/index.html)
-   [datamart](../packages/datamart/index.html)
-   [dataone](../packages/dataone/index.html)
-   [decctools](../packages/decctools/index.html)
-   [dismo](../packages/dismo/index.html)
-   [dvn](../packages/dvn/index.html)
-   [factualR](../packages/factualR/index.html)
-   [FAOSTAT](../packages/FAOSTAT/index.html)
-   [flora](../packages/flora/index.html)
-   [ggmap](../packages/ggmap/index.html)
-   [googlePublicData](../packages/googlePublicData/index.html)
-   [govdat](../packages/govdat/index.html)
-   [govStatJPN](../packages/govStatJPN/index.html)
-   [GuardianR](../packages/GuardianR/index.html)
-   [httr](../packages/httr/index.html) (core)
-   [imguR](../packages/imguR/index.html)
-   [Metadata](../packages/Metadata/index.html)
-   [MTurkR](../packages/MTurkR/index.html)
-   [NCBI2R](../packages/NCBI2R/index.html)
-   [ngramr](../packages/ngramr/index.html)
-   [nhlscrapr](../packages/nhlscrapr/index.html)
-   [OAIHarvester](../packages/OAIHarvester/index.html)
-   [opencpu](../packages/opencpu/index.html)
-   [osmar](../packages/osmar/index.html)
-   [Rcolombos](../packages/Rcolombos/index.html)
-   [RCurl](../packages/RCurl/index.html) (core)
-   [rdatamarket](../packages/rdatamarket/index.html)
-   [rebird](../packages/rebird/index.html)
-   [rentrez](../packages/rentrez/index.html)
-   [Reol](../packages/Reol/index.html)
-   [repmis](../packages/repmis/index.html)
-   [rfigshare](../packages/rfigshare/index.html)
-   [rfishbase](../packages/rfishbase/index.html)
-   [rfisheries](../packages/rfisheries/index.html)
-   [rgbif](../packages/rgbif/index.html)
-   [RgoogleMaps](../packages/RgoogleMaps/index.html)
-   [rjson](../packages/rjson/index.html) (core)
-   [RJSONIO](../packages/RJSONIO/index.html) (core)
-   [RLastFM](../packages/RLastFM/index.html)
-   [RMendeley](../packages/RMendeley/index.html)
-   [RNCBI](../packages/RNCBI/index.html)
-   [RNCEP](../packages/RNCEP/index.html)
-   [ROAuth](../packages/ROAuth/index.html)
-   [Rook](../packages/Rook/index.html)
-   [rPlant](../packages/rPlant/index.html)
-   [rplos](../packages/rplos/index.html)
-   [rpubchem](../packages/rpubchem/index.html)
-   [RSiteCatalyst](../packages/RSiteCatalyst/index.html)
-   [RSocrata](../packages/RSocrata/index.html)
-   [RTDAmeritrade](../packages/RTDAmeritrade/index.html)
-   [rvertnet](../packages/rvertnet/index.html)
-   [RWeather](../packages/RWeather/index.html)
-   [scrapeR](../packages/scrapeR/index.html)
-   [selectr](../packages/selectr/index.html)
-   [shiny](../packages/shiny/index.html) (core)
-   [sos4R](../packages/sos4R/index.html)
-   [streamR](../packages/streamR/index.html)
-   [SynergizeR](../packages/SynergizeR/index.html)
-   [taxize](../packages/taxize/index.html)
-   [treebase](../packages/treebase/index.html)
-   [twitteR](../packages/twitteR/index.html)
-   [waterData](../packages/waterData/index.html)
-   [WDI](../packages/WDI/index.html)
-   [wethepeople](../packages/wethepeople/index.html)
-   [XML](../packages/XML/index.html) (core)
-   [yhatr](../packages/yhatr/index.html)
-   [zendeskR](../packages/zendeskR/index.html)

### Related links:

-   [GitHub package: alm](https://github.com/ropensci/alm)
-   [GitHub package: clickme](https://github.com/nachocab/clickme)
-   [GitHub package: ggvis](https://github.com/rstudio/ggvis)
-   [GitHub package: neotoma](https://github.com/ropensci/neotoma)
-   [GitHub package: rAltmetic](https://github.com/ropensci/rAltmetric)
-   [GitHub package: rbhl](https://github.com/ropensci/rbhl)
-   [GitHub package: rbison](https://github.com/ropensci/rbison)
-   [GitHub package: rCharts](https://github.com/ramnathv/rCharts)
-   [GitHub package: rDrop](https://github.com/karthikram/rDrop)
-   [GitHub package: rgauges](https://github.com/ropensci/rgauges)
-   [GitHub package: rmetadata](https://github.com/ropensci/rmetadata)
-   [GitHub package: rnbn](https://github.com/JNCC-UK/rnbn)
-   [GitHub package: rnoaa](https://github.com/ropensci/rnoaa)
-   [GitHub package: rnpn](https://github.com/ropensci/rnpn)
-   [GitHub package: rorcid](https://github.com/ropensci/rorcid)
-   [GitHub package: rpubmed](https://github.com/ropensci/rpubmed)
-   [GitHub package: rsnps](https://github.com/ropensci/rsnps)
-   [GitHub package: rVega](https://github.com/metagraf/rVega)
-   [GitHub package: rWBclimate](https://github.com/ropensci/rWBclimate)
-   [GitHub package: XML2R](https://github.com/cpsievert/XML2R)
-   [GitHub package: animint](https://github.com/tdhock/animint)

