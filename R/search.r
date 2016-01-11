#' Search the BBB ScamTracker for incidents
#'
#' @param scam_types scam_types
#' @param scam_name scam_name
#' @param date_start date_start
#' @param date_end date_end
#' @export
bbb_search <- function(scam_types=NULL, scam_name=NULL,
                       date_start=NULL, date_end=NULL) {

  res <- httr::GET("https://www.bbb.org/scamtracker/us/AJAXSearchScam",
                   query=list(`search`=NULL,
                              `scamsearch.ChosenScamTypes`=scam_types,
                              `scamsearch.ScamName`=scam_name,
                              `:`=NULL,
                              `scamsearch.DateStart`=date_start,
                              `scamsearch.DateEnd`=date_end))

  httr::stop_for_status(res)

  jsonlite::fromJSON(content(res, as="text"))

}