#' Retrive details about a BBB spam report
#'
#' @param pkid pkid
#' @export
scam_details <- function(pkid=NULL) {

  res <- httr::POST(
    "https://www.bbb.org/scamtracker/us/AJAXScamDetails",
    body=list(PKID="JCUDZRQ"),
    httr::add_headers(
      Origin = "https://www.bbb.org",
      `User-Agent` = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.41 Safari/537.36",
      Referer = "https://www.bbb.org/scamtracker/us",
      `X-Requested-With` = "XMLHttpRequest"
    ),
    encode="form"
  )

  httr::stop_for_status(res)

  res <- httr::content(res, as="text")
  res <- jsonlite::fromJSON(res)

  res

}


