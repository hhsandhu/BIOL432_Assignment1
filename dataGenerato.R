# dataGenerato.R
# Assignment 1 - R Script 1 
# Generate a dataset of limb measurements for hypothetical organisms
# Harnaaz Sandhu
# Tuesday January 7th 2025 

# Load libraries
library(dplyr)

# Create a vector of 5 species names
species <- c("Homo sapiens", "Pan troglodytes", "Canis lupus", "Felis catus", "Ixodes scapularis")

# Generate 100 random species names
set.seed(123) # For reproducibility
random_species <- sample(species, 100, replace = TRUE)

# Step 3: Generate 100 random Limb_width values 
limb_width <- rnorm(100, mean = 5, sd = 1) 
limb_width <- abs(limb_width) # make sure no negative values

# Step 4: Generate 100 random Limb_length values 
limb_length <- runif(100, min = 10, max = 50) 

# Step 5: Create a vector of 3 observer names
observers <- c("Phil", "Claire", "Mitchell")

# Step 6: Assign an observer to each measurement
random_observers <- sample(observers, 100, replace = TRUE)

# Combine vectors into a data frame
measurements <- data.frame(
  Organism = random_species,
  Limb_width = limb_width,
  Limb_length = limb_length,
  Observer = random_observers
)

# Save the data frame as a CSV file
write.csv(measurements, "measurements.csv", row.names = FALSE)


