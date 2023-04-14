## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

## Creamos el nuevo dataset
gapminder_africa_2010 <- gapminder %>% 
            mutate(dollars_per_day = gdp / population / 365) %>%
                filter(year == 2010 & continent == "Africa" & !is.na(gdp))

## Scatterplot por region
gapminder_africa_2010 %>%
  ggplot(aes(dollars_per_day, infant_mortality, color = region)) +
  geom_point(alpha = 0.5, size = 3)
