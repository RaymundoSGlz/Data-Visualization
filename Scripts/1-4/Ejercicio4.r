# Cargamos los datos
library(HistData)
data(Galton)
x <- Galton$child
# Introducimos el error
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

# Calculamos la diferencia entre las std con y sin el error
sd(x_with_error) - sd(x)