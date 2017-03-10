CRAN Task View: Open Data
-------------------------

*Do not edit this README by hand. See [CONTRIBUTING.md](CONTRIBUTING.md).*

| | |
|---|---|
|-----------------|--------------------------------------------------|
| **Maintainer:** | Jaime Ashander, Scott Chamberlain, Thomas Leeper |
| **Contact:**    | jashander at ucdavis.edu                         |
| **Version:**    | 2017-03-10                                       |
| **URL:**        | <https://CRAN.R-project.org/view=OpenData>       |

This Task View contains information about using R to obtain, parse, manipulate, create, and share open data. Much open data is available on the web, and the [WebTechnologies](http://cran.r-project.org/web/views/WebTechnologies.html) TaskView addresses how to obtain and parse web-based data. There is obvious overlap between the two TaskViews, so some packages are described on both. There is also a considerable amount of open data available as R packages on CRAN. We point readers to the [crandatapkgs](http://cran.rstudio.com/web/packages/crandatapkgs/index.html) package to obtain information about currently available open data in R packages.

Another key issue in a data-focused TaskView is the meaning of "open" data. This TaskView covers many types of data that come with varying degrees of usage restrictions from public domain (or CC-0) data that is usable for any purpose to "freely available" data that is available at no cost but may have licenses that are not strictly speaking "open". Users should investigate the terms of use and licensing of any data referenced here before using it for any particular application. Additionally, the view lists wrappers for paid APIs, as well as those that require an account but are not necessarily subscription only. These are marked ($) and (K) respectively.

If you have any comments or suggestions for additions, revisions, or improvements for this taskview, go to GitHub and [submit an issue](https://github.com/ropensci/opendata/issues), or make some changes and [submit a pull request](https://github.com/ropensci/opendata/pulls). If you can't contribute on GitHub, [send Jaime an email](mailto:jashander@ucdavis.edu?subject=Open%20Data%20Task%20View). If you have an issue with one of the packages discussed below, please contact the maintainer of that package.

If you know of a web service, API, data source, or other online resource that is not yet supported by an R package, consider adding it to [the package development to do list on GitHub](https://github.com/ropensci/opendata/wiki/ToDo).

Data Sharing and Archiving
--------------------------

Data sharing involves the dissemination of data in draft form or for a temporary period of time. rdrop2 ([GitHub](https://github.com/karthik/rdrop2)) is a Dropbox.com interface from R, providing access to a full suite of file operations, including dir/copy/move/delete operations, account information (including quotas) and the ability to upload and download files from any Dropbox account (K). [boxr](https://github.com/brendan-R/boxr) is a lightweight, high-level R interface for the [box.com API](https://developers.box.com/docs/) (K). [<span class="Ohat">RAmazonS3</span>](http://www.Omegahat.org/RAmazonS3/) provides an interface to the Amazon Simple Storage Service (S3) (K).

Data archiving involves the production and dissemination of open data that is persistently accessible, typically in public repositories. The tools below may be useful for both archiving data and retrieving extant data from public archives.

-   [ckanr](https://github.com/ropensci/ckanr): A generic R client to interact with the CKAN data portal software API ( <a href="http://ckan.org/" class="uri" class="uri">http://ckan.org/</a>). Allows user to swap out the base URL to use any CKAN instance. [Source on GitHub](https://github.com/ropensci/ckanr).
-   [dataone](https://cran.rstudio.com/src/contrib/Archive/dataone/): Read/write access to data and metadata from the [DataONE network](https://www.dataone.org/) of Member Node data repositories.
-   [dvn](http://cran.rstudio.com/web/packages/dvn/index.html) ([GitHub](https://github.com/ropensci/dvn)) provides access to Dataverse Network repositories. [UNF](http://cran.rstudio.com/web/packages/UNF/index.html) implements the Universal Numeric Fingerprint, a format-independent data hashing algorithm used by Dataverse, to verify and cite a dataset.
-   [factualR](http://cran.rstudio.com/web/packages/factualR/index.html): Thin wrapper for the [Factual.com](https://factual.com/) server API.
-   The [<span class="Ohat">Rflickr</span>](http://www.Omegahat.org/Rflickr/) (not on CRAN) package provides an R interface to the Flickr photo management and sharing application Web service. (not on CRAN) (K)
-   [googlesheets](https://github.com/jennybc/googlesheets) (not on CRAN): Access private or public Google Sheets by title, key, or URL. Extract data or edit data. Create, delete, rename, copy, upload, or download spreadsheets and worksheets. [Source on GitHub](https://github.com/jennybc/googlesheets)
-   [gsheet](http://cran.rstudio.com/web/packages/gsheet/index.html): Download Google Sheets using just the sharing link. Spreadsheets can be downloaded as a data frame, or as plain text to parse manually. [Source on GitHub](https://github.com/maxconway/gsheet)
-   [imguR](http://cran.rstudio.com/web/packages/imguR/index.html) ([GitHub](https://github.com/leeper/imguR)): A package to share plots using the image hosting service [Imgur.com](https://www.imgur.com/). knitr also has a function `imgur_upload()` to load images from literate programming documents.
-   [infochimps](https://cran.rstudio.com/src/contrib/Archive/infochimps/) (archived on CRAN; [GitHub](https://github.com/drewconway/infochimps)) is an R wrapper for the infochimps.com API services, from [Drew Conway](http://drewconway.com/).
-   [internetarchive](https://github.com/ropensci/internetarchive) (not on CRAN): API client for internet archive metadata. [Source on GitHub](https://github.com/ropensci/internetarchive).
-   [jSonarR](http://cran.rstudio.com/web/packages/jSonarR/index.html): Enables users to access MongoDB by running queries and returning their results in R data frames. jSonarR uses data processing and conversion capabilities in the jSonar Analytics Platform and the [JSON Studio Gateway](http://www.jsonstudio.com), to convert JSON to a tabular format.
-   [OAIHarvester](http://cran.rstudio.com/web/packages/OAIHarvester/index.html): Harvest metadata using the Open Archives Initiative Protocol for Metadata Harvesting (OAI-PMH). [oai](http://cran.rstudio.com/web/packages/oai/index.html) is a more recent package for OAI.
-   [Quandl](http://cran.rstudio.com/web/packages/Quandl/index.html): A package that interacts directly with the [Quandl](https://www.quandl.com/) API to offer data in a number of formats usable in R, as well as the ability to upload and search.
-   [rdatamarket](http://cran.rstudio.com/web/packages/rdatamarket/index.html): Fetches data from DataMarket.com, either as timeseries in zoo form (dmseries) or as long-form data frames (dmlist).
-   [rerddap](https://github.com/ropensci/rerddap) (not on CRAN): A generic R client to interact with any ERDDAP instance, which is a special case of OPeNDAP ( <a href="https://en.wikipedia.org/wiki/OPeNDAP" class="uri" class="uri">https://en.wikipedia.org/wiki/OPeNDAP</a>), or *Open-source Project for a Network Data Access Protocol* . Allows user to swap out the base URL to use any ERDDAP instance. [Source on GitHub](https://github.com/ropensci/rerddap).
-   [rfigshare](http://cran.rstudio.com/web/packages/rfigshare/index.html): Programmatic interface for [Figshare.com](https://figshare.com/). [Source on GitHub](https://github.com/ropensci/rfigshare).
-   [rscribd](https://github.com/leeper/rscribd) (not on CRAN): API client for publishing documents to [Scribd](https://www.scribd.com/).
-   [RSocrata](https://cran.rstudio.com/src/contrib/Archive/RSocrata/): (temporarily archived on CRAN for email bounce) Provided with a Socrata dataset resource URL, or a Socrata SoDA web API query, returns an R data frame. Converts dates to POSIX format. Supports CSV and JSON. Manages throttling by Socrata.

Web-based Open Data
-------------------

[Agriculture](#agriculture) | [Astronomy](#astronomy) | [Business](#business) | [Chemistry](#chemistry) | [Climate](#climate) | [Earth Science](#earth-science) | [Ecology/Evolution](#ecological-and-evolutionary-biology) | [Finance](#finance) | [Genes/Genomes](#genes-and-genomes) | [Geocoding](#geocoding) | [Google Analytics](#google-analytics) | [Google Web Services](#google-web-services) | [Government and Economics](#government) | [Literature/Text-mining](#literature-metadata-text-and-altmetrics) | [Maps](#maps) | [Marketing](#marketing) | [NCBI](#ncbi) | [News](#news) | [Other](#other) | [Public Health](#public-health) | [Social Media](#social-media) | [Social Science](#social-science) | [Sports](#sports) | [Web Analytics](#web-analytics) | [Wikipedia](#wikipedia) |

### Agriculture

-   [cdlTools](http://cran.rstudio.com/web/packages/cdlTools/index.html): download USDA National Agricultural Statistics Service (NASS) cropscape data for a specified state. Utilities for fips, abbreviation, and name conversion are also provided.
-   [cimis](https://cran.rstudio.com/src/contrib/Archive/cimis/): R package for retrieving data from CIMIS, the California Irrigation Management Information System. Available in CRAN archives only.
-   [FAOSTAT](http://cran.rstudio.com/web/packages/FAOSTAT/index.html): The package hosts a list of functions to download, manipulate, construct and aggregate agricultural statistics provided by the FAOSTAT (Food and Agricultural Organization of the United Nations) database.

### Astronomy

-   [RStars](http://cran.rstudio.com/web/packages/RStars/index.html): Star-API provides API access to the American Museum of Natural History's Digital Universe Data, including positions, luminosity, color, and other data on over 100,000 stars as well as constellations, exo-planets, clusters and others. [Source on GitHub](https://github.com/ropensci/RStars).

### Business

-   [forbesListR](https://github.com/abresler/forbesListR) (not on CRAN) offers access to a number of business-related datasets provided by Forbes.

### Chemistry

-   [rpubchem](http://cran.rstudio.com/web/packages/rpubchem/index.html): Interface to the PubChem Collection.
-   [webchem](http://cran.rstudio.com/web/packages/webchem/index.html): Retrieve chemical information from a suite of web APIs for chemical information. [Source on GitHub](https://github.com/ropensci/webchem)

### Earth Science

-   [dataRetrieval](http://cran.rstudio.com/web/packages/dataRetrieval/index.html): Collection of functions to help retrieve USGS data from either web services or user-provided data files. [on GitHub](https://github.com/USGS-R/dataRetrieval).
-   [elevatr](http://cran.rstudio.com/web/packages/elevatr/index.html): Access point elevation data or raster Digital Elevation Models in R from the USGS Point Elevation Service, the Mapzen Elevation Service, Mapzen Terrain Tiles, or Amazon Web Services Terrain Tiles. [Source on Github](https://github.com/jhollist/elevatr)
-   [getlandsat](http://cran.rstudio.com/web/packages/getlandsat/index.html): obtain landsat 8 Data from \[Amazon Web Services public data sets\] (https://aws.amazon.com/public-data-sets/landsat/) --- list images and fetch them, handles caching to prevent unnecessary additional requests.
-   [hddtools](http://cran.rstudio.com/web/packages/hddtools/index.html): Hydrological data discovery tools - accesses data from NASA, Global Runoff Data Centre, Top-Down modelling Working Group. [Source on GitHub](https://github.com/cvitolo/r_hddtools)
-   [marmap](http://cran.rstudio.com/web/packages/marmap/index.html): Import, plot and analyze bathymetric and topographic data from NOAA.
-   [mregions](http://cran.rstudio.com/web/packages/mregions/index.html): data from [Marine Regions](http://%20www.marineregions.org/), including region metadata, GeoJSON data, as well as Shape files. Use cases include using data downstream to visualize geospatial data by marine region, mapping variation among different regions, and more.
-   [raincpc](http://cran.rstudio.com/web/packages/raincpc/index.html): The Climate Prediction Center's (CPC) daily rainfall data for the entire world, from 1979 to the present, at a resolution of 50 km (0.5 degrees lat-lon). This package provides functionality to download and process the raw data from CPC.
-   [rainfreq](http://cran.rstudio.com/web/packages/rainfreq/index.html): Estimates of rainfall at desired frequency and desired duration are often required in the design of dams and other hydraulic structures, catastrophe risk modeling, environmental planning and management. One major source of such estimates for the USA is the NOAA National Weather Service's (NWS) division of Hydrometeorological Design Studies Center (HDSC). Raw data from NWS-HDSC is available at 1-km resolution and comes as a huge number of GIS files.
-   [rFDSN](http://cran.rstudio.com/web/packages/rFDSN/index.html): Search for and download seismic time series in miniSEED format (a minimalist version of the Standard for the Exchange of Earthquake Data) from [International Federation of Digital Seismograph Networks](http://www.fdsn.org/) repositories. This package can also be used to gather information about seismic networks (stations, channels, locations, etc) and find historical earthquake data (origins, magnitudes, etc).
-   [rnrfa](http://cran.rstudio.com/web/packages/rnrfa/index.html): Utility functions to retrieve data from the UK National River Flow Archive via an API (http://nrfa.ceh.ac.uk). There are functions to retrieve stations falling in a bounding box, to generate a map and extracting time series and general information.
-   [soilDB](http://cran.rstudio.com/web/packages/soilDB/index.html): A collection of functions for reading data from USDA-NCSS soil databases.
-   [sos4R](http://cran.rstudio.com/web/packages/sos4R/index.html): A client for Sensor Observation Services (SOS) as specified by the Open Geospatial Consortium (OGC). It allows users to retrieve metadata from SOS web services and to interactively create requests for near real-time observation data based on the available sensors, phenomena, observations, etc. using thematic, temporal and spatial filtering.
-   [waterData](http://cran.rstudio.com/web/packages/waterData/index.html): An R Package for retrieval, analysis, and anomaly calculation of daily hydrologic time series data.
-   [WaterML](http://cran.rstudio.com/web/packages/WaterML/index.html) can retrieve WaterOneFlow [Hydroserver](http://hiscentral.cuahsi.org) data.

### Climate

-   [BerkeleyEarth](https://cran.rstudio.com/src/contrib/Archive/BerkeleyEarth/): Data input for Berkeley Earth Surface Temperature. Archived on CRAN.
-   [CHCN](http://cran.rstudio.com/web/packages/CHCN/index.html): A compilation of historical through contemporary climate measurements scraped from the Environment Canada Website Including tools for scraping data, creating metadata and formatting temperature files.
-   [clifro](http://cran.rstudio.com/web/packages/clifro/index.html): Designed to minimise the hassle in downloading data from New Zealand's National Climate Database via [CliFlo](http://cliflo.niwa.co.nz/). [Source on GitHub](https://github.com/ropensci/clifro)
-   [crn](http://cran.rstudio.com/web/packages/crn/index.html): Provides the core functions required to download and format data from the Climate Reference Network. Both daily and hourly data are downloaded from the ftp, a consolidated file of all stations is created, station metadata is extracted. In addition functions for selecting individual variables and creating R friendly datasets for them is provided.
-   [darksky](http://cran.rstudio.com/web/packages/darksky/index.html): the [Dark Sky API](https://darksky.net/dev/docs), which provides current or historical global weather conditions.
-   [decctools](https://cran.r-project.org/whttp://cran.rstudio.com/web/packages/decctools/index.html) (archived on CRAN) provides functions for retrieving energy statistics from the United Kingdom Department of Energy and Climate Change and related data sources. The current version focuses on total final energy consumption statistics at the local authority, MSOA, and LSOA geographies. Methods for calculating the generation mix of grid electricity and its associated carbon intensity are also provided.
-   [getCRUCLdata](http://cran.rstudio.com/web/packages/getCRUCLdata/index.html): download and import climatology data from University of East Anglia Climate Research Unit (CRU) CL2.0 data into R; calculate minimum temperature and maximum temperature; formats the data into a tidy data frame or a list of raster stack objects for use in an R session. CRU CL2.0 data are a gridded climatology of 1961-1990 monthly means released in 2002 and cover all land areas (excluding Antarctica) at 10-minute resolution.
-   [GhcnDaily](https://cran.r-project.org/src/contrib/Archive/GhcnDaily/) (archived on CRAN) downloads and processes Global Historical Climatology Network (GHCN) daily data from the National Climatic Data Center (NCDC).
-   [GSODR](http://cran.rstudio.com/web/packages/GSODR/index.html) provides acess to data from USA National Climatic Data Center (NCDC) Global Surface Summary of the Day (GSOD) weather stations, as well as functions for working with these data.
-   [Metadata](https://cran.rstudio.com/src/contrib/Archive/Metadata/): Collates metadata for climate surface stations. Archived on CRAN.
-   [meteoForecast](http://cran.rstudio.com/web/packages/meteoForecast/index.html): meteoForecast is a package to access to several Numerical Weather Prediction services both in raster format and as a time series for a location. Currenty it works with [GFS](http://www.emc.ncep.noaa.gov/index.php?branch=GFS), [Meteogalicia](http://www.meteogalicia.es/web/modelos/threddsIndex.action), [OpenMeteo](https://openmeteoforecast.org/wiki/Main_Page), [NAM](http://www.ncdc.noaa.gov/data-access/model-data/model-datasets/north-american-mesoscale-forecast-system-nam), and [RAP](http://www.ncdc.noaa.gov/data-access/model-data/model-datasets/rapid-refresh-rap). \[Source on GitHub\](https://github.com/oscarperpinan/meteoForecast/
-   [okmesonet](http://cran.rstudio.com/web/packages/okmesonet/index.html): Retrieves Oklahoma (USA) Mesonet climatological data provided by the Oklahoma Climatological Survey.
-   [prism](http://cran.rstudio.com/web/packages/prism/index.html) ([GitHub](https://github.com/ropensci/prism)) provides access to Oregon State Prism climate data.
-   [rclimateca](http://cran.rstudio.com/web/packages/rclimateca/index.html): access [Environment Canada](http://climate.weather.gc.ca/) data on temperature, precipitation, and wind data for more than 8,000 locations.
-   [rdefra](http://cran.rstudio.com/web/packages/rdefra/index.html) ([GitHub](https://github.com/kehraProject/r_rdefra)) retrieves UK air pollution data from DEFRA's UK-AIR website.
-   [rdwd](http://cran.rstudio.com/web/packages/rdwd/index.html): Handle climate data from the 'DWD' ('Deutscher Wetterdienst')
-   [RFc](http://cran.rstudio.com/web/packages/RFc/index.html) ([GitHub](https://github.com/dgrechka/RFc)) can retrieve weather data from the [FetchClimate Web Service](http://fc.itis.cs.msu.ru/).
-   [riem](http://cran.rstudio.com/web/packages/riem/index.html) ([GitHub](http://github.com/ropenscilabs/riem)) offers access to Automated Surface Observing System (ASOS) stations (airports) in the whole world thanks to the Iowa Environment Mesonet website.
-   [RNCEP](http://cran.rstudio.com/web/packages/RNCEP/index.html): Obtain, organize, and visualize [NCEP](http://www.ncep.noaa.gov/) weather data.
-   [rnoaa](http://cran.rstudio.com/web/packages/rnoaa/index.html): R interface to NOAA Climate data API. See also [countyweather](http://cran.rstudio.com/web/packages/countyweather/index.html) which uses this interface to aggregate data at the county level.
-   [rNOMADS](http://cran.rstudio.com/web/packages/rNOMADS/index.html): An interface to the [NOAA Operational Model Archive and Distribution System (NOMADS)](http://nomads.ncdc.noaa.gov/) that allows download of global and regional weather model data, and supports a variety of models ranging from global weather data to an altitude of 40 km, to high resolution regional weather models, to wave and sea ice models. It can also retrieve archived NOMADS models. Source: [<span class="Rforge">rnomads</span>](https://R-Forge.R-project.org/projects/rnomads/).
-   [ropenaq](http://cran.rstudio.com/web/packages/ropenaq/index.html) ([GitHub](http://github.com/ropenscilabs/ropenaq)) provides air quality data from [the OpenAQ platform](https://docs.openaq.org/).
-   [rWBclimate](http://cran.rstudio.com/web/packages/rWBclimate/index.html): R interface for the World Bank climate data. [Source on GitHub](https://github.com/ropensci/rWBclimate)
-   [rWind](http://cran.rstudio.com/web/packages/rWind/index.html): Tools for downloading, editing and transforming wind data from Global Forecast System ([GFS](https://www.ncdc.noaa.gov/data-access/model-data/model-datasets/global-forcast-system-gfs)) of the USA's National Weather Service ([NWS](http://www.weather.gov/)).
-   [rwunderground](http://cran.rstudio.com/web/packages/rwunderground/index.html) access historical weather information and forecasts from wunderground.com. Historical weather and forecast data includes, but is not limited to, temperature, humidity, windchill, wind speed, dew point, heat index. Additionally, the weather underground weather API also includes information on sunrise/sunset, tidal conditions, satellite/webcam imagery, weather alerts, hurricane alerts and historical record high/low temperatures.
-   [SkyWatchr](http://cran.rstudio.com/web/packages/SkyWatchr/index.html): satellite imagery and climate/atmospheric datasets from the SkyWatch API. Search by wavelength (band), cloud cover, resolution, location, date, etc.
-   [stationaRy](http://cran.rstudio.com/web/packages/stationaRy/index.html) can retrieve hourly weather data from various global weather stations.
-   [weatherData](http://cran.rstudio.com/web/packages/weatherData/index.html): Functions that help in fetching weather data from websites. Given a location and a date range, these functions help fetch weather data (temperature, pressure etc.) for any weather related analysis.
-   [weatherr](http://cran.rstudio.com/web/packages/weatherr/index.html) combines data from multiple APIs to obtain instant weather forecasts.
-   [worldmet](http://cran.rstudio.com/web/packages/worldmet/index.html): import data from more than 30,000 surface meteorological sites around the world managed by the National Oceanic and Atmospheric Administration (NOAA) Integrated Surface Database

### Ecology and Evolutionary Biology

-   [BAAD: a Biomass And Allometry Database for woody plants](https://github.com/traitecoevo/baad.data) (not on CRAN): an interface to access data from a data paper published in *Ecology* . [Full source for the database is also on GitHub](https://github.com/dfalster/baad).
-   [<span class="BioC">biomart</span>](http://www.Bioconductor.ohttp://cran.rstudio.com/web/packages/release/bioc/html/biomart.html) retrieves data from a number of public biological data repositories including <a href="http://www.biomart.org" class="uri" class="uri">http://www.biomart.org</a>, NCBI refseq, Gene Ontology.
-   [dismo](http://cran.rstudio.com/web/packages/dismo/index.html): Species distribution modeling, with wrappers to Google APIs for maps and geocoding.
-   [ecoengine](http://cran.rstudio.com/web/packages/ecoengine/index.html) ([GitHub](https://github.com/ropensci/ecoengine)) provides access to more than 2 million georeferenced specimen records from [ecoengine](https://ecoengine.berkeley.edu/) from the [Berkeley Natural History Museums](http://bnhm.berkeley.edu/).
-   [ecoretriever](http://cran.rstudio.com/web/packages/ecoretriever/index.html) ([GitHub](https://github.com/ropensci/ecoretriever/)) provides an R interface to the [EcoData Retriever](http://www.ecodataretriever.org/) via the EcoData Retriever's command line interface. The EcoData Retriever automates the tasks of finding, downloading, and cleaning ecological datasets, and then stores them in a local database (including SQLite, MySQL, etc.).
-   [icesDatras](http://cran.rstudio.com/web/packages/icesDatras/index.html): the [DATRAS trawl survey database](https://datras.ices.dk/WebServices/Webservices.aspx) from ICES (International Council for the Exploration of the Sea).
-   [natserv](http://cran.rstudio.com/web/packages/natserv/index.html): access [NatureServe](http://www.natureserve.org) data, image metadata, search taxonomic names, and make maps.
-   [neotoma](http://cran.rstudio.com/web/packages/neotoma/index.html) ([GitHub](https://github.com/ropensci/neotoma)) offers programmatic R interface to the Neotoma Paleoecological Database.
-   [paleobioDB](http://cran.rstudio.com/web/packages/paleobioDB/index.html): Functions to wrap each endpoint of the PaleobioDB API, plus functions to visualize and process the fossil data. The API documentation for the Paleobiology Database can be found at http://paleobiodb.org/data1.1/.
-   [pleiades](http://cran.rstudio.com/web/packages/pleiades/index.html): interact with Pleiades API for Archeological data --- get status data, places data, make GeoJSON maps.
-   [rbison](http://cran.rstudio.com/web/packages/rbison/index.html) ([GitHub](https://github.com/ropensci/rbison)) is a wrapper to the USGS Bison API.
-   [Rcolombos](http://cran.rstudio.com/web/packages/Rcolombos/index.html): This package provides programmatic access to Colombos, a web based interface for exploring and analyzing comprehensive organism-specific cross-platform expression compendia of bacterial organisms.
-   [ridigbio](https://github.com/idigbio/ridigbio) (not on CRAN) is an interface for <a href="https://www.idigbio.org/" class="uri" class="uri">https://www.idigbio.org/</a>.
-   [rebird](http://cran.rstudio.com/web/packages/rebird/index.html) ([GitHub](https://github.com/ropensci/rebird)) is a programmatic interface to the eBird database.
-   [rdopa](https://github.com/ropensci/rdopa) (not on CRAN): Access data from the [Digital Observatory for Protected Areas](http://dopa.jrc.ec.europa.eu/) (DOPA) REST API.
-   [Reol](http://cran.rstudio.com/web/packages/Reol/index.html) ([GitHub](https://github.com/ropensci/Reol)) is an R interface to the Encyclopedia of Life (EOL) API. Includes functions for downloading and extracting information off the EOL pages.
-   [rfishbase](http://cran.rstudio.com/web/packages/rfishbase/index.html) ([GitHub](https://github.com/ropensci/rfishbase)) is a programmatic interface to fishbase.org.
-   [rfisheries](http://cran.rstudio.com/web/packages/rfisheries/index.html) ([GitHub](https://github.com/ropensci/rfisheries)) interacts with fisheries databases at openfisheries.org.
-   [rnpn](http://cran.rstudio.com/web/packages/rnpn/index.html) ([GitHub](https://github.com/ropensci/rnpn)): Wrapper to the National Phenology Network database API.
-   [rredlist](http://cran.rstudio.com/web/packages/rredlist/index.html) ([GitHub](https://github.com/ropenscilabs/rredlist)) is an API client for the [IUCN red list](http://www.iucnredlist.org/) of threatened and engaged species.
-   [rvertnet](http://cran.rstudio.com/web/packages/rvertnet/index.html) ([GitHub](https://github.com/ropensci/rvertnet)) is a wrapper to the VertNet collections database API.
-   [rYoutheria](http://cran.rstudio.com/web/packages/rYoutheria/index.html): A programmatic interface to web-services of Youtheria, an online database of mammalian trait data. Development version on GitHub [here](https://github.com/biologicalrecordscentre/rYoutheria)
-   [spocc](http://cran.rstudio.com/web/packages/spocc/index.html) ([GitHub](https://github.com/ropensci/spocc)) offers a programmatic interface to many species occurrence data sources, including GBIF, USGS's BISON, iNaturalist, Berkeley Ecoinformatics Engine eBird, AntWeb, and more as they sources become easily available. rinat provides another interface to iNaturalist. [spoccutils](http://cran.rstudio.com/web/packages/spoccutils/index.html) ([Github](https://github.com/ropensci/mapr)) provides various utilities for working with data retrieved using spocc.
-   [TR8](http://cran.rstudio.com/web/packages/TR8/index.html) ([GitHub](https://github.com/GioBo/TR8)) contains a set of tools which take care of retrieving trait data for plant species from publicly available databases via web services (including: Biolflor, The Ecological Flora of the British Isles, LEDA traitbase, Ellenberg values for Italian Flora, Mycorrhizal intensity database).
-   [traits](http://cran.rstudio.com/web/packages/traits/index.html) ([Github](https://github.com/ropensci/traits)) can retrieve species trait data from many online sources.
-   [rusda](http://cran.rstudio.com/web/packages/rusda/index.html) connects to a large number of USDA databases, especially for fungal-host combinations.

### Biodiversity and Taxonomy

-   [ALA4R](http://cran.rstudio.com/web/packages/ALA4R/index.html): Atlas of Living Australia (ALA) provides tools to enable users of biodiversity information to find, access, combine and visualise data on Australian plants and animals.
-   [flora](http://cran.rstudio.com/web/packages/flora/index.html): Retrieve taxonomical information of botanical names from the Flora do Brasil website.
-   [icesVocab](http://cran.rstudio.com/web/packages/icesVocab/index.html): the ICES (International Council for the Exploration of the Sea) [Vocabularies Database (RECO POX)](http://vocab.ices.dk/services/POX.aspx).
-   [rbhl](http://cran.rstudio.com/web/packages/rbhl/index.html): R interface to the Biodiversity Heritage Library (BHL) API.
-   [rgbif](http://cran.rstudio.com/web/packages/rgbif/index.html): Interface to the Global Biodiversity Information Facility API methods. [Source on GitHub](https://github.com/ropensci/rgbif)
-   [rnbn](http://cran.rstudio.com/web/packages/rnbn/index.html) ([GitHub](https://github.com/ropensci/rnbn)) is an R interface to the [UK National Biodiversity Network](http://nbn.org.uk).
-   [rPlant](http://cran.rstudio.com/web/packages/rPlant/index.html): An R interface to the the many computational resources iPlant offers through their RESTful application programming interface. Currently, rPlant functions interact with the iPlant foundational API, the Taxonomic Name Resolution Service API, and the Phylotastic Taxosaurus API. Before using rPlant, users will have to register with the [iPlant Collaborative](http://www.iplantcollaborative.org/ci/discovery-environment)
-   [taxize](http://cran.rstudio.com/web/packages/taxize/index.html): Taxonomic information from around the web. A single unified interface to many web APIs for taxonomic data, including NCBI, ITIS, Tropicos and more. [Source on GitHub](https://github.com/ropensci/taxize)
-   The [tpl](https://github.com/gustavobio/tpl) package doesn't interact with the web directly, but queries locally stored data from [theplantlist.org](http://www.theplantlist.org/), and data will be updated when theplantlist updates, which is not very often. There is another package for interacting with this same data, called Taxonstand.
-   [worrms](http://cran.rstudio.com/web/packages/worrms/index.html): [World Register of Marine Species](http://www.marinespecies.org/) including searching by name, date and common names, searching using external identifiers, fetching synonyms, as well as fetching taxonomic children and taxonomic classification.

### Phylogenetics

-   [rotl](https://cran.r-project.org/whttp://cran.rstudio.com/web/packages/rotl/index.html): R client for the Open Tree of Life API. [Source on GitHub](https://github.com/ropensci/rotl)
-   [rphylopic](https://github.com/sckott/rphylopic) (not on CRAN): An R client for [Phylopic.org](http://phylopic.org/), a databaes of free silhouettes of animals, embedded in a phylogenetic information framework. [Source on GitHub](https://github.com/sckott/rphylopic)
-   [treebase](http://cran.rstudio.com/web/packages/treebase/index.html): An R package for discovery, access and manipulation of online phylogenies. [Source on GitHub](https://github.com/ropensci/treebase)

### Finance

-   [BatchGetSymbols](http://cran.rstudio.com/web/packages/BatchGetSymbols/index.html) download and organize financial data (from Yahoo or Google Finance) for multiple ticker symbols.
-   [belex](http://cran.rstudio.com/web/packages/belex/index.html): historical financial data form the Belgrade Stock Exchange (Serbia)
-   [dataonderivatives](http://cran.rstudio.com/web/packages/dataonderivatives/index.html) Post-GFC derivatives reforms have lifted the veil off over-the-counter (OTC) derivative markets. Swap Execution Facilities (SEFs) and Swap Data Repositories (SDRs) now publish data on swaps that are traded on or reported to those facilities (respectively). This package provides you the ability to get this data from supported sources.
-   [Datastream2R](https://github.com/CharlesCara/Datastream2R) (not on CRAN): Another package for accessing the Datastream service. This package downloads data from the Thomson Reuters DataStream DWE server, which provides XML access to the Datastream database of economic and financial information.
-   [epidata](http://cran.rstudio.com/web/packages/epidata/index.html): data from [Economic Policy Institute](http://www.epi.org/) on wages, inequality, and other economic indicators over time and among demographic groups. Data is usually updated monthly.
-   [fImport](http://cran.rstudio.com/web/packages/fImport/index.html): Environment for teaching "Financial Engineering and Computational Finance"
-   [GetTDData](http://cran.rstudio.com/web/packages/GetTDData/index.html) downloads and aggregates data for Brazilian government issued bonds directly from the website of [Tesouro Direto](http://www.tesouro.fazenda.gov.br/tesouro-direto-balanco-e-estatisticas).
-   [IBrokers](http://cran.rstudio.com/web/packages/IBrokers/index.html): Provides native R access to Interactive Brokers Trader Workstation API. ($)
-   [pdfetch](http://cran.rstudio.com/web/packages/pdfetch/index.html): A package for downloading economic and financial time series from public sources.
-   [quantmod](http://cran.rstudio.com/web/packages/quantmod/index.html): Functions for financial quantitative modelling as well as data acquisition, plotting and other utilities.
-   [Rbitcoin](http://cran.rstudio.com/web/packages/Rbitcoin/index.html): Ineract with Bitcoin. Both public and private API calls. Support HTTP over SSL. Debug messages of Rbitcoin, debug messages of RCurl, error handling.
-   [rbitcoinchartsapi](http://cran.rstudio.com/web/packages/rbitcoinchartsapi/index.html): An R package for the [BitCoinCharts.com](http://bitcoincharts.com/) API. From their website: "Bitcoincharts provides financial and technical data related to the Bitcoin network and this data can be accessed via a JSON application programming interface (API)."
-   [Rblpapi](https://github.com/armstrtw/Rblpapi): R client for Bloomberg Finance L.P. [Source on GitHub](https://github.com/armstrtw/Rblpapi) ($)
-   [RCryptsy](http://cran.rstudio.com/web/packages/RCryptsy/index.html) wraps the API for the [Cryptsy](http://www.cryptsy.com) crypto-currency trading platform. [Source on GitHub](https://github.com/ropensci/RCryptsy). ($)
-   [RDatastream](https://github.com/fcocquemas/rdatastream) (not on CRAN): An R interface to the [Thomson Dataworks Enterprise SOAP API](http://dataworks.thomson.com/Dataworks/Enterprise/1.0/), with some convenience functions for retrieving Datastream data specifically. ($)
-   [RJSDMX](http://cran.rstudio.com/web/packages/RJSDMX/index.html) and [rsdmx](http://cran.rstudio.com/web/packages/rsdmx/index.html) both retrieve data and metadata from SDMX compliant data providers.
-   [TFX](http://cran.rstudio.com/web/packages/TFX/index.html): Connects to TrueFX(tm) for free streaming real-time and historical tick-by-tick market data for dealable interbank foreign exchange rates with millisecond detail.
-   [Thinknum](http://cran.rstudio.com/web/packages/Thinknum/index.html): Interacts with the [Thinknum](http://www.thinknum.com/) API. ($)
-   [tseries](http://cran.rstudio.com/web/packages/tseries/index.html): Includes the `get.hist.quote` for historical financial data.
-   [ustyc](http://cran.rstudio.com/web/packages/ustyc/index.html): US Treasury yield curve data retrieval. Development version on GitHub [here](https://github.com/mrbcuda/ustyc).

### Genes and Genomes

-   [aggRmesh](https://github.com/balcomes/aggRmesh): R client for the [National Center for Integrative Biomedical Informatics (NCIBI)](http://portal.ncibi.org/gateway/) data.
-   [cgdsr](http://cran.rstudio.com/web/packages/cgdsr/index.html): R-Based API for accessing the MSKCC Cancer Genomics Data Server (CGDS).
-   [chromer](http://cran.rstudio.com/web/packages/chromer/index.html): A programmatic interface to the [Chromosome Counts Database](http://ccdb.tau.ac.il/). [Source on GitHub](https://github.com/ropensci/chromer)
-   The [mygene.r](https://bitbucket.org/sulab/mygene.r/overview) package is an R client for accessing [Mygene.info](http://mygene.info/#) annotation and query services.
-   [<span class="BioC">GoogleGenomics</span>](http://www.Bioconductor.ohttp://cran.rstudio.com/web/packages/release/bioc/html/GoogleGenomics.html) reads data from the [Google Genomics API](https://cloud.google.com/genomics) and returns BioConductor-compatible S4 classes.
-   [primerTree](http://cran.rstudio.com/web/packages/primerTree/index.html): Visually Assessing the Specificity and Informativeness of Primer Pairs.
-   [rsnps](http://cran.rstudio.com/web/packages/rsnps/index.html): This package is a programmatic interface to various SNP datasets on the web: openSNP, NBCI's dbSNP database, and Broad Institute SNP Annotation and Proxy Search. This package started as a library to interact with openSNP alone, so most functions deal with openSNP.
-   [seq2R](http://cran.rstudio.com/src/contrib/Archive/seq2R/): Detect compositional changes in genomic sequences - with some interaction with GenBank. Archived on CRAN.
-   [seqinr](http://cran.rstudio.com/web/packages/seqinr/index.html): Exploratory data analysis and data visualization for biological sequence (DNA and protein) data.
-   [SoyNAM](http://cran.rstudio.com/web/packages/SoyNAM/index.html): Genomic and multi-environmental soybean data. Soybean Nested Association Mapping (SoyNAM) project dataset funded by the United Soybean Board (USB), pre-formatted for general analysis and genome-wide association analysis using the NAM package.
-   [ungeneanno](http://cran.rstudio.com/web/packages/ungeneanno/index.html): collate annotation and summary information about a set of genes from the publicly available resources at Uniprot and NCBI; including publication information from a search of the NCBI Pubmed database.
-   NCBI EUtils web services: See the NCBI section

### Geocoding

-   [geocodeHERE](http://cran.rstudio.com/web/packages/geocodeHERE/index.html): Wrapper for Nokia's [HERE](http://here.com/) geocoding API. API docs: <a href="https://developer.here.com/geocoder" class="uri" class="uri">https://developer.here.com/geocoder</a>. [Source on GitHub](https://github.com/corynissen/geocodeHERE)
-   [ipapi](https://github.com/hrbrmstr/ipapi): Geolocate IPv4/6 addresses and/or domain names using the [ip-api.com](http://ip-api.com/) API. [Source on GitHub](https://github.com/hrbrmstr/ipapi)
-   [openadds](https://github.com/sckott/openadds) is an R client for [OpenAddresses](http://openaddresses.io/) a free and open global address collection. [Source on GitHub](https://github.com/sckott/openadds)

### Google Analytics

-   [ganalytics](https://github.com/jdeboer/ganalytics) (not on CRAN): Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/jdeboer/ganalytics)
-   [GAR](http://cran.rstudio.com/web/packages/GAR/index.html): Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/andrewgeisler/GAR)
-   [RGA](http://cran.rstudio.com/web/packages/RGA/index.html): Provides functions for accessing and retrieving data from the [Google Analytics APIs](https://developers.google.com/analytics/). Supports OAuth 2.0 authorization. Also, the RGA package provides a shiny app to explore data. There is another R package for the same service (RGoogleAnalytics); see above entry.
-   [RGoogleAnalytics](http://cran.rstudio.com/web/packages/RGoogleAnalytics/index.html): Provides functions for accessing and retrieving data from the Google Analytics API. [Source on GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues). There is another R package for the same service (RGA); see next entry.

### Google Web Services

-   [bigrquery](http://cran.rstudio.com/web/packages/bigrquery/index.html): An interface to Google's bigquery from R. [Source on GitHub](https://github.com/hadley/bigrquery) (K)
-   [ganalytics](https://github.com/jdeboer/ganalytics) (not on CRAN): Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/jdeboer/ganalytics) (K)
-   [GAR](http://cran.rstudio.com/web/packages/GAR/index.html): Interface to [Google Analytics APIs](https://developers.google.com/analytics/). [Source on GitHub](https://github.com/andrewgeisler/GAR) (K)
-   [GFusionTables](http://gfusiontables.lopatenko.com/) (not on CRAN): An R interface to Google Fusion Tables. Google Fusion Tables is a data management system in the cloud. This package provides R functions to browse Fusion Tables catalog, retrieve data from Fusion Tables storage to R and to upload data from R to Fusion Tables (K)
-   [googlePublicData](http://cran.rstudio.com/web/packages/googlePublicData/index.html): An R library to build Google's public data explorer DSPL metadata files.
-   [googleVis](http://cran.rstudio.com/web/packages/googleVis/index.html): Interface between R and the Google chart tools.
-   gooJSON ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/gooJSON)) is a Google JSON data interpreter for R which contains a suite of helper functions for obtaining data from the Google Maps API JSON objects.
-   [plotGoogleMaps](http://cran.rstudio.com/web/packages/plotGoogleMaps/index.html): Plot SP or SPT(STDIF,STFDF) data as HTML map mashup over Google Maps.
-   [plotKML](http://cran.rstudio.com/web/packages/plotKML/index.html): Visualization of spatial and spatio-temporal objects in Google Earth.
-   [RAdwords](http://cran.rstudio.com/web/packages/RAdwords/index.html): A package for loading Google Adwords data. [Source on GitHub](https://github.com/jburkhardt/RAdwords)
-   [RGA](http://cran.rstudio.com/web/packages/RGA/index.html): Provides functions for accessing and retrieving data from the [Google Analytics APIs](https://developers.google.com/analytics/). Also, the RGA package provides a shiny app to explore data. There is another R package for the same service (RGoogleAnalytics); see above entry.
-   [RGoogleAnalytics](http://cran.rstudio.com/web/packages/RGoogleAnalytics/index.html): Provides functions for accessing and retrieving data from the Google Analytics API. [Source on GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues). There is another R package for the same service (RGA); see next entry.
-   The [<span class="Ohat">RGoogleDocs</span>](http://www.Omegahat.org/RGoogleDocs/) (not on CRAN) package is an example of using the RCurl and XML packages to quickly develop an interface to the Google Documents API.
-   [<span class="Ohat">RGoogleStorage</span>](http://www.Omegahat.org/RGoogleStorage/) (not on CRAN) provides programmatic access to the Google Storage API. This allows R users to access and store data on Google's storage. We can upload and download content, create, list and delete folders/buckets, and set access control permissions on objects and buckets.
-   [<span class="Ohat">RGoogleTrends</span>](http://www.Omegahat.org/RGoogleTrends/) (not on CRAN) provides programmatic access to Google Trends data. This is information about the popularity of a particular query.
-   [translate](http://cran.rstudio.com/web/packages/translate/index.html): Bindings for the Google Translate API v2
-   [translateR](http://cran.rstudio.com/web/packages/translateR/index.html) provides bindings for both Google and Microsoft translation APIs.

### Government

There are a very large number of packages providing access to government data. Here is a list of these packages, arranged by country and/or other jurisdiction.

-   *Australia*: [eechidna](http://cran.rstudio.com/web/packages/eechidna/index.html) provides data from the 2013 Australian Federal Election (House of Representatives) and the 2011 Australian Census.
-   *Brazil*: [BETS](http://cran.rstudio.com/web/packages/BETS/index.html): Brazilian Economic Time Series from the Central Bank of Brazil, Getulio Vargas Foundation, and the Brazilian Institute of Geography. The package also provides tools for automated reporting (dynamic documents). [ecoseries](http://cran.rstudio.com/web/packages/ecoseries/index.html): interface to [Bacen](http://api.bcb.gov.br) and [Sidra](http://api.sidra.ibge.gov.br) APIs and data from [IPEA](http://www.ipeadata.gov.br/Default.aspx) in Brazil.
-   *Denmark*: [dkstat](https://github.com/rOpenGov/dkstat) (not on CRAN): A package to access the [StatBank API](http://www.statistikbanken.dk/statbank5a/) from [Statistics Denmark](http://www.dst.dk/). [taxdk](https://github.com/sebastianbarfort/taxdk) (not on CRAN) provides tax information for Danish companies.
-   *Europe* :
    -   [ameco](http://cran.rstudio.com/web/packages/ameco/index.html) ([GitHub](http://github.com/expersso/ameco)) connects to the European Commission's macro-economic database.
    -   [ecb](http://cran.rstudio.com/web/packages/ecb/index.html) is a client for the [European Central Bank's Statistical Data Warehouse](https://sdw.ecb.europa.eu/) API.
    -   [eurostat](http://cran.rstudio.com/web/packages/eurostat/index.html) ([Github](https://github.com/ropengov/eurostat)) provides an interface to the [Eurostat database](http://ec.europa.eu/eurostat).
-   *Finland* :
    -   [pxweb](http://cran.rstudio.com/web/packages/pxweb/index.html) ([GitHub](https://github.com/rOpenGov/pxweb)) is a generic interface for the PX-Web/PC-Axis API. The PX-Web/PC-Axis API is used by organizations such as Statistics Sweden and Statistics Finland to disseminate data. The R package can interact with all PX-Web/PC-Axis APIs to fetch information about the data hierarchy, extract metadata and extract and parse statistics to R data.frame format.
    -   [sorvi](http://cran.rstudio.com/web/packages/sorvi/index.html) ([GitHub](https://github.com/louhos/sorvi/)): Various tools for retrieving and working with Finnish open government data.
-   *Germany*: [BerlinData](https://github.com/dirkschumacher/RBerlinData) ([archived on CRAN](https://cran.r-project.org/src/contrib/Archive/BerlinData/)): Easy access to <a href="http://daten.berlin.de" class="uri" class="uri">http://daten.berlin.de</a>. It allows you to search through the data catalogue and to download the data directly from within R. [rdnb](http://cran.rstudio.com/web/packages/rdnb/index.html) connects to resources of the [German National Library](http://www.dnb.de).
-   *India*: [usaqmindia](https://github.com/masalmon/usaqmindia) provides data from the US air quality monitoring program in India for Delhi, Mumbai, Chennai, Hyderabad and Kolkata. Data source is US governement via [this website](http://newdelhi.usembassy.gov/airqualitydata.html).
-   *Japan*: [govStatJPN](http://cran.rstudio.com/web/packages/govStatJPN/index.html) offers functions to get public survey data in Japan. [estatapi](http://cran.rstudio.com/web/packages/estatapi/index.html) links to the Japanese government's e-Stat official statistics API. [kokudosuuchi](http://cran.rstudio.com/web/packages/kokudosuuchi/index.html): interface with [Kokudo Suuchi API](http://nlftp.mlit.go.jp/ksj-e/index.html) the GIS data service of the Japanese government.
-   *Mexico*: [inegiR](http://cran.rstudio.com/web/packages/inegiR/index.html) ([GitHub](https://github.com/Eflores89/inegiR)) can download official statistics for Mexico. Note: package functions and documentation are in Spanish. [banxicoR](http://cran.rstudio.com/web/packages/banxicoR/index.html) scrape IQY calls to Bank of Mexico.
-   *Netherlands*: [cbsodataR](http://cran.rstudio.com/web/packages/cbsodataR/index.html) connects with the [Statistics Netherlands](https://github.com/edwindj/cbsodataR) datasets. [Source on GitHub](https://github.com/edwindj/cbsodataR).
-   *Poland* :
    -   [saos](https://github.com/bartekch/saos) (not on CRAN) is an interface to the API for SAOS, a repository of judgments from Polish common courts (district, regional and appellate) and the Supreme Court of Poland.
    -   [sejmRP](http://cran.rstudio.com/web/packages/sejmRP/index.html) ([GitHub](http://github.com/mi2-warsaw/sejmRP/)) provides data on deputies and voting in [the Polish Diet](http://www.sejm.gov.pl/).
-   *Russia*: [sophisthse](http://cran.rstudio.com/web/packages/sophisthse/index.html) provides economic indicators from [the Archive of Economic and Social Data](http://sophist.hse.ru)
-   *United States of America* :
    -   U.S. Census Bureau: [acs](http://cran.rstudio.com/web/packages/acs/index.html) can download, manipulate, and present data from the US Census American Community Survey. [censusr](http://cran.rstudio.com/web/packages/censusr/index.html) connects to both ACS and SF1 datasets. [idbr](http://cran.rstudio.com/web/packages/idbr/index.html) ([GitHub](https://github.com/walkerke/idbr)) provides an interface to the U.S. Census Bureau international data base API. [blsAPI](http://cran.rstudio.com/web/packages/blsAPI/index.html) ([GitHub](https://github.com/mikeasilva/blsAPI)) can get data from the U.S. Bureau of Labor Statistics API. Users provide parameters as specified in <a href="http://www.bls.gov/developers/api_signature.htm" class="uri" class="uri">http://www.bls.gov/developers/api_signature.htm</a> and the function returns a JSON string. See also [blscrapeR](http://cran.rstudio.com/web/packages/blscrapeR/index.html) which also provides functions to analyze and visualize BLS data.
    -   Education: [LearnDC](https://github.com/benjaminrobinson/LearnDC) provides access to [LearnDC's](http://www.learndc.org/) data on Washington DC charter schools.
    -   Energy Department: [EIAdata](http://cran.rstudio.com/web/packages/EIAdata/index.html): U.S. [Energy Information Administration (EIA)](http://www.eia.gov/) API client. See also [eia](https://github.com/krose/eia) (not on CRAN). [energyr](http://cran.rstudio.com/web/packages/energyr/index.html): Federal Energy Regulatory Commission data including electric company financials, natural gas company financials, hydropower plant data, liquified natural gas plant data, oil company financials, natural gas company financials, and natural gas storage field data.
    -   Elections: [elexr](http://cran.rstudio.com/web/packages/elexr/index.html) is an R interface to the Python [elex](https://github.com/newsdev/elex/) library, which provides access to Associated Press election results. [openelections](https://github.com/GShotwell/openelections) (not on CRAN) connects to the openelections API. [pollstR](http://cran.rstudio.com/web/packages/pollstR/index.html) ([GitHub](https://github.com/rOpenGov/pollstR)): An R client for the Huffpost Pollster API. [pvsR](http://cran.rstudio.com/web/packages/pvsR/index.html): An R package to interact with the Project Vote Smart API for scientific research. [ropensecretsapi](http://cran.rstudio.com/web/packages/ropensecretsapi/index.html): An R package for the OpenSecrets.org web services API.
    -   Federal Reserve: [FredR](https://github.com/jcizel/FredR): R Interface to the [Federal Reserve Economic Data API](http://api.stlouisfed.org/docs/fred/). [Source on GitHub](https://github.com/jcizel/FredR)
    -   Justice Department: [bjs2r](https://github.com/JakeRuss/bjs2r): Get Bureau of Justice Statistics (BJS) data in R.
    -   [csp](http://cran.rstudio.com/web/packages/csp/index.html) ([GitHub](https://github.com/expersso/csp)) provides the complete [Correlates of State Policy data set](http://ippsr.msu.edu/public-policy/correlates-state-policy).
    -   [federalregister](http://cran.rstudio.com/web/packages/federalregister/index.html): Client package for the U.S. Federal Register API. Development version on GitHub [here](https://github.com/rOpenGov/federalregister).
    -   [polidata](http://cran.rstudio.com/web/packages/polidata/index.html) ([GitHub](https://github.com/e9t/polidata-r)): Access to various political data APIs, including e.g. [Google Civic Information API](https://developers.google.com/civic-information/) or [Sunlight Congress API](https://sunlightlabs.github.io/congress/) for US Congress data, and [POPONG API](http://data.popong.com/) for South Korea National Assembly data.
    -   [rodham](http://cran.rstudio.com/web/packages/rodham/index.html) retrieves text of Hillary Rodham Clinton's emails from her time as U.S. Secretary of State.
    -   [RPublica](http://cran.rstudio.com/web/packages/RPublica/index.html) ([GitHub](https://github.com/rOpenGov/RPublica)) is a ProPublica API Client.
    -   [rsunlight](http://cran.rstudio.com/web/packages/rsunlight/index.html) ([GitHub](https://github.com/ropengov/rsunlight)): R client for the Sunlight Labs APIs. There are functions for Sunlight Labs Congress, Transparency, Open States, Real Time Congress, Capitol Words, and Influence Explorer APIs. Data outputs are R lists. There are also a few convenience functions for visualizing data and writing data to .csv.
    -   [rtimes](http://cran.rstudio.com/web/packages/rtimes/index.html) ([GitHub](https://github.com/ropengov/rtimes)) links to the New York Times APIs, including the Congress, Article Search, Campaign Finance, and Geographic APIs. The focus is on those that deal with political data, but throwing in Article Search and Geographic for good measure.
    -   [seeclickfixr](http://cran.rstudio.com/web/packages/seeclickfixr/index.html) ([GitHub](https://github.com/justindbk/seeclickfixr/)) is a client for retrieving citizens' service requests made to local governments through [SeeClickFix](http://en.seeclickfix.com/).
    -   [wethepeople](http://cran.rstudio.com/src/contrib/Archive/wethepeople/): An R client for interacting with the White House's "We The People" petition API.
-   *United Kingdom*: [ukgasapi](http://cran.rstudio.com/web/packages/ukgasapi/index.html) contains one function which allows users to access UK gas market information via National Grid's API. [mnis](http://cran.rstudio.com/web/packages/mnis/index.html): An API package for the [Members' Name Information Service](http://data.parliament.uk/membersdataplatform/default.aspx) operated by the UK parliament. [hansard](http://cran.rstudio.com/web/packages/hansard/index.html) download data from the [Parliment API](http://www.data.parliament.uk/). [ukpolice](https://github.com/njtierney/ukpolice) data from [UK police database](https://data.police.uk).
-   *Other or international* :
    -   [enigma](http://cran.rstudio.com/web/packages/enigma/index.html) ([GitHub](https://github.com/ropengov/enigma)): [Enigma](https://enigma.io) holds many public datasets from governments, companies, universities, and organizations. Enigma provides an API for data, metadata, and statistics on each of the datasets. enigma is an R client to interact with the Enigma API, including getting the data and metadata for datasets in Enigma, as well as collecting statistics on datasets. In addition, you can download a gzipped csv file of a dataset if you want the whole dataset. An API key from Enigma is required to use enigma.
    -   [hdr](http://cran.rstudio.com/web/packages/hdr/index.html) ([GitHub](https://github.com/expersso/hdr)) is an interface to United Nations Development Programme [Human Development Report](http://hdr.undp.org) API.
    -   *IMF*: both [IMFData](http://cran.rstudio.com/web/packages/IMFData/index.html) (on [GitHub](https://github.com/mingjerli/IMFData)) and [imfr](http://cran.rstudio.com/web/packages/imfr/index.html) (on [GitHub](https://github.com/christophergandrud/imfr)) use the [International Monetary Fund's API](http://datahelp.imf.org/knowledgebase/articles/667681-using-json-restful-web-service).
    -   [manifestoR](http://cran.rstudio.com/web/packages/manifestoR/index.html) is an R client to access data and documents of [the manifesto project](https://manifesto-project.wzb.eu/)
    -   [muckrock](http://cran.rstudio.com/web/packages/muckrock/index.html) ([GitHub](https://github.com/Ironholds/muckrock/)) offers data from [MuckRock](https://www.muckrock.com/) about public domain information on FOIA requests in the U.S.
    -   [oec](http://cran.rstudio.com/web/packages/oec/index.html): use the Observatory of Economic Complexity's API in R to download international trade data in csv and create and D3Plus visualizations.
    -   [OECD](http://cran.rstudio.com/web/packages/OECD/index.html) Search and extract data from the OECD (possibly via an old version of the API, which was in currently in beta when the package was written). See [OECD data](https://data.oecd.org/api/).
    -   [PolitwoopsR](https://github.com/kateto/PolitwoopsR) (not on CRAN): Extract deleted tweet and politician data from the Politwoops project (tracks politicians on Twitter and records their deleted tweets).
    -   [psData](http://cran.rstudio.com/web/packages/psData/index.html) ([GitHub](https://github.com/christophergandrud/psData/)) provides access to various commonly used political science datasets, especially those providing country-level, comparative data.
    -   *World Bank:* [wbstats](http://cran.rstudio.com/web/packages/wbstats/index.html) can extract data from the [World Bank Data API](http://data.worldbank.org/developers/api-overview) and the [World Bank Data Catalog API](http://data.worldbank.org/developers/data-catalog-api). [WDI](http://cran.rstudio.com/web/packages/WDI/index.html) can search, extract and format data from the World Bank's World Development Indicators.

### Literature, Metadata, Text, and Altmetrics

-   [alm](http://cran.rstudio.com/web/packages/alm/index.html): R wrapper to the almetrics API platform developed by PLoS.
-   [aRxiv](http://cran.rstudio.com/web/packages/aRxiv/index.html) ([GitHub](https://github.com/ropensci/aRxiv)): An R client for the arXiv API, a repository of electronic preprints for computer science, mathematics, physics, quantitative biology, quantitative finance, and statistics.
-   [bibliometrix](http://cran.rstudio.com/web/packages/bibliometrix/index.html) can import bibliographic data from SCOPUS and ISI Web of Science.
-   [boilerpipeR](http://cran.rstudio.com/web/packages/boilerpipeR/index.html): Generic Extraction of main text content from HTML files; removal of ads, sidebars and headers using the boilerpipe Java library.
-   [gutenbergr](http://cran.rstudio.com/web/packages/gutenbergr/index.html) ([Gitub](https://github.com/ropenscilabs/gutenbergr)) searches and downloads text from [Project Gutenberg](https://www.gutenberg.org/).
-   [JSTORr](https://github.com/benmarwick/JSTORr) (Not on CRAN): Simple text mining of journal articles from JSTOR's Data for Research service
-   [lumendb](http://cran.rstudio.com/web/packages/lumendb/index.html) can retrieve copyright takedown notices from [Lumen Database](https://lumendatabase.org/) (formerly, Chilling Effects).
-   ngramr ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/ngramr)) retrieves and plot word frequencies through time from the Google Ngram Viewer.
-   [pubmed.mineR](http://cran.rstudio.com/web/packages/pubmed.mineR/index.html): An R package for text mining of [PubMed Abstracts](http://www.ncbi.nlm.nih.gov/pubmed). Supports fetching text and XML from PubMed. [easyPubMed](http://cran.rstudio.com/web/packages/easyPubMed/index.html) and [rpubmed](https://github.com/rOpenHealth/rpubmed) (not on CRAN) provide other tools.
-   [rAltmetric](http://cran.rstudio.com/web/packages/rAltmetric/index.html): Query and visualize metrics from Altmetric.com.
-   [rbhl](http://cran.rstudio.com/web/packages/rbhl/index.html): R interface to the Biodiversity Heritage Library (BHL) API.
-   [RefManageR](http://cran.rstudio.com/web/packages/RefManageR/index.html): Import and Manage BibTeX and BibLaTeX references with RefManager.
-   [rentrez](http://cran.rstudio.com/web/packages/rentrez/index.html): Talk with NCBI entrez using R.
-   [RMendeley](http://cran.rstudio.com/src/contrib/Archive/RMendeley/): Implementation of the Mendeley API in R. Archived on CRAN. It's been archived on CRAN temporarily until pacakge is updated for the new Mendeley API.
-   [rmetadata](https://github.com/ropensci/rmetadata) (not on CRAN): Get scholarly metadata from around the web.
-   [rorcid](https://github.com/ropensci/rorcid) (not on CRAN): A programmatic interface the Orcid.org API.
-   [rplos](http://cran.rstudio.com/web/packages/rplos/index.html): A programmatic interface to the Web Service methods provided by the Public Library of Science journals for search.
-   [rscopus](http://cran.rstudio.com/web/packages/rscopus/index.html) ([GitHub](https://github.com/muschellij2/rscopus/)) is an interface to the Elsevier Scopus API.
-   [scholar](http://cran.rstudio.com/web/packages/scholar/index.html) provides functions to extract citation data from Google Scholar. Convenience functions are also provided for comparing multiple scholars and predicting future h-index values.
-   The [<span class="Ohat">Sxslt</span>](http://www.Omegahat.org/Sxslt/) (not on CRAN) package is an R interface to Dan Veillard's libxslt translator. It allows R programmers to use XSLT directly from within R, and also allows XSL code to make use of R functions.
-   [tm.plugin.webmining](http://cran.rstudio.com/web/packages/tm.plugin.webmining/index.html): Extensible text retrieval framework for news feeds in XML (RSS, ATOM) and JSON formats. Currently, the following feeds are implemented: Google Blog Search, Google Finance, Google News, NYTimes Article Search, Reuters News Feed, Yahoo Finance and Yahoo Inplay.
-   [biorxivr](http://cran.rstudio.com/web/packages/biorxivr/index.html): interface with bioRxiv preprint server

### Maps

-   [FedData](http://cran.rstudio.com/web/packages/FedData/index.html) can download geospatial data from a number of U.S. and international data sources.
-   [ggmap](http://cran.rstudio.com/web/packages/ggmap/index.html): Allows for the easy visualization of spatial data and models on top of Google Maps, OpenStreetMaps, Stamen Maps, or CloudMade Maps using ggplot2.
-   [leafletR](http://cran.rstudio.com/web/packages/leafletR/index.html): Allows you to display your spatial data on interactive web-maps using the open-source JavaScript library Leaflet.
-   [osmar](http://cran.rstudio.com/web/packages/osmar/index.html): This package provides infrastructure to access OpenStreetMap data from different sources to work with the data in common R manner and to convert data into available infrastructure provided by existing R packages (e.g., into sp and igraph objects).
-   [osrm](http://cran.rstudio.com/web/packages/osrm/index.html): access OpenStreetMap
-   The [<span class="Ohat">R2GoogleMaps</span>](http://www.Omegahat.org/R2GoogleMaps/) (not on CRAN) package - which is different from RgoogleMaps - provides a mechanism to generate JavaScript code from R that displays data using Google Maps.
-   [rcanvec](http://cran.rstudio.com/web/packages/rcanvec/index.html): Provides an interface to the National Topographic System (NTS), which is the way in which a number of freely available Canadian datasets are organized. CanVec and CanVec+ datasets, which include all data used to create Canadian topographic maps, are two such datasets that are useful in creating vector-based maps for locations across Canada.
-   [RgoogleMaps](http://cran.rstudio.com/web/packages/RgoogleMaps/index.html): This package serves two purposes: It provides a comfortable R interface to query the Google server for static maps, and use the map as a background image to overlay plots within R.
-   The [<span class="Ohat">RKML</span>](http://www.Omegahat.org/RKML/) (not on CRAN) is an implementation that provides users with high-level facilities to generate KML, the Keyhole Markup Language for display in, e.g., Google Earth.
-   [<span class="Ohat">RKMLDevice</span>](http://www.Omegahat.org/RKMLDevice/) (not on CRAN) allows to create R graphics in KML format in a manner that allows them to be displayed on Google Earth (or Google Maps).
-   [olctools](http://cran.rstudio.com/web/packages/olctools/index.html) Google Open Location Code
-   [rydn](https://github.com/trestletech/rydn) (not on CRAN): R package to interface with the Yahoo Developers network geolocation APIs.
-   [tigris](https://github.com/walkerke/tigris) (not on CRAN) can read US Census Bureau TIGRIS shapefiles.
-   [USAboundaries](http://cran.rstudio.com/web/packages/USAboundaries/index.html) spatial objects with the boundaries of states or counties in the United States of America from 1629 to 2000 (from the Atlas of Historical County Boundaries).

### NCBI

-   [hoardeR](http://cran.rstudio.com/web/packages/hoardeR/index.html): Information retrieval from NCBI databases, with main focus on Blast.
-   [NCBI2R](http://cran.rstudio.com/src/contrib/Archive/NCBI2R/): Annotates lists of SNPs and/or genes, with current information from NCBI. The CRAN version is archived.
-   [rentrez](http://cran.rstudio.com/web/packages/rentrez/index.html) ([GitHub](https://github.com/ropensci/rentrez)): Talk with NCBI Eutils API using R. This is probably the best package to interact with NCBI EUtils. You can get data across all the databases in NCBI EUtils.
-   [reutils](http://cran.rstudio.com/web/packages/reutils/index.html) ([GitHub](https://github.com/gschofl/reutils)): Interface with NCBI databases such as PubMed, Genbank, or GEO via the Entrez Programming Utilities (EUtils).
-   [RISmed](http://cran.rstudio.com/web/packages/RISmed/index.html): Download content from NCBI databases. Intended for analyses of NCBI database content, not reference management. See rpubmed for more literature oriented stuff from NCBI.

### News

-   [GuardianR](http://cran.rstudio.com/web/packages/GuardianR/index.html): Provides an interface to the Open Platform's Content API of the Guardian Media Group. It retrieves content from news outlets The Observer, The Guardian, and guardian.co.uk from 1999 to current day. [rdian](http://cran.rstudio.com/web/packages/rdian/index.html) ([GitHub](https://github.com/ironholds/rdian)) is another Guardian API client.
-   [rtimes](https://github.com/ropengov/rtimes) (not on CRAN): R client for the New York Times APIs, including the Congress, Article Search, Campaign Finance, and Geographic APIs.
-   *ZEIT*: [diezeit](http://cran.rstudio.com/web/packages/diezeit/index.html) waps the ZEIT online content API (K).

### Other

-   [boxoffice](http://cran.rstudio.com/web/packages/boxoffice/index.html): daily box office information (how much each movie earned in theaters) using data from either [Box Office Mojo](http://www.boxofficemojo.com/) or [The Numbers](http://www.the-numbers.com/).
-   [datamart](http://cran.rstudio.com/web/packages/datamart/index.html): Provides an S4 infrastructure for unified handling of internal datasets and web based data sources. Examples include dbpedia, eurostat and sourceforge.
-   [genderizeR](http://cran.rstudio.com/web/packages/genderizeR/index.html): Uses the genderize.io API to predict gender from first names extracted from a text vector. [Source on GitHub](https://github.com/kalimu/genderizeR)
-   [mstranslator](https://github.com/chainsawriot/mstranslator): An R wrapper for the [Microsoft Translator API](https://msdn.microsoft.com/en-us/library/hh454949.aspx). [Source on GitHub](https://github.com/chainsawriot/mstranslator)
-   [MBTAr](http://cran.rstudio.com/web/packages/MBTAr/index.html): Access Data from the Massachusetts Bay Transit Authority (MBTA) Web API
-   [rechonest](http://cran.rstudio.com/web/packages/rechonest/index.html) ([Github](https://github.com/mukul13/rechonest)) is an interface to access [Echo Nest API](http://developer.echonest.com/). This package can be used to access artists, songs and music genres related data. (K)
-   [redcapAPI](http://cran.rstudio.com/web/packages/redcapAPI/index.html): Access data stored in REDCap databases using an API. REDCap (Research Electronic Data CAPture) is a web application for building and managing online surveys and databases developed at Vanderbilt University. [Source on GitHub](https://github.com/nutterb/redcapAPI).
-   [RForcecom](http://cran.rstudio.com/web/packages/RForcecom/index.html): RForcecom provides a connection to Force.com and Salesforce.com from R.
-   [rwars](https://github.com/Ironholds/rwars) (not on CRAN): A connector to the [SWAPI service](http://swapi.co/), a database of Star Wars metadata.
-   [slackr](http://cran.rstudio.com/web/packages/slackr/index.html): R client for Slack.com messaging platform. [Source on GitHub](https://github.com/hrbrmstr/slackr)
-   [sos4R](http://cran.rstudio.com/web/packages/sos4R/index.html): R client for the OGC Sensor Observation Service.
-   [stackr](https://github.com/dgrtwo/stackr) (not on CRAN): An unofficial wrapper for the read-only features of the [Stack Exchange API](https://api.stackexchange.com/).
-   [TMDb](http://cran.rstudio.com/web/packages/TMDb/index.html) can retrieve data from [The Movie Database](https://www.themoviedb.org).
-   [zendeskR](http://cran.rstudio.com/web/packages/zendeskR/index.html): This package provides an R wrapper for the Zendesk API. ($)

### Public Health

-   [cdcfluview](https://github.com/hrbrmstr/cdcfluview): (not on CRAN) R client for CDC FluView data (WHO and ILINet).
-   [nhanesA](http://cran.rstudio.com/web/packages/nhanesA/index.html) Utility to retrieve data from the National Health and Nutrition Examination Survey (NHANES).
-   [openfda](https://github.com/ropenhealth/openfda) (not on CRAN) is an R client for [openFDA](https://open.fda.gov/).
-   [rClinicalCodes](http://cran.rstudio.com/web/packages/rClinicalCodes/index.html): R tools for integrating with the http://www.clinicalcodes.org web repository
-   [rclinicaltrials](http://cran.rstudio.com/web/packages/rclinicaltrials/index.html) ([GitHub](https://github.com/sachsmc/rclinicaltrials)): ClinicalTrials.gov is a registry and results database of publicly and privately supported clinical studies of human participants conducted around the world. This is an R client for that data.
-   [UScancer](http://cran.rstudio.com/web/packages/UScancer/index.html) constructs U.S. cancer data at the county level from [SEER](http://seer.cancer.gov/), [IARC](http://www.iarc.fr), and the U.S. Census Bureau.
-   [vaers](https://gitlab.com/iembry/vaers) (not on CRAN) provides U.S. vaccine adverse event data from the [VAERS](https://vaers.hhs.gov/index) vaccine surveillance program. [vaersvax](http://cran.rstudio.com/web/packages/vaersvax/index.html) provides a subset a subset of these data for three months of 2016. [vaersNDvax](http://cran.rstudio.com/web/packages/vaersNDvax/index.html) provides non-domestic data for the same period.
-   WHO: [WHO](http://cran.rstudio.com/web/packages/WHO/index.html) ([GitHub](https://www.github.com/expersso/WHO)) provides an interface to the [World Health Organization](http://www.who.int/) API. [rgho](http://cran.rstudio.com/web/packages/rgho/index.html) ([GitHub](https://github.com/pierucci/rgho)) connects to the WHO Global Health Observatory data.

### Social media

-   *Facebook*: [Rfacebook](http://cran.rstudio.com/web/packages/Rfacebook/index.html) provides an interface to the Facebook API. (K)
-   *Google+*: [plusser](http://cran.rstudio.com/web/packages/plusser/index.html) has been designed to to facilitate the retrieval of Google+ profiles, pages and posts. It also provides search facilities. Currently a Google+ API key is required for accessing Google+ data. [tuber](https://github.com/soodoku/tuber) provides bindings for YouTube API. Only on Github for now. (K)
-   [RedditExtractoR](http://cran.rstudio.com/web/packages/RedditExtractoR/index.html) can retrieve data from the Reddit API.
-   [Rlinkedin](http://cran.rstudio.com/web/packages/Rlinkedin/index.html): is an R client for the LinkedIn API.
-   *tumblr*: [tumblR](http://cran.rstudio.com/web/packages/tumblR/index.html) ([GitHub](https://github.com/klapaukh/tumblR)): R client for the Tumblr API ( <a href="https://www.tumblr.com/docs/en/api/v2" class="uri" class="uri">https://www.tumblr.com/docs/en/api/v2</a>). Tumblr is a microblogging platform and social networking website <a href="https://www.tumblr.com" class="uri" class="uri">https://www.tumblr.com</a>. (K)
-   *Twitter*: [RTwitterAPI](https://github.com/joyofdata/RTwitterAPI) (not on CRAN) and [twitteR](http://cran.rstudio.com/web/packages/twitteR/index.html) provide an interface to the Twitter web API. [streamR](http://cran.rstudio.com/web/packages/streamR/index.html): This package provides a series of functions that allow R users to access Twitter's filter, sample, and user streams, and to parse the output into data frames. OAuth authentication is supported. (K) Additionally, [RKlout](http://cran.rstudio.com/web/packages/RKlout/index.html) is an interface to Klout API v2. It fetches Klout Score for a Twitter Username/handle in real time. Klout is a silly ranking of Twitter influence.
-   [SocialMediaLab](http://cran.rstudio.com/web/packages/SocialMediaLab/index.html) provides a convenient wrapper around many other social media clients and enables the construction of network structures from those data.
-   [SocialMediaMineR](http://cran.rstudio.com/web/packages/SocialMediaMineR/index.html) is an analytic tool that returns information about the popularity of a URL on social media sites.

### Social science

-   [asdfree: analyze survey data for free](http://www.asdfree.com/) (not a package) provides lots of code examples for analyzing survey data in R. Also on [github](https://github.com/ajdamico/usgsd).
-   [brewdata](http://cran.rstudio.com/web/packages/brewdata/index.html) Retrieves and parses graduate admissions survey data from the [Grad Cafe website](http://thegradcafe.com).
-   [gdeltr2](https://github.com/abresler/gdeltr2) (not on CRAN) connects to the [The Global Database of Events, Language, and Tone](http://gdeltproject.org/).
-   [gesis](http://cran.rstudio.com/web/packages/gesis/index.html) provides access to the Leibniz-Institute for the Social Sciences Data Catalogue/Datenbestandkatalog (DBK).
-   [icpsrdata](http://cran.rstudio.com/web/packages/icpsrdata/index.html) offers programmatic retrieval of datasets from the Inter-university Consortium for Political and Social Research archive.
-   [maddison](http://cran.rstudio.com/web/packages/maddison/index.html) ([GitHub](https://github.com/expersso/maddison)) provides GDP per capita data for all years AD 1 to 2010 from the [Maddison Project](http://www.ggdc.net/maddison).
-   [ONETr](http://cran.rstudio.com/web/packages/ONETr/index.html) searches and retrieves occupational data from [O\*NET Online](http://www.onetonline.org/). Development version on GitHub [here](https://github.com/eknud/onetr).
-   [pewdata](http://cran.rstudio.com/web/packages/pewdata/index.html) uses RSelenium to retrieve datasets from the webpages of the Pew Research Center.
-   [psidR](http://cran.rstudio.com/web/packages/psidR/index.html) contains functions to download and format longitudinal datasets from the Panel Study of Income Dynamics (PSID).
-   [wordbankr](http://cran.rstudio.com/web/packages/wordbankr/index.html) ([GitHub](https://github.com/langcog/wordbankr)) connects to [Wordbank](http://wordbank.stanford.edu/), a database of childrens' developmental vocabulary.
-   The [<span class="Ohat">Zillow</span>](http://www.Omegahat.org/Zillow/) (not on CRAN) package provides an R interface to the [Zillow](http://www.zillow.com/) Web Service API. It allows one to get the Zillow estimate for the price of a particular property specified by street address and ZIP code (or city and state), to find information (e.g. size of property and lot, number of bedrooms and bathrooms, year built.) about a given property, and to get comparable properties.

### Sports

-   [abettor](https://github.com/phillc73/abettor) (not on CRAN): Online betting exchange, Betfair, API wrapper in R. (K)
-   [ballr](https://github.com/rtelmore/ballr) (not on CRAN) is a client for [Basketball-Reference.com](http://www.basketball-reference.com/).
-   [bbscrapeR](https://github.com/cpsievert/bbscrapeR) (not on CRAN): Tools for Collecting Data from [nba.com](http://www.nba.com/) and [wnba.com](http://www.wnba.com/).
-   [cricketr](http://cran.rstudio.com/web/packages/cricketr/index.html) provides tools for working with the ESPN Cricinfo Statsguru. [Source on GitHub](https://github.com/tvganesh/cricketr).
-   [fbRanks](http://cran.rstudio.com/web/packages/fbRanks/index.html): Association Football (Soccer) Ranking via Poisson Regression - uses time dependent Poisson regression and a record of goals scored in matches to rank teams via estimated attack and defense strengths.
-   [nflscrapR](https://github.com/maksimhorowitz/nflscrapR) (not on CRAN) scrapes NFL data since 2009.
-   [nhlscrapr](http://cran.rstudio.com/web/packages/nhlscrapr/index.html): Compiling the NHL Real Time Scoring System Database for easy use in R.
-   [pitchRx](http://cran.rstudio.com/web/packages/pitchRx/index.html): Tools for Collecting and Visualizing Major League Baseball PITCHfx Data
-   [fitbitScraper](http://cran.rstudio.com/web/packages/fitbitScraper/index.html) ([GitHub](https://github.com/corynissen/fitbitScraper)) can retrieve Fitbit data, based on email/password authentication.
-   [fantasysocceR](https://github.com/durtal/fantasysocceR) (not on CRAN) connects to fantasy soccer data.
-   [pinnacle.API](http://cran.rstudio.com/web/packages/pinnacle.API/index.html) A Wrapper for the Pinnacle Sports API
-   [retrosheet](http://cran.rstudio.com/web/packages/retrosheet/index.html) ([Github](https://github.com/rmscriven/retrosheet)) retrieves single-season baseball statistics from <a href="http://www.retrosheet.org" class="uri" class="uri">http://www.retrosheet.org</a>.
-   [yorkr](http://cran.rstudio.com/web/packages/yorkr/index.html) provides access to cricket data from [Cricsheet](http://cricsheet.org).

### Web Analytics

-   [GTrendsR](https://github.com/dvanclev/GTrendsR) (not on CRAN): R functions to perform and display Google Trends queries. Another Github package ([rGtrends](https://github.com/emhart/rGtrends)) is now deprecated, but supported a previous version of Google Trends and may still be useful for developers.
-   rgauges ([Archived on CRAN](https://cran.r-project.org/src/contrib/Archive/rgauges)) This package provides functions to interact with the Gaug.es API. Gaug.es is a web analytics service, like Google analytics. You have to have a Gaug.es account to use this package. ($) (K)
-   [RGA](http://cran.rstudio.com/web/packages/RGA/index.html): Provides functions for accessing and retrieving data from the [Google Analytics APIs](https://developers.google.com/analytics/). Supports OAuth 2.0 authorization. Also, the RGA package provides a shiny app to explore data. There is another R package for the same service (RGoogleAnalytics); see above entry. (K)
-   [RGoogleAnalytics](http://cran.rstudio.com/web/packages/RGoogleAnalytics/index.html) ([GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues)) provides functions for accessing and retrieving data from the Google Analytics API. There is another R package for the same service (RGA); see previous entry. (K)
-   [<span class="Ohat">RGoogleTrends</span>](http://www.Omegahat.org/RGoogleTrends/) (not on CRAN) provides programmatic access to Google Trends data. This is information about the popularity of a particular query.
-   [RSiteCatalyst](http://cran.rstudio.com/web/packages/RSiteCatalyst/index.html): Functions for accessing the Adobe Analytics (Omniture SiteCatalyst) Reporting API.

### Wikipedia/Wikimedia

-   [wikipediatrend](https://github.com/petermeissner/wikipediatrend) (removed from CRAN): Provides access to Wikipedia page access statistics.
-   [WikipediR](http://cran.rstudio.com/web/packages/WikipediR/index.html): WikipediR is a wrapper for the MediaWiki API, aimed particularly at the Wikimedia 'production' wikis, such as Wikipedia. [Source on GitHub](https://github.com/Ironholds/WikipediR)
-   [ores](http://cran.rstudio.com/web/packages/ores/index.html) connects to [ORES](http://ores.wmflabs.org/), an automated tool for detecting whether Wikimedia page edits are constructive.
-   [pageviews](http://cran.rstudio.com/web/packages/pageviews/index.html) retrieves page view data from Wikimedia-powered sites, including Wikipedia.
-   [WikidataQueryServiceR](http://cran.rstudio.com/web/packages/WikidataQueryServiceR/index.html) and [rwikidata](https://github.com/chgrl/rwikidata) (not on CRAN): Request data from (and some day probably edit data in) [Wikidata.org](https://www.wikidata.org/wiki/Wikidata:Main_Page), the free knowledgebase; the former uses the [query service](https://query.wikidata.org).
-   [WikidataR](http://cran.rstudio.com/web/packages/WikidataR/index.html): An R API wrapper for the Wikidata store of semantic data. [Source on GitHub](https://github.com/Ironholds/WikidataR).

### CRAN packages:

-   [acs](http://cran.rstudio.com/web/packages/acs/index.html)
-   [ALA4R](http://cran.rstudio.com/web/packages/ALA4R/index.html)
-   [alm](http://cran.rstudio.com/web/packages/alm/index.html)
-   [ameco](http://cran.rstudio.com/web/packages/ameco/index.html)
-   [aRxiv](http://cran.rstudio.com/web/packages/aRxiv/index.html)
-   [banxicoR](http://cran.rstudio.com/web/packages/banxicoR/index.html)
-   [BatchGetSymbols](http://cran.rstudio.com/web/packages/BatchGetSymbols/index.html)
-   [belex](http://cran.rstudio.com/web/packages/belex/index.html)
-   [BETS](http://cran.rstudio.com/web/packages/BETS/index.html)
-   [bibliometrix](http://cran.rstudio.com/web/packages/bibliometrix/index.html)
-   [bigrquery](http://cran.rstudio.com/web/packages/bigrquery/index.html)
-   [biorxivr](http://cran.rstudio.com/web/packages/biorxivr/index.html)
-   [blsAPI](http://cran.rstudio.com/web/packages/blsAPI/index.html)
-   [blscrapeR](http://cran.rstudio.com/web/packages/blscrapeR/index.html)
-   [boilerpipeR](http://cran.rstudio.com/web/packages/boilerpipeR/index.html)
-   [boxoffice](http://cran.rstudio.com/web/packages/boxoffice/index.html)
-   [brewdata](http://cran.rstudio.com/web/packages/brewdata/index.html)
-   [cbsodataR](http://cran.rstudio.com/web/packages/cbsodataR/index.html)
-   [cdlTools](http://cran.rstudio.com/web/packages/cdlTools/index.html)
-   [censusr](http://cran.rstudio.com/web/packages/censusr/index.html)
-   [cgdsr](http://cran.rstudio.com/web/packages/cgdsr/index.html)
-   [CHCN](http://cran.rstudio.com/web/packages/CHCN/index.html)
-   [chromer](http://cran.rstudio.com/web/packages/chromer/index.html)
-   [clifro](http://cran.rstudio.com/web/packages/clifro/index.html)
-   [countyweather](http://cran.rstudio.com/web/packages/countyweather/index.html)
-   [crandatapkgs](http://cran.rstudio.com/web/packages/crandatapkgs/index.html)
-   [cricketr](http://cran.rstudio.com/web/packages/cricketr/index.html)
-   [crn](http://cran.rstudio.com/web/packages/crn/index.html)
-   [csp](http://cran.rstudio.com/web/packages/csp/index.html)
-   [darksky](http://cran.rstudio.com/web/packages/darksky/index.html)
-   [datamart](http://cran.rstudio.com/web/packages/datamart/index.html)
-   [dataonderivatives](http://cran.rstudio.com/web/packages/dataonderivatives/index.html)
-   [dataRetrieval](http://cran.rstudio.com/web/packages/dataRetrieval/index.html)
-   [diezeit](http://cran.rstudio.com/web/packages/diezeit/index.html)
-   [dismo](http://cran.rstudio.com/web/packages/dismo/index.html)
-   [dvn](http://cran.rstudio.com/web/packages/dvn/index.html)
-   [easyPubMed](http://cran.rstudio.com/web/packages/easyPubMed/index.html)
-   [ecb](http://cran.rstudio.com/web/packages/ecb/index.html)
-   [ecoengine](http://cran.rstudio.com/web/packages/ecoengine/index.html)
-   [ecoretriever](http://cran.rstudio.com/web/packages/ecoretriever/index.html)
-   [ecoseries](http://cran.rstudio.com/web/packages/ecoseries/index.html)
-   [eechidna](http://cran.rstudio.com/web/packages/eechidna/index.html)
-   [EIAdata](http://cran.rstudio.com/web/packages/EIAdata/index.html)
-   [elevatr](http://cran.rstudio.com/web/packages/elevatr/index.html)
-   [elexr](http://cran.rstudio.com/web/packages/elexr/index.html)
-   [energyr](http://cran.rstudio.com/web/packages/energyr/index.html)
-   [enigma](http://cran.rstudio.com/web/packages/enigma/index.html)
-   [epidata](http://cran.rstudio.com/web/packages/epidata/index.html)
-   [estatapi](http://cran.rstudio.com/web/packages/estatapi/index.html)
-   [eurostat](http://cran.rstudio.com/web/packages/eurostat/index.html)
-   [factualR](http://cran.rstudio.com/web/packages/factualR/index.html)
-   [FAOSTAT](http://cran.rstudio.com/web/packages/FAOSTAT/index.html)
-   [fbRanks](http://cran.rstudio.com/web/packages/fbRanks/index.html)
-   [FedData](http://cran.rstudio.com/web/packages/FedData/index.html)
-   [federalregister](http://cran.rstudio.com/web/packages/federalregister/index.html)
-   [fImport](http://cran.rstudio.com/web/packages/fImport/index.html)
-   [fitbitScraper](http://cran.rstudio.com/web/packages/fitbitScraper/index.html)
-   [flora](http://cran.rstudio.com/web/packages/flora/index.html)
-   [GAR](http://cran.rstudio.com/web/packages/GAR/index.html)
-   [genderizeR](http://cran.rstudio.com/web/packages/genderizeR/index.html)
-   [geocodeHERE](http://cran.rstudio.com/web/packages/geocodeHERE/index.html)
-   [gesis](http://cran.rstudio.com/web/packages/gesis/index.html)
-   [getCRUCLdata](http://cran.rstudio.com/web/packages/getCRUCLdata/index.html)
-   [getlandsat](http://cran.rstudio.com/web/packages/getlandsat/index.html)
-   [GetTDData](http://cran.rstudio.com/web/packages/GetTDData/index.html)
-   [ggmap](http://cran.rstudio.com/web/packages/ggmap/index.html)
-   [googlePublicData](http://cran.rstudio.com/web/packages/googlePublicData/index.html)
-   [googleVis](http://cran.rstudio.com/web/packages/googleVis/index.html)
-   [govStatJPN](http://cran.rstudio.com/web/packages/govStatJPN/index.html)
-   [gsheet](http://cran.rstudio.com/web/packages/gsheet/index.html)
-   [GSODR](http://cran.rstudio.com/web/packages/GSODR/index.html)
-   [GuardianR](http://cran.rstudio.com/web/packages/GuardianR/index.html)
-   [gutenbergr](http://cran.rstudio.com/web/packages/gutenbergr/index.html)
-   [hansard](http://cran.rstudio.com/web/packages/hansard/index.html)
-   [hddtools](http://cran.rstudio.com/web/packages/hddtools/index.html)
-   [hdr](http://cran.rstudio.com/web/packages/hdr/index.html)
-   [hoardeR](http://cran.rstudio.com/web/packages/hoardeR/index.html)
-   [IBrokers](http://cran.rstudio.com/web/packages/IBrokers/index.html)
-   [icesDatras](http://cran.rstudio.com/web/packages/icesDatras/index.html)
-   [icesVocab](http://cran.rstudio.com/web/packages/icesVocab/index.html)
-   [icpsrdata](http://cran.rstudio.com/web/packages/icpsrdata/index.html)
-   [idbr](http://cran.rstudio.com/web/packages/idbr/index.html)
-   [IMFData](http://cran.rstudio.com/web/packages/IMFData/index.html)
-   [imfr](http://cran.rstudio.com/web/packages/imfr/index.html)
-   [imguR](http://cran.rstudio.com/web/packages/imguR/index.html)
-   [inegiR](http://cran.rstudio.com/web/packages/inegiR/index.html)
-   [jSonarR](http://cran.rstudio.com/web/packages/jSonarR/index.html)
-   [kokudosuuchi](http://cran.rstudio.com/web/packages/kokudosuuchi/index.html)
-   [leafletR](http://cran.rstudio.com/web/packages/leafletR/index.html)
-   [lumendb](http://cran.rstudio.com/web/packages/lumendb/index.html)
-   [maddison](http://cran.rstudio.com/web/packages/maddison/index.html)
-   [manifestoR](http://cran.rstudio.com/web/packages/manifestoR/index.html)
-   [marmap](http://cran.rstudio.com/web/packages/marmap/index.html)
-   [MBTAr](http://cran.rstudio.com/web/packages/MBTAr/index.html)
-   [meteoForecast](http://cran.rstudio.com/web/packages/meteoForecast/index.html)
-   [mnis](http://cran.rstudio.com/web/packages/mnis/index.html)
-   [mregions](http://cran.rstudio.com/web/packages/mregions/index.html)
-   [muckrock](http://cran.rstudio.com/web/packages/muckrock/index.html)
-   [natserv](http://cran.rstudio.com/web/packages/natserv/index.html)
-   [neotoma](http://cran.rstudio.com/web/packages/neotoma/index.html)
-   [nhanesA](http://cran.rstudio.com/web/packages/nhanesA/index.html)
-   [nhlscrapr](http://cran.rstudio.com/web/packages/nhlscrapr/index.html)
-   [oai](http://cran.rstudio.com/web/packages/oai/index.html)
-   [OAIHarvester](http://cran.rstudio.com/web/packages/OAIHarvester/index.html)
-   [oec](http://cran.rstudio.com/web/packages/oec/index.html)
-   [OECD](http://cran.rstudio.com/web/packages/OECD/index.html)
-   [okmesonet](http://cran.rstudio.com/web/packages/okmesonet/index.html)
-   [olctools](http://cran.rstudio.com/web/packages/olctools/index.html)
-   [ONETr](http://cran.rstudio.com/web/packages/ONETr/index.html)
-   [ores](http://cran.rstudio.com/web/packages/ores/index.html)
-   [osmar](http://cran.rstudio.com/web/packages/osmar/index.html)
-   [osrm](http://cran.rstudio.com/web/packages/osrm/index.html)
-   [pageviews](http://cran.rstudio.com/web/packages/pageviews/index.html)
-   [paleobioDB](http://cran.rstudio.com/web/packages/paleobioDB/index.html)
-   [pdfetch](http://cran.rstudio.com/web/packages/pdfetch/index.html)
-   [pewdata](http://cran.rstudio.com/web/packages/pewdata/index.html)
-   [pinnacle.API](http://cran.rstudio.com/web/packages/pinnacle.API/index.html)
-   [pitchRx](http://cran.rstudio.com/web/packages/pitchRx/index.html)
-   [pleiades](http://cran.rstudio.com/web/packages/pleiades/index.html)
-   [plotGoogleMaps](http://cran.rstudio.com/web/packages/plotGoogleMaps/index.html)
-   [plotKML](http://cran.rstudio.com/web/packages/plotKML/index.html)
-   [plusser](http://cran.rstudio.com/web/packages/plusser/index.html)
-   [polidata](http://cran.rstudio.com/web/packages/polidata/index.html)
-   [pollstR](http://cran.rstudio.com/web/packages/pollstR/index.html)
-   [primerTree](http://cran.rstudio.com/web/packages/primerTree/index.html)
-   [prism](http://cran.rstudio.com/web/packages/prism/index.html)
-   [psData](http://cran.rstudio.com/web/packages/psData/index.html)
-   [psidR](http://cran.rstudio.com/web/packages/psidR/index.html)
-   [pubmed.mineR](http://cran.rstudio.com/web/packages/pubmed.mineR/index.html)
-   [pvsR](http://cran.rstudio.com/web/packages/pvsR/index.html)
-   [pxweb](http://cran.rstudio.com/web/packages/pxweb/index.html)
-   [Quandl](http://cran.rstudio.com/web/packages/Quandl/index.html)
-   [quantmod](http://cran.rstudio.com/web/packages/quantmod/index.html)
-   [RAdwords](http://cran.rstudio.com/web/packages/RAdwords/index.html)
-   [raincpc](http://cran.rstudio.com/web/packages/raincpc/index.html)
-   [rainfreq](http://cran.rstudio.com/web/packages/rainfreq/index.html)
-   [rAltmetric](http://cran.rstudio.com/web/packages/rAltmetric/index.html)
-   [rbhl](http://cran.rstudio.com/web/packages/rbhl/index.html)
-   [rbison](http://cran.rstudio.com/web/packages/rbison/index.html)
-   [Rbitcoin](http://cran.rstudio.com/web/packages/Rbitcoin/index.html)
-   [rbitcoinchartsapi](http://cran.rstudio.com/web/packages/rbitcoinchartsapi/index.html)
-   [rcanvec](http://cran.rstudio.com/web/packages/rcanvec/index.html)
-   [rclimateca](http://cran.rstudio.com/web/packages/rclimateca/index.html)
-   [rClinicalCodes](http://cran.rstudio.com/web/packages/rClinicalCodes/index.html)
-   [rclinicaltrials](http://cran.rstudio.com/web/packages/rclinicaltrials/index.html)
-   [Rcolombos](http://cran.rstudio.com/web/packages/Rcolombos/index.html)
-   [RCryptsy](http://cran.rstudio.com/web/packages/RCryptsy/index.html)
-   [rdatamarket](http://cran.rstudio.com/web/packages/rdatamarket/index.html)
-   [rdefra](http://cran.rstudio.com/web/packages/rdefra/index.html)
-   [rdian](http://cran.rstudio.com/web/packages/rdian/index.html)
-   [rdnb](http://cran.rstudio.com/web/packages/rdnb/index.html)
-   [rdwd](http://cran.rstudio.com/web/packages/rdwd/index.html)
-   [rebird](http://cran.rstudio.com/web/packages/rebird/index.html)
-   [rechonest](http://cran.rstudio.com/web/packages/rechonest/index.html)
-   [redcapAPI](http://cran.rstudio.com/web/packages/redcapAPI/index.html)
-   [RedditExtractoR](http://cran.rstudio.com/web/packages/RedditExtractoR/index.html)
-   [RefManageR](http://cran.rstudio.com/web/packages/RefManageR/index.html)
-   [rentrez](http://cran.rstudio.com/web/packages/rentrez/index.html)
-   [Reol](http://cran.rstudio.com/web/packages/Reol/index.html)
-   [retrosheet](http://cran.rstudio.com/web/packages/retrosheet/index.html)
-   [reutils](http://cran.rstudio.com/web/packages/reutils/index.html)
-   [Rfacebook](http://cran.rstudio.com/web/packages/Rfacebook/index.html)
-   [RFc](http://cran.rstudio.com/web/packages/RFc/index.html)
-   [rFDSN](http://cran.rstudio.com/web/packages/rFDSN/index.html)
-   [rfigshare](http://cran.rstudio.com/web/packages/rfigshare/index.html)
-   [rfishbase](http://cran.rstudio.com/web/packages/rfishbase/index.html)
-   [rfisheries](http://cran.rstudio.com/web/packages/rfisheries/index.html)
-   [RForcecom](http://cran.rstudio.com/web/packages/RForcecom/index.html)
-   [RGA](http://cran.rstudio.com/web/packages/RGA/index.html)
-   [rgbif](http://cran.rstudio.com/web/packages/rgbif/index.html)
-   [rgho](http://cran.rstudio.com/web/packages/rgho/index.html)
-   [RGoogleAnalytics](http://cran.rstudio.com/web/packages/RGoogleAnalytics/index.html)
-   [RgoogleMaps](http://cran.rstudio.com/web/packages/RgoogleMaps/index.html)
-   [riem](http://cran.rstudio.com/web/packages/riem/index.html)
-   [RISmed](http://cran.rstudio.com/web/packages/RISmed/index.html)
-   [RJSDMX](http://cran.rstudio.com/web/packages/RJSDMX/index.html)
-   [RKlout](http://cran.rstudio.com/web/packages/RKlout/index.html)
-   [Rlinkedin](http://cran.rstudio.com/web/packages/Rlinkedin/index.html)
-   [rnbn](http://cran.rstudio.com/web/packages/rnbn/index.html)
-   [RNCEP](http://cran.rstudio.com/web/packages/RNCEP/index.html)
-   [rnoaa](http://cran.rstudio.com/web/packages/rnoaa/index.html)
-   [rNOMADS](http://cran.rstudio.com/web/packages/rNOMADS/index.html)
-   [rnpn](http://cran.rstudio.com/web/packages/rnpn/index.html)
-   [rnrfa](http://cran.rstudio.com/web/packages/rnrfa/index.html)
-   [rodham](http://cran.rstudio.com/web/packages/rodham/index.html)
-   [ropenaq](http://cran.rstudio.com/web/packages/ropenaq/index.html)
-   [ropensecretsapi](http://cran.rstudio.com/web/packages/ropensecretsapi/index.html)
-   [rPlant](http://cran.rstudio.com/web/packages/rPlant/index.html)
-   [rplos](http://cran.rstudio.com/web/packages/rplos/index.html)
-   [rpubchem](http://cran.rstudio.com/web/packages/rpubchem/index.html)
-   [RPublica](http://cran.rstudio.com/web/packages/RPublica/index.html)
-   [rredlist](http://cran.rstudio.com/web/packages/rredlist/index.html)
-   [rscopus](http://cran.rstudio.com/web/packages/rscopus/index.html)
-   [rsdmx](http://cran.rstudio.com/web/packages/rsdmx/index.html)
-   [RSiteCatalyst](http://cran.rstudio.com/web/packages/RSiteCatalyst/index.html)
-   [rsnps](http://cran.rstudio.com/web/packages/rsnps/index.html)
-   [RStars](http://cran.rstudio.com/web/packages/RStars/index.html)
-   [rsunlight](http://cran.rstudio.com/web/packages/rsunlight/index.html)
-   [rtimes](http://cran.rstudio.com/web/packages/rtimes/index.html)
-   [rusda](http://cran.rstudio.com/web/packages/rusda/index.html)
-   [rvertnet](http://cran.rstudio.com/web/packages/rvertnet/index.html)
-   [rWBclimate](http://cran.rstudio.com/web/packages/rWBclimate/index.html)
-   [rWind](http://cran.rstudio.com/web/packages/rWind/index.html)
-   [rwunderground](http://cran.rstudio.com/web/packages/rwunderground/index.html)
-   [rYoutheria](http://cran.rstudio.com/web/packages/rYoutheria/index.html)
-   [scholar](http://cran.rstudio.com/web/packages/scholar/index.html)
-   [seeclickfixr](http://cran.rstudio.com/web/packages/seeclickfixr/index.html)
-   [sejmRP](http://cran.rstudio.com/web/packages/sejmRP/index.html)
-   [seqinr](http://cran.rstudio.com/web/packages/seqinr/index.html)
-   [SkyWatchr](http://cran.rstudio.com/web/packages/SkyWatchr/index.html)
-   [slackr](http://cran.rstudio.com/web/packages/slackr/index.html)
-   [SocialMediaLab](http://cran.rstudio.com/web/packages/SocialMediaLab/index.html)
-   [SocialMediaMineR](http://cran.rstudio.com/web/packages/SocialMediaMineR/index.html)
-   [soilDB](http://cran.rstudio.com/web/packages/soilDB/index.html)
-   [sophisthse](http://cran.rstudio.com/web/packages/sophisthse/index.html)
-   [sorvi](http://cran.rstudio.com/web/packages/sorvi/index.html)
-   [sos4R](http://cran.rstudio.com/web/packages/sos4R/index.html)
-   [SoyNAM](http://cran.rstudio.com/web/packages/SoyNAM/index.html)
-   [spocc](http://cran.rstudio.com/web/packages/spocc/index.html)
-   [spoccutils](http://cran.rstudio.com/web/packages/spoccutils/index.html)
-   [stationaRy](http://cran.rstudio.com/web/packages/stationaRy/index.html)
-   [streamR](http://cran.rstudio.com/web/packages/streamR/index.html)
-   [taxize](http://cran.rstudio.com/web/packages/taxize/index.html)
-   [TFX](http://cran.rstudio.com/web/packages/TFX/index.html)
-   [Thinknum](http://cran.rstudio.com/web/packages/Thinknum/index.html)
-   [tm.plugin.webmining](http://cran.rstudio.com/web/packages/tm.plugin.webmining/index.html)
-   [TMDb](http://cran.rstudio.com/web/packages/TMDb/index.html)
-   [TR8](http://cran.rstudio.com/web/packages/TR8/index.html)
-   [traits](http://cran.rstudio.com/web/packages/traits/index.html)
-   [translate](http://cran.rstudio.com/web/packages/translate/index.html)
-   [translateR](http://cran.rstudio.com/web/packages/translateR/index.html)
-   [treebase](http://cran.rstudio.com/web/packages/treebase/index.html)
-   [tseries](http://cran.rstudio.com/web/packages/tseries/index.html)
-   [tumblR](http://cran.rstudio.com/web/packages/tumblR/index.html)
-   [twitteR](http://cran.rstudio.com/web/packages/twitteR/index.html)
-   [ukgasapi](http://cran.rstudio.com/web/packages/ukgasapi/index.html)
-   [UNF](http://cran.rstudio.com/web/packages/UNF/index.html)
-   [ungeneanno](http://cran.rstudio.com/web/packages/ungeneanno/index.html)
-   [USAboundaries](http://cran.rstudio.com/web/packages/USAboundaries/index.html)
-   [UScancer](http://cran.rstudio.com/web/packages/UScancer/index.html)
-   [ustyc](http://cran.rstudio.com/web/packages/ustyc/index.html)
-   [vaersNDvax](http://cran.rstudio.com/web/packages/vaersNDvax/index.html)
-   [vaersvax](http://cran.rstudio.com/web/packages/vaersvax/index.html)
-   [waterData](http://cran.rstudio.com/web/packages/waterData/index.html)
-   [WaterML](http://cran.rstudio.com/web/packages/WaterML/index.html)
-   [wbstats](http://cran.rstudio.com/web/packages/wbstats/index.html)
-   [WDI](http://cran.rstudio.com/web/packages/WDI/index.html)
-   [weatherData](http://cran.rstudio.com/web/packages/weatherData/index.html)
-   [weatherr](http://cran.rstudio.com/web/packages/weatherr/index.html)
-   [webchem](http://cran.rstudio.com/web/packages/webchem/index.html)
-   [WHO](http://cran.rstudio.com/web/packages/WHO/index.html)
-   [WikidataQueryServiceR](http://cran.rstudio.com/web/packages/WikidataQueryServiceR/index.html)
-   [WikidataR](http://cran.rstudio.com/web/packages/WikidataR/index.html)
-   [WikipediR](http://cran.rstudio.com/web/packages/WikipediR/index.html)
-   [wordbankr](http://cran.rstudio.com/web/packages/wordbankr/index.html)
-   [worldmet](http://cran.rstudio.com/web/packages/worldmet/index.html)
-   [worrms](http://cran.rstudio.com/web/packages/worrms/index.html)
-   [yorkr](http://cran.rstudio.com/web/packages/yorkr/index.html)
-   [zendeskR](http://cran.rstudio.com/web/packages/zendeskR/index.html)

### Related links:

-   [WebTechnologies TaskView](http://cran.r-project.org/web/views/WebTechnologies.html)

