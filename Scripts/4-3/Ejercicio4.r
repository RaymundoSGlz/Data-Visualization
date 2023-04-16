## Cargamos las librerías y los datos
library(dplyr)
library(ggplot2)
library(dslabs)
library(RColorBrewer)
data(us_contagious_diseases)

# Graficamos
us_contagious_diseases |>
    filter(!is.na(population)) |> # Eliminamos datos nulos
    group_by(year, disease) |>
    summarize(rate = sum(count) / sum(population) * 10000) |>
    ggplot(aes(year, rate, color = disease)) + # Coloreamos por enfermedades
    geom_line()
