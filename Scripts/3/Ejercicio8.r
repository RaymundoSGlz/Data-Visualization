## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

## Creamos el nuevo dataset
daydollars <- gapminder %>% 
            mutate(dollars_per_day = gdp / population / 365) %>%
                filter(year == 2010 & continent == "Africa" & !is.na(gdp))

# Gráfico de densidad suave
daydollars %>%
    ggplot(aes(dollars_per_day)) +
    geom_density() +
    scale_x_continuous(trans = "log2")
