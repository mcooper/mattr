#' Get count of NAs in each column in a dataframe or tibble
#' 
#' @param df data frame
#' @return named vector of NA counts

na_ct <- function(df){
  sapply(df, function(x){sum(is.na(x))})
}
