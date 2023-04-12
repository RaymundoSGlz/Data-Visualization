## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

# creamos el gráfico
heights %>% ggplot(aes(height)) +
    geom_density() # agregamos la capa del gráfico de densidad