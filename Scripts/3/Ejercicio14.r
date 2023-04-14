## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

## Creamos el nuevo dataset
gapminder_africa <- gapminder %>%
            mutate(dollars_per_day = gdp / population / 365) %>%
                filter(year %in% c(1970, 2010) & continent == "Africa" &
                 !is.na(gdp) & !is.na(infant_mortality))

## Scatterplot por region
gapminder_africa %>%
  ggplot(aes(dollars_per_day, infant_mortality,
        color = region, label = country)) +
  scale_x_continuous(trans = "log2") + # Cambiamos la escala de x
  geom_point(alpha = 0.5, size = 3) +
  geom_text(size = 4, show.legend = FALSE) +
  facet_grid(year ~ .)
