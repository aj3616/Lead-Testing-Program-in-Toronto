#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Amy Jin
# Date: 19 September 2024
# Contact: amyzh.jin@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None.

#### Workspace setup ####
library(tidyverse)
library(tidyr)


#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")
raw_data$`Lead Amount (ppm)` <- as.numeric(raw_data$`Lead Amount (ppm)`)
cleaned_data <- na.omit(raw_data)
cleaned_data <- drop_na(cleaned_data)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
