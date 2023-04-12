# Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

## Agregamos el label y cambiamos el tipo de geometría
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label()