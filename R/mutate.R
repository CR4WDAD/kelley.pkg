#' Conversion from grams to kilograms
#' 
#' Creates a new column that that has a new weight that has gone through a conversion from grams to kilograms
#' 
#' @param data Data frame
#' @param col column 1
#' @param col2 Column 2
#' @return Data frame with a new kilogram weight column
#' 
#' @export
#' 
mutation <- function(data, col, col2){
  mutate_kg <- data %>%
    filter(!is.na({{col}})) %>% 
    mutate(weight_kg = {{col2}}/1000)
  return(mutate_kg)
}