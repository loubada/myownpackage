#' csv Reader
#'
#' @param folder containing csv files to be read
#'
#' @return list of files from the folder
#'
#'
#' @import ggplot2
#' @import dplyr
#' @import utils
#' @import assertthat
#'
#' @export
#'
#'
my_csv_reader <- function(folder){
  assert_that(is.dir(folder))

  l <- list.files(path = folder, pattern=".*csv$", full.names = TRUE )
  result <- lapply(l,read.csv2)
}
