# Cargamos la librería dslabs
library(dslabs)
# Cargamos el conjunto de datos heights
data(heights)
# Extraemos los valores de la columna height para hombres
x <- heights$height[heights$sex == "Male"]
# Calculamos el promedio y la desviación estándar
avg <- mean(x)
stdev <- sd(x)
# Calculamos la proporción de hombres con altura entre 69 y 72 pulgadas
pnorm(72, avg, stdev) - pnorm(69, avg, stdev)