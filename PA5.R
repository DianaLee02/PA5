# Author: Diana Lee
# Course: COP2073C
# Assignment: Programming Assignment 5
# Description: Demonstrating argument matching, CSV writing/reading using cat()

# Define a descriptive custom function utilizing cat()
print_animal_info <- function(animal_type, count, sound) {
  cat(paste0("We have ", count, " ", animal_type, 
             "(s) that make the sound: ", sound, "!\n"))
}

# Create a data frame demonstrating the 3 types of argument matching
# (1. Exact matching, 2. Position matching, 3. Prefix/partial matching)
matching_type <- c("Exact matching", "Position matching", "Prefix matching")
code_example <- c(
  "print_animal_info(animal_type = 'Dog', count = 2, sound = 'Woof')",
  "print_animal_info('Cat', 3, 'Meow')",
  "print_animal_info(anim = 'Cow', cou = 1, sou = 'Moo')"
)

df_args <- data.frame(matching_type, code_example, stringsAsFactors = FALSE)

# Write the data frame to a CSV file
write.csv(df_args, "animal_argument_matching.csv", row.names = FALSE)

# Remove the data frame from your environment
rm(df_args)

# Read the CSV file to restore your data frame
df_args <- read.csv("animal_argument_matching.csv", stringsAsFactors = FALSE)

# View the restored data frame
View(df_args)
print(df_args)