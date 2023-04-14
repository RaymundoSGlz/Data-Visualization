## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(dslabs)
library(ggplot2)
data(gapminder)

## Seleccionamos los países y años
countries <- c("Vietnam", "United States")
years <- 1960:2010

## Creamos la tabla
tab <- gapminder %>%
        filter(country %in% countries, year %in% years)

## Creamos el objeto p
p <- tab %>% # Asignamos los datos a ggplot
    ggplot(aes(year, life_expectancy, color = country)) + # variables
    geom_line() # Agregamos la capa de la linea

## mostramos el gráfico
p
