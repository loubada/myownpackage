#' csv saver
#'
#'Saves a data set
#' @param dataset data set to be saved
#' @param filename name to give it
#' @param row.names extra
#'
#'
#' @return saved file
#'
#'
#'
#' @import ggplot2
#' @import dplyr
#' @import utils
#' @import assertthat
#'
#' @export
#'
save_as_csv <- function(dataset,filename, row.names = FALSE){
  assert_that(has_extension(filename, "csv"))
  assert_that(is.dir(dirname(filename)))
  assert_that(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))

  write.csv2(dataset, file = filename, row.names = row.names)

  invisible(normalizePath(filename))
}
