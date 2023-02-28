# Cargamos la librería dslabs
library(dslabs)
# Cargamos el conjunto de datos heights
data(heights)
# Extraemos los valores de la columna height
x <- heights$height
# Creamos una tabla de frecuencias
tab <- table(x)
head(tab)
