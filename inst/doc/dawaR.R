## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(dawaR)

## ----get-data-----------------------------------------------------------------
get_data("regioner")

## ----include=FALSE------------------------------------------------------------
library(dplyr)

## ----nordjylland--------------------------------------------------------------
library(dawaR)
library(dplyr)

municipalities <- get_data("kommuner")

nordjylland <- municipalities |>
  filter(regionsnavn == "Region Nordjylland") |>
  pull(navn)

nordjylland

## ----municipality_map, output=FALSE-------------------------------------------
library(dawaR)
library(ggplot2)

municipalities <- get_map_data("kommuner")
ggplot(municipalities, aes(fill = regionsnavn)) +
  geom_sf(color = "black") +
  labs(fill = "Region") +
  cowplot::theme_map()

