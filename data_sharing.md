
## Data Sharing and Archiving ##

Data sharing involves the dissemination of data in draft form or for a temporary period of time. rdrop2 ([GitHub](https://github.com/karthik/rdrop2)) is a Dropbox.com interface from R, providing access to a full suite of file operations, including dir/copy/move/delete operations, account information (including quotas) and the ability to upload and download files from any Dropbox account (K). [boxr](https://github.com/brendan-R/boxr) is a lightweight, high-level R interface for the [box.com API](https://developers.box.com/docs/) (K). <ohat>RAmazonS3</ohat> provides an interface to the Amazon Simple Storage Service (S3) (K).

Data archiving involves the production and dissemination of open data that is persistently accessible, typically in public repositories. The tools below may be useful for both archiving data and retrieving extant data from public archives.

-   [ckanr](https://github.com/ropensci/ckanr): A generic R client to interact with the CKAN data portal software API (<http://ckan.org/>). Allows user to swap out the base URL to use any CKAN instance. [Source on GitHub](https://github.com/ropensci/ckanr).
-   [dataone](https://cran.rstudio.com/src/contrib/Archive/dataone/): Read/write access to data and metadata from the [DataONE network](https://www.dataone.org/) of Member Node data repositories.
-   <pkg>dvn</pkg> ([GitHub](https://github.com/ropensci/dvn)) provides access to Dataverse Network repositories. <pkg>UNF</pkg> implements the Universal Numeric Fingerprint, a format-independent data hashing algorithm used by Dataverse, to verify and cite a dataset.
-   <pkg>factualR</pkg>: Thin wrapper for the [Factual.com](https://factual.com/) server API.
-   The <ohat>Rflickr</ohat> (not on CRAN) package provides an R interface to the Flickr photo management and sharing application Web service. (not on CRAN) (K)
-   [googlesheets](https://github.com/jennybc/googlesheets) (not on CRAN): Access private or public Google Sheets by title, key, or URL. Extract data or edit data. Create, delete, rename, copy, upload, or download spreadsheets and worksheets. [Source on GitHub](https://github.com/jennybc/googlesheets)
-   <pkg>gsheet</pkg>: Download Google Sheets using just the sharing link. Spreadsheets can be downloaded as a data frame, or as plain text to parse manually. [Source on GitHub](https://github.com/maxconway/gsheet)
-   <pkg>imguR</pkg> ([GitHub](https://github.com/leeper/imguR)): A package to share plots using the image hosting service [Imgur.com](https://www.imgur.com/). knitr also has a function `imgur_upload()` to load images from literate programming documents.
-   [infochimps](https://cran.rstudio.com/src/contrib/Archive/infochimps/) (archived on CRAN; [GitHub](https://github.com/drewconway/infochimps)) is an R wrapper for the infochimps.com API services, from [Drew Conway](http://drewconway.com/).
-   [internetarchive](https://github.com/ropensci/internetarchive) (not on CRAN): API client for internet archive metadata. [Source on GitHub](https://github.com/ropensci/internetarchive).
-   <pkg>jSonarR</pkg>: Enables users to access MongoDB by running queries and returning their results in R data frames. jSonarR uses data processing and conversion capabilities in the jSonar Analytics Platform and the [JSON Studio Gateway](http://www.jsonstudio.com), to convert JSON to a tabular format.
-   <pkg>OAIHarvester</pkg>: Harvest metadata using the Open Archives Initiative Protocol for Metadata Harvesting (OAI-PMH). <pkg>oai</pkg> is a more recent package for OAI.
-   <pkg>Quandl</pkg>: A package that interacts directly with the [Quandl](https://www.quandl.com/) API to offer data in a number of formats usable in R, as well as the ability to upload and search.
-   <pkg>rdatamarket</pkg>: Fetches data from DataMarket.com, either as timeseries in zoo form (dmseries) or as long-form data frames (dmlist).
-   [rerddap](https://github.com/ropensci/rerddap) (not on CRAN): A generic R client to interact with any ERDDAP instance, which is a special case of OPeNDAP (<https://en.wikipedia.org/wiki/OPeNDAP>), or *Open-source Project for a Network Data Access Protocol*. Allows user to swap out the base URL to use any ERDDAP instance. [Source on GitHub](https://github.com/ropensci/rerddap).
-   <pkg>rfigshare</pkg>: Programmatic interface for [Figshare.com](https://figshare.com/). [Source on GitHub](https://github.com/ropensci/rfigshare).
-   [rscribd](https://github.com/leeper/rscribd) (not on CRAN): API client for publishing documents to [Scribd](https://www.scribd.com/).
-   [RSocrata](https://cran.rstudio.com/src/contrib/Archive/RSocrata/): (temporarily archived on CRAN for email bounce) Provided with a Socrata dataset resource URL, or a Socrata SoDA web API query, returns an R data frame. Converts dates to POSIX format. Supports CSV and JSON. Manages throttling by Socrata.
