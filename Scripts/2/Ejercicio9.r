# Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

## Creamos el objeto p
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()

# Agregamos las capas
p + scale_x_log10() + # cambiamos la escala de x
  scale_y_log10() + # cambiamos la escala de y
  ggtitle("Gun murder data") # Agregamos un titulo