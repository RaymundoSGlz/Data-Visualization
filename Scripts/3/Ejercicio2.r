## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

## Creamos el scatterplot
gapminder %>% #Asignamos los datos al objeto ggplot
    filter(continent == "Africa" & year == 2012) %>% # continente y año
    ggplot(aes(fertility, life_expectancy, color = region)) + # Variables
    geom_point() # Agregamos la capa del scatterplot
