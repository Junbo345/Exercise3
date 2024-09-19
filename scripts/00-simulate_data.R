#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
set.seed(123)

# Simulate dates: 100 days starting from 2024-01-01
start_date <- as.Date("2024-01-01")
dates <- seq.Date(start_date, by = "day", length.out = 100)

# Simulate draws from the Poisson distribution with lambda = 10
poisson_values <- rpois(100, lambda = 10)

# Combine dates and poisson values into a data frame
simulated_data <- data.frame(Date = dates, Value = poisson_values)

# Write the simulated data to a CSV file (optional, if you need to store it)
write.csv(simulated_data, file = "simulated_data.csv", row.names = FALSE)

# Display the first few rows of the data
head(simulated_data)



