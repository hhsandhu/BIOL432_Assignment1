# volumeEstimato.R
# Assignment 1 - R Script 2
# Estimate limb volumes based on limb measurements and save updated data
# Harnaaz Sandhu 
# Tuesday January 7th 2025 

# Load libraries
library(dplyr)

# Read the measurements.csv file
measurements <- read.csv("measurements.csv")

# Add a new column for Volume
# Assuming a simple formula for limb volume (e.g., cylinder approximation: π * r^2 * h)
# Using Limb_width as diameter, so radius = Limb_width / 2
measurements <- measurements %>%
  mutate(
    Radius = Limb_width / 2,
    Volume = pi * (Radius^2) * Limb_length
  ) %>%
  select(-Radius) 

# Overwrite the original measurements.csv file with the updated data
write.csv(measurements, "measurements.csv", row.names = FALSE)

