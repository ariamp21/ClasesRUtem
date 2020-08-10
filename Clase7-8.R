######################
#Clase 7-8: Funciones
######################

#Funciones preestablecidas
#Ejemplo 0:
promedio <- c(3,4,5,6,7)
sum(promedio)
max(promedio)
min(promedio)
which.min(promedio)
length(promedio)
log(promedio)
sqrt(promedio)
mean(promedio)
median(promedio)
sd(promedio)
var(promedio)

#Ejemplo 1
#Conociendo la data: Datos del inicio y del final
head(iris)  
tail(iris)

#Estadistica descriptiva
summary(iris)

#Regresion lineal
reg1 <- lm(Ancho_Sepalo ~ Largo_Sepalo, iris)
summary(reg1)

#Creacion de funciones
#Ejemplo 0:
mi_fun <- function(x, y){
  z <- x^2
  w <- y^3
  m <- a*z + b*w
  print(m)
}

a <- 10
b <- 20
mi_fun(2, 3)

#Ejemplo 1:

alfa <- 3.4189
beta <- -0.0618

estimacion <- function(alfa, beta){
  for(i in iris$Largo_Sepalo){
    print(alfa + beta*i)
  }
}

estimacion(alfa, beta)


#########
#DESAFIO
#########

#1. Crear una nueva regresion
#2. Entregue la estadistica descriptiva de la regresion
#3. Cree una funcion que estime los resultados de su regresion
#4. Cree una funcion que entregue TRUE cuando el valor de estimacion sea menor o iguales a 5, y FALSE aquellos que no cumplan

reg2 <- lm(Largo_Sepalo ~ Ancho_Sepalo, iris)
summary(reg2)
alfa2 <- 6.5262
beta2 <- -0.2234

estimacion1 <- function(alfa2, beta2){
  for(i in iris$Ancho_Sepalo){
    print((alfa2+beta2*i)<=5)
  }
}

estimacion1(alfa2, beta2)