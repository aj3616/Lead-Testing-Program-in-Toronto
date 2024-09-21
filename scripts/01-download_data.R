#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Amy Jin
# Date: 19 September 2024
# Contact: amyzh.jin@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# get package
package <- show_package("8171f7ab-364e-46a7-8a62-08f073ca6d96")

# get all resources for this package
resources <- list_package_resources("8171f7ab-364e-46a7-8a62-08f073ca6d96")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()


#### Save data ####
write_csv(data, "data/raw_data/raw_data.csv") 

