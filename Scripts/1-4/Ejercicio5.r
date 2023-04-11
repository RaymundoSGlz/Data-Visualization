# Cargamos los datos
library(HistData)
data(Galton)
x <- Galton$child
# Introducimos el error
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

# Calculamos la diferencia entre las medias con y sin el error
median(x_with_error) - median(x)