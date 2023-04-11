# Cargamos y seleccionamos los datos
library(HistData)
data(Galton)
x <- Galton$child

sd(x) # calculamos la descripción estándar
mad(x) # Calculamos la desviación media absoluta