## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

# creamos el gráfico con males y females
heights %>% ggplot(aes(height, color = sex)) +
    geom_density() # agregamos la capa del gráfico de densidad