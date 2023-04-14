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

## Gráfico de densidad suave
daydollars %>%
    ggplot(aes(dollars_per_day)) +
    geom_density(fill = "gray") +
    scale_x_continuous(trans = "log2") +
    facet_grid(. ~ year)
