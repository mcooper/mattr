#' Redefine + operator to concatenate strings, like in python
#' 
#' @param two variables
#' @return either the some of two numeric or the concatenation of two character


"+" = function(x,y) {
  if(is.character(x) || is.character(y)) {
    return(paste(x , y, sep=""))
  } else {
    .Primitive("+")(x,y)
  }
}