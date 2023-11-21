#' Creates a scatter plot
#' 
#' Creates a scatter plot to compare the linear relationship of two variables.
#' 
#' @param data Data frame
#' @param x X-axis variable
#' @param y Y-axis variable
#' @return Scatter plot of x and y
#' 
#' @export
#' 
plot_graph <- function(data, x, y){
  plot_return <- ggplot(data, mapping = aes({{x}}, {{y}})) + geom_point()
  return(plot_return)
}
