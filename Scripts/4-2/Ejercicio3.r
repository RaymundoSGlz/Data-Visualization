## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

## Definimos el rate
murders %>%
    mutate(rate = total / population * 100000) %>%
    mutate(region = reorder(region, rate, median)) %>% # reordenamos
    ggplot(aes(region, rate)) + # Creamos el objeto ggplot
    geom_boxplot() + # Agregamos la capa del boxplot
    geom_point() # Agregamos la capa de puntos
