## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(dslabs)
data(gapminder)

## Creamos el nuevo dataset
daydollars <- gapminder %>% 
            mutate(dollars_per_day = gdp / population / 365) %>%
                filter(year == 2010 & continent == "Africa" & !is.na(gdp))

# Mostramos el encabezado del dataset
head(daydollars)
