# Calculamos la probabilidad de que un hombre tenga una altura mayor a 7 pies
p <- 1 - pnorm(7 * 12, 69, 3)
# multiplicamos por 10^9 para obtener el número de hombres entre 18 y 40 años
# redondeamos y mostramos el resultado
round(p * (10^9))