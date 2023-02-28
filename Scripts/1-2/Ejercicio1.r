# Cargamos la librería dslabs
library(dslabs)
# Cargamos el conjunto de datos heights
data(heights)
# Extraemos los valores de la columna height para hombres
x <- heights$height[heights$sex == "Male"]
# Calculamos la proporción de hombres con altura entre 69 y 72 pulgadas
mean(x > 69 & x<= 72)