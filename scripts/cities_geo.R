# Wrangles `data-raw/cities.geojson` wint South Caraolina geos (downloaded from
# https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson) and
# writes to `data/sc_geo.R`

# Author: Erin Bennett
# Version: 2020-01-30

# Libraries
library(tidyverse)

# Parameters

input_filename <- here::here("data-raw/cities.geojson")
output_filename <- here::here("data/cities_geo.rds")

#===============================================================================

sf::read_sf(input_filename) %>%
  transmute(geoid = as.integer(GEOID), name = n, geometry) %>%
  write_rds(output_filename)
