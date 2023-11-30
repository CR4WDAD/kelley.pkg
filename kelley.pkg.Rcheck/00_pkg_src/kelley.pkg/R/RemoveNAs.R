#' Remove NA's from a data frame
#' 
#' Removes missing information from a data frame to make the data frame cleaner.
#' 
#' @param data Data frame
#' @return Data frame with all NA's removed
#' 
#' @export
#' 
remove_nas <- function(data){
  clean <- data %>%
    na.omit(data) %>%
    select(weight)
  return(clean)
}
