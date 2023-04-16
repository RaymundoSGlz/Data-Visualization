## Código entregado
library(dplyr)
library(ggplot2)
library(dslabs)
dat <- us_contagious_diseases %>%
    filter(year == 1967 & disease=="Measles" & !is.na(population)) %>%
        mutate(rate = count / population * 10000 * 52 / weeks_reporting)
state <- dat$state
rate <- dat$count/(dat$population/10000)*(52/dat$weeks_reporting)

# Convertir la variable state en un factor y reordenarlo por la variable rate
state <- factor(state)
state <- reorder(state, rate)

# Imprimir el vector reordenado y sus niveles
print(state)
levels(state)
