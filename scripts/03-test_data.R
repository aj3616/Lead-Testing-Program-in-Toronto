#### Preamble ####
# Purpose: Sanity check of the data
# Author: Amy Jin
# Date: 19 September 2024
# Contact: amyzh.jin@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)


#### Test data ####
#tests developed for simulated data
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
if(data$`Lead Amount (ppm)` |> min() <= 0){
  warning("There are negative lead concentration values.")
}else{
    message("All lead concentrations are positive.")
  }

# Test for NAs
if(all(is.na(data))){
  warning("There are NA values in the dataset.")
}else{
  message("There are no NA in the dataset, safe to proceed.")
}

# Test for range in SampleNumber

valid_range <- data$`Sample Number` >= 1000000 & data$`Sample Number` <= 30000000
if (all(valid_range)) {
  message("All sample numbers are within the valid range.")
} else {
  warning("Some sample numbers are outside the valid range.")
  print(data[!valid_range, ])
}

# Test for unreasonably high lead concentration
threshold = 1000
high_lead <- data$`Lead Amount (ppm)` > threshold
if (any(high_lead, na.rm = TRUE)) {
  warning("Some lead concentrations exceed the threshold.")
  print(data[high_lead, ])
} else {
  message("All lead concentrations are within the acceptable range.")
}

# Test for valid date range
start_date = "2014-01-01"
end_date = "2024-09-21"
valid_dates <- as.Date(data$`Sample Date`) >= as.Date(start_date) & as.Date(data$`Sample Date`) <= as.Date(end_date)
if (all(valid_dates, na.rm = TRUE)) {
  message("All dates are within the valid range.")
} else {
  warning("Some dates are outside the valid range.")
  print(data[!valid_dates, ]) 
}


# Test for valid partial postal code
valid_codes = grepl("^M[0-9]", data$PartialPostalCode)
if (all(valid_codes)) {
  message("All partial postal codes are valid.")
  } else {
  warning("Some partial postal codes are invalid.")
  print(data[!valid_codes, ])
}

# Repeat the tests for actual data
actual_data <- read_csv("data/analysis_data/analysis_data.csv")

# Test for negative numbers
if(actual_data$`Lead Amount (ppm)` |> min() <= 0){
  warning("There are negative lead concentration values.")
}else{
  message("All lead concentrations are positive.")
}

# Test for NAs
if(all(is.na(actual_data))){
  warning("There are NA values in the dataset.")
}else{
  message("There are no NA in the dataset, safe to proceed.")
}

# Test for range in SampleNumber

valid_range <- actual_data$`Sample Number` >= 1000000 & actual_data$`Sample Number` <= 30000000
if (all(valid_range)) {
  message("All sample numbers are within the valid range.")
} else {
  warning("Some sample numbers are outside the valid range.")
  print(actual_data[!valid_range, ])
}

# Test for unreasonably high lead concentration
threshold = 1000
high_lead <- actual_data$`Lead Amount (ppm)` > threshold
if (any(high_lead, na.rm = TRUE)) {
  warning("Some lead concentrations exceed the threshold.")
  print(actual_data[high_lead, ])
} else {
  message("All lead concentrations are within the acceptable range.")
}

# Test for valid date range
start_date = "2014-01-01"
end_date = "2024-09-21"
valid_dates <- as.Date(actual_data$`Sample Date`) >= as.Date(start_date) & as.Date(actual_data$`Sample Date`) <= as.Date(end_date)
if (all(valid_dates, na.rm = TRUE)) {
  message("All dates are within the valid range.")
} else {
  warning("Some dates are outside the valid range.")
  print(actual_data[!valid_dates, ]) 
}


# Test for valid partial postal code
valid_codes = grepl("^M[0-9]", actual_data$PartialPostalCode)
if (all(valid_codes)) {
  message("All partial postal codes are valid.")
} else {
  warning("Some partial postal codes are invalid.")
  print(actual_data[!valid_codes, ])
}





