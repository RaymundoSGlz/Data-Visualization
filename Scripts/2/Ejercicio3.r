# Cargamos las librerías y seleccionamos los datos
library(ggplot2)
library(dslabs)
data(murders)

# Creamos el scatterplot
murders %>% ggplot(aes(x = population, y = total)) +
  geom_point()