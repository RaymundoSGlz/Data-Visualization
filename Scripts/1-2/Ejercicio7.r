# Calculamos la probabilidad de
# que un hombre tenga una altura mayor a Lebron James
p <- 1 - pnorm(6 * 12 + 8, 69, 3)
# multiplicamos por 10^9 para obtener el número de hombres
# entre 18 y 40 años y redondeamos
n <- round(p * (10^9))
# Calculamos la proporción de seven footers en la NBA
# sabiendo que hay 150 jugadores mayores de 6 pies 8 pulgadas
150 / n