# cargar el paquete dslabs
library(dslabs)
# cargar el conjunto de datos heights
data(heights)
# Extraemos los valores de la columna height
x <- heights$height
# contamos los valores únicos
length(unique(x))