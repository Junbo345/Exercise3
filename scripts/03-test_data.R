#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Junbo Li
# Date: SEP 19, 2024
# Contact: junb.li@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
# tests.R

# Read the simulated data from the CSV file
data <- read.csv("simulated_data.csv")

# Test 1: Check that the number of rows matches the expected number of days
check_num_rows <- function(data, expected_rows) {
  if (nrow(data) != expected_rows) {
    stop(paste("Test Failed: Expected", expected_rows, "rows but got", nrow(data)))
  } else {
    cat("Test 1 Passed: Number of rows matches the expected value.\n")
  }
}

# Test 2: Check that all Poisson values are non-negative
check_non_negative_values <- function(data) {
  if (any(data$Poisson_Value < 0)) {
    stop("Test Failed: Found negative values in Poisson_Value column.")
  } else {
    cat("Test 2 Passed: All Poisson values are non-negative.\n")
  }
}

# Set the expected number of days (rows)
num_days <- 100  # This should match the number of rows generated in the simulation

# Run the tests using the data from simulated_data.csv
check_num_rows(data, num_days)
check_non_negative_values(data)
