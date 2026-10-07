
#----------Introduction for Summary Statistic---------------------

#Course developped by Ernest Fotsing, PhD

#-----------------------Start--------------------------------------------------

# first clean environnement---
rm(list= ls()) #To remove all objects, issue the command

# install packages

install_and_load_packages <- function() {
  # List of required packages
  packages <- c(
    "openxlsx", "WriteXLS", "writexl", "raster", "sp", "sf",
    "parallel", "readr", "sfheaders", "stars", "terra", "Matrix",
    "lattice", "abind", "xlsx", "usdm", "AICcmodavg", "corrplot",
    "tidyverse", "coefplot", "GGally", "pgirmess", "influence.ME",
    "MuMIn", "DHARMa", "dplyr", "MASS", "ncf", "visreg"
  )
  
  # Install any packages that are missing
  new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if(length(new_packages)) {
    message("Installing missing packages: ", paste(new_packages, collapse = ", "))
    install.packages(new_packages, dependencies = TRUE)
  }
  
  # Load all packages
  invisible(lapply(packages, function(pkg) {
    suppressPackageStartupMessages(library(pkg, character.only = TRUE))
  }))
  
  # Set ggplot theme
  if ("ggplot2" %in% loadedNamespaces()) {
    ggplot2::theme_set(ggplot2::theme_bw(base_size = 12))
  }
  
  message("all packages installed and loaded successfully!")
}




