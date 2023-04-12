## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

# creamos el objeto p
p <- heights %>% ggplot(aes(height))
p + geom_histogram(binwidth = 1) # agregamos la capa del histograma