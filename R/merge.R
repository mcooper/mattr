#' Safe merge: check column intersection before attempting merge
#' 
#' Keeps all params as base::merge()
#' 
#' @param check should a check be performed?
#' @return Either merged dataframes, or NULL if aborted

merge <- function(x, y, by = intersect(names(x), names(y)),
                  by.x = by, by.y = by, all = FALSE, all.x = all, all.y = all,
                  sort = TRUE, suffixes = c(".x",".y"), no.dups = TRUE,
                  incomparables = NULL, check=TRUE, ...){
  
  n <- intersect(names(x), names(y))
  
  if (check){
    qstr <- ifelse(length(n)==0, 
                   "Merge with no matching columns?",
                   paste0("Merge on cols: ", paste0(n, collapse=', '), '?'))
    
    res <- menu(c("Yes", "No"), title=qstr)
  }
  
  if (res == 2){
    return(NULL)
  }
  
  return(base::merge(x, y, by = intersect(names(x), names(y)),
                     by.x = by, by.y = by, all = FALSE, all.x = all, all.y = all,
                     sort = TRUE, suffixes = c(".x",".y"), no.dups = TRUE,
                     incomparables = NULL, ...))
  
}
