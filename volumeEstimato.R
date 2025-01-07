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
# Assuming a simple formula for limb volume 
# (Approximating limb as a cylinder)
# Equation for volume: Volume = pi * (Limb_width / 2)^2 * Limb_length
measurements <- measurements %>%
  mutate(Volume = pi * (Limb_width / 2)^2 * Limb_length) 

# Overwrite the original measurements.csv file with the updated data
write.csv(measurements, "measurements.csv", row.names = FALSE)

