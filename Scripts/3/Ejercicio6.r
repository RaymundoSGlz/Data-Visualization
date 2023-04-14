## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(dslabs)
library(ggplot2)
data(gapminder)

## Creamos el gráfico en una linea
gapminder %>% 
    filter(country == "Cambodia", year %in% 1960:2010) %>%
         ggplot(aes(year, life_expectancy)) + geom_line()
