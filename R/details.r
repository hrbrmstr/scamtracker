#' Retrive details about a BBB spam report
#'
#' @param pkid pkid
#' @export
scam_details <- function(pkid=NULL) {

  res <- httr::GET("https://www.bbb.org/scamtracker/us/AJAXScamDetails",
                   query=list(`getdetails`=NULL,
                              `pkid`=pkid))

  httr::stop_for_status(res)

  jsonlite::fromJSON(content(res, as="text"))

}