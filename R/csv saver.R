#' csv saver
#'
#'Saves a data
#' @param dataset data set to be saved
#' @param filename name to give it
#' @param row.names
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#'
#'
save_as_csv <- function(dataset,filename, row.names = FALSE, ...){
  assert_that(has_extension(filename, "csv"))
  assert_that(is.dir(dirname(filename)))
  assert_that(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))

  write.csv2(dataset, file = filename, row.names = row.names, ...)

  invisible(normalizePath(filename))
}
