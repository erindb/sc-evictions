# Wrangles `data-raw/cities.csv` wint South Caraolina evictions (downloaded from
# https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv) and writes
# to `data/cities.rds`

# Author: Erin Bennett
# Version: 2020-01-30

# Libraries
library(tidyverse)

# Parameters

input_filename <- here::here("data-raw/cities.csv")
output_filename <- here::here("data/cities.rds")
col_types <- cols_only(
  GEOID = col_integer(),
  year = col_integer(),
  name = col_character(),
  evictions = col_double()
)

#===============================================================================

read_csv(input_filename, col_types = col_types) %>%
  filter(year == 2016) %>%
  rename(geoid = GEOID) %>%
  write_rds(output_filename)
