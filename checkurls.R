if (!require("httr")) {
    install.packages("httr", repos = "http://cran.rstudio.com/")
}

extract_urls <- function(file, ...) {
    f <- rawToChar(readBin(file, what = "raw", n = 1e7L))
    x <- "(http|ftp|https)://([\\w_-]+(?:(?:\\.[\\w_-]+)+))([\\w.,@?^=%&:/~+#-]*[\\w@?^=%&/~+#-])?"
    # Credit: http://stackoverflow.com/questions/6038061/regular-expression-to-find-urls-within-a-string
    m <- regmatches(f, gregexpr(x, f, perl=TRUE))[[1]]
    m
}

check_one <- function(url, ...) {
    r <- try(httr::HEAD(url, ...), silent = TRUE)
    if (inherits(r, "try-error")) {
        list(url1 = url, 
             url2 = NA_character_, 
             redirect = NA, 
             error = NA, 
             status = NA_real_
             )
    } else {
        list(url1 = url, 
             url2 = r$url, 
             redirect = !identical(url, r$url), 
             error = http_error(r), 
             status = status_code(r)
             )
    }
}

check_urls <- function(urls, ...) {
    check <- lapply(urls, check_one, ...)
    out <- do.call("rbind.data.frame", c(check, stringsAsFactors = FALSE, make.row.names = FALSE))
    return(structure(out, class = c("url_check", "data.frame")))
}

print.url_check <- function(x, ...) {
    f <- is.na(x[["url2"]])
    r <- x[["redirect"]]
    e <- x[["error"]]
    s <- x[["status"]] != 200
    print.data.frame(x[ (f | r | e | s) ,, drop = FALSE])
    invisible(x)
}

u <- extract_urls("opendata.md")
print(ch <- check_urls(u))
