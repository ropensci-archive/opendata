if(!require("stringr")) install.packages("stringr", repos="http://cran.rstudio.com")
template <- readLines("OpenData.ctv")
pattern <- "pkg>[[:alnum:]]+[[:alnum:].]*[[:alnum:]]+"
out <- paste0(template, collapse = " ")
pkgs <- stringr::str_extract_all(out, pattern)[[1]]
pkgs <- unique(gsub("^pkg>", "", pkgs))
#priority <- c('httr','RCurl','jsonlite','shiny','XML')
#pkgs <- pkgs[ !pkgs %in% priority] # remove priority packages
pkgs <- lapply(as.list(sort(pkgs)), function(x) list(package=x))
output <- 
c(paste0('<CRANTaskView>
  <name>OpenData</name>
  <topic>Open Data</topic>
  <maintainer email="jashander@ucdavis.edu">Jaime Ashander, Scott Chamberlain, Thomas Leeper</maintainer>
  <version>',Sys.Date(),'</version>'), 
  '  <info>',
  paste0("    ",template), 
  '  </info>',
  '  <packagelist>',
  # list priority packages explicitly
  #paste0('    <pkg priority="core">', priority, '</pkg>', collapse = "\n"),
  # add all other packages from `pkgs`
  paste0('    <pkg>', unlist(unname(pkgs)), '</pkg>', collapse = "\n"),
  '  </packagelist>',
  '  <links>',
  '    <a href="http://cran.r-project.org/web/views/WebTechnologies.html">WebTechnologies TaskView</a>',
  '  </links>',
  '</CRANTaskView>')

writeLines(output, "OpenData.ctv")
