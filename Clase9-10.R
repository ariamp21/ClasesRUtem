#######################
#Clase 9-10: Tidyverse
#######################

install.packages("tidyverse")
#Ejemplo readr 
library(readr)
exp_iris <- write_csv(iris, file("/Users/bigdata/R_Ariam/iris.csv"))

imp_iris <- read_csv("/Users/bigdata/R_Ariam/iris.csv")

#Ejemplo dplyr
library(dplyr)


iris %>%
  select(Largo_Sepalo,Especies)

iris %>%
  select(Especies, ends_with("Petalo"))%>%
  filter(Especies == "versicolor")%>%
  mutate(Diferencia = (Largo_Petalo - Ancho_Petalo))%>%
  arrange(desc(Largo_Petalo))

#Ejemplo Tidyr
#Abundancia detectada por especie en tres días de muestreo 
library(tidyr)

df_cuentas <- data.frame(dia = c("Lunes", "Martes", "Miercoles"), Lobo = c(2, 1, 3), Liebre = c(20, 25, 30), Zorro = c(4, 4, 4))

df_largo <- 
  df_cuentas %>% 
  gather(key = Columnas, value = Valores)

df_largo <- 
  df_cuentas %>% 
  gather(key = Columnas, value = Valores, -dia)

df_largo <- 
  df_cuentas %>% 
  gather(key = Especie, value = Abundancia, -dia)

#Ejemplo ggplot2
library(ggplot2)
ggplot(iris, aes(x = Especies, y = Largo_Sepalo)) + 
  geom_boxplot() + 
  #geom_jitter(aes(color = Especies))+
  ggtitle("Largo del Sépalo de Iris según especie")

#Ejemplo purrr
library(purrr)

vector <- c(5.5, 2.4, 1.4)
lista <- list(4,6,2)


#Ejemplo tibble
library(tibble)
a <- tibble(x = 1:5, y = 1, z = x ^ 2 + y)
a[["z"]]
a[[3]]

#Ejemplo stringr
library(stringr)
lista_str <- list("Diana Lopez", "Ariam Aranda", "Jose Tobar")
str_split(lista_str, " ")
str_sub(lista_str, start=6, end = )

#Ejemplo forcats
library(forcats)
#avocado <- read_excel("avocado.xlsx")
#avocado <- fct_reorder(.f = avocado$region, .x = avocado$`Total Bags`, .fun = min)

str(avocado)

#Desafio
#1. Importe y guarde data “mtcars” disponible en datasets de R
#2. Seleccione variables “mpg”, “cyl” y “hp”
#3. Filtre según mpg mayores o iguales a 15 y cyl mayores o iguales a 6
#4. Cree un histograma de los caballos de fuerza “hp” de la salida anterior
#5. Poner título al gráfico y nombre a las variables x e y

library(datasets.load)
data("mtcars")
mtcars %>%
  select(mpg, cyl, hp) %>%
  filter(mpg >= 15 & cyl >= 6)

library(ggplot2)
ggplot(mtcars, aes(x=hp))+
  geom_histogram()+
  labs(x="Caballos de fuerza", y="Cantidad de autos")+
  ggtitle("Caballos de fuerza en autos seleccionados")