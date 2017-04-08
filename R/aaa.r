#
# a => address
# co => company
# c => date_reported
# d => dollars_lost
# la => latitude
# lo => longitude
# p => postal_code
# s => grouping?
# si => scam_inquiry_id
# stt => scam_type_id
# st => street?

#' Scam types
#'
#' @export
scam_types <- structure(list(scam_name = c("Advance Fee Loan", "Business Email Compromise",
"Charity", "Counterfeit Product", "Credit Cards", "Credit Repair/Debt Relief",
"Debt Collections", "Employment", "Fake Check/Money Order", "Fake Invoice",
"Family/Friend Emergency", "Government Grant", "Healthcare/Medicaid/Medicare",
"Home Improvement", "Identity Theft", "Investment", "Moving",
"Nigerian/Foreign Money Exchange", "Online Purchase", "Phishing",
"Rental", "Romance", "Scholarship", "Spyware/Adware/Malware",
"Sweepstakes/Lottery/Prizes", "Tax Collection", "Tech Support",
"Travel/Vacations", "Utility", "Yellow Pages/Directories", "Other"
), scam_id = c("1", "10", "21", "9", "4", "5", "6", "8", "3",
"41", "12", "11", "17", "13", "14", "40", "20", "22", "43", "23",
"26", "28", "29", "24", "16", "7", "37", "32", "39", "35", "36"
)), .Names = c("scam_name", "scam_id"), class = c("tbl_df", "tbl",
"data.frame"), row.names = c(NA, -31L))