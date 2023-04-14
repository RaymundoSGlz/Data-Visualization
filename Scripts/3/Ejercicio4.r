## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(dslabs)
data(gapminder)

## Seleccionamos los países y años
countries <- c("Vietnam", "United States")
years <- 1960:2010

## Creamos la tabla
tab <- gapminder %>%
        filter(country %in% countries, year %in% years)

## Mostramos el encabezado de la tabla
head(tab)
