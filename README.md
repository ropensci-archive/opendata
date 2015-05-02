CRAN Task View: Open Data
-------------------------

  ----------------- --------------------------------------------------
  **Maintainer:**   Scott Chamberlain, Thomas Leeper, Jaime Ashander
  **Contact:**      scott at ropensci.org
  **Version:**      2015-05-02
  ----------------- --------------------------------------------------



This task view contains information about using R to obtain, parse,
manipulate, create, and share open data. The focus here is on data
discovery, data archiving, open data available in R packages, and
packages designed for working with specific types of open data. Much
open data is available on the web, and the
[WebTechnologies](http://cran.r-project.org/web/views/WebTechnologies.html)
TaskView addresses how to obtain and parse web-based data. There is
obvious overlap between the two TaskViews, so some packages are
described on both.

Another key issue in a data-focused TaskView is the meaning of "open"
data. This TaskView covers many types of data that come with varying
degrees of usage restrictions from public domain (or CC-0) data that is
useable for any purpose to "freely available" data that is available at
no cost but may have licenses that are not strictly speaking "open".
Users should investigate the terms of use and licensing of any data
referenced here before using it for any particular application.

If you have any comments or suggestions for additions or improvements
for this taskview, go to GitHub and [submit an
issue](https://github.com/ropensci/opendata/issues), or make some
changes and [submit a pull
request](https://github.com/ropensci/opendata/pulls). If you can't
contribute on GitHub, [send Scott an email](mailto:scott@ropensci.org).
If you have an issue with one of the packages discussed below, please
contact the maintainer of that package.

If you know of a web service, API, data source, or other online resource
that is not yet supported by an R package, consider adding it to [the
package development to do list on
GitHub](https://github.com/ropensci/opendata/wiki/ToDo).

Data Sharing and Archiving
--------------------------

Data sharing involves the dissemination of data in draft form or for a
temporary period of time.
[rdrop2](http://cran.r-project.org/web/packages/rdrop2/index.html) (
[GitHub](https://github.com/karthik/rdrop2)) is a Dropbox.com interface
from R, providing access to a full suite of file operations, including
dir/copy/move/delete operations, account information (including quotas)
and the ability to upload and download files from any Dropbox account.
[boxr](https://github.com/brendan-R/boxr) is a lightweight, high-level R
interface for the [box.com API](https://developers.box.com/docs/).
[<span
class="Ohat">RAmazonS3</span>](http://www.Omegahat.org/RAmazonS3/)
provides an interface to the Amazon Simple Storage Service (S3).

Data archiving involves the production and dissemination of open data
that is persistently accessible, typically in public repositories. The
tools below may be useful for both archiving data and retrieving extant
data from public archives.

-   [ckanr](https://github.com/ropensci/ckanr): A generic R client to
    interact with the CKAN data portal software API (
    <http://ckan.org/>). Allows user to swap out the base URL to use any
    CKAN instance. [Source on
    GitHub](https://github.com/ropensci/ckanr).
-   [dataone](http://cran.rstudio.com/src/contrib/Archive/dataone/):
    Read/write access to data and metadata from the [DataONE
    network](https://www.dataone.org/) of Member Node data repositories.
-   [dvn](http://cran.r-project.org/web/packages/dvn/index.html) (
    [GitHub](https://github.com/ropensci/dvn)) provides access to
    Dataverse Network repositories.
-   [factualR](http://cran.r-project.org/web/packages/factualR/index.html):
    Thin wrapper for the [Factual.com](http://factual.com/) server API.
-   [googlesheets](https://github.com/jennybc/googlesheets) (not on
    CRAN): Access private or public Google Sheets by title, key, or URL.
    Extract data or edit data. Create, delete, rename, copy, upload, or
    download spreadsheets and worksheets. [Source on
    GitHub](https://github.com/jennybc/googlesheets)
-   [gsheet](http://cran.r-project.org/web/packages/gsheet/index.html):
    Download Google Sheets using just the sharing link. Spreadsheets can
    be downloaded as a data frame, or as plain text to parse manually.
    [Source on GitHub](https://github.com/maxconway/gsheet)
-   [infochimps](http://cran.rstudio.com/src/contrib/Archive/infochimps/):
    An R wrapper for the infochimps.com API services, from [Drew
    Conway](http://drewconway.com/). The CRAN version is archived.
    Development is available on GitHub
    [here](https://github.com/drewconway/infochimps).
-   [internetarchive](https://github.com/lmullen/internetarchive) (not
    on CRAN): API client for internet archive metadata. [Source on
    GitHub](https://github.com/ropensci/internetarchive).
-   [jSonarR](http://cran.r-project.org/web/packages/jSonarR/index.html):
    Enables users to access MongoDB by running queries and returning
    their results in R data frames. jSonarR uses data processing and
    conversion capabilities in the jSonar Analytics Platform and the
    [JSON Studio Gateway](http://www.jsonstudio.com), to convert JSON to
    a tabular format.
-   [OAIHarvester](http://cran.r-project.org/web/packages/OAIHarvester/index.html):
    Harvest metadata using the Open Archives Initiative Protocol for
    Metadata Harvesting (OAI-PMH).
-   [Quandl](http://cran.r-project.org/web/packages/Quandl/index.html):
    A package that interacts directly with the
    [Quandl](http://www.quandl.com/) API to offer data in a number of
    formats usable in R, as well as the ability to upload and search.
-   [rdatamarket](http://cran.r-project.org/web/packages/rdatamarket/index.html):
    Fetches data from DataMarket.com, either as timeseries in zoo form
    (dmseries) or as long-form data frames (dmlist).
-   [rerddap](https://github.com/ropensci/rerddap) (not on CRAN): A
    generic R client to interact with any ERDDAP instance, which is a
    special case of OPeNDAP ( <https://en.wikipedia.org/wiki/OPeNDAP>),
    or *Open-source Project for a Network Data Access Protocol* . Allows
    user to swap out the base URL to use any ERDDAP instance. [Source on
    GitHub](https://github.com/ropensci/rerddap).
-   [rfigshare](http://cran.r-project.org/web/packages/rfigshare/index.html):
    Programmatic interface for [Figshare.com](http://figshare.com/).
    [Source on GitHub](https://github.com/ropensci/rfigshare).
-   [RSocrata](http://cran.rstudio.com/src/contrib/Archive/RSocrata/):
    (temporarily archived on CRAN for email bounce) Provided with a
    Socrata dataset resource URL, or a Socrata SoDA web API query,
    returns an R data frame. Converts dates to POSIX format. Supports
    CSV and JSON. Manages throttling by Socrata.
-   [yhatr](http://cran.r-project.org/web/packages/yhatr/index.html):
    Lets you deploy, maintain, and invoke models via the
    [Yhat](https://www.yhathq.com/) REST API.

Data Packages
-------------

Various R packages make open datasets available directly in R. These are
useful both for demonstrating R functionality but may also be useful in
their own right. The
[datasets](http://cran.r-project.org/web/packages/datasets/index.html)
package (as part of the base R distribution) contains many such
datasets, though most are small in size. The following packages contain
more substantial datasets.
-   Various packages provide datasets intended for those working in
    specific disciplines, such as
    [archdata](http://cran.r-project.org/web/packages/archdata/index.html)
    for archeaology,
    [agridat](http://cran.r-project.org/web/packages/agridat/index.html)
    for agriculture,
    [astrodatR](http://cran.r-project.org/web/packages/astrodatR/index.html)
    for astronomy,
    [historydata](http://cran.r-project.org/web/packages/historydata/index.html)
    for history,
    [insuranceData](http://cran.r-project.org/web/packages/insuranceData/index.html)
    for insurance,
-   [babynames](http://cran.r-project.org/web/packages/babynames/index.html)
    contains all U.S. baby names provided by the Social Security
    Administration that were used for at least 5 children of either sex.
-   [ergmharris](http://cran.r-project.org/web/packages/ergmharris/index.html)
    contains a network data set consisting of 1283 local health
    departments and the communication links among them along with
    several attributes.
-   [fds](http://cran.r-project.org/web/packages/fds/index.html) and
    [Mcomp](http://cran.r-project.org/web/packages/Mcomp/index.html)
    contain a variety of time series datasets.
-   [gapminder](http://cran.r-project.org/web/packages/gapminder/index.html)
    is an excerpt of the [Gapminder.org](http://www.gapminder.org)
    dataset including life expectancy, GDP per capita, and population,
    every five years, from 1952 to 2007, for 142 countries.
-   [GCD](http://cran.r-project.org/web/packages/GCD/index.html)
    contains the Global Charcoal database data. Data include charcoal
    series (age, depth, charcoal quantity, associated units and methods)
    and informations on sedimentary sites (localisation, depositional
    environment, biome, etc.).
-   [Guerry](http://cran.r-project.org/web/packages/Guerry/index.html)
    contains spatial data from A.M. Guerry's "Moral Statistics of
    France" (1833).
-   [HistData](http://cran.r-project.org/web/packages/HistData/index.html)
    offers various historical datasets, especially those related to data
    visualization.
-   [Lahman](http://cran.r-project.org/web/packages/Lahman/index.html)
    provides tables from Sean Lahman's Baseball Database including data
    on pitching, hitting, and fielding performance, etc. from 1871
    through 2013.
-   [MCAPS](http://cran.r-project.org/web/packages/MCAPS/index.html)
    contains weather and air pollution data, risk estimates, and other
    information from the Medicare Air Pollution Study (MCAPS) of 204
    U.S. counties, 1999–2002.
-   [nasaweather](http://cran.r-project.org/web/packages/nasaweather/index.html)
    contains meteorological and atmospheric data from the ASA 2006 data
    expo.
-   [NHANES](http://cran.r-project.org/web/packages/NHANES/index.html)
    body shape and related measurements from the US National Health and
    Nutrition Examination Survey (NHANES, 1999-2004).
-   [noncensus](http://cran.r-project.org/web/packages/noncensus/index.html)
    contains data related to the U.S. Census.
-   [nycflights13](http://cran.r-project.org/web/packages/nycflights13/index.html)
    contains airline on-time data for all flights departing from New
    York City in 2013.
-   [QSARdata](http://cran.r-project.org/web/packages/QSARdata/index.html)
    offers molecular descriptors and outcomes for several public domain
    data sets.
-   [randomNames](http://cran.r-project.org/web/packages/randomNames/index.html)
    provides a dataset of frequency probabilities for first names by
    gender and ethnicity and last names by ethnicity (e.g., for use in
    anonymizing data).
-   [rcorpora](http://cran.r-project.org/web/packages/rcorpora/index.html)
    contains a 'corpora()' function that provides dozens of categorized
    text corpora on a number of topics.
-   [rUnemploymentData](http://cran.r-project.org/web/packages/rUnemploymentData/index.html)
    contains U.S. unemployment data from the US Bureau of Labor
    Statistics, 2000-2013.
-   [SwissAir](http://cran.r-project.org/web/packages/SwissAir/index.html)
    contains various air quality measures for 3 sites around lake of
    Lucerne in Central Switzerland in 30 min time resolution for year
    2004.
-   [UScensus2010](http://cran.r-project.org/web/packages/UScensus2010/index.html)
    and its related packages provide spatial data from the U.S. Census.
-   [zipcode](http://cran.r-project.org/web/packages/zipcode/index.html)
    contains a database of city, state, latitude, and longitude
    information for U.S. ZIP codes from the CivicSpace Database.
-   Various packages supply data to accompany general R instructional
    materials (e.g., books) or other packages, including:
    [alr3](http://cran.r-project.org/web/packages/alr3/index.html),
    [alr4](http://cran.r-project.org/web/packages/alr4/index.html),
    [aplore3](http://cran.r-project.org/web/packages/aplore3/index.html),
    [aprean3](http://cran.r-project.org/web/packages/aprean3/index.html),
    [BaM](http://cran.r-project.org/web/packages/BaM/index.html),
    [BayesDA](http://cran.r-project.org/web/packages/BayesDA/index.html),
    [blmeco](http://cran.r-project.org/web/packages/blmeco/index.html),
    [cluster.datasets](http://cran.r-project.org/web/packages/cluster.datasets/index.html),
    [Devore7](http://cran.r-project.org/web/packages/Devore7/index.html),
    [eegkitdata](http://cran.r-project.org/web/packages/eegkitdata/index.html),
    [ElemStatLearn](http://cran.r-project.org/web/packages/ElemStatLearn/index.html),
    [EngrExpt](http://cran.r-project.org/web/packages/EngrExpt/index.html),
    [expsmooth](http://cran.r-project.org/web/packages/expsmooth/index.html),
    [Fahrmeir](http://cran.r-project.org/web/packages/Fahrmeir/index.html),
    [faraway](http://cran.r-project.org/web/packages/faraway/index.html),
    [fastR](http://cran.r-project.org/web/packages/fastR/index.html),
    [FAwR](http://cran.r-project.org/web/packages/FAwR/index.html),
    [Flury](http://cran.r-project.org/web/packages/Flury/index.html),
    [fma](http://cran.r-project.org/web/packages/fma/index.html),
    [gamair](http://cran.r-project.org/web/packages/gamair/index.html),
    [gamlss.data](http://cran.r-project.org/web/packages/gamlss.data/index.html),
    [GANPAdata](http://cran.r-project.org/web/packages/GANPAdata/index.html),
    [gpk](http://cran.r-project.org/web/packages/gpk/index.html),
    [HSAUR3](http://cran.r-project.org/web/packages/HSAUR3/index.html),
    [igraphdata](http://cran.r-project.org/web/packages/igraphdata/index.html),
    [isdals](http://cran.r-project.org/web/packages/isdals/index.html),
    [KMsurv](http://cran.r-project.org/web/packages/KMsurv/index.html),
    [languageR](http://cran.r-project.org/web/packages/languageR/index.html),
    [learningr](http://cran.r-project.org/web/packages/learningr/index.html),
    [LeLogicielR](http://cran.r-project.org/web/packages/LeLogicielR/index.html),
    [Lock5Data](http://cran.r-project.org/web/packages/Lock5Data/index.html),
    [MEMSS](http://cran.r-project.org/web/packages/MEMSS/index.html),
    [MindOnStats](http://cran.r-project.org/web/packages/MindOnStats/index.html),
    [mistat](http://cran.r-project.org/web/packages/mistat/index.html),
    [mosaicData](http://cran.r-project.org/web/packages/mosaicData/index.html),
    [MPDiR](http://cran.r-project.org/web/packages/MPDiR/index.html),
    [MPV](http://cran.r-project.org/web/packages/MPV/index.html),
    [MSG](http://cran.r-project.org/web/packages/MSG/index.html),
    [msme](http://cran.r-project.org/web/packages/msme/index.html),
    [msos](http://cran.r-project.org/web/packages/msos/index.html),
    [NSM3](http://cran.r-project.org/web/packages/NSM3/index.html),
    [nutshell](http://cran.r-project.org/web/packages/nutshell/index.html),
    [OIdata](http://cran.r-project.org/web/packages/OIdata/index.html),
    [openintro](http://cran.r-project.org/web/packages/openintro/index.html),
    [PBImisc](http://cran.r-project.org/web/packages/PBImisc/index.html),
    [qtlbook](http://cran.r-project.org/web/packages/qtlbook/index.html),
    [RSADBE](http://cran.r-project.org/web/packages/RSADBE/index.html),
    [SASmixed](http://cran.r-project.org/web/packages/SASmixed/index.html),
    [SenSrivastava](http://cran.r-project.org/web/packages/SenSrivastava/index.html),
    [Sleuth3](http://cran.r-project.org/web/packages/Sleuth3/index.html),
    [SMCRM](http://cran.r-project.org/web/packages/SMCRM/index.html),
    [smdata](http://cran.r-project.org/web/packages/smdata/index.html),
    [smss](http://cran.r-project.org/web/packages/smss/index.html),
    [Stat2Data](http://cran.r-project.org/web/packages/Stat2Data/index.html),
    [synbreedData](http://cran.r-project.org/web/packages/synbreedData/index.html),
    [TH.data](http://cran.r-project.org/web/packages/TH.data/index.html),
    [TRSbook](http://cran.r-project.org/web/packages/TRSbook/index.html),
    [UsingR](http://cran.r-project.org/web/packages/UsingR/index.html),
    [VGAMdata](http://cran.r-project.org/web/packages/VGAMdata/index.html),
    [wikibooks](http://cran.r-project.org/web/packages/wikibooks/index.html),
    and
    [WWGbook](http://cran.r-project.org/web/packages/WWGbook/index.html).
    Note: only packages that primarily contain data (as opposed to
    functions with minimal datasets as examples) are included here.

Web-based Open Data
-------------------

[Agriculture](#agr) | [Astronomy](#ast) | [Chemistry](#chemistry) |
[Earth Science](#earthsci) | [Ecology/Evolution](#eeb) |
[Economics/Business](#econbus) | [E-commerce](#ecommerce) |
[Finance](#finance) | [Genes/Genomes](#genes) | [Geocoding](#geocoding)
| [Google analytics](#googlea) | [Google web services](#google) |
[Government](#gov) | [Literature/Text-mining](#lit) | [Maps](#maps) |
[Marketing](#marketing) | [Media: Images/video/etc.](#media) |
[NCBI](#ncbi) | [News](#news) | [Other](#other) | [Public
Health](#publichealth) | [Social media](#social) | [Social
science](#socialsci) | [Sports](#sports) | [Web
analytics](#webanalytics) | [Wikipedia](#wikipedia) |

### <a href="#agr" name="agr">#</a> Agriculture

-   [cimis](http://cran.rstudio.com/src/contrib/Archive/cimis/): R
    package for retrieving data from CIMIS, the California Irrigation
    Management Information System. Available in CRAN archives only.
-   [FAOSTAT](http://cran.r-project.org/web/packages/FAOSTAT/index.html):
    The package hosts a list of functions to download, manipulate,
    construct and aggregate agricultural statistics provided by the
    FAOSTAT (Food and Agricultural Organization of the United Nations)
    database.

### <a href="#ast" name="ast">#</a> Astronomy

-   [RStars](http://cran.r-project.org/web/packages/RStars/index.html):
    Star-API provides API access to the American Museum of Natural
    History's Digital Universe Data, including positions, luminosity,
    color, and other data on over 100,000 stars as well as
    constellations, exo-planets, clusters and others. [Source on
    GitHub](https://github.com/ropensci/RStars).

### <a href="#ecommerce" name="ecommerce">#</a> E-commerce

-   [shopifyr](http://cran.r-project.org/web/packages/shopifyr/index.html):
    An interface to the API of the E-commerce service Shopify
    <http://docs.shopify.com/api>.

### <a href="#chemistry" name="chemistry">#</a> Chemistry

-   [rpubchem](http://cran.r-project.org/web/packages/rpubchem/index.html):
    Interface to the PubChem Collection.
-   [webchem](http://cran.r-project.org/web/packages/webchem/index.html):
    Retrieve chemical information from a suite of web APIs for chemical
    information. [Source on GitHub](https://github.com/ropensci/webchem)

### <a href="#earthsci" name="earthsci">#</a> Earth Science

-   [BerkeleyEarth](http://cran.rstudio.com/src/contrib/Archive/BerkeleyEarth/):
    Data input for Berkeley Earth Surface Temperature. Archived on CRAN.
-   [CHCN](http://cran.r-project.org/web/packages/CHCN/index.html): A
    compilation of historical through contemporary climate measurements
    scraped from the Environment Canada Website Including tools for
    scraping data, creating metadata and formatting temperature files.
-   [clifro](http://cran.r-project.org/web/packages/clifro/index.html):
    Designed to minimise the hassle in downloading data from New
    Zealand's National Climate Database via
    [CliFlo](http://cliflo.niwa.co.nz/). [Source on
    GitHub](https://github.com/ropensci/clifro)
-   [crn](http://cran.r-project.org/web/packages/crn/index.html):
    Provides the core functions required to download and format data
    from the Climate Reference Network. Both daily and hourly data are
    downloaded from the ftp, a consolidated file of all stations is
    created, station metadata is extracted. In addition functions for
    selecting individual variables and creating R friendly datasets for
    them is provided.
-   [dataRetrieval](http://cran.r-project.org/web/packages/dataRetrieval/index.html):
    Collection of functions to help retrieve USGS data from either web
    services or user-provided data files. [on
    GitHub](https://github.com/USGS-R/dataRetrieval).
-   [decctools](http://cran.r-project.org/web/packages/decctools/index.html):
    Provides functions for retrieving energy statistics from the United
    Kingdom Department of Energy and Climate Change and related data
    sources. The current version focuses on total final energy
    consumption statistics at the local authority, MSOA, and LSOA
    geographies. Methods for calculating the generation mix of grid
    electricity and its associated carbon intensity are also provided.
-   [GhcnDaily](http://cran.r-project.org/web/packages/GhcnDaily/index.html):
    A package that downloads and processes Global Historical Climatology
    Network (GHCN) daily data from the National Climatic Data Center
    (NCDC).
-   [hddtools](http://cran.r-project.org/web/packages/hddtools/index.html):
    Hydrological data discovery tools - accesses data from NASA, Global
    Runoff Data Centre, Top-Down modelling Working Group. [Source on
    GitHub](https://github.com/cvitolo/r_hddtools)
-   [marmap](http://cran.r-project.org/web/packages/marmap/index.html):
    Import, plot and analyze bathymetric and topographic data from NOAA.
-   [Metadata](http://cran.rstudio.com/src/contrib/Archive/Metadata/):
    Collates metadata for climate surface stations. Archived on CRAN.
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
    [Source on GitHub](https://github.com/oscarperpinan/meteoForecast/)
-   [okmesonet](http://cran.r-project.org/web/packages/okmesonet/index.html):
    Retrieves Oklahoma (USA) Mesonet climatological data provided by the
    Oklahoma Climatological Survey.
-   [raincpc](http://cran.r-project.org/web/packages/raincpc/index.html):
    The Climate Prediction Center's (CPC) daily rainfall data for the
    entire world, from 1979 to the present, at a resolution of 50 km
    (0.5 degrees lat-lon). This package provides functionality to
    download and process the raw data from CPC.
-   [rainfreq](http://cran.r-project.org/web/packages/rainfreq/index.html):
    Estimates of rainfall at desired frequency and desired duration are
    often required in the design of dams and other hydraulic structures,
    catastrophe risk modeling, environmental planning and management.
    One major source of such estimates for the USA is the NOAA National
    Weather Service's (NWS) division of Hydrometeorological Design
    Studies Center (HDSC). Raw data from NWS-HDSC is available at 1-km
    resolution and comes as a huge number of GIS files.
-   [rFDSN](http://cran.r-project.org/web/packages/rFDSN/index.html):
    Search for and download seismic time series in miniSEED format (a
    minimalist version of the Standard for the Exchange of Earthquake
    Data) from [International Federation of Digital Seismograph
    Networks](http://www.fdsn.org/) repositories. This package can also
    be used to gather information about seismic networks (stations,
    channels, locations, etc) and find historical earthquake data
    (origins, magnitudes, etc).
-   [RNCEP](http://cran.r-project.org/web/packages/RNCEP/index.html):
    Obtain, organize, and visualize [NCEP](http://www.ncep.noaa.gov/)
    weather data.
-   [rnoaa](http://cran.r-project.org/web/packages/rnoaa/index.html): R
    interface to NOAA Climate data API.
-   [rNOMADS](http://cran.r-project.org/web/packages/rNOMADS/index.html):
    An interface to the [NOAA Operational Model Archive and Distribution
    System (NOMADS)](http://nomads.ncdc.noaa.gov/) that allows download
    of global and regional weather model data, and supports a variety of
    models ranging from global weather data to an altitude of 40 km, to
    high resolution regional weather models, to wave and sea ice models.
    It can also retrieve archived NOMADS models. Source: [<span
    class="Rforge">rnomads</span>](http://R-Forge.R-project.org/projects/rnomads/).
-   [rnrfa](http://cran.r-project.org/web/packages/rnrfa/index.html):
    Utility functions to retrieve data from the UK National River Flow
    Archive via an API (http://www.ceh.ac.uk/data/nrfa/). There are
    functions to retrieve stations falling in a bounding box, to
    generate a map and extracting time series and general information.
-   [soilDB](http://cran.r-project.org/web/packages/soilDB/index.html):
    A collection of functions for reading data from USDA-NCSS soil
    databases.
-   [sos4R](http://cran.r-project.org/web/packages/sos4R/index.html): A
    client for Sensor Observation Services (SOS) as specified by the
    Open Geospatial Consortium (OGC). It allows users to retrieve
    metadata from SOS web services and to interactively create requests
    for near real-time observation data based on the available sensors,
    phenomena, observations, etc. using thematic, temporal and spatial
    filtering.
-   [waterData](http://cran.r-project.org/web/packages/waterData/index.html):
    An R Package for retrieval, analysis, and anomaly calculation of
    daily hydrologic time series data.
-   [WaterML](http://cran.r-project.org/web/packages/WaterML/index.html)
    can retrieve WaterOneFlow
    [Hydroserver](http://hiscentral.cuahsi.org) data.
-   [weatherData](http://cran.r-project.org/web/packages/weatherData/index.html):
    Functions that help in fetching weather data from websites. Given a
    location and a date range, these functions help fetch weather data
    (temperature, pressure etc.) for any weather related analysis.

### <a href="#eeb" name="eeb">#</a> Ecological and Evolutionary Biology

-   [ALA4R](https://github.com/AtlasOfLivingAustralia/ALA4R) (not on
    CRAN): Programmatic R interface to the [Atlas of Living
    Australia](http://www.ala.org.au/). [Source on
    GitHub](https://github.com/ropensci/ALA4R)
-   [<span
    class="BioC">BioMart</span>](http://www.Bioconductor.ohttp://cran.r-project.org/web/packages/release/bioc/html/BioMart.html)
    (not on CRAN) retrieves data from a number of public biological data
    repositories using a <http://www.biomart.org> database.
-   [dismo](http://cran.r-project.org/web/packages/dismo/index.html):
    Species distribution modeling, with wrappers to some APIs.
-   [ecoengine](http://cran.r-project.org/web/packages/ecoengine/index.html):
    ecoengine ( <http://ecoengine.berkeley.edu/>) provides access to
    more than 2 million georeferenced specimen records from the Berkeley
    Natural History Museums. <http://bnhm.berkeley.edu/>. [Source on
    GitHub](https://github.com/ropensci/ecoengine)
-   [ecoretriever](http://cran.r-project.org/web/packages/ecoretriever/index.html):
    Provides an R interface to the [EcoData
    Retriever](http://ecodataretriever.org/) via the EcoData Retriever's
    command line interface. The EcoData Retriever automates the tasks of
    finding, downloading, and cleaning ecological datasets, and then
    stores them in a local database (including SQLite, MySQL, etc.).
    [Source on GitHub](https://github.com/ropensci/ecoretriever/).
-   [flora](http://cran.r-project.org/web/packages/flora/index.html):
    Retrieve taxonomical information of botanical names from the Flora
    do Brasil website.
-   [neotoma](https://github.com/ropensci/neotoma) (not on CRAN):
    Programmatic R interface to the Neotoma Paleoecological Database.
    [Source on GitHub](https://github.com/ropensci/neotoma)
-   [paleobioDB](http://cran.r-project.org/web/packages/paleobioDB/index.html):
    Functions to wrap each endpoint of the PaleobioDB API, plus
    functions to visualize and process the fossil data. The API
    documentation for the Paleobiology Database can be found at
    <http://paleobiodb.org/data1.1/>.
-   [rbison](http://cran.r-project.org/web/packages/rbison/index.html):
    Wrapper to the USGS Bison API. [Source on
    GitHub](https://github.com/ropensci/rbison)
-   [Rcolombos](http://cran.r-project.org/web/packages/Rcolombos/index.html):
    This package provides programmatic access to Colombos, a web based
    interface for exploring and analyzing comprehensive
    organism-specific cross-platform expression compendia of bacterial
    organisms.
-   [ridigbio](https://github.com/idigbio/ridigbio) (not on CRAN) is an
    interface for <http://www.idigbio.org/>.
-   [rebird](http://cran.r-project.org/web/packages/rebird/index.html):
    A programmatic interface to the eBird database. [Source on
    GitHub](https://github.com/ropensci/rebird)
-   [rdopa](https://github.com/ropensci/rdopa) (not on CRAN): Access
    data from the [Digital Observatory for Protected
    Areas](http://dopa.jrc.ec.europa.eu/) (DOPA) REST API. [Source on
    GitHub](https://github.com/ropensci/rdopa)
-   [Reol](http://cran.r-project.org/web/packages/Reol/index.html): An R
    interface to the Encyclopedia of Life (EOL) API. Includes functions
    for downloading and extracting information off the EOL pages.
    [Source on GitHub](https://github.com/ropensci/Reol)
-   [rfishbase](http://cran.r-project.org/web/packages/rfishbase/index.html):
    A programmatic interface to fishbase.org. [Source on
    GitHub](https://github.com/ropensci/rfishbase)
-   [rfisheries](http://cran.r-project.org/web/packages/rfisheries/index.html):
    Package for interacting with fisheries databases at
    openfisheries.org. [Source on
    GitHub](https://github.com/ropensci/rfisheries)
-   [rgbif](http://cran.r-project.org/web/packages/rgbif/index.html):
    Interface to the Global Biodiversity Information Facility API
    methods. [Source on GitHub](https://github.com/ropensci/rgbif)
-   [rnbn](http://cran.r-project.org/web/packages/rnbn/index.html): An R
    interface to the [UK National Biodiversity
    Network](http://www.nbn.org.uk). [Source on
    GitHub](https://github.com/ropensci/rnbn).
-   [rnpn](https://github.com/ropensci/rnpn) (not on CRAN): Wrapper to
    the National Phenology Network database API. [Source on
    GitHub](https://github.com/ropensci/rnpn).
-   [rotl](https://github.com/fmichonneau/rotl) (not on CRAN): R client
    for the Open Tree of Life API. [Source on
    GitHub](https://github.com/fmichonneau/rotl)
-   [rphylopic](https://github.com/sckott/rphylopic) (not on CRAN): An R
    client for [Phylopic.org](http://phylopic.org/), a databaes of free
    silhouettes of animals, embedded in a phylogenetic information
    framework. [Source on GitHub](https://github.com/sckott/rphylopic)
-   [rPlant](http://cran.r-project.org/web/packages/rPlant/index.html):
    An R interface to the the many computational resources iPlant offers
    through their RESTful application programming interface. Currently,
    [rPlant](http://cran.r-project.org/web/packages/rPlant/index.html)
    functions interact with the iPlant foundational API, the Taxonomic
    Name Resolution Service API, and the Phylotastic Taxosaurus API.
    Before using rPlant, users will have to register with the [iPlant
    Collaborative](http://www.iplantcollaborative.org/discover/discovery-environment)
-   [rvertnet](http://cran.r-project.org/web/packages/rvertnet/index.html):
    A wrapper to the VertNet collections database API. [Source on
    GitHub](https://github.com/ropensci/rvertnet)
-   [rWBclimate](http://cran.r-project.org/web/packages/rWBclimate/index.html):
    R interface for the World Bank climate data. [Source on
    GitHub](https://github.com/ropensci/rWBclimate)
-   [rYoutheria](http://cran.r-project.org/web/packages/rYoutheria/index.html):
    A programmatic interface to web-services of Youtheria, an online
    database of mammalian trait data. Development version on GitHub
    [here](https://github.com/biologicalrecordscentre/rYoutheria)
-   [spocc](http://cran.r-project.org/web/packages/spocc/index.html) (
    [GitHub](https://github.com/ropensci/spocc)) offers a programmatic
    interface to many species occurrence data sources, including GBIF,
    USGS's BISON, iNaturalist, Berkeley Ecoinformatics Engine eBird,
    AntWeb, and more as they sources become easily available.
    [rinat](http://cran.r-project.org/web/packages/rinat/index.html)
    provides another interface to iNaturalist.
-   [TR8](http://cran.r-project.org/web/packages/TR8/index.html): TR8
    contains a set of tools which take care of retrieving trait data for
    plant species from publicly available databases via web services
    (including: Biolflor, The Ecological Flora of the British Isles,
    LEDA traitbase, Ellenberg values for Italian Flora, Mycorrhizal
    intensity database). [Source on
    GitHub](https://github.com/GioBo/TR8)
-   [taxize](http://cran.r-project.org/web/packages/taxize/index.html):
    Taxonomic information from around the web. A single unified
    interface to many web APIs for taxonomic data, including NCBI, ITIS,
    Tropicos and more. [Source on
    GitHub](https://github.com/ropensci/taxize)
-   The [tpl](https://github.com/gustavobio/tpl) package, created by
    Gustavo Carvalho, doesn't interact with the web directly, but
    queries locally stored data from
    [theplantlist.org](http://www.theplantlist.org/), and data will be
    updated when theplantlist updates, which is not very often. There is
    another package for interacting with this same data, called
    [Taxonstand](http://cran.r-project.org/web/packages/Taxonstand/index.html).
-   [treebase](http://cran.r-project.org/web/packages/treebase/index.html):
    An R package for discovery, access and manipulation of online
    phylogenies. [Source on
    GitHub](https://github.com/ropensci/treebase)

### <a href="#econbus" name="econbus">#</a> Economics and Business

-   [blsAPI](http://cran.r-project.org/web/packages/blsAPI/index.html):
    Get data from the U.S. Bureau of Labor Statistics API. Users provide
    parameters as specified in
    <http://www.bls.gov/developers/api_signature.htm> and the function
    returns a JSON string. [Source on
    GitHub](https://github.com/mikeasilva/blsAPI)
-   [FredR](https://github.com/jcizel/FredR): R Interface to the
    [Federal Reserve Economic Data
    API](http://api.stlouisfed.org/docs/fred/). [Source on
    GitHub](https://github.com/jcizel/FredR)
-   [ONETr](http://cran.r-project.org/web/packages/ONETr/index.html)
    searches and retrieves occupational data from [O\*NET
    Online](http://www.onetonline.org/). Development version on GitHub
    [here](https://github.com/eknud/onetr).
-   [psidR](http://cran.r-project.org/web/packages/psidR/index.html)
    Contains functions to download and format longitudinal datasets from
    the Panel Study of Income Dynamics (PSID).
-   [pxweb](http://cran.r-project.org/web/packages/pxweb/index.html):
    Generic interface for the PX-Web/PC-Axis API. The PX-Web/PC-Axis API
    is used by organizations such as Statistics Sweden and Statistics
    Finland to disseminate data. The R package can interact with all
    PX-Web/PC-Axis APIs to fetch information about the data hierarchy,
    extract metadata and extract and parse statistics to R data.frame
    format. [Source on GitHub](https://github.com/rOpenGov/pxweb).
-   [WDI](http://cran.r-project.org/web/packages/WDI/index.html):
    Search, extract and format data from the World Bank's World
    Development Indicators.
-   The [<span
    class="Ohat">Zillow</span>](http://www.Omegahat.org/Zillow/) package
    provides an R interface to the [Zillow](http://www.zillow.com/) Web
    Service API. It allows one to get the Zillow estimate for the price
    of a particular property specified by street address and ZIP code
    (or city and state), to find information (e.g. size of property and
    lot, number of bedrooms and bathrooms, year built.) about a given
    property, and to get comparable properties.

### <a href="#finance" name="finance">#</a> Finance

-   [Datastream2R](https://github.com/CharlesCara/Datastream2R) (not on
    CRAN): Another package for accessing the Datastream service. This
    package downloads data from the Thomson Reuters DataStream DWE
    server, which provides XML access to the Datastream database of
    economic and financial information.
-   [fImport](http://cran.r-project.org/web/packages/fImport/index.html):
    Environment for teaching "Financial Engineering and Computational
    Finance"
-   [IBrokers](http://cran.r-project.org/web/packages/IBrokers/index.html):
    Provides native R access to Interactive Brokers Trader Workstation
    API.
-   [pdfetch](http://cran.r-project.org/web/packages/pdfetch/index.html):
    A package for downloading economic and financial time series from
    public sources.
-   [quantmod](http://cran.r-project.org/web/packages/quantmod/index.html):
    Functions for financial quantitative modelling as well as data
    acquisition, plotting and other utilities.
-   [Rbitcoin](http://cran.r-project.org/web/packages/Rbitcoin/index.html):
    Ineract with Bitcoin. Both public and private API calls. Support
    HTTP over SSL. Debug messages of Rbitcoin, debug messages of RCurl,
    error handling.
-   [rbitcoinchartsapi](http://cran.r-project.org/web/packages/rbitcoinchartsapi/index.html):
    An R package for the [BitCoinCharts.com](http://bitcoincharts.com/)
    API. From their website: "Bitcoincharts provides financial and
    technical data related to the Bitcoin network and this data can be
    accessed via a JSON application programming interface (API)."
-   [Rblpapi](https://github.com/armstrtw/Rblpapi): R client for
    Bloomberg Finance L.P. [Source on
    GitHub](https://github.com/armstrtw/Rblpapi)
-   [RCryptsy](http://cran.r-project.org/web/packages/RCryptsy/index.html)
    Wraps the API for the [Cryptsy](http://www.cryptsy.com)
    crypto-currency trading platform. [Source on
    GitHub](https://github.com/ropensci/RCryptsy).
-   [RDatastream](https://github.com/fcocquemas/rdatastream) (not on
    CRAN): An R interface to the [Thomson Dataworks Enterprise SOAP
    API](http://dataworks.thomson.com/Dataworks/Enterprise/1.0/) (paid),
    with some convenience functions for retrieving Datastream data
    specifically.
-   [RJSDMX](http://cran.r-project.org/web/packages/RJSDMX/index.html):
    Retrieve data and metadata from SDMX compliant data providers.
    [Source on
    GitHub](https://github.com/amattioc/SDMX/tree/master/RJSDMX).
-   [TFX](http://cran.r-project.org/web/packages/TFX/index.html):
    Connects to TrueFX(tm) for free streaming real-time and historical
    tick-by-tick market data for dealable interbank foreign exchange
    rates with millisecond detail.
-   [Thinknum](http://cran.r-project.org/web/packages/Thinknum/index.html):
    Interacts with the [Thinknum](http://www.thinknum.com/) API.
-   [tseries](http://cran.r-project.org/web/packages/tseries/index.html):
    Includes the `get.hist.quote` for historical financial data.
-   [ustyc](http://cran.r-project.org/web/packages/ustyc/index.html): US
    Treasury yield curve data retrieval. Development version on GitHub
    [here](https://github.com/mrbcuda/ustyc).

### <a href="#genes" name="genes">#</a> Genes and Genomes

-   [aggRmesh](https://github.com/balcomes/aggRmesh): R client for the
    [National Center for Integrative Biomedical Informatics
    (NCIBI)](http://portal.ncibi.org/gateway/) data.
-   [cgdsr](http://cran.r-project.org/web/packages/cgdsr/index.html):
    R-Based API for accessing the MSKCC Cancer Genomics Data Server
    (CGDS).
-   [chromer](http://cran.r-project.org/web/packages/chromer/index.html):
    A programmatic interface to the [Chromosome Counts
    Database](http://ccdb.tau.ac.il/). [Source on
    GitHub](https://github.com/ropensci/chromer)
-   The [mygene.r](https://bitbucket.org/sulab/mygene.r/overview)
    package is an R client for accessing
    [Mygene.info](http://mygene.info/#) annotation and query services.
-   [primerTree](http://cran.r-project.org/web/packages/primerTree/index.html):
    Visually Assessing the Specificity and Informativeness of Primer
    Pairs.
-   [rsnps](http://cran.r-project.org/web/packages/rsnps/index.html):
    This package is a programmatic interface to various SNP datasets on
    the web: openSNP, NBCI's dbSNP database, and Broad Institute SNP
    Annotation and Proxy Search. This package started as a library to
    interact with openSNP alone, so most functions deal with openSNP.
-   [seq2R](http://cran.rstudio.com/src/contrib/Archive/seq2R/): Detect
    compositional changes in genomic sequences - with some interaction
    with GenBank. Archived on CRAN.
-   [seqinr](http://cran.r-project.org/web/packages/seqinr/index.html):
    Exploratory data analysis and data visualization for biological
    sequence (DNA and protein) data.
-   NCBI EUtils web services: See the NCBI section

### <a href="#geocoding" name="geocoding">#</a> Geocoding

-   [geocodeHERE](http://cran.r-project.org/web/packages/geocodeHERE/index.html):
    Wrapper for Nokia's [HERE](http://here.com/) geocoding API. API
    docs: <https://developer.here.com/geocoder>. [Source on
    GitHub](https://github.com/corynissen/geocodeHERE)
-   [ipapi](https://github.com/hrbrmstr/ipapi): Geolocate IPv4/6
    addresses and/or domain names using the
    [ip-api.com](http://ip-api.com/) API. [Source on
    GitHub](https://github.com/hrbrmstr/ipapi)

### <a href="#googlea" name="googlea">#</a> Google Analytics

-   [ganalytics](https://github.com/jdeboer/ganalytics) (not on CRAN):
    Interface to [Google Analytics
    APIs](https://developers.google.com/analytics/). [Source on
    GitHub](https://github.com/jdeboer/ganalytics)
-   [GAR](http://cran.r-project.org/web/packages/GAR/index.html):
    Interface to [Google Analytics
    APIs](https://developers.google.com/analytics/). [Source on
    GitHub](https://github.com/andrewgeisler/GAR)
-   [RGA](http://cran.r-project.org/web/packages/RGA/index.html):
    Provides functions for accessing and retrieving data from the
    [Google Analytics APIs](https://developers.google.com/analytics/).
    Supports OAuth 2.0 authorization. Also, the
    [RGA](http://cran.r-project.org/web/packages/RGA/index.html) package
    provides a shiny app to explore data. There is another R package for
    the same service
    ([RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html));
    see above entry.
-   [RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html):
    Provides functions for accessing and retrieving data from the Google
    Analytics API. [Source on
    GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues). There is
    another R package for the same service
    ([RGA](http://cran.r-project.org/web/packages/RGA/index.html)); see
    next entry.

### <a href="#google" name="google">#</a> Google Web Services

-   [bigrquery](http://cran.r-project.org/web/packages/bigrquery/index.html):
    An interface to Google's bigquery from R. [Source on
    GitHub](https://github.com/hadley/bigrquery)
-   [ganalytics](https://github.com/jdeboer/ganalytics) (not on CRAN):
    Interface to [Google Analytics
    APIs](https://developers.google.com/analytics/). [Source on
    GitHub](https://github.com/jdeboer/ganalytics)
-   [GAR](http://cran.r-project.org/web/packages/GAR/index.html):
    Interface to [Google Analytics
    APIs](https://developers.google.com/analytics/). [Source on
    GitHub](https://github.com/andrewgeisler/GAR)
-   [GFusionTables](http://gfusiontables.lopatenko.com/) (not on CRAN):
    An R interface to Google Fusion Tables. Google Fusion Tables is a
    data mangement system in the cloud. This package provides R
    functions to browse Fusion Tables catalog, retrieve data from Gusion
    Tables dtd storage to R and to upload data from R to Fusion Tables
-   [googlePublicData](http://cran.rstudio.com/src/contrib/Archive/googlePublicData/):
    (archived on CRAN for email bounce) An R library to build Google's
    public data explorer DSPL metadata files.
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
-   [RAdwords](http://cran.r-project.org/web/packages/RAdwords/index.html):
    A package for loading Google Adwords data. [Source on
    GitHub](https://github.com/jburkhardt/RAdwords)
-   [RGA](http://cran.r-project.org/web/packages/RGA/index.html):
    Provides functions for accessing and retrieving data from the
    [Google Analytics APIs](https://developers.google.com/analytics/).
    Supports OAuth 2.0 authorization. Also, the
    [RGA](http://cran.r-project.org/web/packages/RGA/index.html) package
    provides a shiny app to explore data. There is another R package for
    the same service
    ([RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html));
    see above entry.
-   [RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html):
    Provides functions for accessing and retrieving data from the Google
    Analytics API. [Source on
    GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues). There is
    another R package for the same service
    ([RGA](http://cran.r-project.org/web/packages/RGA/index.html)); see
    next entry.
-   The [<span
    class="Ohat">RGoogleDocs</span>](http://www.Omegahat.org/RGoogleDocs/)
    package is an example of using the RCurl and XML packages to quickly
    develop an interface to the Google Documents API.
-   [<span
    class="Ohat">RGoogleStorage</span>](http://www.Omegahat.org/RGoogleStorage/)
    provides programmatic access to the Google Storage API. This allows
    R users to access and store data on Google's storage. We can upload
    and download content, create, list and delete folders/buckets, and
    set access control permissions on objects and buckets.
-   [<span
    class="Ohat">RGoogleTrends</span>](http://www.Omegahat.org/RGoogleTrends/)
    provides programmatic access to Google Trends data. This is
    information about the popularity of a particular query.
-   [translate](http://cran.r-project.org/web/packages/translate/index.html):
    Bindings for the Google Translate API v2
-   [translateR](http://cran.r-project.org/web/packages/translateR/index.html)
    provides bindings for both Google and Microsoft translation APIs.

### <a href="#gov" name="gov">#</a> Government

-   [acs](http://cran.r-project.org/web/packages/acs/index.html):
    Download, manipulate, and present data from the US Census American
    Community Survey.
-   [BerlinData](http://cran.r-project.org/web/packages/BerlinData/index.html):
    Easy access to <http://daten.berlin.de>. It allows you to search
    through the data catalogue and to download the data directly from
    within R. Development version on GitHub
    [here](https://github.com/dirkschumacher/RBerlinData).
-   [bjs2r](https://github.com/JakeRuss/bjs2r): Get Bureau of Justice
    Statistics (BJS) data in R. [Source on
    GitHub](https://github.com/JakeRuss/bjs2r).
-   [dkstat](https://github.com/rOpenGov/dkstat) (not on CRAN): A
    package to access the [StatBank
    API](http://www.statistikbanken.dk/statbank5a/) from [Statistics
    Denmark](http://www.dst.dk/).
-   [EIAdata](http://cran.r-project.org/web/packages/EIAdata/index.html):
    U.S. [Energy Information Administration (EIA)](http://www.eia.gov/)
    API client. See also [eia](https://github.com/krose/eia) (not on
    CRAN).
-   [enigma](http://cran.r-project.org/web/packages/enigma/index.html):
    [Enigma](https://enigma.io) holds many public datasets from
    governments, companies, universities, and organizations. Enigma
    provides an API for data, metadata, and statistics on each of the
    datasets. enigma is an R client to interact with the Enigma API,
    including getting the data and metadata for datasets in Enigma, as
    well as collecting statistics on datasets. In addition, you can
    download a gzipped csv file of a dataset if you want the whole
    dataset. An API key from Enigma is required to use enigma. [Source
    on GitHub](https://github.com/ropengov/enigma).
-   [eurostat](http://cran.r-project.org/web/packages/eurostat/index.html)
    ( [Github](https://github.com/ropengov/eurostat)) provides an
    interface to the [Eurostat database](http://ec.europa.eu/eurostat).
-   [federalregister](http://cran.r-project.org/web/packages/federalregister/index.html):
    Client package for the U.S. Federal Register API. Development
    version on GitHub
    [here](https://github.com/rOpenGov/federalregister).
-   [govStatJPN](http://cran.r-project.org/web/packages/govStatJPN/index.html):
    Functions to get public survey data in Japan.
-   [polidata](http://cran.r-project.org/web/packages/polidata/index.html):
    Access to various political data APIs, including e.g. [Google Civic
    Information API](https://developers.google.com/civic-information/)
    or [Sunlight Congress API](https://sunlightlabs.github.io/congress/)
    for US Congress data, and [POPONG API](http://data.popong.com/) for
    South Korea National Assembly data. [Source on
    GitHub](https://github.com/e9t/polidata-r)
-   [PolitwoopsR](https://github.com/kateto/PolitwoopsR) (not on CRAN):
    Extract deleted tweet and politician data from the Politwoops
    project (tracks politicians on Twitter and records their deleted
    tweets). [Source on GitHub](https://github.com/kateto/PolitwoopsR)
-   [pollstR](http://cran.r-project.org/web/packages/pollstR/index.html):
    An R client for the Huffpost Pollster API. Development version on
    GitHub [here](https://github.com/rOpenGov/pollstR).
-   [pvsR](http://cran.r-project.org/web/packages/pvsR/index.html): An R
    package to interact with the Project Vote Smart API for scientific
    research.
-   [recalls](http://cran.r-project.org/web/packages/recalls/index.html):
    Access U.S. Federal Government Recall Data. Development version on
    GitHub [here](https://github.com/rOpenGov/recalls).
-   [ropensecretsapi](http://cran.r-project.org/web/packages/ropensecretsapi/index.html):
    An R package for the OpenSecrets.org web services API.
-   [RPublica](http://cran.r-project.org/web/packages/RPublica/index.html):
    ProPublica API Client. Development version on GitHub
    [here](https://github.com/rOpenGov/RPublica).
-   [rsunlight](http://cran.r-project.org/web/packages/rsunlight/index.html):
    R client for the Sunlight Labs APIs. There are functions for
    Sunlight Labs Congress, Transparency, Open States, Real Time
    Congress, Capitol Words, and Influence Explorer APIs. Data outputs
    are R lists. There are also a few convenience functions for
    visualizing data and writing data to .csv. [Source on
    GitHub](https://github.com/ropengov/rsunlight).
-   [rtimes](https://github.com/ropengov/rtimes): (not on CRAN) R client
    for the New York Times APIs, including the Congress, Article Search,
    Campaign Finance, and Geographic APIs. The focus is on those that
    deal with political data, but throwing in Article Search and
    Geographic for good measure. [Source on
    GitHub](https://github.com/ropengov/rtimes).
-   [saos](https://github.com/bartekch/saos) (not on CRAN): An interface
    to the API for SAOS, a repository of judgments from Polish common
    courts (district, regional and appellate) and the Supreme Court of
    Poland.
-   [sorvi](http://cran.r-project.org/web/packages/sorvi/index.html):
    Various tools for retrieving and working with Finnish open
    government data. Development version on GitHub
    [here](https://github.com/louhos/sorvi/).
-   [wethepeople](http://cran.rstudio.com/src/contrib/Archive/wethepeople/):
    An R client for interacting with the White House's "We The People"
    petition API.

### <a href="#lit" name="lit">#</a> Literature, Metadata, Text, and Altmetrics

-   [alm](http://cran.r-project.org/web/packages/alm/index.html): R
    wrapper to the almetrics API platform developed by PLoS.
-   [aRxiv](http://cran.r-project.org/web/packages/aRxiv/index.html): An
    R client for the arXiv API, a repository of electronic preprints for
    computer science, mathematics, physics, quantitative biology,
    quantitative finance, and statistics. [Source on
    GitHub](https://github.com/ropensci/aRxiv).
-   The [<span
    class="Ohat">Aspell</span>](http://www.Omegahat.org/Aspell/) package
    provides an interface to the aspell library for checking the
    spelling of words and documents.
-   [boilerpipeR](http://cran.r-project.org/web/packages/boilerpipeR/index.html):
    Generic Extraction of main text content from HTML files; removal of
    ads, sidebars and headers using the boilerpipe Java library.
-   [JSTORr](https://github.com/benmarwick/JSTORr) (Not on CRAN): Simple
    text mining of journal articles from JSTOR's Data for Research
    service
-   [ngramr](http://cran.r-project.org/web/packages/ngramr/index.html):
    Retrieve and plot word frequencies through time from the Google
    Ngram Viewer.
-   [pubmed.mineR](http://cran.r-project.org/web/packages/pubmed.mineR/index.html):
    An R package for text mining of [PubMed
    Abstracts](http://www.ncbi.nlm.nih.gov/pubmed). Supports fetching
    text and XML from PubMed.
-   [rAltmetric](http://cran.r-project.org/web/packages/rAltmetric/index.html):
    Query and visualize metrics from Altmetric.com.
-   [rbhl](http://cran.r-project.org/web/packages/rbhl/index.html): R
    interface to the Biodiversity Heritage Library (BHL) API.
-   [RefManageR](http://cran.r-project.org/web/packages/RefManageR/index.html):
    Import and Manage BibTeX and BibLaTeX references with RefManager.
-   [rentrez](http://cran.r-project.org/web/packages/rentrez/index.html):
    Talk with NCBI entrez using R.
-   [RMendeley](http://cran.rstudio.com/src/contrib/Archive/RMendeley/):
    Implementation of the Mendeley API in R. Archived on CRAN. It's been
    archived on CRAN temporarily until pacakge is updated for the new
    Mendeley API.
-   [rmetadata](https://github.com/ropensci/rmetadata) (not on CRAN):
    Get scholarly metadata from around the web.
-   [rorcid](https://github.com/ropensci/rorcid) (not on CRAN): A
    programmatic interface the Orcid.org API.
-   [rplos](http://cran.r-project.org/web/packages/rplos/index.html): A
    programmatic interface to the Web Service methods provided by the
    Public Library of Science journals for search.
-   [rpubmed](https://github.com/rOpenHealth/rpubmed) (not on CRAN):
    Tools for extracting and processing Pubmed and Pubmed Central
    records.
-   [scholar](http://cran.r-project.org/web/packages/scholar/index.html)
    provides functions to extract citation data from Google Scholar.
    Convenience functions are also provided for comparing multiple
    scholars and predicting future h-index values.
-   The [<span
    class="Ohat">Sxslt</span>](http://www.Omegahat.org/Sxslt/) package
    is an R interface to Dan Veillard's libxslt translator. It allows R
    programmers to use XSLT directly from within R, and also allows XSL
    code to make use of R functions.
-   [tm.plugin.webmining](http://cran.r-project.org/web/packages/tm.plugin.webmining/index.html):
    Extensible text retrieval framework for news feeds in XML (RSS,
    ATOM) and JSON formats. Currently, the following feeds are
    implemented: Google Blog Search, Google Finance, Google News,
    NYTimes Article Search, Reuters News Feed, Yahoo Finance and Yahoo
    Inplay.

### <a href="#maps" name="maps">#</a> Maps

-   [FedData](http://cran.r-project.org/web/packages/FedData/index.html)
    can download geospatial data from a number of U.S. and international
    data sources.
-   [ggmap](http://cran.r-project.org/web/packages/ggmap/index.html):
    Allows for the easy visualization of spatial data and models on top
    of Google Maps, OpenStreetMaps, Stamen Maps, or CloudMade Maps using
    ggplot2.
-   [leafletR](http://cran.r-project.org/web/packages/leafletR/index.html):
    Allows you to display your spatial data on interactive web-maps
    using the open-source JavaScript library Leaflet.
-   [osmar](http://cran.r-project.org/web/packages/osmar/index.html):
    This package provides infrastructure to access OpenStreetMap data
    from different sources to work with the data in common R manner and
    to convert data into available infrastructure provided by existing R
    packages (e.g., into sp and igraph objects).
-   The [<span
    class="Ohat">R2GoogleMaps</span>](http://www.Omegahat.org/R2GoogleMaps/)
    package - which is different from
    [RgoogleMaps](http://cran.r-project.org/web/packages/RgoogleMaps/index.html) -
    provides a mechanism to generate JavaScript code from R that
    displays data using Google Maps.
-   [RgoogleMaps](http://cran.r-project.org/web/packages/RgoogleMaps/index.html):
    This package serves two purposes: It provides a comfortable R
    interface to query the Google server for static maps, and use the
    map as a background image to overlay plots within R.
-   The [<span class="Ohat">RKML</span>](http://www.Omegahat.org/RKML/)
    is an implementation that provides users with high-level facilities
    to generate KML, the Keyhole Markup Language for display in, e.g.,
    Google Earth.
-   [<span
    class="Ohat">RKMLDevice</span>](http://www.Omegahat.org/RKMLDevice/)
    allows to create R graphics in KML format in a manner that allows
    them to be displayed on Google Earth (or Google Maps).
-   [rydn](https://github.com/trestletech/rydn) (not on CRAN): R package
    to interface with the Yahoo Developers network geolocation APIs.

### <a href="#marketing" name="marketing">#</a> Marketing

-   [anametrix](http://cran.r-project.org/web/packages/anametrix/index.html):
    Bidirectional connector to Anametrix API.

### <a href="#media" name="media">#</a> Media: Images, Graphics, Videos, Music

-   [imguR](http://cran.r-project.org/web/packages/imguR/index.html): A
    package to share plots using the image hosting service
    [Imgur.com](http://www.imgur.com). The development version is on
    GitHub [here](https://github.com/leeper/imguR). knitr also has a
    function `imgur_upload()` to load images from literate programming
    documents.
-   [RLastFM](http://cran.rstudio.com/src/contrib/Archive/RLastFM/): A
    package to interface to the last.fm API. Archived on CRAN.
-   [rscribd](https://github.com/leeper/rscribd) (not on CRAN): API
    client for publishing documents to [Scribd](http://www.scribd.com).
-   The [<span
    class="Ohat">RUbigraph</span>](http://www.Omegahat.org/RUbigraph/)
    package provides an R interface to a Ubigraph server for drawing
    interactive, dynamic graphs. You can add and remove vertices/nodes
    and edges in a graph and change their attributes/characteristics
    such as shape, color, size.

### <a href="#ncbi" name="ncbi">#</a> NCBI

-   [hoardeR](http://cran.r-project.org/web/packages/hoardeR/index.html):
    Information retrieval from NCBI databases, with main focus on Blast.
-   [NCBI2R](http://cran.rstudio.com/src/contrib/Archive/NCBI2R/):
    Annotates lists of SNPs and/or genes, with current information from
    NCBI. The CRAN version is archived.
-   [rentrez](http://cran.r-project.org/web/packages/rentrez/index.html):
    Talk with NCBI Eutils API using R. This is probably the best package
    to interact with NCBI EUtils. You can get data across all the
    databases in NCBI EUtils. [Source on
    GitHub](https://github.com/ropensci/rentrez)
-   [reutils](http://cran.r-project.org/web/packages/reutils/index.html):
    Interface with NCBI databases such as PubMed, Genbank, or GEO via
    the Entrez Programming Utilities (EUtils). [Source on
    GitHub](https://github.com/gschofl/reutils).
-   [RISmed](http://cran.r-project.org/web/packages/RISmed/index.html):
    Download content from NCBI databases. Intended for analyses of NCBI
    database content, not reference management. See rpubmed for more
    literature oriented stuff from NCBI.

### <a href="#news" name="news">#</a> News

-   [GuardianR](http://cran.r-project.org/web/packages/GuardianR/index.html):
    Provides an interface to the Open Platform's Content API of the
    Guardian Media Group. It retrieves content from news outlets The
    Observer, The Guardian, and guardian.co.uk from 1999 to current day.
-   [prismaticR](https://github.com/Btibert3/prismaticR) (not on CRAN):
    R interface to [Prismatic's Topic Graph
    API](https://github.com/Prismatic/interest-graph). [Source on
    GitHub](https://github.com/Btibert3/prismaticR)
-   [rtimes](https://github.com/ropengov/rtimes) (not on CRAN): R client
    for the New York Times APIs, including the Congress, Article Search,
    Campaign Finance, and Geographic APIs. [Source on
    GitHub](https://github.com/ropengov/rtimes)

### <a href="#other" name="other">#</a> Other

-   [datamart](http://cran.r-project.org/web/packages/datamart/index.html):
    Provides an S4 infrastructure for unified handling of internal
    datasets and web based data sources. Examples include dbpedia,
    eurostat and sourceforge.
-   [genderizeR](http://cran.r-project.org/web/packages/genderizeR/index.html):
    Uses the genderize.io API to predict gender from first names
    extracted from a text vector. [Source on
    GitHub](https://github.com/kalimu/genderizeR)
-   [qualtrics](https://github.com/jbryer/qualtrics) (not on CRAN):
    Provides functions to interact with the
    [Qualtrics](http://www.qualtrics.com/) online survey tool.
-   [mstranslator](https://github.com/chainsawriot/mstranslator): An R
    wrapper for the [Microsoft Translator
    API](https://msdn.microsoft.com/en-us/library/hh454949.aspx).
    [Source on GitHub](https://github.com/chainsawriot/mstranslator)
-   [redcapAPI](http://cran.r-project.org/web/packages/redcapAPI/index.html):
    Access data stored in REDCap databases using an API. REDCap
    (Research Electronic Data CAPture) is a web application for building
    and managing online surveys and databases developed at Vanderbilt
    University. [Source on
    GitHub](https://github.com/nutterb/redcapAPI).
-   [RForcecom](http://cran.r-project.org/web/packages/RForcecom/index.html):
    RForcecom provides a connection to Force.com and Salesforce.com from
    R.
-   [Rmonkey](https://github.com/leeper/Rmonkey/) (not on CRAN):
    Provides programmatic access to [Survey
    Monkey](https://www.surveymonkey.com/) for creating simple surveys
    and retrieving survey results.
-   [rwars](https://github.com/Ironholds/rwars) (not on CRAN): A
    connector to the [SWAPI service](http://swapi.co/), a database of
    Star Wars metadata.
-   [slackr](http://cran.r-project.org/web/packages/slackr/index.html):
    R client for Slack.com messaging platform. [Source on
    GitHub](https://github.com/hrbrmstr/slackr)
-   [sos4R](http://cran.r-project.org/web/packages/sos4R/index.html): R
    client for the OGC Sensor Observation Service.
-   [stackr](https://github.com/dgrtwo/stackr) (not on CRAN): An
    unofficial wrapper for the read-only features of the [Stack Exchange
    API](https://api.stackexchange.com/).
-   [zendeskR](http://cran.r-project.org/web/packages/zendeskR/index.html):
    This package provides an R wrapper for the Zendesk API.

### <a href="#publichealth" name="publichealth">#</a> Public Health

-   [cdcfluview](https://github.com/hrbrmstr/cdcfluview): (not on CRAN)
    R client for CDC FluView data (WHO and ILINet).
-   [openfda](https://github.com/ropenhealth/openfda): R client for
    [openFDA](https://open.fda.gov/). [Source on
    GitHub](https://github.com/ropenhealth/openfda)
-   [rClinicalCodes](http://cran.r-project.org/web/packages/rClinicalCodes/index.html):
    R tools for integrating with the www.clinicalcodes.org web
    repository, by [David Springate](https://github.com/DASpringate)
-   [rclinicaltrials](http://cran.r-project.org/web/packages/rclinicaltrials/index.html):
    ClinicalTrials.gov is a registry and results database of publicly
    and privately supported clinical studies of human participants
    conducted around the world. This is an R client for that data.
    [Source on GitHub](https://github.com/sachsmc/rclinicaltrials)
-   [UScancer](http://cran.r-project.org/web/packages/UScancer/index.html)
    constructs U.S. cancer data at the county level from
    [SEER](http://seer.cancer.gov/), [IARC](http://www.iarc.fr), and the
    U.S. Census Bureau.

### <a href="#social" name="social">#</a> Social media

-   [plusser](http://cran.r-project.org/web/packages/plusser/index.html)
    has been designed to to facilitate the retrieval of Google+
    profiles, pages and posts. It also provides search facilities.
    Currently a Google+ API key is required for accessing Google+ data.
-   [Rfacebook](http://cran.r-project.org/web/packages/Rfacebook/index.html):
    Provides an interface to the Facebook API.
-   The [<span
    class="Ohat">Rflickr</span>](http://www.Omegahat.org/Rflickr/)
    package provides an R interface to the Flickr photo management and
    sharing application Web service. (not on CRAN)
-   [Rlinkedin](https://github.com/mpiccirilli/Rlinkedin) (not on CRAN):
    R client for the LinkedIn API. Auth is via OAuth.
-   [RTwitterAPI](https://github.com/joyofdata/RTwitterAPI) (not on
    CRAN): Yet another Twitter R client.
-   [SocialMediaMineR](http://cran.r-project.org/web/packages/SocialMediaMineR/index.html)
    is an analytic tool that returns information about the popularity of
    a URL on social media sites.
-   [streamR](http://cran.r-project.org/web/packages/streamR/index.html):
    This package provides a series of functions that allow R users to
    access Twitter's filter, sample, and user streams, and to parse the
    output into data frames. OAuth authentication is supported.
-   [tumblR](http://cran.r-project.org/web/packages/tumblR/index.html):
    R client for the Tumblr API (
    <https://www.tumblr.com/docs/en/api/v2>). Tumblr is a microblogging
    platform and social networking website <https://www.tumblr.com>.
    [Source on GitHub](https://github.com/klapaukh/tumblR)
-   [twitteR](http://cran.r-project.org/web/packages/twitteR/index.html):
    Provides an interface to the Twitter web API.

### <a href="#socialsci" name="socialsci">#</a> Social science

-   [brewdata](http://cran.r-project.org/web/packages/brewdata/index.html)
    Retrieves and parses graduate admissions survey data from the [Grad
    Cafe website](http://thegradcafe.com).

### <a href="#sports" name="sports">#</a> Sports

-   [bbscrapeR](https://github.com/cpsievert/bbscrapeR) (not on CRAN):
    Tools for Collecting Data from [nba.com](http://www.nba.com/) and
    [wnba.com](http://www.wnba.com/).
-   [fbRanks](http://cran.r-project.org/web/packages/fbRanks/index.html):
    Association Football (Soccer) Ranking via Poisson Regression - uses
    time dependent Poisson regression and a record of goals scored in
    matches to rank teams via estimated attack and defense strengths.
-   [nhlscrapr](http://cran.r-project.org/web/packages/nhlscrapr/index.html):
    Compiling the NHL Real Time Scoring System Database for easy use in
    R.
-   [pitchRx](http://cran.r-project.org/web/packages/pitchRx/index.html):
    Tools for Collecting and Visualizing Major League Baseball PITCHfx
    Data
-   [fitbitScraper](http://cran.r-project.org/web/packages/fitbitScraper/index.html):
    Get Fitbit data. Authentication with email/password. [Source on
    GitHub](https://github.com/corynissen/fitbitScraper)
-   [retrosheet](http://cran.r-project.org/web/packages/retrosheet/index.html)
    ( [Github](https://github.com/rmscriven/retrosheet)) retrieves
    single-season baseball statistics from <http://www.retrosheet.org>.

### <a href="#webanalytics" name="webanalytics">#</a> Web Analytics

-   [GTrendsR](https://github.com/dvanclev/GTrendsR) (Not on CRAN): R
    functions to perform and display Google Trends queries. Another
    Github package ( [rGtrends](https://github.com/emhart/rGtrends)) is
    now deprecated, but supported a previous version of Google Trends
    and may still be useful for developers.
-   [rgauges](http://cran.r-project.org/web/packages/rgauges/index.html):
    This package provides functions to interact with the Gaug.es API.
    Gaug.es is a web analytics service, like Google analytics. You have
    to have a Gaug.es account to use this package.
-   [RGA](http://cran.r-project.org/web/packages/RGA/index.html):
    Provides functions for accessing and retrieving data from the
    [Google Analytics APIs](https://developers.google.com/analytics/).
    Supports OAuth 2.0 authorization. Also, the
    [RGA](http://cran.r-project.org/web/packages/RGA/index.html) package
    provides a shiny app to explore data. There is another R package for
    the same service
    ([RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html));
    see above entry.
-   [RGoogleAnalytics](http://cran.r-project.org/web/packages/RGoogleAnalytics/index.html):
    Provides functions for accessing and retrieving data from the Google
    Analytics API. [Source on
    GitHub](https://github.com/Tatvic/RGoogleAnalytics/issues). There is
    another R package for the same service
    ([RGA](http://cran.r-project.org/web/packages/RGA/index.html)); see
    next entry.
-   [<span
    class="Ohat">RGoogleTrends</span>](http://www.Omegahat.org/RGoogleTrends/)
    provides programmatic access to Google Trends data. This is
    information about the popularity of a particular query.
-   [RSiteCatalyst](http://cran.r-project.org/web/packages/RSiteCatalyst/index.html):
    Functions for accessing the Adobe Analytics (Omniture SiteCatalyst)
    Reporting API.

### <a href="#wikipedia" name="wikipedia">#</a> Wikipedia

-   [wikipediatrend](http://cran.r-project.org/web/packages/wikipediatrend/index.html):
    Provides access to Wikipedia page access statistics. [Source on
    GitHub](https://github.com/petermeissner/wikipediatrend)
-   [WikipediR](http://cran.r-project.org/web/packages/WikipediR/index.html):
    WikipediR is a wrapper for the MediaWiki API, aimed particularly at
    the Wikimedia 'production' wikis, such as Wikipedia. [Source on
    GitHub](https://github.com/Ironholds/WikipediR)
-   [rwikidata](https://github.com/chgrl/rwikidata): Request data from
    (and some day probably edit data in)
    [Wikidata.org](https://www.wikidata.org/wiki/Wikidata:Main_Page),
    the free knowledgebase.
-   [WikidataR](https://github.com/Ironholds/WikidataR) (Not on CRAN):
    An R API wrapper for the Wikidata store of semantic data.



### CRAN packages:

-   [acs](http://cran.r-project.org/web/packages/acs/index.html)
-   [agridat](http://cran.r-project.org/web/packages/agridat/index.html)
-   [alm](http://cran.r-project.org/web/packages/alm/index.html)
-   [alr3](http://cran.r-project.org/web/packages/alr3/index.html)
-   [alr4](http://cran.r-project.org/web/packages/alr4/index.html)
-   [anametrix](http://cran.r-project.org/web/packages/anametrix/index.html)
-   [aplore3](http://cran.r-project.org/web/packages/aplore3/index.html)
-   [aprean3](http://cran.r-project.org/web/packages/aprean3/index.html)
-   [archdata](http://cran.r-project.org/web/packages/archdata/index.html)
-   [aRxiv](http://cran.r-project.org/web/packages/aRxiv/index.html)
-   [astrodatR](http://cran.r-project.org/web/packages/astrodatR/index.html)
-   [babynames](http://cran.r-project.org/web/packages/babynames/index.html)
-   [BaM](http://cran.r-project.org/web/packages/BaM/index.html)
-   [BayesDA](http://cran.r-project.org/web/packages/BayesDA/index.html)
-   [BerlinData](http://cran.r-project.org/web/packages/BerlinData/index.html)
-   [bigrquery](http://cran.r-project.org/web/packages/bigrquery/index.html)
-   [blmeco](http://cran.r-project.org/web/packages/blmeco/index.html)
-   [blsAPI](http://cran.r-project.org/web/packages/blsAPI/index.html)
-   [boilerpipeR](http://cran.r-project.org/web/packages/boilerpipeR/index.html)
-   [brewdata](http://cran.r-project.org/web/packages/brewdata/index.html)
-   [cgdsr](http://cran.r-project.org/web/packages/cgdsr/index.html)
-   [CHCN](http://cran.r-project.org/web/packages/CHCN/index.html)
-   [chromer](http://cran.r-project.org/web/packages/chromer/index.html)
-   [clifro](http://cran.r-project.org/web/packages/clifro/index.html)
-   [cluster.datasets](http://cran.r-project.org/web/packages/cluster.datasets/index.html)
-   [crn](http://cran.r-project.org/web/packages/crn/index.html)
-   [datamart](http://cran.r-project.org/web/packages/datamart/index.html)
-   [dataRetrieval](http://cran.r-project.org/web/packages/dataRetrieval/index.html)
-   [datasets](http://cran.r-project.org/web/packages/datasets/index.html)
-   [decctools](http://cran.r-project.org/web/packages/decctools/index.html)
-   [Devore7](http://cran.r-project.org/web/packages/Devore7/index.html)
-   [dismo](http://cran.r-project.org/web/packages/dismo/index.html)
-   [dvn](http://cran.r-project.org/web/packages/dvn/index.html)
-   [ecoengine](http://cran.r-project.org/web/packages/ecoengine/index.html)
-   [ecoretriever](http://cran.r-project.org/web/packages/ecoretriever/index.html)
-   [eegkitdata](http://cran.r-project.org/web/packages/eegkitdata/index.html)
-   [EIAdata](http://cran.r-project.org/web/packages/EIAdata/index.html)
-   [ElemStatLearn](http://cran.r-project.org/web/packages/ElemStatLearn/index.html)
-   [EngrExpt](http://cran.r-project.org/web/packages/EngrExpt/index.html)
-   [enigma](http://cran.r-project.org/web/packages/enigma/index.html)
-   [ergmharris](http://cran.r-project.org/web/packages/ergmharris/index.html)
-   [eurostat](http://cran.r-project.org/web/packages/eurostat/index.html)
-   [expsmooth](http://cran.r-project.org/web/packages/expsmooth/index.html)
-   [factualR](http://cran.r-project.org/web/packages/factualR/index.html)
-   [Fahrmeir](http://cran.r-project.org/web/packages/Fahrmeir/index.html)
-   [FAOSTAT](http://cran.r-project.org/web/packages/FAOSTAT/index.html)
-   [faraway](http://cran.r-project.org/web/packages/faraway/index.html)
-   [fastR](http://cran.r-project.org/web/packages/fastR/index.html)
-   [FAwR](http://cran.r-project.org/web/packages/FAwR/index.html)
-   [fbRanks](http://cran.r-project.org/web/packages/fbRanks/index.html)
-   [fds](http://cran.r-project.org/web/packages/fds/index.html)
-   [FedData](http://cran.r-project.org/web/packages/FedData/index.html)
-   [federalregister](http://cran.r-project.org/web/packages/federalregister/index.html)
-   [fImport](http://cran.r-project.org/web/packages/fImport/index.html)
-   [fitbitScraper](http://cran.r-project.org/web/packages/fitbitScraper/index.html)
-   [flora](http://cran.r-project.org/web/packages/flora/index.html)
-   [Flury](http://cran.r-project.org/web/packages/Flury/index.html)
-   [fma](http://cran.r-project.org/web/packages/fma/index.html)
-   [gamair](http://cran.r-project.org/web/packages/gamair/index.html)
-   [gamlss.data](http://cran.r-project.org/web/packages/gamlss.data/index.html)
-   [GANPAdata](http://cran.r-project.org/web/packages/GANPAdata/index.html)
-   [gapminder](http://cran.r-project.org/web/packages/gapminder/index.html)
-   [GAR](http://cran.r-project.org/web/packages/GAR/index.html)
-   [GCD](http://cran.r-project.org/web/packages/GCD/index.html)
-   [genderizeR](http://cran.r-project.org/web/packages/genderizeR/index.html)
-   [geocodeHERE](http://cran.r-project.org/web/packages/geocodeHERE/index.html)
-   [ggmap](http://cran.r-project.org/web/packages/ggmap/index.html)
-   [GhcnDaily](http://cran.r-project.org/web/packages/GhcnDaily/index.html)
-   [googleVis](http://cran.r-project.org/web/packages/googleVis/index.html)
-   [gooJSON](http://cran.r-project.org/web/packages/gooJSON/index.html)
-   [govStatJPN](http://cran.r-project.org/web/packages/govStatJPN/index.html)
-   [gpk](http://cran.r-project.org/web/packages/gpk/index.html)
-   [gsheet](http://cran.r-project.org/web/packages/gsheet/index.html)
-   [GuardianR](http://cran.r-project.org/web/packages/GuardianR/index.html)
-   [Guerry](http://cran.r-project.org/web/packages/Guerry/index.html)
-   [hddtools](http://cran.r-project.org/web/packages/hddtools/index.html)
-   [HistData](http://cran.r-project.org/web/packages/HistData/index.html)
-   [historydata](http://cran.r-project.org/web/packages/historydata/index.html)
-   [hoardeR](http://cran.r-project.org/web/packages/hoardeR/index.html)
-   [HSAUR3](http://cran.r-project.org/web/packages/HSAUR3/index.html)
-   [IBrokers](http://cran.r-project.org/web/packages/IBrokers/index.html)
-   [igraphdata](http://cran.r-project.org/web/packages/igraphdata/index.html)
-   [imguR](http://cran.r-project.org/web/packages/imguR/index.html)
-   [insuranceData](http://cran.r-project.org/web/packages/insuranceData/index.html)
-   [isdals](http://cran.r-project.org/web/packages/isdals/index.html)
-   [jSonarR](http://cran.r-project.org/web/packages/jSonarR/index.html)
-   [KMsurv](http://cran.r-project.org/web/packages/KMsurv/index.html)
-   [Lahman](http://cran.r-project.org/web/packages/Lahman/index.html)
-   [languageR](http://cran.r-project.org/web/packages/languageR/index.html)
-   [leafletR](http://cran.r-project.org/web/packages/leafletR/index.html)
-   [learningr](http://cran.r-project.org/web/packages/learningr/index.html)
-   [LeLogicielR](http://cran.r-project.org/web/packages/LeLogicielR/index.html)
-   [Lock5Data](http://cran.r-project.org/web/packages/Lock5Data/index.html)
-   [marmap](http://cran.r-project.org/web/packages/marmap/index.html)
-   [MCAPS](http://cran.r-project.org/web/packages/MCAPS/index.html)
-   [Mcomp](http://cran.r-project.org/web/packages/Mcomp/index.html)
-   [MEMSS](http://cran.r-project.org/web/packages/MEMSS/index.html)
-   [meteoForecast](http://cran.r-project.org/web/packages/meteoForecast/index.html)
-   [MindOnStats](http://cran.r-project.org/web/packages/MindOnStats/index.html)
-   [mistat](http://cran.r-project.org/web/packages/mistat/index.html)
-   [mosaicData](http://cran.r-project.org/web/packages/mosaicData/index.html)
-   [MPDiR](http://cran.r-project.org/web/packages/MPDiR/index.html)
-   [MPV](http://cran.r-project.org/web/packages/MPV/index.html)
-   [MSG](http://cran.r-project.org/web/packages/MSG/index.html)
-   [msme](http://cran.r-project.org/web/packages/msme/index.html)
-   [msos](http://cran.r-project.org/web/packages/msos/index.html)
-   [nasaweather](http://cran.r-project.org/web/packages/nasaweather/index.html)
-   [ngramr](http://cran.r-project.org/web/packages/ngramr/index.html)
-   [NHANES](http://cran.r-project.org/web/packages/NHANES/index.html)
-   [nhlscrapr](http://cran.r-project.org/web/packages/nhlscrapr/index.html)
-   [noncensus](http://cran.r-project.org/web/packages/noncensus/index.html)
-   [NSM3](http://cran.r-project.org/web/packages/NSM3/index.html)
-   [nutshell](http://cran.r-project.org/web/packages/nutshell/index.html)
-   [nycflights13](http://cran.r-project.org/web/packages/nycflights13/index.html)
-   [OAIHarvester](http://cran.r-project.org/web/packages/OAIHarvester/index.html)
-   [OIdata](http://cran.r-project.org/web/packages/OIdata/index.html)
-   [okmesonet](http://cran.r-project.org/web/packages/okmesonet/index.html)
-   [ONETr](http://cran.r-project.org/web/packages/ONETr/index.html)
-   [openintro](http://cran.r-project.org/web/packages/openintro/index.html)
-   [osmar](http://cran.r-project.org/web/packages/osmar/index.html)
-   [paleobioDB](http://cran.r-project.org/web/packages/paleobioDB/index.html)
-   [PBImisc](http://cran.r-project.org/web/packages/PBImisc/index.html)
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
-   [pxweb](http://cran.r-project.org/web/packages/pxweb/index.html)
-   [QSARdata](http://cran.r-project.org/web/packages/QSARdata/index.html)
-   [qtlbook](http://cran.r-project.org/web/packages/qtlbook/index.html)
-   [Quandl](http://cran.r-project.org/web/packages/Quandl/index.html)
-   [quantmod](http://cran.r-project.org/web/packages/quantmod/index.html)
-   [RAdwords](http://cran.r-project.org/web/packages/RAdwords/index.html)
-   [raincpc](http://cran.r-project.org/web/packages/raincpc/index.html)
-   [rainfreq](http://cran.r-project.org/web/packages/rainfreq/index.html)
-   [rAltmetric](http://cran.r-project.org/web/packages/rAltmetric/index.html)
-   [randomNames](http://cran.r-project.org/web/packages/randomNames/index.html)
-   [rbhl](http://cran.r-project.org/web/packages/rbhl/index.html)
-   [rbison](http://cran.r-project.org/web/packages/rbison/index.html)
-   [Rbitcoin](http://cran.r-project.org/web/packages/Rbitcoin/index.html)
-   [rbitcoinchartsapi](http://cran.r-project.org/web/packages/rbitcoinchartsapi/index.html)
-   [rClinicalCodes](http://cran.r-project.org/web/packages/rClinicalCodes/index.html)
-   [rclinicaltrials](http://cran.r-project.org/web/packages/rclinicaltrials/index.html)
-   [Rcolombos](http://cran.r-project.org/web/packages/Rcolombos/index.html)
-   [rcorpora](http://cran.r-project.org/web/packages/rcorpora/index.html)
-   [RCryptsy](http://cran.r-project.org/web/packages/RCryptsy/index.html)
-   [rdatamarket](http://cran.r-project.org/web/packages/rdatamarket/index.html)
-   [rdrop2](http://cran.r-project.org/web/packages/rdrop2/index.html)
-   [rebird](http://cran.r-project.org/web/packages/rebird/index.html)
-   [recalls](http://cran.r-project.org/web/packages/recalls/index.html)
-   [redcapAPI](http://cran.r-project.org/web/packages/redcapAPI/index.html)
-   [RefManageR](http://cran.r-project.org/web/packages/RefManageR/index.html)
-   [rentrez](http://cran.r-project.org/web/packages/rentrez/index.html)
-   [Reol](http://cran.r-project.org/web/packages/Reol/index.html)
-   [retrosheet](http://cran.r-project.org/web/packages/retrosheet/index.html)
-   [reutils](http://cran.r-project.org/web/packages/reutils/index.html)
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
-   [rinat](http://cran.r-project.org/web/packages/rinat/index.html)
-   [RISmed](http://cran.r-project.org/web/packages/RISmed/index.html)
-   [RJSDMX](http://cran.r-project.org/web/packages/RJSDMX/index.html)
-   [rnbn](http://cran.r-project.org/web/packages/rnbn/index.html)
-   [RNCEP](http://cran.r-project.org/web/packages/RNCEP/index.html)
-   [rnoaa](http://cran.r-project.org/web/packages/rnoaa/index.html)
-   [rNOMADS](http://cran.r-project.org/web/packages/rNOMADS/index.html)
-   [rnrfa](http://cran.r-project.org/web/packages/rnrfa/index.html)
-   [ropensecretsapi](http://cran.r-project.org/web/packages/ropensecretsapi/index.html)
-   [rPlant](http://cran.r-project.org/web/packages/rPlant/index.html)
-   [rplos](http://cran.r-project.org/web/packages/rplos/index.html)
-   [rpubchem](http://cran.r-project.org/web/packages/rpubchem/index.html)
-   [RPublica](http://cran.r-project.org/web/packages/RPublica/index.html)
-   [RSADBE](http://cran.r-project.org/web/packages/RSADBE/index.html)
-   [RSiteCatalyst](http://cran.r-project.org/web/packages/RSiteCatalyst/index.html)
-   [rsnps](http://cran.r-project.org/web/packages/rsnps/index.html)
-   [RStars](http://cran.r-project.org/web/packages/RStars/index.html)
-   [rsunlight](http://cran.r-project.org/web/packages/rsunlight/index.html)
-   [rUnemploymentData](http://cran.r-project.org/web/packages/rUnemploymentData/index.html)
-   [rvertnet](http://cran.r-project.org/web/packages/rvertnet/index.html)
-   [rWBclimate](http://cran.r-project.org/web/packages/rWBclimate/index.html)
-   [rYoutheria](http://cran.r-project.org/web/packages/rYoutheria/index.html)
-   [SASmixed](http://cran.r-project.org/web/packages/SASmixed/index.html)
-   [scholar](http://cran.r-project.org/web/packages/scholar/index.html)
-   [SenSrivastava](http://cran.r-project.org/web/packages/SenSrivastava/index.html)
-   [seqinr](http://cran.r-project.org/web/packages/seqinr/index.html)
-   [shopifyr](http://cran.r-project.org/web/packages/shopifyr/index.html)
-   [slackr](http://cran.r-project.org/web/packages/slackr/index.html)
-   [Sleuth3](http://cran.r-project.org/web/packages/Sleuth3/index.html)
-   [SMCRM](http://cran.r-project.org/web/packages/SMCRM/index.html)
-   [smdata](http://cran.r-project.org/web/packages/smdata/index.html)
-   [smss](http://cran.r-project.org/web/packages/smss/index.html)
-   [SocialMediaMineR](http://cran.r-project.org/web/packages/SocialMediaMineR/index.html)
-   [soilDB](http://cran.r-project.org/web/packages/soilDB/index.html)
-   [sorvi](http://cran.r-project.org/web/packages/sorvi/index.html)
-   [sos4R](http://cran.r-project.org/web/packages/sos4R/index.html)
-   [spocc](http://cran.r-project.org/web/packages/spocc/index.html)
-   [Stat2Data](http://cran.r-project.org/web/packages/Stat2Data/index.html)
-   [streamR](http://cran.r-project.org/web/packages/streamR/index.html)
-   [SwissAir](http://cran.r-project.org/web/packages/SwissAir/index.html)
-   [synbreedData](http://cran.r-project.org/web/packages/synbreedData/index.html)
-   [taxize](http://cran.r-project.org/web/packages/taxize/index.html)
-   [Taxonstand](http://cran.r-project.org/web/packages/Taxonstand/index.html)
-   [TFX](http://cran.r-project.org/web/packages/TFX/index.html)
-   [TH.data](http://cran.r-project.org/web/packages/TH.data/index.html)
-   [Thinknum](http://cran.r-project.org/web/packages/Thinknum/index.html)
-   [tm.plugin.webmining](http://cran.r-project.org/web/packages/tm.plugin.webmining/index.html)
-   [TR8](http://cran.r-project.org/web/packages/TR8/index.html)
-   [translate](http://cran.r-project.org/web/packages/translate/index.html)
-   [translateR](http://cran.r-project.org/web/packages/translateR/index.html)
-   [treebase](http://cran.r-project.org/web/packages/treebase/index.html)
-   [TRSbook](http://cran.r-project.org/web/packages/TRSbook/index.html)
-   [tseries](http://cran.r-project.org/web/packages/tseries/index.html)
-   [tumblR](http://cran.r-project.org/web/packages/tumblR/index.html)
-   [twitteR](http://cran.r-project.org/web/packages/twitteR/index.html)
-   [UScancer](http://cran.r-project.org/web/packages/UScancer/index.html)
-   [UScensus2010](http://cran.r-project.org/web/packages/UScensus2010/index.html)
-   [UsingR](http://cran.r-project.org/web/packages/UsingR/index.html)
-   [ustyc](http://cran.r-project.org/web/packages/ustyc/index.html)
-   [VGAMdata](http://cran.r-project.org/web/packages/VGAMdata/index.html)
-   [waterData](http://cran.r-project.org/web/packages/waterData/index.html)
-   [WaterML](http://cran.r-project.org/web/packages/WaterML/index.html)
-   [WDI](http://cran.r-project.org/web/packages/WDI/index.html)
-   [weatherData](http://cran.r-project.org/web/packages/weatherData/index.html)
-   [webchem](http://cran.r-project.org/web/packages/webchem/index.html)
-   [wikibooks](http://cran.r-project.org/web/packages/wikibooks/index.html)
-   [wikipediatrend](http://cran.r-project.org/web/packages/wikipediatrend/index.html)
-   [WikipediR](http://cran.r-project.org/web/packages/WikipediR/index.html)
-   [WWGbook](http://cran.r-project.org/web/packages/WWGbook/index.html)
-   [yhatr](http://cran.r-project.org/web/packages/yhatr/index.html)
-   [zendeskR](http://cran.r-project.org/web/packages/zendeskR/index.html)
-   [zipcode](http://cran.r-project.org/web/packages/zipcode/index.html)

### Related links:

-   [WebTechnologies
    TaskView](http://cran.r-project.org/web/views/WebTechnologies.html)

