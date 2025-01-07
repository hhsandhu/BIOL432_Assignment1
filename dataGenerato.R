# dataGenerato.R
# Assignment 1 - R Script 1 
# Generate a dataset of limb measurements for hypothetical organisms
# Harnaaz Sandhu
# Tuesday January 7th 2025 

# Load libraries
library(tibble)

# Create a vector of 5 species names
species <- c("Species_A", "Species_B", "Species_C", "Species_D", "Species_E")



# Generate 100 random species names
set.seed(123) # For reproducibility
random_species <- sample(species, 100, replace = TRUE)

# Generate 100 random Limb_width values 
limb_width <- rnorm(100, mean = 5, sd = 1) 
limb_width <- abs(limb_width) # make sure no negative values

# Generate 100 random Limb_length values 
limb_length <- runif(100, min = 10, max = 50) 

# Create a vector of 3 observer names
observers <- c("Phil", "Claire", "Mitchell")

# Assign an observer to each measurement
random_observers <- sample(observers, 100, replace = TRUE)

# Combine vectors into a data frame
measurements <- data.frame(
  Organism = random_species,
  Limb_width = round(limb_width, 2),
  Limb_length = round(limb_length, 2),
  Observer = random_observers
)

# Save the data frame as a CSV file
write.csv(measurements, "measurements.csv", row.names = FALSE) 


