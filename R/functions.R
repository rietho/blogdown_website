# a file to collect functions across this site
here::i_am("R/functions.R")

# get function to build archive
scan_yaml <- getFromNamespace("scan_yaml", "blogdown")


#' Remove consecutive duplicates in a data frame column
#' 
#' @param data the data frame
#' @param column a string providing a column name to remove consectuvie duplicates from
#'
#' @return
#' @export
#'
#' @examples
remove_cons_duplicates <- function(data, column) {
  dupl <- rle(as.character(data[, column, drop = TRUE]))
  rows_to_drop <- cumsum(c(1, dupl$lengths[-length(dupl$lengths)]))
  data[setdiff(1:nrow(data), rows_to_drop), column] <- NA
  return(data)
}
