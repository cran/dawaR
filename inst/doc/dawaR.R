## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(dawaR)

## -----------------------------------------------------------------------------
get_data("regioner")

## ----include=FALSE------------------------------------------------------------
library(dplyr)

## -----------------------------------------------------------------------------
library(dawaR)
library(dplyr)

municipalities <- get_data("kommuner")

nordjylland <- municipalities |>
  filter(regionsnavn == "Region Nordjylland") |>
  pull(navn)

nordjylland

## ----municipality_map---------------------------------------------------------
library(dawaR)
library(ggplot2)

municipalities <- get_map_data("kommuner")
ggplot(municipalities, aes(fill = regionsnavn)) +
  geom_sf(color = "black") +
  labs(fill = "Region") +
  cowplot::theme_map()

