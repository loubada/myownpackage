#' Read excel file
#'
#' @param file excel file to be used
#'
#' @return read file
#'
#'
#' @import readxl
#'
#'
#' @export
#'
#'
#'
read_excel_multi <- function(file) {
  assert_that(is.dir(dirname(file)))
  assert_that(has_extension(filename, "xls"))

  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet) {
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}
