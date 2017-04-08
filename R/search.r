#' Search the BBB ScamTracker for incidents
#'
#' NOTE: Search API only returns max of 500 results.
#'
#' @param keywords keywords
#' @param country country
#' @param scam_types scam_types
#' @param date_start,date_end search date start/end (defaults to today)
#' @export
bbb_search <- function(keywords = NULL, scam_types = NULL,
                       country = c("CAN-USA", "CAN", "USA"),
                       state = NULL,
                       date_start = Sys.Date(), date_end = Sys.Date()) {

  country <-  match.arg(country, c("CAN-USA", "CAN", "USA"))

  res <- httr::POST(
    "https://www.bbb.org/scamtracker/us/AJAXSearchScam",
    httr::add_headers(
      Origin = "https://www.bbb.org",
      `User-Agent` = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.41 Safari/537.36",
      Referer = "https://www.bbb.org/scamtracker/us",
      `X-Requested-With` = "XMLHttpRequest"
    ),
    encode = "form",
    body=list(
      `scamsearch.Keywords` = keywords,
      `scamsearch.ChosenScamTypes` = scam_types,
      `scamsearch.Country` = country,
      `scamsearch.State` = state,
      `scamsearch.DateStart` = gsub("\ +", " ", format(date_start, "%b %e, %Y")),
      `scamsearch.DateEnd` = gsub("\ +", " ", format(date_end, "%b %e, %Y"))
    )
  )

  httr::stop_for_status(res)

  res <- httr::content(res, as="text")
  res <- jsonlite::fromJSON(res)

  res

}
