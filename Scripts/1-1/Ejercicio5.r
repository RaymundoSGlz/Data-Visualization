# Cargamos la librería dslabs
library(dslabs)
# Cargamos el conjunto de datos heights
data(heights)
# creamos una tabla de frecuencias
tab <- table(heights$height)
# contamos los valores
sum(tab == 1)