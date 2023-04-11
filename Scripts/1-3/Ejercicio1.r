# Cargamos la librería y el dataset
library(dslabs)
data(heights)
# Definimos las variables
male <- heights$height[heights$sex == "Male"]
female <- heights$height[heights$sex == "Female"]
# Calculamos las longitudes de las variables
length(male)
length(female)