#' csv Reader
#'
#' @param folder containing csv files to be read
#'
#' @return list of files from the folder
#' @export
#'
#' @examples
#'
my_csv_reader <- function(fodler){
  l <- list.files(path = folder, pattern=".*csv$", full.names = TRUE )
  result <- lapply(l,read.csv2)
}
