.onAttach <- function(libname, pkgname) {
  # to show a startup message
  packageStartupMessage("Loading mattr, a package with Matt Cooper's preferred functions, objects and options.")
}

.onLoad <- function(libname, pkgname) {
  # something to run
  conflict_prefer('select', 'dplyr', losers = NULL, quiet = FALSE)
  conflict_prefer('extract', 'raster', losers = NULL, quiet = FALSE)
}