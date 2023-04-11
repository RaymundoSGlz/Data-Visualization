# Cargamos la librería y el dataset
library(dslabs)
data(heights)
# Separamos los datos en hombres y mujeres
male <- heights$height[heights$sex == "Male"]
female <- heights$height[heights$sex == "Female"]
# Creamos una lista con los percentiles que nos interesan
q <- seq(0.1, 0.99, 0.2)
# Calculamos los percentiles para cada sexo
male_percentiles <- quantile(male, q)
female_percentiles <- quantile(female, q)
# construimos el dataframe
df <- data.frame(female = female_percentiles, male = male_percentiles)
# mostramos el dataframe
df