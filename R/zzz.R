.onAttach <- function(libname, pkgname) {
  # to show a startup message
  packageStartupMessage("Loading mattr, a package with Matt Cooper's preferred functions, objects and options.")
}

.onLoad <- function(libname, pkgname) {
  
  packages <- rownames(installed.packages())
  
  if ('dplyr' %in% packages){
    select <- dplyr::select
  }
  if ('raster' %in% packages){
    extract <- raster::extract
  }
}