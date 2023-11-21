#' Calculates min, max, and mean
#' 
#' Calculates the minumum number, maximum number, and average of a column
#' 
#' @param data Data frame
#' @param col1 Column 1
#' @param col2 Column 2 
#' @return mean, minimum, maximum
#' 
#' @export
#' 
tm <- function(data, col1, col2){
  mean_min_max <-surveys %>%
    filter(!is.na({{col1}})) %>%
    group_by({{col2}}) %>%
    summarize(
      mean_col1 = mean({{col1}}),
      min_col1 = min({{col1}}),
      max_col1 = max({{col1}}),
      n = n()
    )
  return(mean_min_max)
}