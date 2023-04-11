# cargar el paquete dslabs
library(HistData)

# cargar el dataset Galton
data(Galton)

# Definir la función error_avg
error_avg <- function(k) {
  # Copiar el vector de alturas
  x_new <- Galton$child
  # Cambiar el primer elemento a k
  x_new[1] <- k
  # Calcular la media del nuevo vector
  mean(x_new)
}
# Calcular la media con un valor atípico positivo
error_avg(10000)
# Calcular la media con un valor atípico negativo
error_avg(-10000)