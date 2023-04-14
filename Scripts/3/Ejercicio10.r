## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

## Creamos el nuevo dataset
daydollars <- gapminder %>%
            mutate(dollars_per_day = gdp / population / 365) %>%
                filter(year %in% c(1970, 2010) &
                    continent == "Africa" & !is.na(gdp))

## Gráfico de densidad suave por region
daydollars %>%
    ggplot(aes(dollars_per_day, fill = region)) +
    geom_density(alpha = 0.2, bw = 0.5, position = "stack") +
    scale_x_continuous(trans = "log2") +
    facet_grid(. ~ year)
