## Cargamos las librerías y los datos
library(dplyr)
library(ggplot2)
library(dslabs)
library(RColorBrewer)
data(us_contagious_diseases)

the_disease <- "Smallpox" # Seleccionamos la enfermedad
dat <- us_contagious_diseases |>
    filter(!state %in% c("Hawaii", "Alaska") & disease == the_disease
    & weeks_reporting >= 10) |> # Eliminamos semanas menores que 10
    mutate(rate = count / population * 10000) |>
    mutate(state = reorder(state, rate))

avg <- us_contagious_diseases |>
    filter(disease == the_disease) |>
    group_by(year) |>
    summarize(us_rate = sum(count, na.rm = TRUE) / sum(population,
        na.rm = TRUE) * 10000)

dat |> ggplot() +
    geom_line(aes(year, rate, group = state),
        color = "grey50",
        show.legend = FALSE, alpha = 0.2, linewidth = 1
    ) +
    geom_line(mapping = aes(year, us_rate), data = avg,
        linewidth = 1, color = "black") +
    scale_y_continuous(trans = "sqrt", breaks = c(5, 25, 125, 300)) +
    ggtitle("Cases per 10,000 by state") +
    xlab("") +
    ylab("") +
    geom_text(data = data.frame(x = 1955, y = 50),
        mapping = aes(x, y, label = "US average"), color = "black") +
    geom_vline(xintercept = 1963, col = "blue")
