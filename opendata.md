This Task View contains information about using R to obtain, parse, manipulate, create, and share open data. The focus here is on data discovery, data archiving, open data available in R packages, and packages designed for working with specific types of open data. Much open data is available on the web, and the [WebTechnologies](http://cran.r-project.org/web/views/WebTechnologies.html) TaskView addresses how to obtain and parse web-based data. There is obvious overlap between the two TaskViews, so some packages are described on both.

Another key issue in a data-focused TaskView is the meaning of "open" data. This TaskView covers many types of data that come with varying degrees of usage restrictions from public domain (or CC-0) data that is usable for any purpose to "freely available" data that is available at no cost but may have licenses that are not strictly speaking "open". Users should investigate the terms of use and licensing of any data referenced here before using it for any particular application. Additionally, the view lists wrappers for paid APIs, as well as those that require an account but are not necessarily subscription only. These are marked (\$) and (K) respectively.

If you have any comments or suggestions for additions, revisions, or improvements for this taskview, go to GitHub and [submit an issue](https://github.com/ropensci/opendata/issues), or make some changes and [submit a pull request](https://github.com/ropensci/opendata/pulls). If you can't contribute on GitHub, [send Jaime an email](mailto:jashander@ucdavis.edu?subject=Open Data Task View). If you have an issue with one of the packages discussed below, please contact the maintainer of that package.

If you know of a web service, API, data source, or other online resource that is not yet supported by an R package, consider adding it to [the package development to do list on GitHub](https://github.com/ropensci/opendata/wiki/ToDo).

## Data Sharing and Archiving ##

Data sharing involves the dissemination of data in draft form or for a temporary period of time. rdrop2 ([GitHub](https://github.com/karthik/rdrop2)) is a Dropbox.com interface from R, providing access to a full suite of file operations, including dir/copy/move/delete operations, account information (including quotas) and the ability to upload and download files from any Dropbox account (K). [boxr](https://github.com/brendan-R/boxr) is a lightweight, high-level R interface for the [box.com API](https://developers.box.com/docs/) (K). <ohat>RAmazonS3</ohat> provides an interface to the Amazon Simple Storage Service (S3) (K).

Data archiving involves the production and dissemination of open data that is persistently accessible, typically in public repositories. The tools below may be useful for both archiving data and retrieving extant data from public archives.

-   [ckanr](https://github.com/ropensci/ckanr): A generic R client to interact with the CKAN data portal software API (<http://ckan.org/>). Allows user to swap out the base URL to use any CKAN instance. [Source on GitHub](https://github.com/ropensci/ckanr).
-   [dataone](http://cran.rstudio.com/src/contrib/Archive/dataone/): Read/write access to data and metadata from the [DataONE network](https://www.dataone.org/) of Member Node data repositories.
-   <pkg>dvn</pkg> ([GitHub](https://github.com/ropensci/dvn)) provides access to Dataverse Network repositories. <pkg>UNF</pkg> implements the Universal Numeric Fingerprint, a format-independent data hashing algorithm used by Dataverse, to verify and cite a dataset.
-   <pkg>factualR</pkg>: Thin wrapper for the [Factual.com](http://factual.com/) server API.
-   The <ohat>Rflickr</ohat> (not on CRAN) package provides an R interface to the Flickr photo management and sharing application Web service. (not on CRAN) (K)
-   [googlesheets](https://github.com/jennybc/googlesheets) (not on CRAN): Access private or public Google Sheets by title, key, or URL. Extract data or edit data. Create, delete, rename, copy, upload, or download spreadsheets and worksheets. [Source on GitHub](https://github.com/jennybc/googlesheets)
-   <pkg>gsheet</pkg>: Download Google Sheets using just the sharing link. Spreadsheets can be downloaded as a data frame, or as plain text to parse manually. [Source on GitHub](https://github.com/maxconway/gsheet)
-   <pkg>imguR</pkg> ([GitHub](https://github.com/leeper/imguR)): A package to share plots using the image hosting service [Imgur.com](http://www.imgur.com). knitr also has a function `imgur_upload()` to load images from literate programming documents.
-   [infochimps](http://cran.rstudio.com/src/contrib/Archive/infochimps/): An R wrapper for the infochimps.com API services, from [Drew Conway](http://drewconway.com/). The CRAN version is archived. Development is available on GitHub [here](https://github.com/drewconway/infochimps).
-   [internetarchive](https://github.com/lmullen/internetarchive) (not on CRAN): API client for internet archive metadata. [Source on GitHub](https://github.com/ropensci/internetarchive).
-   <pkg>jSonarR</pkg>: Enables users to access MongoDB by running queries and returning their results in R data frames. jSonarR uses data processing and conversion capabilities in the jSonar Analytics Platform and the [JSON Studio Gateway](http://www.jsonstudio.com), to convert JSON to a tabular format.
-   <pkg>OAIHarvester</pkg>: Harvest metadata using the Open Archives Initiative Protocol for Metadata Harvesting (OAI-PMH).
-   <pkg>Quandl</pkg>: A package that interacts directly with the [Quandl](http://www.quandl.com/) API to offer data in a number of formats usable in R, as well as the ability to upload and search.
-   <pkg>rdatamarket</pkg>: Fetches data from DataMarket.com, either as timeseries in zoo form (dmseries) or as long-form data frames (dmlist).
-   [rerddap](https://github.com/ropensci/rerddap) (not on CRAN): A generic R client to interact with any ERDDAP instance, which is a special case of OPeNDAP (<https://en.wikipedia.org/wiki/OPeNDAP>), or *Open-source Project for a Network Data Access Protocol*. Allows user to swap out the base URL to use any ERDDAP instance. [Source on GitHub](https://github.com/ropensci/rerddap).
-   <pkg>rfigshare</pkg>: Programmatic interface for [Figshare.com](http://figshare.com/). [Source on GitHub](https://github.com/ropensci/rfigshare).
-   [rscribd](https://github.com/leeper/rscribd) (not on CRAN): API client for publishing documents to [Scribd](http://www.scribd.com).
-   [RSocrata](http://cran.rstudio.com/src/contrib/Archive/RSocrata/): (temporarily archived on CRAN for email bounce) Provided with a Socrata dataset resource URL, or a Socrata SoDA web API query, returns an R data frame. Converts dates to POSIX format. Supports CSV and JSON. Manages throttling by Socrata.

## Data Packages ##

Various R packages make open datasets available directly in R. These are useful both for demonstrating R functionality but may also be useful in their own right. The datasets package (as part of the base R distribution) contains many such datasets, though most are small in size. The following packages contain more substantial datasets.

-   Various packages provide datasets intended for those working in specific disciplines, such as <pkg>archdata</pkg> for archeaology, <pkg>agridat</pkg> for agriculture, <pkg>astrodatR</pkg> for astronomy, <pkg>historydata</pkg> for history, and <pkg>insuranceData</pkg> for insurance.
-   <pkg>babynames</pkg> contains all U.S. baby names provided by the Social Security Administration that were used for at least 5 children of either sex.
-   emdatr ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/emdatr)) provided information on human and financial losses for more than 20,000 global natural disasters since 1900.
-   <pkg>ergmharris</pkg> contains a network data set consisting of 1283 local health departments and the communication links among them along with several attributes.
-   <pkg>favnums</pkg> contains a dataset of 30,000 respondents' favorite numbers.
-   <pkg>fds</pkg> and <pkg>Mcomp</pkg> contain a variety of time series datasets.
-   <pkg>gapminder</pkg> is an excerpt of the [Gapminder.org](http://www.gapminder.org) dataset including life expectancy, GDP per capita, and population, every five years, from 1952 to 2007, for 142 countries.
-   <pkg>GCD</pkg> contains the Global Charcoal database data. Data include charcoal series (age, depth, charcoal quantity, associated units and methods) and informations on sedimentary sites (localisation, depositional environment, biome, etc.).
-   <pkg>ggplot2movies</pkg> provides a dataset extracted from IMDB that was formerly available in ggplot2.
-   <pkg>Guerry</pkg> contains spatial data from A.M. Guerry's "Moral Statistics of France" (1833).
-   <pkg>HistData</pkg> offers various historical datasets, especially those related to data visualization.
-   <pkg>Lahman</pkg> provides tables from Sean Lahman's Baseball Database including data on pitching, hitting, and fielding performance, etc. from 1871 through 2013.
-   <pkg>MCAPS</pkg> contains weather and air pollution data, risk estimates, and other information from the Medicare Air Pollution Study (MCAPS) of 204 U.S. counties, 1999–2002.
-   <pkg>nasaweather</pkg> contains meteorological and atmospheric data from the ASA 2006 data expo.
-   <pkg>NHANES</pkg> body shape and related measurements from the US National Health and Nutrition Examination Survey (NHANES, 1999-2004).
-   <pkg>noncensus</pkg> contains data related to the U.S. Census.
-   <pkg>nycflights13</pkg> contains airline on-time data for all flights departing from New York City in 2013.
-   <pkg>pinfsc50</pkg> contains genomic data for the plant pathogen "Phytophthora infestans."
-   <pkg>QSARdata</pkg> offers molecular descriptors and outcomes for several public domain data sets.
-   <pkg>randomNames</pkg> provides a dataset of frequency probabilities for first names by gender and ethnicity and last names by ethnicity (e.g., for use in anonymizing data).
-   <pkg>rcorpora</pkg> contains a 'corpora()' function that provides dozens of categorized text corpora on a number of topics.
-   <pkg>rUnemploymentData</pkg> contains U.S. unemployment data from the US Bureau of Labor Statistics, 2000-2013.
-   <pkg>SwissAir</pkg> contains various air quality measures for 3 sites around lake of Lucerne in Central Switzerland in 30 min time resolution for year 2004.
-   <pkg>titanic</pkg> is a repackaging of the Titanic passenger survival data available from R in a structure more convenient for data analysis.
-   <pkg>UScensus2010</pkg> and its related packages provide spatial data from the U.S. Census.
-   <pkg>valottery</pkg> provides historical results of [the Virginia state lottery](https://www.valottery.com/).
-   <pkg>webuse</pkg> is a Stata-style 'webuse()' function for importing named datasets from Stata's online collection.
-   <pkg>wpp2015</pkg> Provides data from the United Nation's World Population Prospects 2015.
-   <pkg>zipcode</pkg> contains a database of city, state, latitude, and longitude information for U.S. ZIP codes from the CivicSpace Database.
-   Various packages supply data to accompany general R instructional materials (e.g., books) or other packages, including: <pkg>alr3</pkg>, <pkg>alr4</pkg>, <pkg>aplore3</pkg>, <pkg>aprean3</pkg>, <pkg>BaM</pkg>, <pkg>BayesDA</pkg>, <pkg>blmeco</pkg>, <pkg>cluster.datasets</pkg>, <pkg>Devore7</pkg>, <pkg>eegkitdata</pkg>, <pkg>ElemStatLearn</pkg>, <pkg>EngrExpt</pkg>, <pkg>expsmooth</pkg>, <pkg>Fahrmeir</pkg>, <pkg>faraway</pkg>, <pkg>fastR</pkg>, <pkg>FAwR</pkg>, <pkg>Flury</pkg>, <pkg>fma</pkg>, <pkg>gamair</pkg>, <pkg>gamlss.data</pkg>, <pkg>GANPAdata</pkg>, <pkg>gpk</pkg>, <pkg>HSAUR3</pkg>, <pkg>igraphdata</pkg>, <pkg>isdals</pkg>, <pkg>KMsurv</pkg>, <pkg>labstats</pkg>, <pkg>languageR</pkg>, <pkg>learningr</pkg>, <pkg>LeLogicielR</pkg>, <pkg>Lock5Data</pkg>, <pkg>mangoTraining</pkg>, <pkg>MEMSS</pkg>, <pkg>MindOnStats</pkg>, <pkg>mistat</pkg>, <pkg>mosaicData</pkg>, <pkg>MPDiR</pkg>, <pkg>MPV</pkg>, <pkg>MSG</pkg>, <pkg>msme</pkg>, <pkg>msos</pkg>, <pkg>NSM3</pkg>, <pkg>nutshell</pkg>, <pkg>OIdata</pkg>, <pkg>openintro</pkg>, <pkg>PBImisc</pkg>, <pkg>qtlbook</pkg>, <pkg>RSADBE</pkg>, <pkg>SASmixed</pkg>, <pkg>SenSrivastava</pkg>, <pkg>Sleuth3</pkg>, <pkg>SMCRM</pkg>, <pkg>smdata</pkg>, <pkg>smss</pkg>, <pkg>Stat2Data</pkg>, <pkg>synbreedData</pkg>, <pkg>tempcyclesdata</pkg>, <pkg>TH.data</pkg>, <pkg>TRSbook</pkg>, <pkg>UsingR</pkg>, <pkg>VGAMdata</pkg>, <pkg>wikibooks</pkg>, and <pkg>WWGbook</pkg>. Note: only packages that primarily contain data (as opposed to functions with minimal datasets as examples) are included here.

## Web-based Open Data ##

[Agriculture](#agriculture) | [Astronomy](#astronomy) | [Chemistry](#chemistry) | [Earth Science](#earth-science) | [Ecology/Evolution](#ecological-and-evolutionary-biology) | [Finance](#finance) | [Genes/Genomes](#genes-and-genomes) | [Geocoding](#geocoding) | [Google Analytics](#google-analytics) | [Google Web Services](#google-web-services) | [Government and Economics](#government) | [Literature/Text-mining](#literature-metadata-text-and-altmetrics) | [Maps](#maps) | [Marketing](#marketing) | [NCBI](#ncbi) | [News](#news) | [Other](#other) | [Public Health](#public-health) | [Social Media](#social-media) | [Social Science](#social-science) | [Sports](#sports) | [Web Analytics](#web-analytics) | [Wikipedia](#wikipedia) |

###Agriculture###

-   [cimis](http://cran.rstudio.com/src/contrib/Archive/cimis/): R package for retrieving data from CIMIS, the California Irrigation Management Information System. Available in CRAN archives only.
-   <pkg>FAOSTAT</pkg>: The package hosts a list of functions to download, manipulate, construct and aggregate agricultural statistics provided by the FAOSTAT (Food and Agricultural Organization of the United Nations) database.

###Astronomy###

-   <pkg>RStars</pkg>: Star-API provides API access to the American Museum of Natural History's Digital Universe Data, including positions, luminosity, color, and other data on over 100,000 stars as well as constellations, exo-planets, clusters and others. [Source on GitHub](https://github.com/ropensci/RStars).

###Chemistry###

-   <pkg>rpubchem</pkg>: Interface to the PubChem Collection.
-   <pkg>webchem</pkg>: Retrieve chemical information from a suite of web APIs for chemical information. [Source on GitHub](https://github.com/ropensci/webchem)

###Earth Science###

-   [BerkeleyEarth](http://cran.rstudio.com/src/contrib/Archive/BerkeleyEarth/): Data input for Berkeley Earth Surface Temperature. Archived on CRAN.
-   <pkg>CHCN</pkg>: A compilation of historical through contemporary climate measurements scraped from the Environment Canada Website Including tools for scraping data, creating metadata and formatting temperature files.
-   <pkg>clifro</pkg>: Designed to minimise the hassle in downloading data from New Zealand's National Climate Database via [CliFlo](http://cliflo.niwa.co.nz/). [Source on GitHub](https://github.com/ropensci/clifro)
-   <pkg>crn</pkg>: Provides the core functions required to download and format data from the Climate Reference Network. Both daily and hourly data are downloaded from the ftp, a consolidated file of all stations is created, station metadata is extracted. In addition functions for selecting individual variables and creating R friendly datasets for them is provided.
-   <pkg>dataRetrieval</pkg>: Collection of functions to help retrieve USGS data from either web services or user-provided data files. [on GitHub](https://github.com/USGS-R/dataRetrieval).
-   <pkg>decctools</pkg>: Provides functions for retrieving energy statistics from the United Kingdom Department of Energy and Climate Change and related data sources. The current version focuses on total final energy consumption statistics at the local authority, MSOA, and LSOA geographies. Methods for calculating the generation mix of grid electricity and its associated carbon intensity are also provided.
-   GhcnDaily ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/GhcnDaily) downloads and processes Global Historical Climatology Network (GHCN) daily data from the National Climatic Data Center (NCDC).
-   <pkg>hddtools</pkg>: Hydrological data discovery tools - accesses data from NASA, Global Runoff Data Centre, Top-Down modelling Working Group. [Source on GitHub](https://github.com/cvitolo/r_hddtools)
-   <pkg>marmap</pkg>: Import, plot and analyze bathymetric and topographic data from NOAA.
-   [Metadata](http://cran.rstudio.com/src/contrib/Archive/Metadata/): Collates metadata for climate surface stations. Archived on CRAN.
-   <pkg>meteoForecast</pkg>: meteoForecast is a package to access to several Numerical Weather Prediction services both in raster format and as a time series for a location. Currenty it works with [GFS](http://www.emc.ncep.noaa.gov/index.php?branch=GFS), [Meteogalicia](http://www.meteogalicia.es/web/modelos/threddsIndex.action), [OpenMeteo](https://openmeteoforecast.org/wiki/Main_Page), [NAM](http://www.ncdc.noaa.gov/data-access/model-data/model-datasets/north-american-mesoscale-forecast-system-nam), and [RAP](http://www.ncdc.noaa.gov/data-access/model-data/model-datasets/rapid-refresh-rap). [Source on GitHub](https://github.com/oscarperpinan/meteoForecast/
-   <pkg>okmesonet</pkg>: Retrieves Oklahoma (USA) Mesonet climatological data provided by the Oklahoma Climatological Survey.
-   <pkg>prism</pkg> ([GitHub](http://github.com/ropensci/prism)) provides access to Oregon State Prism climate data.
-   <pkg>raincpc</pkg>: The Climate Prediction Center's (CPC) daily rainfall data for the entire world, from 1979 to the present, at a resolution of 50 km (0.5 degrees lat-lon). This package provides functionality to download and process the raw data from CPC.
-   <pkg>rainfreq</pkg>: Estimates of rainfall at desired frequency and desired duration are often required in the design of dams and other hydraulic structures, catastrophe risk modeling, environmental planning and management. One major source of such estimates for the USA is the NOAA National Weather Service's (NWS) division of Hydrometeorological Design Studies Center (HDSC). Raw data from NWS-HDSC is available at 1-km resolution and comes as a huge number of GIS files.
-   <pkg>rFDSN</pkg>: Search for and download seismic time series in miniSEED format (a minimalist version of the Standard for the Exchange of Earthquake Data) from [International Federation of Digital Seismograph Networks](http://www.fdsn.org/) repositories. This package can also be used to gather information about seismic networks (stations, channels, locations, etc) and find historical earthquake data (origins, magnitudes, etc).
-   <pkg>RNCEP</pkg>: Obtain, organize, and visualize[NCEP](http://www.ncep.noaa.gov/) weather data.
-   <pkg>rnoaa</pkg>: R interface to NOAA Climate data API.
-   <pkg>rNOMADS</pkg>: An interface to the [NOAA Operational Model Archive and Distribution System (NOMADS)](http://nomads.ncdc.noaa.gov/) that allows download of global and regional weather model data, and supports a variety of models ranging from global weather data to an altitude of 40 km, to high resolution regional weather models, to wave and sea ice models. It can also retrieve archived NOMADS models. Source: <rforge>rnomads</rforge>.
-   <pkg>rnrfa</pkg>: Utility functions to retrieve data from the UK National River Flow Archive via an API (http://www.ceh.ac.uk/data/nrfa/). There are functions to retrieve stations falling in a bounding box, to generate a map and extracting time series and general information.
-   <pkg>rwunderground</pkg> access historical weather information and forecasts from wunderground.com. Historical weather and forecast data includes, but is not limited to, temperature, humidity, windchill, wind speed, dew point, heat index. Additionally, the weather underground weather API also includes information on sunrise/sunset, tidal conditions, satellite/webcam imagery, weather alerts, hurricane alerts and historical record high/low temperatures.
-   <pkg>soilDB</pkg>: A collection of functions for reading data from USDA-NCSS soil databases.
-   <pkg>sos4R</pkg>: A client for Sensor Observation Services (SOS) as specified by the Open Geospatial Consortium (OGC). It allows users to retrieve metadata from SOS web services and to interactively create requests for near real-time observation data based on the available sensors, phenomena, observations, etc. using thematic, temporal and spatial filtering.
-   <pkg>stationaRy</pkg> can retrieve hourly weather data from various global weather stations.
-   <pkg>waterData</pkg>: An R Package for retrieval, analysis, and anomaly calculation of daily hydrologic time series data.
-   <pkg>WaterML</pkg> can retrieve WaterOneFlow [Hydroserver](http://hiscentral.cuahsi.org) data.
-   <pkg>weatherData</pkg>: Functions that help in fetching weather data from websites. Given a location and a date range, these functions help fetch weather data (temperature, pressure etc.) for any weather related analysis.
-   <pkg>weatherr</pkg> combines data from multiple APIs to obtain instant weather forecasts.

###Ecological and Evolutionary Biology###

-   [ALA4R](https://github.com/AtlasOfLivingAustralia/ALA4R) (not on CRAN): Programmatic R interface to the [Atlas of Living Australia](http://www.ala.org.au/). [Source on GitHub](https://github.com/ropensci/ALA4R)
-   [BAAD: a Biomass And Allometry Database for woody plants](https://github.com/traitecoevo/baad.data) (not on CRAN): an interface to access data from a data paper published in _Ecology_. [Full source for the database is also on GitHub](https://github.com/dfalster/baad).
-   <bioc>biomart</bioc> retrieves data from a number of public biological data repositories including <http://www.biomart.org>, NCBI refseq, Gene Ontology.
-   <pkg>dismo</pkg>: Species distribution modeling, with wrappers to Google APIs for maps and geocoding.
-   <pkg>ecoengine</pkg>: ecoengine (<http://ecoengine.berkeley.edu/>) provides access to more than 2 million georeferenced specimen records from the Berkeley Natural History Museums. <http://bnhm.berkeley.edu/>. [Source on GitHub](https://github.com/ropensci/ecoengine)
-   <pkg>ecoretriever</pkg>: Provides an R interface to the [EcoData Retriever](http://ecodataretriever.org/) via the EcoData Retriever's command line interface. The EcoData Retriever automates the tasks of finding, downloading, and cleaning ecological datasets, and then stores them in a local database (including SQLite, MySQL, etc.). [Source on GitHub](https://github.com/ropensci/ecoretriever/).
-   <pkg>flora</pkg>: Retrieve taxonomical information of botanical names from the Flora do Brasil website.
-   <pkg>neotoma</pkg>: Programmatic R interface to the Neotoma Paleoecological Database. [Source on GitHub](https://github.com/ropensci/neotoma)
-   <pkg>paleobioDB</pkg>: Functions to wrap each endpoint of the PaleobioDB API, plus functions to visualize and process the fossil data. The API documentation for the Paleobiology Database can be found at http://paleobiodb.org/data1.1/.
-   <pkg>rbison</pkg>: Wrapper to the USGS Bison API. [Source on GitHub](https://github.com/ropensci/rbison)
-   <pkg>Rcolombos</pkg>: This package provides programmatic access to Colombos, a web based interface for exploring and analyzing comprehensive organism-specific cross-platform expression compendia of bacterial organisms.
-   [ridigbio](https://github.com/idigbio/ridigbio) (not on CRAN) is an interface for <http://www.idigbio.org/>.
-   <pkg>rebird</pkg>: A programmatic interface to the eBird database. [Source on GitHub](https://github.com/ropensci/rebird)
-   [rdopa](https://github.com/ropensci/rdopa) (not on CRAN): Access data from the [Digital Observatory for Protected Areas](http://dopa.jrc.ec.europa.eu/) (DOPA) REST API. [Source on GitHub](https://github.com/ropensci/rdopa)
-   <pkg>Reol</pkg>: An R interface to the Encyclopedia of Life (EOL) API. Includes functions for downloading and extracting information off the EOL pages. [Source on GitHub](https://github.com/ropensci/Reol)
-   <pkg>rfishbase</pkg>: A programmatic interface to fishbase.org. [Source on GitHub](https://github.com/ropensci/rfishbase)
-   <pkg>rfisheries</pkg>: Package for interacting with fisheries databases at openfisheries.org. [Source on GitHub](https://github.com/ropensci/rfisheries)
-   <pkg>rgbif</pkg>: Interface to the Global Biodiversity Information Facility API methods. [Source on GitHub](https://github.com/ropensci/rgbif)
-   <pkg>rnbn</pkg>: An R interface to the [UK National Biodiversity Network](http://www.nbn.org.uk). [Source on GitHub](https://github.com/ropensci/rnbn).
-   [rnpn](https://github.com/ropensci/rnpn) (not on CRAN): Wrapper to the National Phenology Network database API. [Source on GitHub](https://github.com/ropensci/rnpn).
-   [rotl](https://cran.r-project.org/web/packages/rotl/index.html): R client for the Open Tree of Life API. [Source on GitHub](https://github.com/fmichonneau/rotl)
-   [rphylopic](https://github.com/sckott/rphylopic) (not on CRAN): An R client for [Phylopic.org](http://phylopic.org/), a databaes of free silhouettes of animals, embedded in a phylogenetic information framework. [Source on GitHub](https://github.com/sckott/rphylopic)
-   <pkg>rPlant</pkg>: An R interface to the the many computational resources iPlant offers through their RESTful application programming interface. Currently, rPlant functions interact with the iPlant foundational API, the Taxonomic Name Resolution Service API, and the Phylotastic Taxosaurus API. Before using rPlant, users will have to register with the [iPlant Collaborative](http://www.iplantcollaborative.org/discover/discovery-environment)
-   <pkg>rredlist</pkg> is an API client for the [IUCN red list](http://www.iucnredlist.org/) of threatened and engaged species. [Source on GitHub](https://github.com/ropenscilabs/rredlist).
-   <pkg>rvertnet</pkg>: A wrapper to the VertNet collections database API. [Source on GitHub](https://github.com/ropensci/rvertnet)
-   <pkg>rWBclimate</pkg>: R interface for the World Bank climate data. [Source on GitHub](https://github.com/ropensci/rWBclimate)
-   <pkg>rYoutheria</pkg>: A programmatic interface to web-services of Youtheria, an online database of mammalian trait data. Development version on GitHub [here](https://github.com/biologicalrecordscentre/rYoutheria)
-   <pkg>spocc</pkg> ([GitHub](https://github.com/ropensci/spocc)) offers a programmatic interface to many species occurrence data sources, including GBIF, USGS's BISON, iNaturalist, Berkeley Ecoinformatics Engine eBird, AntWeb, and more as they sources become easily available. rinat provides another interface to iNaturalist. <pkg>spoccutils</pkg> ([Github](https://github.com/ropensci/spoccutils)) provides various utilities for working with data retrieved using spocc.
-   <pkg>TR8</pkg>: TR8 contains a set of tools which take care of retrieving trait data for plant species from publicly available databases via web services (including: Biolflor, The Ecological Flora of the British Isles, LEDA traitbase, Ellenberg values for Italian Flora, Mycorrhizal intensity database). [Source on GitHub](https://github.com/GioBo/TR8)
-   <pkg>traits</pkg> can retrieve species trait data from many online sources. [Source on Github](https://github.com/ropensci/traits)
-   <pkg>taxize</pkg>: Taxonomic information from around the web. A single unified interface to many web APIs for taxonomic data, including NCBI, ITIS, Tropicos and more. [Source on GitHub](https://github.com/ropensci/taxize)
-   The [tpl](https://github.com/gustavobio/tpl) package doesn't interact with the web directly, but queries locally stored data from [theplantlist.org](http://www.theplantlist.org/), and data will be updated when theplantlist updates, which is not very often. There is another package for interacting with this same data, called Taxonstand.
-   <pkg>treebase</pkg>: An R package for discovery, access and manipulation of online phylogenies. [Source on GitHub](https://github.com/ropensci/treebase)
-   <pkg>rusda</pkg> connects to a large number of USDA databases, especially for fungal-host combinations.

###Finance###

-   <pkg>dataonderivatives</pkg> Post-GFC derivatives reforms have lifted the veil off over-the-counter (OTC) derivative markets. Swap Execution Facilities (SEFs) and Swap Data Repositories (SDRs) now publish data on swaps that are traded on or reported to those facilities (respectively). This package provides you the ability to get this data from supported sources. 
-   [Datastream2R](https://github.com/CharlesCara/Datastream2R) (not on CRAN): Another package for accessing the Datastream service. This package downloads data from the Thomson Reuters DataStream DWEserver, which provides XML access to the Datastream database of economic and financial information.
-   <pkg>fImport</pkg>: Environment for teaching "Financial Engineering and Computational Finance"
-   <pkg>IBrokers</pkg>: Provides native R access to Interactive Brokers Trader Workstation API. ($)
-   <pkg>pdfetch</pkg>: A package for downloading economic and financial time series from public sources.
-   <pkg>quantmod</pkg>: Functions for financial quantitative modelling as well as data acquisition, plotting and other utilities.
-   <pkg>Rbitcoin</pkg>: Ineract with Bitcoin. Both public and private API calls. Support HTTP over SSL. Debug messages of Rbitcoin, debug messages of RCurl, error handling.
-   <pkg>rbitcoinchartsapi</pkg>: An R package for the [BitCoinCharts.com](http://bitcoincharts.com/) API. From their website: "Bitcoincharts provides financial and technical data related to the Bitcoin network and this data can be accessed via a JSON application programming interface (API)."
-   [Rblpapi](https://github.com/armstrtw/Rblpapi): R client for Bloomberg Finance L.P. [Source on GitHub](https://github.com/armstrtw/Rblpapi) ($)
-   <pkg>RCryptsy</pkg> wraps the API for the [Cryptsy](http://www.cryptsy.com) crypto-currency trading platform. [Source on GitHub](https://github.com/ropensci/RCryptsy). ($)
-   [RDatastream](https://github.com/fcocquemas/rdatastream) (not on CRAN): An R interface to the [Thomson Dataworks Enterprise SOAP API](http://dataworks.thomson.com/Dataworks/Enterprise/1.0/), with some convenience functions for retrieving Datastream data specifically. ($)
-   <pkg>RJSDMX</pkg>: Retrieve data and metadata from SDMX compliant data providers. [Source on GitHub](https://github.com/amattioc/SDMX/tree/master/RJSDMX).
-   <pkg>TFX</pkg>: Connects to TrueFX(tm) for free streaming real-time and historical tick-by-tick market data for dealable interbank foreign exchange rates with millisecond detail.
-   <pkg>Thinknum</pkg>: Interacts with the [Thinknum](http://www.thinknum.com/) API. (\$)
-   <pkg>tseries</pkg>: Includes the `get.hist.quote` for historical financial data.
-   <pkg>ustyc</pkg>: US Treasury yield curve data retrieval. Development version on GitHub [here](https://github.com/mrbcuda/ustyc).

###Genes and Genomes###

-   [aggRmesh](https://github.com/balcomes/aggRmesh): R client for the [National Center for Integrative Biomedical Informatics (NCIBI)](http://portal.ncibi.org/gateway/) data.
-   <pkg>cgdsr</pkg>: R-Based API for accessing the MSKCC Cancer Genomics Data Server (CGDS).
-   <pkg>chromer</pkg>: A programmatic interface to the [Chromosome Counts Database](http://ccdb.tau.ac.il/). [Source on GitHub](https://github.com/ropensci/chromer)
-   The [mygene.r](https://bitbucket.org/sulab/mygene.r/overview) package is an R client for accessing [Mygene.info](http://mygene.info/#) annotation and query services.
-   <pkg>primerTree</pkg>: Visually Assessing the Specificity and Informativeness of Primer Pairs.
-   <pkg>rsnps</pkg>: This package is a programmatic interface to various SNP datasets on the web: openSNP, NBCI's dbSNP database, and Broad Institute SNP Annotation and Proxy Search. This package started as a library to interact with openSNP alone, so most functions deal with openSNP.
-   [seq2R](http://cran.rstudio.com/src/contrib/Archive/seq2R/): Detect compositional changes in genomic sequences - with some interaction with GenBank. Archived on CRAN.
-   <pkg>seqinr</pkg>: Exploratory data analysis and data visualization for biological sequence (DNA and protein) data.
-   <pkg>SoyNAM</pkg>: Genomic and multi-environmental soybean data. Soybean Nested Association Mapping (SoyNAM) project dataset funded by the United Soybean Board (USB), pre-formatted for general analysis and genome-wide association analysis using the NAM package.
-   NCBI EUtils web services: See the NCBI section

###Geocoding###

-   <pkg>geocodeHERE</pkg>: Wrapper for Nokia's [HERE](http://here.com/) geocoding API. API docs: <https://developer.here.com/geocoder>. [Source on GitHub](https://github.com/corynissen/geocodeHERE)
-   [ipapi](https://github.com/hrbrmstr/ipapi): Geolocate IPv4/6 addresses and/or domain names using the [ip-api.com](http://ip-api.com/) API. [Source on GitHub](https://github.com/hrbrmstr/ipapi)
-   [openadds](https://github.com/sckott/openadds) is an R client for [OpenAddresses](http://openaddresses.io/) a free and open global address collection. [Source on GitHub](https://github.com/sckott/openadds)

###Google Analytics###

-   [ganalytics](https://github.com/jdeboer/ganalytics) (not on CRAN): Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/jdeboer/ganalytics)
-   <pkg>GAR</pkg>: Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/andrewgeisler/GAR)
-   <pkg>RGA</pkg>: Provides functions for accessing and retrieving data from the [Google Analytics APIs](https://developers.google.com/analytics/). Supports OAuth 2.0 authorization. Also, the RGA package provides a shiny app to explore data. There is another R package for the same service (RGoogleAnalytics); see above entry.
-   <pkg>RGoogleAnalytics</pkg>: Provides functions for accessing and retrieving data from the Google Analytics API. [Source on GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues). There is another R package for the same service (RGA); see next entry.

###Google Web Services###

-   <pkg>bigrquery</pkg>: An interface to Google's bigquery from R. [Source on GitHub](https://github.com/hadley/bigrquery) (K)
-   [ganalytics](https://github.com/jdeboer/ganalytics) (not on CRAN): Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/jdeboer/ganalytics) (K)
-   <pkg>GAR</pkg>: Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/andrewgeisler/GAR) (K)
-   [GFusionTables](http://gfusiontables.lopatenko.com/) (not on CRAN): An R interface to Google Fusion Tables. Google Fusion Tables is a data management system in the cloud. This package provides R functions to browse Fusion Tables catalog, retrieve data from Fusion Tables storage to R and to upload data from R to Fusion Tables (K)
-   [googlePublicData](http://cran.rstudio.com/src/contrib/Archive/googlePublicData/): (archived on CRAN for email bounce) An R library to build Google's public data explorer DSPL metadata files.
-   <pkg>googleVis</pkg>: Interface between R and the Google chart tools.
-   gooJSON ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/gooJSON)) is a Google JSON data interpreter for R which contains a suite of helper functions for obtaining data from the Google Maps API JSON objects.
-   <pkg>plotGoogleMaps</pkg>: Plot SP or SPT(STDIF,STFDF) data as HTML map mashup over Google Maps.
-   <pkg>plotKML</pkg>: Visualization of spatial and spatio-temporal objects in Google Earth.
-   <pkg>RAdwords</pkg>: A package for loading Google Adwords data. [Source on GitHub](https://github.com/jburkhardt/RAdwords)
-   <pkg>RGA</pkg>: Provides functions for accessing and retrieving data from the [Google Analytics APIs](https://developers.google.com/analytics/). Also, the RGA package provides a shiny app to explore data. There is another R package for the same service (RGoogleAnalytics); see above entry.
-   <pkg>RGoogleAnalytics</pkg>: Provides functions for accessing and retrieving data from the Google Analytics API. [Source on GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues). There is another R package for the same service (RGA); see next entry.
-   The <ohat>RGoogleDocs</ohat> (not on CRAN) package is an example of using the RCurl and XML packages to quickly develop an interface to the Google Documents API.
-   <ohat>RGoogleStorage</ohat> (not on CRAN) provides programmatic access to the Google Storage API. This allows R users to access and store data on Google's storage. We can upload and download content, create, list and delete folders/buckets, and set access control permissions on objects and buckets.
-   <ohat>RGoogleTrends</ohat> (not on CRAN) provides programmatic access to Google Trends data. This is information about the popularity of a particular query.
-   <pkg>translate</pkg>: Bindings for the Google Translate API v2
-   <pkg>translateR</pkg> provides bindings for both Google and Microsoft translation APIs.

###Government###

There are a very large number of packages providing access to government data. Here is a list of these packages, arranged by country and/or other jurisdiction.

-   *Denmark*: [dkstat](https://github.com/rOpenGov/dkstat) (not on CRAN): A package to access the [StatBank API](http://www.statistikbanken.dk/statbank5a/) from [Statistics Denmark](http://www.dst.dk/). [taxdk](https://github.com/sebastianbarfort/taxdk) (not on CRAN) provides tax information for Danish companies.
-   *Europe*:
    -   <pkg>ameco</pkg> ([GitHub](http://github.com/expersso/ameco)) connects to the European Commission's macro-economic database.
    -   <pkg>ecb</pkg> is a client for the [European Central Bank's Statistical Data Warehouse](https://sdw.ecb.europa.eu/) API.
    -   <pkg>eurostat</pkg> ([Github](https://github.com/ropengov/eurostat)) provides an interface to the [Eurostat database](http://ec.europa.eu/eurostat).
-   *Finland*:
    -   <pkg>pxweb</pkg> ([GitHub](https://github.com/rOpenGov/pxweb)) is a generic interface for the PX-Web/PC-Axis API. The PX-Web/PC-Axis API is used by organizations such as Statistics Sweden and Statistics Finland to disseminate data. The R package can interact with all PX-Web/PC-Axis APIs to fetch information about the data hierarchy, extract metadata and extract and parse statistics to R data.frame format.
    -   <pkg>sorvi</pkg> ([GitHub](https://github.com/louhos/sorvi/)): Various tools for retrieving and working with Finnish open government data.
-   *Germany*: <pkg>BerlinData</pkg> ([GitHub](https://github.com/dirkschumacher/RBerlinData)): Easy access to <http://daten.berlin.de>. It allows you to search through the data catalogue and to download the data directly from within R.
-   *Japan*: <pkg>govStatJPN</pkg>: Functions to get public survey data in Japan.
-   *Mexico*: <pkg>inegiR</pkg> ([GitHub](https://github.com/Eflores89/inegiR)) can download official statistics for Mexico. Note: package functions and documentation are in Spanish.
-   *Netherlands*: <pkg>cbsodataR</pkg> connects with the [Statistics Netherlands](https://github.com/edwindj/cbsodataR) datasets. [Source on GitHub](https://github.com/edwindj/cbsodataR).
-   *Poland*:
    -   [saos](https://github.com/bartekch/saos) (not on CRAN) is an interface to the API for SAOS, a repository of judgments from Polish common courts (district, regional and appellate) and the Supreme Court of Poland.
    -   <pkg>sejmRP</pkg> ([GitHub](http://github.com/mi2-warsaw/sejmRP/)) provides data on deputies and voting in [the Polish Diet](http://www.sejm.gov.pl/).
-   *United States of America*:
    -   U.S. Census Bureau: <pkg>acs</pkg> can download, manipulate, and present data from the US Census American Community Survey. <pkg>censusr</pkg> connects to both ACS and SF1 datasets. [IDBr](https://github.com/walkerke/IDBr) (not on CRAN) provides an interface to the U.S. Census Bureau international data base API. <pkg>blsAPI</pkg> ([GitHub](https://github.com/mikeasilva/blsAPI)) can get data from the U.S. Bureau of Labor Statistics API. Users provide parameters as specified in <http://www.bls.gov/developers/api_signature.htm> and the function returns a JSON string.
    -   Federal Reserve: [FredR](https://github.com/jcizel/FredR): R Interface to the [Federal Reserve Economic Data API](http://api.stlouisfed.org/docs/fred/). [Source on GitHub](https://github.com/jcizel/FredR)
    -   Energy Department: <pkg>EIAdata</pkg>: U.S. [Energy Information Administration (EIA)](http://www.eia.gov/) API client. See also [eia](https://github.com/krose/eia) (not on CRAN).
    -   Elections: <pkg>elexr</pkg> is an R interface to the Python [elex](https://github.com/newsdev/elex/) library, which provides access to Associated Press election results. [openelections](https://github.com/GShotwell/openelections) (not on CRAN) connects to the openelections API. <pkg>pollstR</pkg> ([GitHub](https://github.com/rOpenGov/pollstR)): An R client for the Huffpost Pollster API. <pkg>pvsR</pkg>: An R package to interact with the Project Vote Smart API for scientific research. <pkg>ropensecretsapi</pkg>: An R package for the OpenSecrets.org web services API.
    -   Justice Department: [bjs2r](https://github.com/JakeRuss/bjs2r): Get Bureau of Justice Statistics (BJS) data in R.
    -   <pkg>federalregister</pkg>: Client package for the U.S. Federal Register API. Development version on GitHub [here](https://github.com/rOpenGov/federalregister).
    -   <pkg>polidata</pkg> ([GitHub](https://github.com/e9t/polidata-r)): Access to various political data APIs, including e.g. [Google Civic Information API](https://developers.google.com/civic-information/) or [Sunlight Congress API](https://sunlightlabs.github.io/congress/) for US Congress data, and [POPONG API](http://data.popong.com/) for South Korea National Assembly data.
    -   <pkg>RPublica</pkg> ([GitHub](https://github.com/rOpenGov/RPublica)) is a ProPublica API Client.
    -   <pkg>rsunlight</pkg> ([GitHub](https://github.com/ropengov/rsunlight)): R client for the Sunlight Labs APIs. There are functions for Sunlight Labs Congress, Transparency, Open States, Real Time Congress, Capitol Words, and Influence Explorer APIs. Data outputs are R lists. There are also a few convenience functions for visualizing data and writing data to .csv.
    -   [rtimes](https://github.com/ropengov/rtimes): (not on CRAN) R client for the New York Times APIs, including the Congress, Article Search, Campaign Finance, and Geographic APIs. The focus is on those that deal with political data, but throwing in Article Search and Geographic for good measure.
    -   [wethepeople](http://cran.rstudio.com/src/contrib/Archive/wethepeople/): An R client for interacting with the White House's "We The People" petition API.
-   United Kingdom: <pkg>ukgasapi</pkg> contains one function which allows users to access UK gas market information via National Grid's API.
-   *Other or international*:
    -   <pkg>enigma</pkg> ([GitHub](https://github.com/ropengov/enigma)): [Enigma](https://enigma.io) holds many public datasets from governments, companies, universities, and organizations. Enigma provides an API for data, metadata, and statistics on each of the datasets. enigma is an R client to interact with the Enigma API, including getting the data and metadata for datasets in Enigma, as well as collecting statistics on datasets. In addition, you can download a gzipped csv file of a dataset if you want the whole dataset. An API key from Enigma is required to use enigma.
    -   <pkg>hdr</pkg> ([GitHub](https://github.com/expersso/hdr)) is an interface to United Nations Development Programme [Human Development Report](<http://hdr.undp.org>) API.
    -   <pkg>manifestoR</pkg> is an R client to access data and documents of [the manifesto project](https://manifesto-project.wzb.eu/)
    -   [PolitwoopsR](https://github.com/kateto/PolitwoopsR) (not on CRAN): Extract deleted tweet and politician data from the Politwoops project (tracks politicians on Twitter and records their deleted tweets).
    -   <pkg>OECD</pkg> Search and extract data from the OECD (possibly via an old version of the API, which was in currently in beta when the package was written). See [OECD data](https://data.oecd.org/api/).
    -   <pkg>WDI</pkg>: Search, extract and format data from the World Bank's World Development Indicators.


###Literature, Metadata, Text, and Altmetrics###

-   <pkg>alm</pkg>: R wrapper to the almetrics API platform developed by PLoS.
-   <pkg>aRxiv</pkg> ([GitHub](https://github.com/ropensci/aRxiv)): An R client for the arXiv API, a repository of electronic preprints for computer science, mathematics, physics, quantitative biology, quantitative finance, and statistics.
-   <pkg>boilerpipeR</pkg>: Generic Extraction of main text content from HTML files; removal of ads, sidebars and headers using the boilerpipe Java library.
-   [JSTORr](https://github.com/benmarwick/JSTORr) (Not on CRAN): Simple text mining of journal articles from JSTOR's Data for Research service
-   <pkg>lumendb</pkg> can retrieve copyright takedown notices from [Lumen Database](https://lumendatabase.org/) (formerly, Chilling Effects).
-   ngramr ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/ngramr)) retrieves and plot word frequencies through time from the Google Ngram Viewer.
-   <pkg>pubmed.mineR</pkg>: An R package for text mining of [PubMed Abstracts](http://www.ncbi.nlm.nih.gov/pubmed). Supports fetching text and XML from PubMed. <pkg>easyPubMed</pkg> and [rpubmed](https://github.com/rOpenHealth/rpubmed) (not on CRAN) provide other tools.
-   <pkg>rAltmetric</pkg>: Query and visualize metrics from Altmetric.com.
-   <pkg>rbhl</pkg>: R interface to the Biodiversity Heritage Library (BHL) API.
-   <pkg>RefManageR</pkg>: Import and Manage BibTeX and BibLaTeX references with RefManager.
-   <pkg>rentrez</pkg>: Talk with NCBI entrez using R.
-   [RMendeley](http://cran.rstudio.com/src/contrib/Archive/RMendeley/): Implementation of the Mendeley API in R. Archived on CRAN. It's been archived on CRAN temporarily until pacakge is updated for the new Mendeley API.
-   [rmetadata](https://github.com/ropensci/rmetadata) (not on CRAN): Get scholarly metadata from around the web.
-   [rorcid](https://github.com/ropensci/rorcid) (not on CRAN): A programmatic interface the Orcid.org API.
-   <pkg>rplos</pkg>: A programmatic interface to the Web Service methods provided by the Public Library of Science journals for search.
-   <pkg>rscopus</pkg> ([GitHub](https://github.com/muschellij2/rscopus/)) is an interface to the Elsevier Scopus API.
-   <pkg>scholar</pkg> provides functions to extract citation data from Google Scholar. Convenience functions are also provided for comparing multiple scholars and predicting future h-index values.
-   The <ohat>Sxslt</ohat> (not on CRAN) package is an R interface to Dan Veillard's libxslt translator. It allows R programmers to use XSLT directly from within R, and also allows XSL code to make use of R functions.
-   <pkg>tm.plugin.webmining</pkg>: Extensible text retrieval framework for news feeds in XML (RSS, ATOM) and JSON formats. Currently, the following feeds are implemented: Google Blog Search, Google Finance, Google News, NYTimes Article Search, Reuters News Feed, Yahoo Finance and Yahoo Inplay.
*   <pkg>biorxivr</pkg>: interface with bioRxiv preprint server

###Maps###

-   <pkg>FedData</pkg> can download geospatial data from a number of U.S. and international data sources.
-   <pkg>ggmap</pkg>: Allows for the easy visualization of spatial data and models on top of Google Maps, OpenStreetMaps, Stamen Maps, or CloudMade Maps using ggplot2.
-   <pkg>leafletR</pkg>: Allows you to display your spatial data on interactive web-maps using the open-source JavaScript library Leaflet.
-   <pkg>osmar</pkg>: This package provides infrastructure to access OpenStreetMap data from different sources to work with the data in common R manner and to convert data into available infrastructure provided by existing R packages (e.g., into sp and igraph objects).
-   <pkg>osrm</pkg>: access OpenStreetMap
-   The <ohat>R2GoogleMaps</ohat> (not on CRAN) package - which is different from RgoogleMaps - provides a mechanism to generate JavaScript code from R that displays data using Google Maps.
-   <pkg>rcanvec</pkg>: Provides an interface to the National Topographic System (NTS), which is the way in which a number of freely available Canadian datasets are organized. CanVec and CanVec+ datasets, which include all data used to create Canadian topographic maps, are two such datasets that are useful in creating vector-based maps for locations across Canada.
-   <pkg>RgoogleMaps</pkg>: This package serves two purposes: It provides a comfortable R interface to query the Google server for static maps, and use the map as a background image to overlay plots within R.
-   The <ohat>RKML</ohat> (not on CRAN) is an implementation that provides users with high-level facilities to generate KML, the Keyhole Markup Language for display in, e.g., Google Earth.
-   <ohat>RKMLDevice</ohat> (not on CRAN) allows to create R graphics in KML format in a manner that allows them to be displayed on Google Earth (or Google Maps).
-   <pkg>olctools</pkg> Google Open Location Code
-   [rydn](https://github.com/trestletech/rydn) (not on CRAN): R package to interface with the Yahoo Developers network geolocation APIs.
-   [tigris](https://github.com/walkerke/tigris) (not on CRAN) can read US Census Bureau TIGRIS shapefiles.
-   <pkg>USAboundaries</pkg> spatial objects with the boundaries of states or counties in the United States of America from 1629 to 2000 (from the Atlas of Historical County Boundaries).


###NCBI###

-   <pkg>hoardeR</pkg>: Information retrieval from NCBI databases, with main focus on Blast.
-   [NCBI2R](http://cran.rstudio.com/src/contrib/Archive/NCBI2R/): Annotates lists of SNPs and/or genes, with current information from NCBI. The CRAN version is archived.
-   <pkg>rentrez</pkg> ([GitHub](https://github.com/ropensci/rentrez)): Talk with NCBI Eutils API using R. This is probably the best package to interact with NCBI EUtils. You can get data across all the databases in NCBI EUtils.
-   <pkg>reutils</pkg> ([GitHub](https://github.com/gschofl/reutils)): Interface with NCBI databases such as PubMed, Genbank, or GEO via the Entrez Programming Utilities (EUtils).
-   <pkg>RISmed</pkg>: Download content from NCBI databases. Intended for analyses of NCBI database content, not reference management. See rpubmed for more literature oriented stuff from NCBI.

###News###

-   <pkg>GuardianR</pkg>: Provides an interface to the Open Platform's Content API of the Guardian Media Group. It retrieves content from news outlets The Observer, The Guardian, and guardian.co.uk from 1999 to current day. <pkg>rdian</pkg> ([GitHub](https://github.com/ironholds/rdian)) is another Guardian API client.
-   [prismaticR](https://github.com/Btibert3/prismaticR) (not on CRAN): R interface to [Prismatic's Topic Graph API](https://github.com/Prismatic/interest-graph).
-   [rtimes](https://github.com/ropengov/rtimes) (not on CRAN): R client for the New York Times APIs, including the Congress, Article Search, Campaign Finance, and Geographic APIs.
-   <em>ZEIT</em>: <pkg>diezeit</pkg> waps the ZEIT online content API (K).

###Other###

-   <pkg>datamart</pkg>: Provides an S4 infrastructure for unified handling of internal datasets and web based data sources. Examples include dbpedia, eurostat and sourceforge.
-   <pkg>genderizeR</pkg>: Uses the genderize.io API to predict gender from first names extracted from a text vector. [Source on GitHub](https://github.com/kalimu/genderizeR)
-   [qualtrics](https://github.com/jbryer/qualtrics) (not on CRAN): Provides functions to interact with the [Qualtrics](http://www.qualtrics.com/) online survey tool. (\$) (K)
-   [mstranslator](https://github.com/chainsawriot/mstranslator): An R wrapper for the [Microsoft Translator API](https://msdn.microsoft.com/en-us/library/hh454949.aspx). [Source on GitHub](https://github.com/chainsawriot/mstranslator)
-   <pkg>MBTAr</pkg>: Access Data from the Massachusetts Bay Transit Authority (MBTA) Web API
-   <pkg>redcapAPI</pkg>: Access data stored in REDCap databases using an API. REDCap (Research Electronic Data CAPture) is a web application for building and managing online surveys and databases developed at Vanderbilt University. [Source on GitHub](https://github.com/nutterb/redcapAPI) .
-   <pkg>RForcecom</pkg>: RForcecom provides a connection to Force.com and Salesforce.com from R.
-   [Rmonkey](https://github.com/leeper/Rmonkey/) (not on CRAN): Provides programmatic access to [Survey Monkey](https://www.surveymonkey.com/) for creating simple surveys and retrieving survey results. (\$) (K)
-   [rwars](https://github.com/Ironholds/rwars) (not on CRAN): A connector to the [SWAPI service](http://swapi.co/), a database of Star Wars metadata.
-   <pkg>slackr</pkg>: R client for Slack.com messaging platform. [Source on GitHub](https://github.com/hrbrmstr/slackr)
-   <pkg>sos4R</pkg>: R client for the OGC Sensor Observation Service.
-   [stackr](https://github.com/dgrtwo/stackr) (not on CRAN): An unofficial wrapper for the read-only features of the [Stack Exchange API](https://api.stackexchange.com/).
-   <pkg>TMDb</pkg> can retrieve data from [The Movie Database](https://www.themoviedb.org).
-   <pkg>zendeskR</pkg>: This package provides an R wrapper for the Zendesk API. (\$)

###Public Health###

-   [cdcfluview](https://github.com/hrbrmstr/cdcfluview): (not on CRAN) R client for CDC FluView data (WHO and ILINet).
-   <pkg>nhanesA</pkg> Utility to retrieve data from the National Health and Nutrition Examination Survey (NHANES).
-   [openfda](https://github.com/ropenhealth/openfda) (not on CRAN) is an R client for [openFDA](https://open.fda.gov/).
-   <pkg>rClinicalCodes</pkg>: R tools for integrating with the http://www.clinicalcodes.org web repository
-   <pkg>rclinicaltrials</pkg> ([GitHub](https://github.com/sachsmc/rclinicaltrials)): ClinicalTrials.gov is a registry and results database of publicly and privately supported clinical studies of human participants conducted around the world. This is an R client for that data.
-   <pkg>UScancer</pkg> constructs U.S. cancer data at the county level from [SEER](http://seer.cancer.gov/), [IARC](http://www.iarc.fr), and the U.S. Census Bureau.
-   <pkg>WHO</pkg> provides an interface to the [World Health Organization](http://www.who.int/) API. [Source on GitHub](https://www.github.com/expersso/WHO).

###Social media###

-   <em>Facebook</em>: <pkg>Rfacebook</pkg> provides an interface to the Facebook API. (K)
-   <em>Google+</em>: <pkg>plusser</pkg> has been designed to to facilitate the retrieval of Google+ profiles, pages and posts. It also provides search facilities. Currently a Google+ API key is required for accessing Google+ data. [tuber](https://github.com/soodoku/tuber) provides bindings for YouTube API. Only on Github for now. (K)
-   <pkg>RedditExtractoR</pkg> can retrieve data from the Reddit API.
-   <pkg>Rlinkedin</pkg>: is an R client for the LinkedIn API.
-   <em>tumblr</em>: <pkg>tumblR</pkg> ([GitHub](https://github.com/klapaukh/tumblR)): R client for the Tumblr API (<https://www.tumblr.com/docs/en/api/v2>). Tumblr is a microblogging platform and social networking website <https://www.tumblr.com>. (K)
-   <em>Twitter</em>: [RTwitterAPI](https://github.com/joyofdata/RTwitterAPI) (not on CRAN) and <pkg>twitteR</pkg> provide an interface to the Twitter web API. <pkg>streamR</pkg>: This package provides a series of functions that allow R users to access Twitter's filter, sample, and user streams, and to parse the output into data frames. OAuth authentication is supported. (K) Additionally, <pkg>RKlout</pkg> is an interface to Klout API v2. It fetches Klout Score for a Twitter Username/handle in real time. Klout is a silly ranking of Twitter influence.
-   <pkg>SocialMediaLab</pkg> provides a convenient wrapper around many other social media clients and enables the construction of network structures from those data.
-   <pkg>SocialMediaMineR</pkg> is an analytic tool that returns information about the popularity of a URL on social media sites.

###Social science###

-   [asdfree: analyze survey data for free](http://www.asdfree.com/) (not a package) provides lots of code examples for analyzing survey data in R. Also on [github](https://github.com/ajdamico/usgsd).
-   <pkg>brewdata</pkg> Retrieves and parses graduate admissions survey data from the [Grad Cafe website](http://thegradcafe.com).
-   <pkg>maddison</pkg> ([GitHub](https://github.com/expersso/maddison)) provides GDP per capita data for all years AD 1 to 2010 from the [Maddison Project](http://www.ggdc.net/maddison).
-   <pkg>ONETr</pkg> searches and retrieves occupational data from [O\*NET Online](http://www.onetonline.org/). Development version on GitHub [here](https://github.com/eknud/onetr).
-   <pkg>psidR</pkg> contains functions to download and format longitudinal datasets from the Panel Study of Income Dynamics (PSID).
-   <pkg>wordbankr</pkg> ([GitHub](https://github.com/langcog/wordbankr)) connects to [Wordbank](http://wordbank.stanford.edu/), a database of childrens' developmental vocabulary.
-   The <ohat>Zillow</ohat> (not on CRAN) package provides an R interface to the [Zillow](http://www.zillow.com/) Web Service API. It allows one to get the Zillow estimate for the price of a particular property specified by street address and ZIP code (or city and state), to find information (e.g. size of property and lot, number of bedrooms and bathrooms, year built.) about a given property, and to get comparable properties.

###Sports###

-   [abettor](https://github.com/phillc73/abettor) (not on CRAN): Online betting exchange, Betfair, API wrapper in R. (K)
-   [ballr](https://github.com/rtelmore/ballr) (not on CRAN) is a client for [Basketball-Reference.com](http://www.basketball-reference.com/).
-   [bbscrapeR](https://github.com/cpsievert/bbscrapeR) (not on CRAN): Tools for Collecting Data from [nba.com](http://www.nba.com/) and [wnba.com](http://www.wnba.com/).
-   <pkg>cricketr</pkg> provides tools for working with the ESPN Cricinfo Statsguru. [Source on GitHub](https://github.com/tvganesh/cricketr).
-   <pkg>fbRanks</pkg>: Association Football (Soccer) Ranking via Poisson Regression - uses time dependent Poisson regression and a record of goals scored in matches to rank teams via estimated attack and defense strengths.
-   <pkg>nhlscrapr</pkg>: Compiling the NHL Real Time Scoring System Database for easy use in R.
-   <pkg>pitchRx</pkg>: Tools for Collecting and Visualizing Major League Baseball PITCHfx Data
-   <pkg>fitbitScraper</pkg> ([GitHub](https://github.com/corynissen/fitbitScraper)) can retrieve Fitbit data, based on email/password authentication.
-   [fantasysocceR](https://github.com/durtal/fantasysocceR) (not on CRAN) connects to fantasy soccer data.
-   <pkg>pinnacle.API</pkg> A Wrapper for the Pinnacle Sports API
-   <pkg>retrosheet</pkg> ([Github](https://github.com/rmscriven/retrosheet)) retrieves single-season baseball statistics from <http://www.retrosheet.org>.

###Web Analytics###

-   [GTrendsR](https://github.com/dvanclev/GTrendsR) (not on CRAN): R functions to perform and display Google Trends queries. Another Github package ([rGtrends](https://github.com/emhart/rGtrends)) is now deprecated, but supported a previous version of Google Trends and may still be useful for developers.
-   rgauges ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/rgauges)) This package provides functions to interact with the Gaug.es API. Gaug.es is a web analytics service, like Google analytics. You have to have a Gaug.es account to use this package. (\$) (K)
-   <pkg>RGA</pkg>: Provides functions for accessing and retrieving data from the [Google Analytics APIs](https://developers.google.com/analytics/). Supports OAuth 2.0 authorization. Also, the RGA package provides a shiny app to explore data. There is another R package for the same service (RGoogleAnalytics); see above entry. (K)
-   <pkg>RGoogleAnalytics</pkg> ([GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues)) provides functions for accessing and retrieving data from the Google Analytics API. There is another R package for the same service (RGA); see previous entry. (K)
-   <ohat>RGoogleTrends</ohat> (not on CRAN) provides programmatic access to Google Trends data. This is information about the popularity of a particular query.
-   <pkg>RSiteCatalyst</pkg>: Functions for accessing the Adobe Analytics (Omniture SiteCatalyst) Reporting API.

### Wikipedia ###

-   [wikipediatrend](https://github.com/petermeissner/wikipediatrend) (removed from CRAN): Provides access to Wikipedia page access statistics.
-   <pkg>WikipediR</pkg>: WikipediR is a wrapper for the MediaWiki API, aimed particularly at the Wikimedia 'production' wikis, such as Wikipedia. [Source on GitHub](https://github.com/Ironholds/WikipediR)
-   [rwikidata](https://github.com/chgrl/rwikidata) (not on CRAN): Request data from (and some day probably edit data in) [Wikidata.org](https://www.wikidata.org/wiki/Wikidata:Main_Page), the free knowledgebase.
-   <pkg>WikidataR</pkg>: An R API wrapper for the Wikidata store of semantic data. [Source on GitHub](https://github.com/Ironholds/WikidataR).

