#' Name drawer
#'
#'plots the name popularity
#' @param the_name name to be ploted
#' @param the_sex sex of the same
#'
#' @return plot
#' @export
#'
#' @examples
draw_a_name <- function(the_name, the_sex){
  resume <- prenoms %>% filter(name == the_name, sex == the_sex) %>%
    group_by(year) %>% summarise(total=sum(n))
  p <- ggplot(data = resume, aes(x=year, y=total)) + geom_line()

  return(p)
}
