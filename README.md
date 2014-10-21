CRAN Task View: Web Technologies and Services
---------------------------------------------

  ----------------- ----------------------------------------------------------------------------------
  **Maintainer:**   Scott Chamberlain, Thomas Leeper, Patrick Mair, Karthik Ram, Christopher Gandrud
  **Contact:**      scott at ropensci.org
  **Version:**      2014-10-21
  ----------------- ----------------------------------------------------------------------------------

This task view contains information about using R to obtain and parse
data from the web. The base version of R does not ship with many tools
for interacting with the web. Thankfully, there are an increasingly
large number of tools for interacting with the web. A list of available
packages and functions is presented below, grouped by the type of
activity. If you have any comments or suggestions for additions or
improvements for this taskview, go to GitHub and [submit an
issue](https://github.com/ropensci/webservices/issues), or make some
changes and [submit a pull
request](https://github.com/ropensci/webservices/pulls). If you can't
contribute on GitHub, [send Scott an email](mailto:scott@ropensci.org).
If you have an issue with one of the packages discussed below, please
contact the maintainer of that package.

Tools for Working with the Web from R
-------------------------------------

### Parsing Data from the Web

-   txt, csv, etc.: you can use `read.csv()` after acquiring the csv
    file from the web via e.g., `getURL()` from RCurl. `read.csv()`
    works with http but not https, i.e.: `read.csv("http://...")`, but
    not `read.csv("https://...")`.
-   The
    [repmis](http://cran.r-project.org/web/packages/repmis/index.html)
    package contains a `source_data()` command to load and cache
    plain-text data from a URL (either http or https). It also includes
    `source_Dropbox()` for downloading/caching plain-text data from
    non-public Dropbox folders and `source_XlsxData()` for
    downloading/caching Excel xlsx sheets.
-   The package
    [XML](http://cran.r-project.org/web/packages/XML/index.html)
    contains functions for parsing XML and HTML, and supports xpath for
    searching XML (think regex for strings). A helpful function to read
    data from one or more HTML tables is `readHTMLTable()`.
-   [XML2R](http://cran.r-project.org/web/packages/XML2R/index.html):
    The XML2R package is a collection of convenient functions for
    coercing XML into data frames. The development version is on GitHub
    [here](https://github.com/cpsievert/XML2R).
-   An alternative to
    [XML](http://cran.r-project.org/web/packages/XML/index.html) is
    [selectr](http://sjp.co.nz/projects/selectr/), which parses CSS3
    Selectors and translates them to XPath 1.0 expressions.
    [XML](http://cran.r-project.org/web/packages/XML/index.html) package
    is often used for parsing xml and html, but
    [selectr](http://sjp.co.nz/projects/selectr/) translates CSS
    selectors to XPath, so can use the CSS selectors instead of XPath.
    The [selectorgadget browser extension](http://selectorgadget.com/)
    can be used to identify page elements.
-   The [rjson](http://cran.r-project.org/web/packages/rjson/index.html)
    converts R object into Javascript object notation (JSON) objects and
    vice-versa.
-   An alternative to the
    [rjson](http://cran.r-project.org/web/packages/rjson/index.html) is
    [RJSONIO](http://cran.r-project.org/web/packages/RJSONIO/index.html)
    which also converts to and from data in JSON format (it is fast for
    parsing).
-   An alternative to
    [rjson](http://cran.r-project.org/web/packages/rjson/index.html) and
    [RJSONIO](http://cran.r-project.org/web/packages/RJSONIO/index.html)
    is
    [jsonlite](http://cran.r-project.org/web/packages/jsonlite/index.html),
    a fork of the
    [RJSONIO](http://cran.r-project.org/web/packages/RJSONIO/index.html).
    It includes the parser from RJSONIO, but implements a different
    mapping between R objects and JSON strings.
-   Custom formats: Some web APIs provide custom data formats which are
    usually modified xml or json, and handled by
    [XML](http://cran.r-project.org/web/packages/XML/index.html) and
    [rjson](http://cran.r-project.org/web/packages/rjson/index.html) or
    [RJSONIO](http://cran.r-project.org/web/packages/RJSONIO/index.html),
    respectively.
-   The [RHTMLForms](http://www.omegahat.org/RHTMLForms/) allows to read
    HTML documents and obtain a description of each of the forms it
    contains, along with the different elements and hidden fields
-   [scrapeR](http://cran.r-project.org/web/packages/scrapeR/index.html)
    provides additional tools for scraping data from HTML and XML
    documents.
-   The [tldextract](https://github.com/jayjacobs/tldextract) package
    extract top level domains and subdomains from a host name. It's a
    port of [a Python library of the same
    name](https://github.com/john-kurkowski/tldextract).

### Curl, HTTP, FTP, HTML, XML, SOAP

-   [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html): A
    low level curl wrapper that allows one to compose general HTTP
    requests and provides convenient functions to fetch URIs, get/post
    forms, etc. and process the results returned by the Web server. This
    provides a great deal of control over the HTTP/FTP connection and
    the form of the request while providing a higher-level interface
    than is available just using R socket connections. It also provide
    tools for Web authentication.
-   [httr](http://cran.r-project.org/web/packages/httr/index.html): A
    light wrapper around
    [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html)
    that makes many things easier, but still allows you to access the
    lower level functionality of
    [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html). It
    has convenient http verbs: `GET()`, `POST()`, `PUT()`, `DELETE()`,
    `PATCH()`, `HEAD()`, `BROWSE()`. These wrap functions are more
    convenient to use, though less configurable than counterparts in
    [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html).
    The equivalent of httr's `GET()` in
    [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html) is
    `getForm()`. Likewise, the equivalent of
    [httr](http://cran.r-project.org/web/packages/httr/index.html) 's
    `POST()` in
    [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html) is
    `postForm()`. http status codes are helpful for debugging http
    calls. This package makes this easier using, for example,
    `stop_for_status()` gets the http status code from a response
    object, and stops the function if the call was not successful. See
    also `warn_for_status()`. Note that you can pass in additional Curl
    options to the `config` parameter in http calls.
-   The [XMLRPC](http://www.omegahat.org/XMLRPC/) package provides an
    implementation of XML-RPC, a relatively simple remote procedure call
    mechanism that uses HTTP and XML. This can be used for communicating
    between processes on a single machine or for accessing Web services
    from within R.
-   The [XMLSchema](http://www.omegahat.org/XMLSchema/) package provides
    facilities in R for reading XML schema documents and processing them
    to create definitions for R classes and functions for converting XML
    nodes to instances of those classes. It provides the framework for
    meta-computing with XML schema in R
-   [RTidyHTML](http://www.omegahat.org/RTidyHTML/) interfaces to the
    libtidy library for correcting HTML documents that are not
    well-formed. This library corrects common errors in HTML documents.
-   [W3CMarkupValidator](http://cran.r-project.org/web/packages/W3CMarkupValidator/index.html)
    provides an R Interface to W3C Markup Validation Services for
    validating HTML documents.
-   [SSOAP](http://www.omegahat.org/SSOAP/) provides a client-side SOAP
    (Simple Object Access Protocol) mechanism. It aims to provide a
    high-level interface to invoke SOAP methods provided by a SOAP
    server.
-   [Rcompression](http://www.omegahat.org/Rcompression/): Interface to
    zlib and bzip2 libraries for performing in-memory compression and
    decompression in R. This is useful when receiving or sending
    contents to remote servers, e.g. Web services, HTTP requests via
    RCurl.
-   The [CGIwithR](http://www.omegahat.org/CGIwithR/) package allows one
    to use R scripts as CGI programs for generating dynamic Web content.
    HTML forms and other mechanisms to submit dynamic requests can be
    used to provide input to R scripts via the Web to create content
    that is determined within that R script.
-   [httpRequest](http://cran.r-project.org/web/packages/httpRequest/index.html):
    HTTP Request protocols. Implements the GET, POST and multipart POST
    request.

### Authentication

-   Using web resources can require authentication, either via API keys,
    OAuth, username:password combination, or via other means.
    Additionally, sometimes web resources that require authentication be
    in the header of an http call, which requires a little bit of extra
    work. API keys and username:password combos can be combined within a
    url for a call to a web resource (api key:
    http://api.foo.org/?key=yourkey; user/pass:
    http://username:password@api.foo.org), or can be specified via
    commands in
    [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html) or
    [httr](http://cran.r-project.org/web/packages/httr/index.html).
    OAuth is the most complicated authentication process, and can be
    most easily done using
    [httr](http://cran.r-project.org/web/packages/httr/index.html). See
    the 6 demos within
    [httr](http://cran.r-project.org/web/packages/httr/index.html),
    three for OAuth 1.0 (linkedin, twitter, vimeo) and three for OAuth
    2.0 (facebook, GitHub, google).
    [ROAuth](http://cran.r-project.org/web/packages/ROAuth/index.html)
    is a package that provides a separate R interface to OAuth. OAuth is
    easier to to do in
    [httr](http://cran.r-project.org/web/packages/httr/index.html), so
    start there.

### Web Frameworks

-   The [shiny](http://cran.r-project.org/web/packages/shiny/index.html)
    package makes it easy to build interactive web applications with R.
-   The [Rook](http://cran.r-project.org/web/packages/Rook/index.html)
    web server interface contains the specification and convenience
    software for building and running Rook applications.
-   The
    [opencpu](http://cran.r-project.org/web/packages/opencpu/index.html)
    framework for embedded statistical computation and reproducible
    research exposes a web API interfacing R, LaTeX and Pandoc. This API
    is used for example to integrate statistical functionality into
    systems, share and execute scripts or reports on centralized
    servers, and build R based apps.
-   A package by [Yihui Xie](http://yihui.name/) called
    [servr](http://cran.r-project.org/web/packages/servr/index.html)
    provides a simple HTTP server to serve files under a given directory
    based on the
    [httpuv](http://cran.r-project.org/web/packages/httpuv/index.html)
    package.
-   The
    [httpuv](http://cran.r-project.org/web/packages/httpuv/index.html)
    package, made by Joe Cheng at RStudio, provides low-level socket and
    protocol support for handling HTTP and WebSocket requests directly
    within R. Another related package, perhaps which
    [httpuv](http://cran.r-project.org/web/packages/httpuv/index.html)
    replaces, is websockets, also made by Joe Cheng.
-   [websockets](https://github.com/rstudio/R-Websockets) (not on CRAN):
    A simple HTML5 websocket interface for R, by Joe Cheng.
-   Plot.ly is a company that allows you to create visualizations in the
    web using R (and Python). They have an R package in development
    [here](https://github.com/ropensci/plotly), as well as access to
    their services via [a REST API](https://plot.ly/API/).
-   The [WADL](http://www.omegahat.org/WADL/) package provides tools to
    process Web Application Description Language (WADL) documents and to
    programmatically generate R functions to interface to the REST
    methods described in those WADL documents.
-   The [RDCOMServer](http://www.omegahat.org/RDCOMServer/) provides a
    mechanism to export R objects as (D)COM objects in Windows. It can
    be used along with the
    [RDCOMClient](http://www.omegahat.org/RDCOMClient/) package which
    provides user-level access from R to other COM servers.
-   The
    [RSelenium](http://cran.r-project.org/web/packages/RSelenium/index.html)
    package (development version on GitHub
    [here](https://github.com/ropensci/RSelenium/)) provides a set of R
    bindings for the Selenium 2.0 webdriver using the
    [JsonWireProtocol](http://code.google.com/p/selenium/wiki/JsonWireProtocol).
    Selenium automates browsers. Using RSelenium you can automate
    browsers locally or remotely. This can aid in automated application
    testing, load testing and web scraping. Examples are given
    interacting with popular projects such as
    [shiny](http://cran.r-project.org/whttp://cran.r-project.org/web/packages/shiny/index.html)
    and [sauceLabs](http://saucelabs.com).
-   [rapporter.net](http://rapporter.net) provides an online environment
    (SaaS) to host and run
    [rapport](http://cran.r-project.org/web/packages/rapport/index.html)
    statistical report templates in the cloud.
-   [neocities](https://github.com/seankross/neocities) wraps the API
    for the [Neocities](https://neocities.org/) web hosting service.
-   The [Tiki](http://info.tiki.org/tiki-index.php) Wiki CMS/Groupware
    framework has an R plugin ( [PluginR](https://doc.tiki.org/PluginR))
    to run R code from wiki pages, and use data from their own collected
    web databases (trackers). A demo:
    [http://r.tiki.org](http://r.tiki.org/tiki-index.php). More info in
    a [useR!2013 presentation](http://ueb.vhir.org/2011+UseR).
-   The [MediaWiki](http://www.mediawiki.org) has an extension (
    [Extension:R](http://www.mediawiki.org/wiki/Extension:R)) to run R
    code from wiki pages, and use uploaded data. Links to demo pages (in
    German) can be found at the [category page for R
    scripts](http://mars.wiwi.hu-berlin.de/mediawiki/mmstat_de/index.php/Kategorie:R)
    at MM-Stat. A mailing list is available:
    [R-sig-mediawiki](https://stat.ethz.ch/mailman/listinfo/r-sig-mediawiki).
-   [whisker](http://cran.r-project.org/web/packages/whisker/index.html):
    Implementation of logicless templating based on
    [Mustache](http://mustache.github.io/) in R. Mustache syntax is
    described in
    [http://mustache.github.io/mustache.5.html](http://mustache.github.io/mustache.5.html)

### JavaScript

-   [ggvis](http://cran.r-project.org/web/packages/ggvis/index.html)
    makes it easy to describe interactive web graphics in R. It fuses
    the ideas of ggplot2 and
    [shiny](http://cran.r-project.org/web/packages/shiny/index.html),
    rendering graphics on the web with Vega.
-   [rCharts](https://github.com/ramnathv/rCharts) (not on CRAN) allows
    for interactive Javascript charts from R.
-   [rVega](https://github.com/metagraf/rVega) (not on CRAN) is an R
    wrapper for Vega.
-   [clickme](https://github.com/nachocab/clickme) (not on CRAN) is an R
    package to create interactive plots.
-   [animint](https://github.com/tdhock/animint) (not on CRAN) allows an
    interactive animation to be defined using a list of ggplots with
    clickSelects and showSelected aesthetics, then exported to
    CSV/JSON/D3/JavaScript for viewing in a web browser.
-   The [SpiderMonkey](http://www.omegahat.org/SpiderMonkey/) package
    provides a means of evaluating JavaScript code, creating JavaScript
    objects and calling JavaScript functions and methods from within R.
    This can work by embedding the JavaScript engine within an R session
    or by embedding R in an browser such as Firefox and being able to
    call R from JavaScript and call back to JavaScript from R.
-   [d3Network](http://cran.r-project.org/web/packages/d3Network/index.html):
    Tools for creating D3 JavaScript network, tree, dendrogram, and
    Sankey graphs from R.

Data Sources on the Web Accessible via R
----------------------------------------

[Agriculture](#agr) | [Amazon web services](#amazon) |
[Chemistry](#chemistry) | [Data depots](#depots) | [Earth
Science](#earthsci) | [Ecology/Evolution](#eeb) |
[Economics/Business](#econbus) | [E-commerce](#ecommerce) |
[Finance](#finance) | [Genes/Genomes](#genes) | [Google web
services](#google) | [Government](#gov) | [Literature/Text-mining](#lit)
| [Machine learning](#mls) | [Maps](#maps) | [Marketing](#marketing) |
[Media: Images/video/etc.](#media) | [News](#news) | [Other](#other) |
[Public Health](#publichealth) | [Social media](#social) |
[Sports](#sports) | [Web analytics](#webanalytics) |

### <a href="#agr" name="agr">#</a> Agriculture

-   [FAOSTAT](http://cran.r-project.org/web/packages/FAOSTAT/index.html):
    The package hosts a list of functions to download, manipulate,
    construct and aggregate agricultural statistics provided by the
    FAOSTAT (Food and Agricultural Organization of the United Nations)
    database.
-   [cimis](http://cran.r-project.org/src/contrib/Archive/cimis/): R
    package for retrieving data from CIMIS, the California Irrigation
    Management Information System. Available in CRAN archives only.

### <a href="#amazon" name="amazon">#</a> Amazon Web Services

-   [AWS.tools](http://cran.r-project.org/web/packages/AWS.tools/index.html):
    An R package to interact with Amazon Web Services (EC2/S3).
-   [RAmazonS3](http://www.omegahat.org/RAmazonS3) package provides the
    basic infrastructure within R for communicating with the S3 Amazon
    storage server. This is a commercial server that allows one to store
    content and retrieve it from any machine connected to the Internet.
-   [RAmazonDBREST](http://www.omegahat.org/RAmazonDBREST) provides an
    interface to Amazon's Simple DB API.
-   [MTurkR](http://cran.r-project.org/web/packages/MTurkR/index.html):
    Access to Amazon Mechanical Turk Requester API via R. Development
    version on GitHub [here](https://www.github.com/leeper/MTurkR).

### <a href="#ecommerce" name="ecommerce">#</a> E-commerce

-   [shopifyr](http://cran.r-project.org/web/packages/shopifyr/index.html):
    An interface to the API of the E-commerce service Shopify
    [http://docs.shopify.com/api](http://docs.shopify.com/api).

### <a href="#chemistry" name="chemistry">#</a> Chemistry

-   [rpubchem](http://cran.r-project.org/web/packages/rpubchem/index.html):
    Interface to the PubChem Collection.

### <a href="#depots" name="depots">#</a> Data Depots

-   [dvn](http://cran.r-project.org/web/packages/dvn/index.html):
    Provides access to The Dataverse Network API.
-   [rfigshare](http://cran.r-project.org/web/packages/rfigshare/index.html):
    Programmatic interface for Figshare.
-   [factualR](http://cran.r-project.org/web/packages/factualR/index.html):
    Thin wrapper for the [Factual.com](http://factual.com/) server API.
-   [dataone](http://cran.r-project.org/src/contrib/Archive/dataone/):
    Read/write access to data and metadata from the [DataONE
    network](https://www.dataone.org/) of Member Node data repositories.
-   [yhatr](http://cran.r-project.org/web/packages/yhatr/index.html):
    Lets you deploy, maintain, and invoke models via the
    [Yhat](https://www.yhathq.com/) REST API.
-   [RSocrata](http://cran.r-project.org/web/packages/RSocrata/index.html):
    Provided with a Socrata dataset resource URL, or a Socrata SoDA web
    API query, returns an R data frame. Converts dates to POSIX format.
    Supports CSV and JSON. Manages throttling by Socrata.
-   [Quandl](http://cran.r-project.org/web/packages/Quandl/index.html):
    A package that interacts directly with the
    [Quandl](http://www.quandl.com/) API to offer data in a number of
    formats usable in R, as well as the ability to upload and search.
-   [rdatamarket](http://cran.r-project.org/web/packages/rdatamarket/index.html):
    Fetches data from DataMarket.com, either as timeseries in zoo form
    (dmseries) or as long-form data frames (dmlist).
-   [infochimps](http://cran.r-project.org/src/contrib/Archive/infochimps/):
    An R wrapper for the infochimps.com API services, from [Drew
    Conway](http://drewconway.com/). The CRAN version is archived.
    Development is available on GitHub
    [here](https://github.com/drewconway/infochimps).
-   [jSonarR](http://cran.r-project.org/web/packages/jSonarR/index.html):
    Enables users to access MongoDB by running queries and returning
    their results in R data frames. jSonarR uses data processing and
    conversion capabilities in the jSonar Analytics Platform and the
    [JSON Studio Gateway](http://www.jsonstudio.com), to convert JSON to
    a tabular format.

### <a href="#earthsci" name="earthsci">#</a> Earth Science

-   [RNCEP](http://cran.r-project.org/web/packages/RNCEP/index.html):
    Obtain, organize, and visualize NCEP weather data.
-   [crn](http://cran.r-project.org/web/packages/crn/index.html):
    Provides the core functions required to download and format data
    from the Climate Reference Network. Both daily and hourly data are
    downloaded from the ftp, a consolidated file of all stations is
    created, station metadata is extracted. In addition functions for
    selecting individual variables and creating R friendly datasets for
    them is provided.
-   [BerkeleyEarth](http://cran.r-project.org/src/contrib/Archive/BerkeleyEarth/):
    Data input for Berkeley Earth Surface Temperature. Archived on CRAN.
-   [waterData](http://cran.r-project.org/web/packages/waterData/index.html):
    An R Package for retrieval, analysis, and anomaly calculation of
    daily hydrologic time series data.
-   [CHCN](http://cran.r-project.org/web/packages/CHCN/index.html): A
    compilation of historical through contemporary climate measurements
    scraped from the Environment Canada Website Including tools for
    scraping data, creating metadata and formatting temperature files.
-   [decctools](http://cran.r-project.org/web/packages/decctools/index.html):
    Provides functions for retrieving energy statistics from the United
    Kingdom Department of Energy and Climate Change and related data
    sources. The current version focuses on total final energy
    consumption statistics at the local authority, MSOA, and LSOA
    geographies. Methods for calculating the generation mix of grid
    electricity and its associated carbon intensity are also provided.
-   [Metadata](http://cran.r-project.org/src/contrib/Archive/Metadata/):
    Collates metadata for climate surface stations. Archived on CRAN.
-   [sos4R](http://cran.r-project.org/web/packages/sos4R/index.html): A
    client for Sensor Observation Services (SOS) as specified by the
    Open Geospatial Consortium (OGC). It allows users to retrieve
    metadata from SOS web services and to interactively create requests
    for near real-time observation data based on the available sensors,
    phenomena, observations, etc. using thematic, temporal and spatial
    filtering.
-   [raincpc](http://cran.r-project.org/web/packages/raincpc/index.html):
    The Climate Prediction Center's (CPC) daily rainfall data for the
    entire world, from 1979 to the present, at a resolution of 50 km
    (0.5 degrees lat-lon). This package provides functionality to
    download and process the raw data from CPC.
-   [weatherData](http://cran.r-project.org/web/packages/weatherData/index.html):
    Functions that help in fetching weather data from websites. Given a
    location and a date range, these functions help fetch weather data
    (temperature, pressure etc.) for any weather related analysis.
-   [soilDB](http://cran.r-project.org/web/packages/soilDB/index.html):
    A collection of functions for reading data from USDA-NCSS soil
    databases.
-   [rnoaa](http://cran.r-project.org/web/packages/rnoaa/index.html): R
    interface to NOAA Climate data API.
-   [GhcnDaily](http://cran.r-project.org/web/packages/GhcnDaily/index.html):
    A package that downloads and processes Global Historical Climatology
    Network (GHCN) daily data from the National Climatic Data Center
    (NCDC).
-   [okmesonet](http://cran.r-project.org/web/packages/okmesonet/index.html):
    Retrieves Oklahoma (USA) Mesonet climatological data provided by the
    Oklahoma Climatological Survey.
-   [rainfreq](http://cran.r-project.org/web/packages/rainfreq/index.html):
    Estimates of rainfall at desired frequency and desired duration are
    often required in the design of dams and other hydraulic structures,
    catastrophe risk modeling, environmental planning and management.
    One major source of such estimates for the USA is the NOAA National
    Weather Service's (NWS) division of Hydrometeorological Design
    Studies Center (HDSC). Raw data from NWS-HDSC is available at 1-km
    resolution and comes as a huge number of GIS files.
-   [rnrfa](http://cran.r-project.org/web/packages/rnrfa/index.html):
    Utility functions to retrieve data from the UK National River Flow
    Archive via an API (http://www.ceh.ac.uk/data/nrfa/). There are
    functions to retrieve stations falling in a bounding box, to
    generate a map and extracting time series and general information.
-   [meteoForecast](http://cran.r-project.org/web/packages/meteoForecast/index.html):
    meteoForecast is a package to access to several Numerical Weather
    Prediction services both in raster format and as a time series for a
    location. Currenty it works with
    [GFS](http://www.emc.ncep.noaa.gov/index.php?branch=GFS),
    [Meteogalicia](http://www.meteogalicia.es/web/modelos/threddsIndex.action),
    [OpenMeteo](https://openmeteoforecast.org/wiki/Main_Page),
    [NAM](http://www.ncdc.noaa.gov/data-access/model-data/model-datasets/north-american-mesoscale-forecast-system-nam),
    and
    [RAP](http://www.ncdc.noaa.gov/data-access/model-data/model-datasets/rapid-refresh-rap).
    [on Github](https://github.com/oscarperpinan/meteoForecast/)
-   [rFDSN](http://cran.r-project.org/web/packages/rFDSN/index.html):
    Search for and download seismic time series in miniSEED format (a
    minimalist version of the Standard for the Exchange of Earthquake
    Data) from [International Federation of Digital Seismograph
    Networks](http://www.fdsn.org/) repositories. This package can also
    be used to gather information about seismic networks (stations,
    channels, locations, etc) and find historical earthquake data
    (origins, magnitudes, etc).
-   [marmap](http://cran.r-project.org/web/packages/marmap/index.html):
    Import, plot and analyze bathymetric and topographic data from NOAA.

### <a href="#eeb" name="eeb">#</a> Ecological and Evolutionary Biology

-   [rvertnet](http://cran.r-project.org/web/packages/rvertnet/index.html):
    A wrapper to the VertNet collections database API.
-   [rgbif](http://cran.r-project.org/web/packages/rgbif/index.html):
    Interface to the Global Biodiversity Information Facility API
    methods.
-   [rfishbase](http://cran.r-project.org/web/packages/rfishbase/index.html):
    A programmatic interface to fishbase.org.
-   [treebase](http://cran.r-project.org/web/packages/treebase/index.html):
    An R package for discovery, access and manipulation of online
    phylogenies.
-   [taxize](http://cran.r-project.org/web/packages/taxize/index.html):
    Taxonomic information from around the web.
-   [dismo](http://cran.r-project.org/web/packages/dismo/index.html):
    Species distribution modeling, with wrappers to some APIs.
-   [rWBclimate](http://cran.r-project.org/web/packages/rWBclimate/index.html):
    R interface for the World Bank climate data.
-   [rbison](http://cran.r-project.org/web/packages/rbison/index.html):
    Wrapper to the USGS Bison API.
-   [neotoma](https://github.com/ropensci/neotoma) (not on CRAN):
    Programmatic R interface to the Neotoma Paleoecological Database.
-   [rnpn](https://github.com/ropensci/rnpn) (not on CRAN): Wrapper to
    the National Phenology Network database API.
-   [rfisheries](http://cran.r-project.org/web/packages/rfisheries/index.html):
    Package for interacting with fisheries databases at
    openfisheries.org.
-   [rebird](http://cran.r-project.org/web/packages/rebird/index.html):
    A programmatic interface to the eBird database.
-   [flora](http://cran.r-project.org/web/packages/flora/index.html):
    Retrieve taxonomical information of botanical names from the Flora
    do Brasil website.
-   [Rcolombos](http://cran.r-project.org/web/packages/Rcolombos/index.html):
    This package provides programmatic access to Colombos, a web based
    interface for exploring and analyzing comprehensive
    organism-specific cross-platform expression compendia of bacterial
    organisms.
-   [Reol](http://cran.r-project.org/web/packages/Reol/index.html): An R
    interface to the Encyclopedia of Life (EOL) API. Includes functions
    for downloading and extracting information off the EOL pages.
-   [rPlant](http://cran.r-project.org/web/packages/rPlant/index.html):
    An R interface to the the many computational resources iPlant offers
    through their RESTful application programming interface. Currently,
    [rPlant](http://cran.r-project.org/web/packages/rPlant/index.html)
    functions interact with the iPlant foundational API, the Taxonomic
    Name Resolution Service API, and the Phylotastic Taxosaurus API.
    Before using rPlant, users will have to register with the [iPlant
    Collaborative](http://www.iplantcollaborative.org/discover/discovery-environment)
-   [ecoengine](http://cran.r-project.org/web/packages/ecoengine/index.html):
    ecoengine
    ([http://ecoengine.berkeley.edu/](http://ecoengine.berkeley.edu/))
    provides access to more than 2 million georeferenced specimen
    records from the Berkeley Natural History Museums.
    [http://bnhm.berkeley.edu/](http://bnhm.berkeley.edu/)
-   [spocc](http://cran.r-project.org/web/packages/spocc/index.html): A
    programmatic interface to many species occurrence data sources,
    including GBIF, USGS's BISON, iNaturalist, Berkeley Ecoinformatics
    Engine eBird, AntWeb, and more as they sources become easily
    available.
-   [paleobioDB](http://cran.r-project.org/web/packages/paleobioDB/index.html):
    Functions to wrap each endpoint of the PaleobioDB API, plus
    functions to visualize and process the fossil data. The API
    documentation for the Paleobiology Database can be found at
    [http://paleobiodb.org/data1.1/](http://paleobiodb.org/data1.1/).
-   [rnbn](http://cran.r-project.org/web/packages/rnbn/index.html): An R
    interface to the [UK National Biodiversity
    Network](http://www.nbn.org.uk). Development version on GitHub
    [here](https://github.com/JNCC-UK/rnbn).
-   [rYoutheria](http://cran.r-project.org/web/packages/rYoutheria/index.html):
    A programmatic interface to web-services of Youtheria, an online
    database of mammalian trait data. Development version on GitHub
    [here](https://github.com/biologicalrecordscentre/rYoutheria)
-   The [tpl](https://github.com/gustavobio/tpl) package, created by
    Gustavo Carvalho, doesn't interact with the web directly, but
    queries locally stored data from
    [theplantlist.org](http://www.theplantlist.org/), and data will be
    updated when theplantlist updates, which is not very often. There is
    another package for interacting with this same data, called
    [Taxonstand](http://cran.r-project.org/web/packages/Taxonstand/index.html).
-   [TR8](http://cran.r-project.org/web/packages/TR8/index.html): TR8
    contains a set of tools which take care of retrieving trait data for
    plant species from publicly available databases via web services
    (including: Biolflor, The Ecological Flora of the British Isles,
    LEDA traitbase, Ellenberg values for Italian Flora, Mycorrhizal
    intensity database).
-   [ecoretriever](http://cran.r-project.org/web/packages/ecoretriever/index.html):
    Provides an R interface to the [EcoData
    Retriever](http://ecodataretriever.org/) via the EcoData Retriever's
    command line interface. The EcoData Retriever automates the tasks of
    finding, downloading, and cleaning ecological datasets, and then
    stores them in a local database (including SQLite, MySQL, etc.). [On
    GitHub](https://github.com/ropensci/ecoretriever/).

### <a href="#econbus" name="econbus">#</a> Economics and Business

-   [WDI](http://cran.r-project.org/web/packages/WDI/index.html):
    Search, extract and format data from the World Bank's World
    Development Indicators.
-   The [Zillow](http://www.omegahat.org/Zillow/) package provides an R
    interface to the [Zillow](http://www.zillow.com/) Web Service API.
    It allows one to get the Zillow estimate for the price of a
    particular property specified by street address and ZIP code (or
    city and state), to find information (e.g. size of property and lot,
    number of bedrooms and bathrooms, year built.) about a given
    property, and to get comparable properties.
-   [sweSCB](http://cran.r-project.org/web/packages/sweSCB/index.html):
    Interface for the REST API of Statistics Sweden. Fetch information
    on data hierarchy stored behind the API; extract metadata; fetch
    actual data; and clean up results.
-   [psidR](http://cran.r-project.org/web/packages/psidR/index.html)
    Contains functions to download and format longitudinal datasets from
    the Panel Study of Income Dynamics (PSID).
-   [ONETr](http://cran.r-project.org/web/packages/ONETr/index.html)
    searches and retrieves occupational data from [O\*NET
    Online](http://www.onetonline.org/). Development version on GitHub
    [here](https://github.com/eknud/onetr).

### <a href="#finance" name="finance">#</a> Finance

-   [RDatastream](https://github.com/fcocquemas/rdatastream) (not on
    CRAN): An R interface to the [Thomson Dataworks Enterprise SOAP
    API](http://dataworks.thomson.com/Dataworks/Enterprise/1.0/) (paid),
    with some convenience functions for retrieving Datastream data
    specifically.
-   [Datastream2R](https://github.com/CharlesCara/Datastream2R) (not on
    CRAN): Another package for accessing the Datastream service. This
    package downloads data from the Thomson Reuters DataStream DWE
    server, which provides XML access to the Datastream database of
    economic and financial information.
-   [quantmod](http://cran.r-project.org/web/packages/quantmod/index.html):
    Functions for financial quantitative modelling as well as data
    acquisition, plotting and other utilities.
-   [TFX](http://cran.r-project.org/web/packages/TFX/index.html):
    Connects to TrueFX(tm) for free streaming real-time and historical
    tick-by-tick market data for dealable interbank foreign exchange
    rates with millisecond detail.
-   [fImport](http://cran.r-project.org/web/packages/fImport/index.html):
    Environment for teaching "Financial Engineering and Computational
    Finance"
-   [Rbitcoin](http://cran.r-project.org/web/packages/Rbitcoin/index.html):
    Ineract with Bitcoin. Both public and private API calls. Support
    HTTP over SSL. Debug messages of Rbitcoin, debug messages of RCurl,
    error handling.
-   [RCryptsy](http://cran.r-project.org/src/contrib/Archive/RCryptsy/)
    Wraps the API for the [Cryptsy](http://www.cryptsy.com)
    crypto-currency trading platform. Development version on GitHub
    [here](https://github.com/kylehamilton/RCryptsy). The package was
    archived on 2014-08-07 because it "no longer works with
    pubapi.cryptsy.com.", according the CRAN overlords.
-   [Thinknum](http://cran.r-project.org/web/packages/Thinknum/index.html):
    Interacts with the [Thinknum](http://www.thinknum.com/) API.
-   [pdfetch](http://cran.r-project.org/web/packages/pdfetch/index.html):
    A package for downloading economic and financial time series from
    public sources.
-   [tseries](http://cran.r-project.org/web/packages/tseries/index.html):
    Includes the `get.hist.quote` for historical financial data.
-   [rbitcoinchartsapi](http://cran.r-project.org/web/packages/rbitcoinchartsapi/index.html):
    An R package for the [BitCoinCharts.com](http://bitcoincharts.com/)
    API. From their website: "Bitcoincharts provides financial and
    technical data related to the Bitcoin network and this data can be
    accessed via a JSON application programming interface (API)."
-   [ustyc](http://cran.r-project.org/web/packages/ustyc/index.html): US
    Treasury yield curve data retrieval. Development version on GitHub
    [here](https://github.com/mrbcuda/ustyc).
-   [IBrokers](http://cran.r-project.org/web/packages/IBrokers/index.html):
    Provides native R access to Interactive Brokers Trader Workstation
    API.
-   [RJSDMX](http://cran.r-project.org/web/packages/RJSDMX/index.html):
    Retrieve data and metadata from SDMX compliant data providers.. [On
    Github](https://github.com/amattioc/SDMX/tree/master/RJSDMX).

### <a href="#genes" name="genes">#</a> Genes and Genomes

-   [cgdsr](http://cran.r-project.org/web/packages/cgdsr/index.html):
    R-Based API for accessing the MSKCC Cancer Genomics Data Server
    (CGDS).
-   [rsnps](http://cran.r-project.org/web/packages/rsnps/index.html):
    This package is a programmatic interface to various SNP datasets on
    the web: openSNP, NBCI's dbSNP database, and Broad Institute SNP
    Annotation and Proxy Search. This package started as a library to
    interact with openSNP alone, so most functions deal with openSNP.
-   [rentrez](http://cran.r-project.org/web/packages/rentrez/index.html):
    Talk with NCBI entrez using R.
-   [seqinr](http://cran.r-project.org/web/packages/seqinr/index.html):
    Exploratory data analysis and data visualization for biological
    sequence (DNA and protein) data.
-   [seq2R](http://cran.r-project.org/src/contrib/Archive/seq2R/):
    Detect compositional changes in genomic sequences - with some
    interaction with GenBank. Archived on CRAN.
-   [primerTree](http://cran.r-project.org/web/packages/primerTree/index.html):
    Visually Assessing the Specificity and Informativeness of Primer
    Pairs.
-   [hoardeR](http://cran.r-project.org/web/packages/hoardeR/index.html):
    Information retrieval from NCBI databases, with main focus on Blast.
-   [RISmed](http://cran.r-project.org/web/packages/RISmed/index.html):
    Download content from NCBI databases. Intended for analyses of NCBI
    database content, not reference management. See rpubmed for more
    literature oriented stuff from NCBI.
-   The [mygene.r](https://bitbucket.org/sulab/mygene.r/overview)
    package is an R client for accessing
    [Mygene.info](http://mygene.info/#) annotation and query services.

### <a href="#google" name="google">#</a> Google Web Services

-   [RGoogleStorage](http://www.omegahat.org/RGoogleStorage/) provides
    programmatic access to the Google Storage API. This allows R users
    to access and store data on Google's storage. We can upload and
    download content, create, list and delete folders/buckets, and set
    access control permissions on objects and buckets.
-   The [RGoogleDocs](http://www.omegahat.org/RGoogleDocs/) package is
    an example of using the RCurl and XML packages to quickly develop an
    interface to the Google Documents API.
-   [translate](http://cran.r-project.org/web/packages/translate/index.html):
    Bindings for the Google Translate API v2
-   [translateR](http://cran.r-project.org/web/packages/translateR/index.html)
    provides bindings for both Google and Microsoft translation APIs.
-   [googlePublicData](http://cran.r-project.org/web/packages/googlePublicData/index.html):
    An R library to build Google's public data explorer DSPL metadata
    files.
-   [googleVis](http://cran.r-project.org/web/packages/googleVis/index.html):
    Interface between R and the Google chart tools.
-   [gooJSON](http://cran.r-project.org/web/packages/gooJSON/index.html):
    A Google JSON data interpreter for R which contains a suite of
    helper functions for obtaining data from the Google Maps API JSON
    objects.
-   [plotGoogleMaps](http://cran.r-project.org/web/packages/plotGoogleMaps/index.html):
    Plot SP or SPT(STDIF,STFDF) data as HTML map mashup over Google
    Maps.
-   [plotKML](http://cran.r-project.org/web/packages/plotKML/index.html):
    Visualization of spatial and spatio-temporal objects in Google
    Earth.
-   [bigrquery](https://github.com/hadley/bigrquery) (not on CRAN): An
    interface to Google's bigquery from R.
-   [GFusionTables](http://gfusiontables.lopatenko.com/) (not on CRAN):
    An R interface to Google Fusion Tables. Google Fusion Tables is a
    data mangement system in the cloud. This package provides R
    functions to browse Fusion Tables catalog, retrieve data from Gusion
    Tables dtd storage to R and to upload data from R to Fusion Tables
-   [RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html):
    Provides functions for accessing and retrieving data from the Google
    Analytics API. [on
    Github](https://github.com/Tatvic/RGoogleAnalytics/issues). There is
    another R package for the same service
    ([RGA](http://cran.r-project.org/web/packages/RGA/index.html)); see
    next entry.
-   [RGA](http://cran.r-project.org/web/packages/RGA/index.html):
    Provides functions for accessing and retrieving data from the
    [Google Analytics APIs](https://developers.google.com/analytics/).
    Supports OAuth 2.0 authorization. Also, the
    [RGA](http://cran.r-project.org/web/packages/RGA/index.html) package
    provides a shiny app to explore data. There is another R package for
    the same service
    ([RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html));
    see above entry.
-   [RGoogleTrends](http://www.omegahat.org/RGoogleTrends/) provides
    programmatic access to Google Trends data. This is information about
    the popularity of a particular query.

### <a href="#gov" name="gov">#</a> Government

-   [acs](http://cran.r-project.org/web/packages/acs/index.html):
    Download, manipulate, and present data from the US Census American
    Community Survey.
-   [BerlinData](http://cran.r-project.org/web/packages/BerlinData/index.html):
    Easy access to [http://daten.berlin.de](http://daten.berlin.de). It
    allows you to search through the data catalogue and to download the
    data directly from within R. Development version on GitHub
    [here](https://github.com/dirkschumacher/RBerlinData).
-   [dkstat](https://github.com/rOpenGov/dkstat) (not on CRAN): A
    package to access the [StatBank
    API](http://www.statistikbanken.dk/statbank5a/) from [Statistics
    Denmark](http://www.dst.dk/).
-   [EIAdata](http://cran.r-project.org/web/packages/EIAdata/index.html):
    U.S. [Energy Information Administration (EIA)](http://www.eia.gov/)
    API client.
-   [federalregister](http://cran.r-project.org/web/packages/federalregister/index.html):
    Client package for the U.S. Federal Register API. Development
    version on GitHub
    [here](https://github.com/rOpenGov/federalregister).
-   [govStatJPN](http://cran.r-project.org/web/packages/govStatJPN/index.html):
    Functions to get public survey data in Japan.
-   [pollstR](http://cran.r-project.org/web/packages/pollstR/index.html):
    An R client for the Huffpost Pollster API. Development version on
    GitHub [here](https://github.com/rOpenGov/pollstR).
-   [pvsR](http://cran.r-project.org/web/packages/pvsR/index.html): An R
    package to interact with the Project Vote Smart API for scientific
    research.
-   [recalls](http://cran.r-project.org/web/packages/recalls/index.html):
    Access U.S. Federal Government Recall Data. Development version on
    GitHub [here](https://github.com/rOpenGov/recalls).
-   [RPublica](http://cran.r-project.org/web/packages/RPublica/index.html):
    ProPublica API Client. Development version on GitHub
    [here](https://github.com/rOpenGov/RPublica).
-   [rsunlight](https://github.com/ropengov/rsunlight) (not on CRAN): R
    client for the Sunlight Labs APIs. There are functions for Sunlight
    Labs Congress, Transparency, Open States, Real Time Congress,
    Capitol Words, and Influence Explorer APIs. Data outputs are R
    lists. There are also a few convenience functions for visualizing
    data and writing data to .csv.
-   [rtimes](https://github.com/ropengov/rtimes) (not on CRAN): R client
    for the New York Times APIs, including the Congress, Article Search,
    Campaign Finance, and Geographic APIs. The focus is on those that
    deal with political data, but throwing in Article Search and
    Geographic for good measure.
-   [sorvi](http://cran.r-project.org/web/packages/sorvi/index.html):
    Various tools for retrieving and working with Finnish open
    government data. Development version on GitHub
    [here](https://github.com/louhos/sorvi/).
-   [wethepeople](http://cran.r-project.org/src/contrib/Archive/wethepeople/):
    An R client for interacting with the White House's "We The People"
    petition API.
-   [polidata](http://cran.r-project.org/web/packages/polidata/index.html):
    Access to various political data APIs, including e.g. [Google Civic
    Information API](https://developers.google.com/civic-information/)
    or [Sunlight Congress API](https://sunlightlabs.github.io/congress/)
    for US Congress data, and [POPONG API](http://data.popong.com/) for
    South Korea National Assembly data. [on
    Github](https://github.com/e9t/polidata-r)
-   [enigma](http://cran.r-project.org/web/packages/enigma/index.html):
    [Enigma](https://enigma.io) holds many public datasets from
    governments, companies, universities, and organizations. Enigma
    provides an API for data, metadata, and statistics on each of the
    datasets. enigma is an R client to interact with the Enigma API,
    including getting the data and metadata for datasets in Enigma, as
    well as collecting statistics on datasets. In addition, you can
    download a gzipped csv file of a dataset if you want the whole
    dataset. An API key from Enigma is required to use enigma. [on
    Github](https://github.com/ropengov/enigma).
-   [ropensecretsapi](http://cran.r-project.org/web/packages/ropensecretsapi/index.html):
    An R package for the OpenSecrets.org web services API.

### <a href="#lit" name="lit">#</a> Literature, Metadata, Text, and Altmetrics

-   [rplos](http://cran.r-project.org/web/packages/rplos/index.html): A
    programmatic interface to the Web Service methods provided by the
    Public Library of Science journals for search.
-   [rbhl](http://cran.r-project.org/web/packages/rbhl/index.html): R
    interface to the Biodiversity Heritage Library (BHL) API.
-   [rmetadata](https://github.com/ropensci/rmetadata) (not on CRAN):
    Get scholarly metadata from around the web.
-   [RMendeley](http://cran.r-project.org/src/contrib/Archive/RMendeley/):
    Implementation of the Mendeley API in R. Archived on CRAN.
-   [rentrez](http://cran.r-project.org/web/packages/rentrez/index.html):
    Talk with NCBI entrez using R.
-   [rorcid](https://github.com/ropensci/rorcid) (not on CRAN): A
    programmatic interface the Orcid.org API.
-   [rpubmed](https://github.com/ropensci/rpubmed) (not on CRAN): Tools
    for extracting and processing Pubmed and Pubmed Central records.
-   [rAltmetric](http://cran.r-project.org/web/packages/rAltmetric/index.html):
    Query and visualize metrics from Altmetric.com.
-   [alm](http://cran.r-project.org/web/packages/alm/index.html): R
    wrapper to the almetrics API platform developed by PLoS.
-   [ngramr](http://cran.r-project.org/web/packages/ngramr/index.html):
    Retrieve and plot word frequencies through time from the Google
    Ngram Viewer.
-   [scholar](http://cran.r-project.org/web/packages/scholar/index.html)
    provides functions to extract citation data from Google Scholar.
    Convenience functions are also provided for comparing multiple
    scholars and predicting future h-index values.
-   The [Sxslt](http://www.omegahat.org/Sxslt/) package is an R
    interface to Dan Veillard's libxslt translator. It allows R
    programmers to use XSLT directly from within R, and also allows XSL
    code to make use of R functions.
-   The [Aspell](http://www.omegahat.org/Aspell/) package provides an
    interface to the aspell library for checking the spelling of words
    and documents.
-   [OAIHarvester](http://cran.r-project.org/web/packages/OAIHarvester/index.html):
    Harvest metadata using the Open Archives Initiative Protocol for
    Metadata Harvesting (OAI-PMH).
-   [RefManageR](http://cran.r-project.org/web/packages/RefManageR/index.html):
    Import and Manage BibTeX and BibLaTeX references with RefManager.
-   [pubmed.mineR](http://cran.r-project.org/web/packages/pubmed.mineR/index.html):
    An R package for text mining of [PubMed
    Abstracts](http://www.ncbi.nlm.nih.gov/pubmed). Supports fetching
    text and XML from PubMed.
-   [tm.plugin.webmining](http://cran.r-project.org/web/packages/tm.plugin.webmining/index.html):
    Extensible text retrieval framework for news feeds in XML (RSS,
    ATOM) and JSON formats. Currently, the following feeds are
    implemented: Google Blog Search, Google Finance, Google News,
    NYTimes Article Search, Reuters News Feed, Yahoo Finance and Yahoo
    Inplay.
-   [boilerpipeR](http://cran.r-project.org/web/packages/boilerpipeR/index.html):
    Generic Extraction of main text content from HTML files; removal of
    ads, sidebars and headers using the boilerpipe Java library.
-   [WikipediR](http://cran.r-project.org/web/packages/WikipediR/index.html):
    WikipediR is a wrapper for the MediaWiki API, aimed particularly at
    the Wikimedia 'production' wikis, such as Wikipedia. [on
    Github](https://github.com/Ironholds/WikipediR)
-   [aRxiv](http://cran.r-project.org/web/packages/aRxiv/index.html): An
    R client for the arXiv API, a repository of electronic preprints for
    computer science, mathematics, physics, quantitative biology,
    quantitative finance, and statistics. [on
    Github](https://github.com/ropensci/aRxiv).

### <a href="#mls" name="mls">#</a> Machine Learning as a Service

-   [bigml](http://cran.r-project.org/web/packages/bigml/index.html):
    BigML, a machine learning web service.
-   [MTurkR](http://cran.r-project.org/web/packages/MTurkR/index.html):
    Access to Amazon Mechanical Turk Requester API via R.

### <a href="#maps" name="maps">#</a> Maps

-   [RgoogleMaps](http://cran.r-project.org/web/packages/RgoogleMaps/index.html):
    This package serves two purposes: It provides a comfortable R
    interface to query the Google server for static maps, and use the
    map as a background image to overlay plots within R.
-   The [R2GoogleMaps](http://www.omegahat.org/R2GoogleMaps/) package -
    which is different from
    [RgoogleMaps](http://cran.r-project.org/web/packages/RgoogleMaps/index.html)
    - provides a mechanism to generate JavaScript code from R that
    displays data using Google Maps.
-   [osmar](http://cran.r-project.org/web/packages/osmar/index.html):
    This package provides infrastructure to access OpenStreetMap data
    from different sources to work with the data in common R manner and
    to convert data into available infrastructure provided by existing R
    packages (e.g., into sp and igraph objects).
-   [ggmap](http://cran.r-project.org/web/packages/ggmap/index.html):
    Allows for the easy visualization of spatial data and models on top
    of Google Maps, OpenStreetMaps, Stamen Maps, or CloudMade Maps using
    ggplot2.
-   The [GeoIP](http://www.omegahat.org/GeoIP/) package maps IP
    addresses and host names to geographic locations - latitude,
    longitude, region, city, zip code, etc.
-   The [RKML](http://www.omegahat.org/RKML/) is an implementation that
    provides users with high-level facilities to generate KML, the
    Keyhole Markup Language for display in, e.g., Google Earth.
-   [RKMLDevice](http://www.omegahat.org/RKMLDevice/) allows to create R
    graphics in KML format in a manner that allows them to be displayed
    on Google Earth (or Google Maps).
-   [leafletR](http://cran.r-project.org/web/packages/leafletR/index.html):
    Allows you to display your spatial data on interactive web-maps
    using the open-source JavaScript library Leaflet.

### <a href="#marketing" name="marketing">#</a> Marketing

-   [anametrix](http://cran.r-project.org/web/packages/anametrix/index.html):
    Bidirectional connector to Anametrix API.

### <a href="#media" name="media">#</a> Media: Images, Graphics, Videos, Music

-   [colourlovers](http://cran.r-project.org/web/packages/colourlovers/index.html):
    Extracts colors and multi-color patterns from
    [COLOURlovers](http://www.colourlovers.com/), for use in creating R
    graphics color palettes. Development version on GitHub
    [here](https://github.com/leeper/colourlovers).
-   [imguR](http://cran.r-project.org/web/packages/imguR/index.html): A
    package to share plots using the image hosting service
    [Imgur.com](http://www.imgur.com). The development version is on
    GitHub [here](https://github.com/leeper/imguR). knitr also has a
    function `imgur_upload()` to load images from literate programming
    documents.
-   [meme](https://github.com/leeper/meme) (not on CRAN): Provides the
    ability to create internet memes from template images using several
    online meme-generation services.
-   [RLastFM](http://cran.r-project.org/src/contrib/Archive/RLastFM/): A
    package to interface to the last.fm API. Archived on CRAN.
-   [rscribd](https://github.com/leeper/rscribd) (not on CRAN): API
    client for publishing documents to [Scribd](http://www.scribd.com).
-   The [RUbigraph](http://www.omegahat.org/RUbigraph/) package provides
    an R interface to a Ubigraph server for drawing interactive, dynamic
    graphs. You can add and remove vertices/nodes and edges in a graph
    and change their attributes/characteristics such as shape, color,
    size.

### <a href="#news" name="news">#</a> News

-   [GuardianR](http://cran.r-project.org/web/packages/GuardianR/index.html):
    Provides an interface to the Open Platform's Content API of the
    Guardian Media Group. It retrieves content from news outlets The
    Observer, The Guardian, and guardian.co.uk from 1999 to current day.
-   [RNYTimes](http://www.omegahat.org/RNYTimes) provides interfaces to
    several of the New York Times Web services for searching articles,
    meta-data, user-generated content and best seller lists.

### <a href="#other" name="other">#</a> Other

-   [sos4R](http://cran.r-project.org/web/packages/sos4R/index.html): R
    client for the OGC Sensor Observation Service.
-   [datamart](http://cran.r-project.org/web/packages/datamart/index.html):
    Provides an S4 infrastructure for unified handling of internal
    datasets and web based data sources. Examples include dbpedia,
    eurostat and sourceforge.
-   [rDrop](https://github.com/karthikram/rDrop) (not on CRAN): Dropbox
    interface.
-   [zendeskR](http://cran.r-project.org/web/packages/zendeskR/index.html):
    This package provides an R wrapper for the Zendesk API.
-   [AWS.tools](http://cran.r-project.org/web/packages/AWS.tools/index.html):
    An R package to interact with Amazon Web Services (EC2/S3).
-   [qualtrics](https://github.com/jbryer/qualtrics) (not on CRAN):
    Provides functions to interact with the
    [Qualtrics](http://www.qualtrics.com/) online survey tool.
-   [Rmonkey](https://github.com/leeper/Rmonkey/) (not on CRAN):
    Provides programmatic access to [Survey
    Monkey](https://www.surveymonkey.com/) for creating simple surveys
    and retrieving survey results.
-   [redcapAPI](http://cran.r-project.org/web/packages/redcapAPI/index.html):
    Access data stored in REDCap databases using an API. REDCap
    (Research Electronic Data CAPture) is a web application for building
    and managing online surveys and databases developed at Vanderbilt
    University. [on Github](https://github.com/nutterb/redcapAPI).
-   [RForcecom](http://cran.r-project.org/web/packages/RForcecom/index.html):
    RForcecom provides a connection to Force.com and Salesforce.com from
    R.
-   [mailR](http://cran.r-project.org/web/packages/mailR/index.html):
    Interface to Apache Commons Email to send emails from within R.
-   [gmailr](http://cran.r-project.org/web/packages/gmailr/index.html):
    Access the Gmail RESTful API from R
-   [RPushbullet](http://cran.r-project.org/web/packages/RPushbullet/index.html):
    Provides an easy-to-use interface for the Pushbullet service which
    provides fast and efficient notifications between computers, phones
    and tablets. By [Dirk Eddelbuettel](http://dirk.eddelbuettel.com/)
-   [slackr](http://cran.r-project.org/web/packages/slackr/index.html):
    R client for Slack.com messaging platform. [on
    Github](https://github.com/hrbrmstr/slackr)

### <a href="#publichealth" name="publichealth">#</a> Public Health

-   [rClinicalCodes](http://cran.r-project.org/web/packages/rClinicalCodes/index.html):
    R tools for integrating with the www.clinicalcodes.org web
    repository, by [David Springate](https://github.com/DASpringate)

### <a href="#social" name="social">#</a> Social media

-   [streamR](http://cran.r-project.org/web/packages/streamR/index.html):
    This package provides a series of functions that allow R users to
    access Twitter's filter, sample, and user streams, and to parse the
    output into data frames. OAuth authentication is supported.
-   [twitteR](http://cran.r-project.org/web/packages/twitteR/index.html):
    Provides an interface to the Twitter web API.
-   [RTwitterAPI](https://github.com/joyofdata/RTwitterAPI) (not on
    CRAN): Yet another Twitter R client.
-   The [Rflickr](http://www.omegahat.org/Rflickr) package provides an R
    interface to the Flickr photo management and sharing application Web
    service.
-   [Rfacebook](http://cran.r-project.org/web/packages/Rfacebook/index.html):
    Provides an interface to the Facebook API.
-   [plusser](http://cran.r-project.org/web/packages/plusser/index.html)
    has been designed to to facilitate the retrieval of Google+
    profiles, pages and posts. It also provides search facilities.
    Currently a Google+ API key is required for accessing Google+ data.
-   [SocialMediaMineR](http://cran.r-project.org/web/packages/SocialMediaMineR/index.html)
    is an analytic tool that returns information about the popularity of
    a URL on social media sites.

### <a href="#sports" name="sports">#</a> Sports

-   [nhlscrapr](http://cran.r-project.org/web/packages/nhlscrapr/index.html):
    Compiling the NHL Real Time Scoring System Database for easy use in
    R.
-   [pitchRx](http://cran.r-project.org/web/packages/pitchRx/index.html):
    Tools for Collecting and Visualizing Major League Baseball PITCHfx
    Data
-   [bbscrapeR](https://github.com/cpsievert/bbscrapeR) (not on CRAN):
    Tools for Collecting Data from nba.com and wnba.com
-   [fbRanks](http://cran.r-project.org/web/packages/fbRanks/index.html):
    Association Football (Soccer) Ranking via Poisson Regression - uses
    time dependent Poisson regression and a record of goals scored in
    matches to rank teams via estimated attack and defense strengths.

### <a href="#webanalytics" name="webanalytics">#</a> Web Analytics

-   [rgauges](http://cran.r-project.org/web/packages/rgauges/index.html):
    This package provides functions to interact with the Gaug.es API.
    Gaug.es is a web analytics service, like Google analytics. You have
    to have a Gaug.es account to use this package.
-   [RSiteCatalyst](http://cran.r-project.org/web/packages/RSiteCatalyst/index.html):
    Functions for accessing the Adobe Analytics (Omniture SiteCatalyst)
    Reporting API.
-   [RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html):
    Provides functions for accessing and retrieving data from the Google
    Analytics API. [on
    Github](https://github.com/Tatvic/RGoogleAnalytics/issues). There is
    another R package for the same service
    ([RGA](http://cran.r-project.org/web/packages/RGA/index.html)); see
    next entry.
-   [RGA](http://cran.r-project.org/web/packages/RGA/index.html):
    Provides functions for accessing and retrieving data from the
    [Google Analytics APIs](https://developers.google.com/analytics/).
    Supports OAuth 2.0 authorization. Also, the
    [RGA](http://cran.r-project.org/web/packages/RGA/index.html) package
    provides a shiny app to explore data. There is another R package for
    the same service
    ([RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html));
    see above entry.
-   [RGoogleTrends](http://www.omegahat.org/RGoogleTrends/) provides
    programmatic access to Google Trends data. This is information about
    the popularity of a particular query.

### CRAN packages:

-   [acs](http://cran.r-project.org/web/packages/acs/index.html)
-   [alm](http://cran.r-project.org/web/packages/alm/index.html)
-   [anametrix](http://cran.r-project.org/web/packages/anametrix/index.html)
-   [aRxiv](http://cran.r-project.org/web/packages/aRxiv/index.html)
-   [AWS.tools](http://cran.r-project.org/web/packages/AWS.tools/index.html)
-   [BerlinData](http://cran.r-project.org/web/packages/BerlinData/index.html)
-   [bigml](http://cran.r-project.org/web/packages/bigml/index.html)
-   [boilerpipeR](http://cran.r-project.org/web/packages/boilerpipeR/index.html)
-   [cgdsr](http://cran.r-project.org/web/packages/cgdsr/index.html)
-   [CHCN](http://cran.r-project.org/web/packages/CHCN/index.html)
-   [colourlovers](http://cran.r-project.org/web/packages/colourlovers/index.html)
-   [crn](http://cran.r-project.org/web/packages/crn/index.html)
-   [d3Network](http://cran.r-project.org/web/packages/d3Network/index.html)
-   [datamart](http://cran.r-project.org/web/packages/datamart/index.html)
-   [decctools](http://cran.r-project.org/web/packages/decctools/index.html)
-   [dismo](http://cran.r-project.org/web/packages/dismo/index.html)
-   [dvn](http://cran.r-project.org/web/packages/dvn/index.html)
-   [ecoengine](http://cran.r-project.org/web/packages/ecoengine/index.html)
-   [ecoretriever](http://cran.r-project.org/web/packages/ecoretriever/index.html)
-   [EIAdata](http://cran.r-project.org/web/packages/EIAdata/index.html)
-   [enigma](http://cran.r-project.org/web/packages/enigma/index.html)
-   [factualR](http://cran.r-project.org/web/packages/factualR/index.html)
-   [FAOSTAT](http://cran.r-project.org/web/packages/FAOSTAT/index.html)
-   [fbRanks](http://cran.r-project.org/web/packages/fbRanks/index.html)
-   [federalregister](http://cran.r-project.org/web/packages/federalregister/index.html)
-   [fImport](http://cran.r-project.org/web/packages/fImport/index.html)
-   [flora](http://cran.r-project.org/web/packages/flora/index.html)
-   [ggmap](http://cran.r-project.org/web/packages/ggmap/index.html)
-   [ggvis](http://cran.r-project.org/web/packages/ggvis/index.html)
-   [GhcnDaily](http://cran.r-project.org/web/packages/GhcnDaily/index.html)
-   [gmailr](http://cran.r-project.org/web/packages/gmailr/index.html)
-   [googlePublicData](http://cran.r-project.org/web/packages/googlePublicData/index.html)
-   [googleVis](http://cran.r-project.org/web/packages/googleVis/index.html)
-   [gooJSON](http://cran.r-project.org/web/packages/gooJSON/index.html)
-   [govStatJPN](http://cran.r-project.org/web/packages/govStatJPN/index.html)
-   [GuardianR](http://cran.r-project.org/web/packages/GuardianR/index.html)
-   [hoardeR](http://cran.r-project.org/web/packages/hoardeR/index.html)
-   [httpRequest](http://cran.r-project.org/web/packages/httpRequest/index.html)
-   [httpuv](http://cran.r-project.org/web/packages/httpuv/index.html)
-   [httr](http://cran.r-project.org/web/packages/httr/index.html)
    (core)
-   [IBrokers](http://cran.r-project.org/web/packages/IBrokers/index.html)
-   [imguR](http://cran.r-project.org/web/packages/imguR/index.html)
-   [jSonarR](http://cran.r-project.org/web/packages/jSonarR/index.html)
-   [jsonlite](http://cran.r-project.org/web/packages/jsonlite/index.html)
    (core)
-   [leafletR](http://cran.r-project.org/web/packages/leafletR/index.html)
-   [mailR](http://cran.r-project.org/web/packages/mailR/index.html)
-   [marmap](http://cran.r-project.org/web/packages/marmap/index.html)
-   [meteoForecast](http://cran.r-project.org/web/packages/meteoForecast/index.html)
-   [MTurkR](http://cran.r-project.org/web/packages/MTurkR/index.html)
-   [ngramr](http://cran.r-project.org/web/packages/ngramr/index.html)
-   [nhlscrapr](http://cran.r-project.org/web/packages/nhlscrapr/index.html)
-   [OAIHarvester](http://cran.r-project.org/web/packages/OAIHarvester/index.html)
-   [okmesonet](http://cran.r-project.org/web/packages/okmesonet/index.html)
-   [ONETr](http://cran.r-project.org/web/packages/ONETr/index.html)
-   [opencpu](http://cran.r-project.org/web/packages/opencpu/index.html)
-   [osmar](http://cran.r-project.org/web/packages/osmar/index.html)
-   [paleobioDB](http://cran.r-project.org/web/packages/paleobioDB/index.html)
-   [pdfetch](http://cran.r-project.org/web/packages/pdfetch/index.html)
-   [pitchRx](http://cran.r-project.org/web/packages/pitchRx/index.html)
-   [plotGoogleMaps](http://cran.r-project.org/web/packages/plotGoogleMaps/index.html)
-   [plotKML](http://cran.r-project.org/web/packages/plotKML/index.html)
-   [plusser](http://cran.r-project.org/web/packages/plusser/index.html)
-   [polidata](http://cran.r-project.org/web/packages/polidata/index.html)
-   [pollstR](http://cran.r-project.org/web/packages/pollstR/index.html)
-   [primerTree](http://cran.r-project.org/web/packages/primerTree/index.html)
-   [psidR](http://cran.r-project.org/web/packages/psidR/index.html)
-   [pubmed.mineR](http://cran.r-project.org/web/packages/pubmed.mineR/index.html)
-   [pvsR](http://cran.r-project.org/web/packages/pvsR/index.html)
-   [Quandl](http://cran.r-project.org/web/packages/Quandl/index.html)
-   [quantmod](http://cran.r-project.org/web/packages/quantmod/index.html)
-   [raincpc](http://cran.r-project.org/web/packages/raincpc/index.html)
-   [rainfreq](http://cran.r-project.org/web/packages/rainfreq/index.html)
-   [rAltmetric](http://cran.r-project.org/web/packages/rAltmetric/index.html)
-   [rapport](http://cran.r-project.org/web/packages/rapport/index.html)
-   [rbhl](http://cran.r-project.org/web/packages/rbhl/index.html)
-   [rbison](http://cran.r-project.org/web/packages/rbison/index.html)
-   [Rbitcoin](http://cran.r-project.org/web/packages/Rbitcoin/index.html)
-   [rbitcoinchartsapi](http://cran.r-project.org/web/packages/rbitcoinchartsapi/index.html)
-   [rClinicalCodes](http://cran.r-project.org/web/packages/rClinicalCodes/index.html)
-   [Rcolombos](http://cran.r-project.org/web/packages/Rcolombos/index.html)
-   [RCurl](http://cran.r-project.org/web/packages/RCurl/index.html)
    (core)
-   [rdatamarket](http://cran.r-project.org/web/packages/rdatamarket/index.html)
-   [rebird](http://cran.r-project.org/web/packages/rebird/index.html)
-   [recalls](http://cran.r-project.org/web/packages/recalls/index.html)
-   [redcapAPI](http://cran.r-project.org/web/packages/redcapAPI/index.html)
-   [RefManageR](http://cran.r-project.org/web/packages/RefManageR/index.html)
-   [rentrez](http://cran.r-project.org/web/packages/rentrez/index.html)
-   [Reol](http://cran.r-project.org/web/packages/Reol/index.html)
-   [repmis](http://cran.r-project.org/web/packages/repmis/index.html)
-   [Rfacebook](http://cran.r-project.org/web/packages/Rfacebook/index.html)
-   [rFDSN](http://cran.r-project.org/web/packages/rFDSN/index.html)
-   [rfigshare](http://cran.r-project.org/web/packages/rfigshare/index.html)
-   [rfishbase](http://cran.r-project.org/web/packages/rfishbase/index.html)
-   [rfisheries](http://cran.r-project.org/web/packages/rfisheries/index.html)
-   [RForcecom](http://cran.r-project.org/web/packages/RForcecom/index.html)
-   [RGA](http://cran.r-project.org/web/packages/RGA/index.html)
-   [rgauges](http://cran.r-project.org/web/packages/rgauges/index.html)
-   [rgbif](http://cran.r-project.org/web/packages/rgbif/index.html)
-   [RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html)
-   [RgoogleMaps](http://cran.r-project.org/web/packages/RgoogleMaps/index.html)
-   [RISmed](http://cran.r-project.org/web/packages/RISmed/index.html)
-   [RJSDMX](http://cran.r-project.org/web/packages/RJSDMX/index.html)
-   [rjson](http://cran.r-project.org/web/packages/rjson/index.html)
-   [RJSONIO](http://cran.r-project.org/web/packages/RJSONIO/index.html)
-   [rnbn](http://cran.r-project.org/web/packages/rnbn/index.html)
-   [RNCEP](http://cran.r-project.org/web/packages/RNCEP/index.html)
-   [rnoaa](http://cran.r-project.org/web/packages/rnoaa/index.html)
-   [rnrfa](http://cran.r-project.org/web/packages/rnrfa/index.html)
-   [ROAuth](http://cran.r-project.org/web/packages/ROAuth/index.html)
-   [Rook](http://cran.r-project.org/web/packages/Rook/index.html)
-   [ropensecretsapi](http://cran.r-project.org/web/packages/ropensecretsapi/index.html)
-   [rPlant](http://cran.r-project.org/web/packages/rPlant/index.html)
-   [rplos](http://cran.r-project.org/web/packages/rplos/index.html)
-   [rpubchem](http://cran.r-project.org/web/packages/rpubchem/index.html)
-   [RPublica](http://cran.r-project.org/web/packages/RPublica/index.html)
-   [RPushbullet](http://cran.r-project.org/web/packages/RPushbullet/index.html)
-   [RSelenium](http://cran.r-project.org/web/packages/RSelenium/index.html)
-   [RSiteCatalyst](http://cran.r-project.org/web/packages/RSiteCatalyst/index.html)
-   [rsnps](http://cran.r-project.org/web/packages/rsnps/index.html)
-   [RSocrata](http://cran.r-project.org/web/packages/RSocrata/index.html)
-   [rvertnet](http://cran.r-project.org/web/packages/rvertnet/index.html)
-   [rWBclimate](http://cran.r-project.org/web/packages/rWBclimate/index.html)
-   [rYoutheria](http://cran.r-project.org/web/packages/rYoutheria/index.html)
-   [scholar](http://cran.r-project.org/web/packages/scholar/index.html)
-   [scrapeR](http://cran.r-project.org/web/packages/scrapeR/index.html)
-   [seqinr](http://cran.r-project.org/web/packages/seqinr/index.html)
-   [servr](http://cran.r-project.org/web/packages/servr/index.html)
-   [shiny](http://cran.r-project.org/web/packages/shiny/index.html)
    (core)
-   [shopifyr](http://cran.r-project.org/web/packages/shopifyr/index.html)
-   [slackr](http://cran.r-project.org/web/packages/slackr/index.html)
-   [SocialMediaMineR](http://cran.r-project.org/web/packages/SocialMediaMineR/index.html)
-   [soilDB](http://cran.r-project.org/web/packages/soilDB/index.html)
-   [sorvi](http://cran.r-project.org/web/packages/sorvi/index.html)
-   [sos4R](http://cran.r-project.org/web/packages/sos4R/index.html)
-   [spocc](http://cran.r-project.org/web/packages/spocc/index.html)
-   [streamR](http://cran.r-project.org/web/packages/streamR/index.html)
-   [sweSCB](http://cran.r-project.org/web/packages/sweSCB/index.html)
-   [taxize](http://cran.r-project.org/web/packages/taxize/index.html)
-   [Taxonstand](http://cran.r-project.org/web/packages/Taxonstand/index.html)
-   [TFX](http://cran.r-project.org/web/packages/TFX/index.html)
-   [Thinknum](http://cran.r-project.org/web/packages/Thinknum/index.html)
-   [tm.plugin.webmining](http://cran.r-project.org/web/packages/tm.plugin.webmining/index.html)
-   [TR8](http://cran.r-project.org/web/packages/TR8/index.html)
-   [translate](http://cran.r-project.org/web/packages/translate/index.html)
-   [translateR](http://cran.r-project.org/web/packages/translateR/index.html)
-   [treebase](http://cran.r-project.org/web/packages/treebase/index.html)
-   [tseries](http://cran.r-project.org/web/packages/tseries/index.html)
-   [twitteR](http://cran.r-project.org/web/packages/twitteR/index.html)
-   [ustyc](http://cran.r-project.org/web/packages/ustyc/index.html)
-   [W3CMarkupValidator](http://cran.r-project.org/web/packages/W3CMarkupValidator/index.html)
-   [waterData](http://cran.r-project.org/web/packages/waterData/index.html)
-   [WDI](http://cran.r-project.org/web/packages/WDI/index.html)
-   [weatherData](http://cran.r-project.org/web/packages/weatherData/index.html)
-   [whisker](http://cran.r-project.org/web/packages/whisker/index.html)
-   [WikipediR](http://cran.r-project.org/web/packages/WikipediR/index.html)
-   [XML](http://cran.r-project.org/web/packages/XML/index.html) (core)
-   [XML2R](http://cran.r-project.org/web/packages/XML2R/index.html)
-   [yhatr](http://cran.r-project.org/web/packages/yhatr/index.html)
-   [zendeskR](http://cran.r-project.org/web/packages/zendeskR/index.html)

### Related links:

-   [GitHub package: animint](https://github.com/tdhock/animint)
-   [Omegahat package: Aspell](http://www.omegahat.org/Aspell/)
-   [GitHub package: bigrquery](https://github.com/hadley/bigrquery)
-   [Omegahat package: CGIwithR](http://www.omegahat.org/CGIwithR/)
-   [GitHub package: clickme](https://github.com/nachocab/clickme)
-   [Omegahat package: GeoIP](http://www.omegahat.org/GeoIP/)
-   [GitHub package: ggvis](https://github.com/rstudio/ggvis)
-   [GitHub package: neotoma](https://github.com/ropensci/neotoma)
-   [GitHub package: qualtrics](https://github.com/jbryer/qualtrics)
-   [Omegahat package:
    R2GoogleMaps](http://www.omegahat.org/R2GoogleMaps/)
-   [Omegahat package:
    RAmazonDBREST](http://www.omegahat.org/RAmazonDBREST)
-   [Omegahat package: RAmazonS3](http://www.omegahat.org/RAmazonS3)
-   [GitHub package: rCharts](https://github.com/ramnathv/rCharts)
-   [Omegahat package:
    Rcompression](http://www.omegahat.org/Rcompression/)
-   [Omegahat package:
    RDCOMClient](http://www.omegahat.org/RDCOMClient/)
-   [Omegahat package:
    RDCOMServer](http://www.omegahat.org/RDCOMServer/)
-   [GitHub package: rDrop](https://github.com/karthikram/rDrop)
-   [Omegahat package: REuPathDB](http://www.omegahat.org/REuPathDB/)
-   [Omegahat package: Rflickr](http://www.omegahat.org/Rflickr)
-   [Omegahat package:
    RGoogleDocs](http://www.omegahat.org/RGoogleDocs/)
-   [Omegahat package:
    RGoogleStorage](http://www.omegahat.org/RGoogleStorage/)
-   [Omegahat package:
    RGoogleTrends](http://www.omegahat.org/RGoogleTrends/)
-   [Omegahat package: RHTMLForms](http://www.omegahat.org/RHTMLForms/)
-   [Omegahat package: RKML](http://www.omegahat.org/RKML/)
-   [Omegahat package: RKMLDevice](http://www.omegahat.org/RKMLDevice/)
-   [GitHub package: rmetadata](https://github.com/ropensci/rmetadata)
-   [GitHub package: rnbn](https://github.com/JNCC-UK/rnbn)
-   [GitHub package: rnpn](https://github.com/ropensci/rnpn)
-   [Omegahat package: RNYTimes](http://www.omegahat.org/RNYTimes)
-   [GitHub package: rorcid](https://github.com/ropensci/rorcid)
-   [GitHub package: rpubmed](https://github.com/ropensci/rpubmed)
-   [GitHub package:
    RSelenium](https://github.com/johndharrison/RSelenium)
-   [Omegahat package: RTidyHTML](http://www.omegahat.org/RTidyHTML/)
-   [Omegahat package: RUbigraph](http://www.omegahat.org/RUbigraph/)
-   [GitHub package: rVega](https://github.com/metagraf/rVega)
-   [Omegahat package:
    SpiderMonkey](http://www.omegahat.org/SpiderMonkey/)
-   [Omegahat package: SSOAP](http://www.omegahat.org/SSOAP/)
-   [Omegahat package: Sxslt](http://www.omegahat.org/Sxslt/)
-   [GitHub package: XML2R](https://github.com/cpsievert/XML2R)
-   [Omegahat package: XMLRPC](http://www.omegahat.org/XMLRPC/)
-   [Omegahat package: XMLSchema](http://www.omegahat.org/XMLSchema/)
-   [Omegahat package: WADL](http://www.omegahat.org/WADL/)
-   [Omegahat package: Zillow](http://www.omegahat.org/Zillow/)
-   [GitHub package:
    RDatastream](https://github.com/fcocquemas/rdatastream)
-   [GitHub package:
    Datastream2R](https://github.com/CharlesCara/Datastream2R)
-   [CRAN archived package:
    seq2R](http://cran.r-project.org/src/contrib/Archive/seq2R/)
-   [CRAN archived package:
    BerkeleyEarth](http://cran.r-project.org/src/contrib/Archive/BerkeleyEarth/)
-   [CRAN archived package:
    Metadata](http://cran.r-project.org/src/contrib/Archive/Metadata/)
-   [CRAN archived package:
    infochimps](http://cran.r-project.org/src/contrib/Archive/infochimps/)
-   [CRAN archived package:
    RLastFM](http://cran.r-project.org/src/contrib/Archive/RLastFM/)
-   [GFusionTables](http://gfusiontables.lopatenko.com/)
-   [GitHub package:
    websockets](https://github.com/rstudio/R-Websockets)
-   [CRAN archived package:
    websockets](http://cran.r-project.org/src/contrib/Archive/websockets/)
-   [GitHub package: rsunlight](https://github.com/ropengov/rsunlight)
-   [GitHub package: rtimes](https://github.com/ropengov/rtimes)
-   [Github package:
    tldextract](https://github.com/jayjacobs/tldextract)
-   [Bitbucket package:
    mygene.r](https://bitbucket.org/sulab/mygene.r/overview)
-   [Github package: tpl](https://github.com/gustavobio/tpl)
-   [Github package:
    RTwitterAPI](https://github.com/joyofdata/RTwitterAPI)

