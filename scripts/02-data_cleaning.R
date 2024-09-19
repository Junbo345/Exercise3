#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
data <- read_csv("data/raw_data/raw_data.csv")

# cleaning.R

# Load necessary libraries
library(tidyr)
library(lubridate)

# Assuming the data is already loaded into a variable called 'data'
# data <- read.csv("your_data_file.csv")

# Step 1: Clean data by selecting the relevant columns
cleaned_data <- data[, c("TIME_PERIOD", "MARRIAGE_LICENSES")]

# Step 2: Use separate() to split the TIME_PERIOD into year and month
cleaned_data <- cleaned_data %>%
  separate(TIME_PERIOD, into = c("Year", "Month"), sep = "-")

# Step 3: Create a proper date column using lubridate::ymd()
# Concatenate year and month and convert to date format
cleaned_data <- cleaned_data %>%
  mutate(Date = ymd(paste(Year, Month, "01", sep = "-"))) %>%
  select(Date, MARRIAGE_LICENSES)  # Keep only the Date and MARRIAGE_LICENSES columns

# Print the cleaned data to verify
print(cleaned_data)


#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
