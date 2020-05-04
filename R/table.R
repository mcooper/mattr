#' Like table() but with useNA set to 'ifany' by default
#' 
#' @param ... vector
#' @return table object

table <- function(...){
  base::table(..., useNA='ifany')
}
