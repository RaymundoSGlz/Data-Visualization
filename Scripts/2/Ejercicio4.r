# Cargamos las librerías y seleccionamos los datos
library(ggplot2)
library(dslabs)
data(murders)

# Creamos el scatterplot
murders %>% ggplot(aes(total, population)) +
  geom_point()