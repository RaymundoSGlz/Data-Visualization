## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

# creamos el gráfico con males y females
heights %>% ggplot(aes(height, fill = sex)) +
    geom_density(alpha = 0.2) # capa del gráfico de densidad con un alpha 0.2