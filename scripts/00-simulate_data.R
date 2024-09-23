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
#set seed to my unique student number for reproductibility
set.seed(1007676409)

# Assume we want 100 simulations, this can be modified upon specification
n <- 100

# Define the start and end date
start_date <- as.Date("2014-01-01")
end_date <- as.Date("2024-08-21")

#id is the key for identification just for the data
id <- 1:n
#sample number is from the water sample, assume it will be a number between 1000000 and 2000000
sample_number <- sample(1000000:2000000, n, replace = TRUE)

#create a list of the postal codes in toronto and randomly select to simulate
partial_postal_codes <- c("M1L", "M4E", "M4K", "M3B", "M6H", "M4J", "M4M", "M4G", "M6E", "M6P", "M6N", "M2M", "M9B", "M6J")
partial_postal_code <- sample(partial_postal_codes, n, replace = TRUE)

#join them into a tibble, used the starter code for dates
data <-
  tibble(
    id = id,
    sample_number = sample_number,
    sample_date = sample_date,
    partial_postal_code = partial_postal_code,
    sample_number = 
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "2014-01-01"
    ),
    #used gamma distibution instead of the poison distribution because the mean_lead is a continuous variable,
    #if we use poisson distibution, all simulations will be 0
    leadAmountppm = rgamma(n = number_of_dates, shape = 2, rate = 1 / mean_lead)
  )

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")
