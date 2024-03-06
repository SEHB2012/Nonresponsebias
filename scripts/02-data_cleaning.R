#### Preamble ####
# Purpose: Creating the graph for percentage differences in the two studies
# Author:Sehar Bajwa
# Date: 6 March 2024
# Contact: sehar.bajwa@mail.utoronto.ca
# License: MIT
# Pre-requisites: R 4.3.2

#### Workspace setup ####
library(tidyverse)
library(dplyr)

# Read in the CSV file
read_csv(
  file = "/cloud/project/data/percentage_difference.csv",
  show_col_types = FALSE
)

