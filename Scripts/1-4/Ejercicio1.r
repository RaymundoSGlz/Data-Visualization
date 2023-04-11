# Cargamos la librería y el dataset
library(HistData)
data(Galton)
# Seleccionamos la variable con la que trabajaremos
x <- Galton$child

mean(x) # calculamos el promedio
median(x) # calculamos la media