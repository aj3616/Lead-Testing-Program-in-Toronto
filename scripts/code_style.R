#This script is soley for the purpose of reformatting
library(styler)

# Reformat an R script
styler::style_file("scripts/00-simulate_data.R")
styler::style_file("scripts/01-download_data.R")
styler::style_file("scripts/02-data_cleaning.R")
