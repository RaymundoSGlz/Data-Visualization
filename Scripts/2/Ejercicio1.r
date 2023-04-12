# Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
data(murders)

# Definimos el objeto ggplot
p <- ggplot(murders)

# Obtenemos la clase del objeto p
class(p)