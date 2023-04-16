## Cargamos las librerías y seleccionamos los datos
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(dslabs)
data(us_contagious_diseases)

the_disease <- "Smallpox" # Seleccionamos la enfermedad
dat <- us_contagious_diseases |>
    filter(!state %in% c("Hawaii", "Alaska") & disease == the_disease
    & weeks_reporting >= 10) |> # Eliminamos menos de 10 semanas
    mutate(rate = count / population * 10000) %>%
    mutate(state = reorder(state, rate))

# Graficamos
dat |> ggplot(aes(year, state, fill = rate)) +
    geom_tile(color = "grey50") +
    scale_x_continuous(expand = c(0, 0)) +
    scale_fill_gradientn(colors = brewer.pal(9, "Reds"), trans = "sqrt") +
    theme_minimal() +
    theme(panel.grid = element_blank()) +
    ggtitle(the_disease) +
    ylab("") +
    xlab("")
