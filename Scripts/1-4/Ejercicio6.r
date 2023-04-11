# Cargamos los datos
library(HistData)
data(Galton)
x <- Galton$child
# Introducimos el error
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

# Calculamos la diferencia entre las MAD con y sin el error
mad(x_with_error) - mad(x)