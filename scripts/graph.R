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

#| label: fig-decline-response
#| fig-cap: Differences in percentage points between Standard and Rigorous Surveys
#| layout-ncol: 1
#| echo: false
#| warning: false
#| message: false

# Read in the CSV file

data <- read.csv("/cloud/project/data/percentage_difference.csv")

ggplot(data, aes(x = Percentage_point_difference, y = count, fill = as.factor(Percentage_point_difference))) +
  geom_col(color = "black") +
  geom_text(aes(label = count), position = position_stack(vjust = 0.5), size = 3) +
  labs(title = "Differences between the Standard and Rigorous Survey", x = "Absolute difference in percentage points", y = "Count of occurrences") +
scale_fill_manual(values = c("#1f78b4", "#33a02c", "#e31a1c", "#ff7f00", "#6a3d9a", "#a6cee3", "#b2df8a", "#fb9a99"))+
  theme_minimal() +
  theme(panel.grid.major = element_line(color = "gray", linetype = "dashed"),
        panel.grid.minor = element_blank(),
        legend.position = "none") 

