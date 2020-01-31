# Join `data/cities.rds` with evictions data from cities in South Carolina and
# `data/cities_geo.rds` with geometries for cities in South Carolina.

# Author: Erin Bennett
# Version: 2020-01-30

# Libraries
library(tidyverse)

# Parameters

evictions_input_filename <-here::here("data/cities.rds")
geo_input_filename <- here::here("data/cities_geo.rds")
output_filename <- here::here("data/sc_evictions.rds")

#===============================================================================

read_rds(evictions_input_filename) %>%
  left_join(read_rds(geo_input_filename), by = "geoid") %>%
  write_rds(output_filename)
