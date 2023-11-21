#' Summary of linear model
#' 
#' Creates a summary of a linear model that can be used to compare variances. 
#' 
#' @param data Data frame
#' @param dependent Dependent Variable
#' @param independent_cols Independent Variable 
#' @return Linear Model summary
#' 
#' @export
#' 
lm_function <- function(df, dependent, independent_cols){
  return_summary <- df %>% 
    select(a = quo_name(dependent), starts_with(independent_cols)) %>% 
    lm(a ~ ., data = .) %>% 
    summary()
  return(return_summary)
}