#' Name comparator
#'
#'Compares the popularity of 2 names
#' @param names vector of the names to be
#'
#' @return plot of the 2 names
#'
#' @import ggplot2
#' @import dplyr
#' @export
#'
#'
draw_names <- function(names){
  resume <- prenoms %>% filter(name == names[1]|name == names[2]) %>%
    group_by(year) %>% summarise(total=sum(n))
  p <- ggplot(data = resume, aes(x=year, y=total), color=name) + geom_line()

  return(p)
}
