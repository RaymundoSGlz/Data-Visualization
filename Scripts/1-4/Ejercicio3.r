# Cargamos los datos
library(HistData)
data(Galton)
x <- Galton$child
# Introducimos el error
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

# Calculamos la diferencia entre los promedios con y sin el error
mean(x_with_error) - mean(x)