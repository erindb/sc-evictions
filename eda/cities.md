South Carolina Cities Eviction Exploratory Data Analysis
================
Erin Bennett
2020-01-30

  - [**q6**](#q6)

``` r
# Libraries
library(tidyverse)

# Parameters

input_filename <- here::here("data/cities.rds")
```

``` r
df <- read_rds(input_filename)
```

## **q6**

Why is the number of evictions a double rather than an integer?\!

> While other units of geography are all connected (block groups, census
> tracts, counties, etc.), place boundaries are separate—requiring
> evictions to be aggregated and estimated differently. In many cases,
> the estimates of eviction are non-whole numbers (e.g., 0.4, 31.5,
> 100.6). (from
> [FAQ](https://evictionlab.org/help-faq/#less-than-one-eviction))

Which South Carolina city had the most evictions in 2016?

``` r
most_evictions <- df %>%
  drop_na(evictions) %>%
  arrange(desc(evictions))
most_evictions
```

    ## # A tibble: 283 x 4
    ##      geoid  year name             evictions
    ##      <int> <int> <chr>                <dbl>
    ##  1 4550875  2016 North Charleston     3660.
    ##  2 4516000  2016 Columbia             2225.
    ##  3 4513330  2016 Charleston           1546.
    ##  4 4562395  2016 St. Andrews          1383.
    ##  5 4525810  2016 Florence             1097.
    ##  6 4519285  2016 Dentsville            769.
    ##  7 4549075  2016 Myrtle Beach          729.
    ##  8 4501360  2016 Anderson              642.
    ##  9 4532065  2016 Hanahan               529.
    ## 10 4529815  2016 Goose Creek           480.
    ## # … with 273 more rows

North Charleston had the most evictions in 2016 out of all South
Carolina cities with recorded numbers of evictions.
