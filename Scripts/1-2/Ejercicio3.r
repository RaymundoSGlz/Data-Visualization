# Cargamos la librería dslabs
library(dslabs)
# Cargamos el conjunto de datos heights
data(heights)
# Extraemos los valores de la columna height para hombres
x <- heights$height[heights$sex == "Male"]
# Calculamos el valor exacto y la aproximación normal
exact <- mean(x > 79 & x <= 81)
approx <- pnorm(81, mean(x), sd(x)) - pnorm(79, mean(x), sd(x))

# calculamos la proporción entre la aproximación y el valor exacto
exact / approx