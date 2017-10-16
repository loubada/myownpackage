#' Name drawer
#'
#'plots the name popularity
#' @param the_name name to be ploted
#' @param the_sex sex of the same
#'
#' @return plot
#' @import ggplot2
#' @import prenoms
#' @import dplyr
#' @import assertthat
#'
#' @export
#'
#'
draw_a_name <- function(the_name, the_sex){
  assert_that(is.string(the_name))
  assert_that(is.string(the_sex))

  resume <- prenoms::prenoms %>% filter(prenoms$name == the_name, prenoms$sex == the_sex) %>%
    group_by(prenoms$year) %>% summarise(total=sum(prenoms$n))
  p <- ggplot(data = resume, aes(x=prenoms$year, y=total)) + geom_line()

  return(p)
}
