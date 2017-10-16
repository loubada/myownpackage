#' Name comparator
#'
#'Compares the popularity of 2 names
#' @param names vector of the names to be
#'
#' @return plot of the 2 names
#'
#' @import prenoms
#' @import ggplot2
#' @import dplyr
#' @export
#'
#'
draw_names <- function(names){
  resume <- prenoms::prenoms %>% filter(prenoms$name == names[1]|prenoms$name == names[2]) %>%
    group_by(prenoms$year) %>% summarise(total=sum(prenoms$n))
  p <- ggplot(data = resume, aes(x=prenoms$year, y=total), color=prenoms$name) + geom_line()

  return(p)
}
