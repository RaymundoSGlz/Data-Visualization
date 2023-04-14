## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(dslabs)
data(gapminder)

## Creamos el dataframe
df <- gapminder %>%
    filter(continent == "Africa", year == 2012,
            fertility <= 3, life_expectancy >= 70) %>%
    select(country, region)
## Mostramos el dataframe
df
