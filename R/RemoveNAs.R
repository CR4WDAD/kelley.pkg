remove_nas <- function(data){
  clean <- data %>%
    na.omit(data) %>%
    select(weight)
  return(clean)
}
