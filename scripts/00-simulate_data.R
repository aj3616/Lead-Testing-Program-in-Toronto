#### Preamble ####
# Purpose: Simulates data
# Author: Amy Jin
# Date: 19 September 2024
# Contact: amyzh.jin@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(1007676409)

# Define the start and end date
start_date <- as.Date("2014-01-01")
end_date <- as.Date("2024-08-21")

# Set the number of random dates you want to generate
number_of_dates <- 100

data_ppm = read_csv("data/raw_data/raw_data.csv")
leadaAmountPpm = as.numeric(data_ppm$`Lead Amount (ppm)`)
mean_lead <- mean(leadaAmountPpm, na.rm = TRUE)

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "2014-01-01"
    ),
    leadAmountppm = rgamma(n = number_of_dates, shape = 2, rate = 1 / mean_lead)
    #leadAmountppm = rpois(n = number_of_dates, lambda = mean_lead)
  )

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")
