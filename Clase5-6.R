##################################
#CLASE 5-6: Estructuras de control
##################################

########
#IF-ELSE
########

#Ejemplo 0
if(4>2) {
  print("es verdadero")
}else{
  "es falso"
}

if(4<2) {
  print("es verdadero")
}else{
  "es falso"
}

#Ejemplo 1
Asistencia <- 75

if (Asistencia >= 85){
  print("Ok")
}else{
  print("Reprobado por inasistencia")
}

#######
#IFELSE 
#######

#Ejemplo 0
x <- 1:5
ifelse(x>=3, x+2, x-2)

#Ejemplo 1
ifelse(Prom_notas>=5.5,"Aprobado", "Rendir Examen" )

#Guardamos la información asignándolo a una variable
Situacion_estudiante <- ifelse(Prom_notas>=5.5,"Aprobado", "Rendir Examen" )
Situacion_estudiante

#####
#FOR
#####

#Ejemplo 0

for ( i in 1:10){
  print(i*2)
}

#Ejemplo 1

#Creamos un nuevo vector, al cual le añadiremos condiciones
Prom_notas <- c(4,3,6,5,2)

for(i in Prom_notas){
  if (i >= 4){
    print("Aprobado")
  }else{
    print("Reprobado")
  }
}


######
#WHILE
######

#Ejemplo 0
umbral <- 5
valor <- 0

while(valor < umbral) {
  print("Todavía no.")
  valor <- valor + 1
}

#Ejemplo 1
Notas <- list(5.5,4,3.3,5)
Suma_Notas <- 0
Promedio <- 0

while(length(Notas) == 4){
  for (i in Notas){
    Suma_Notas <- Suma_Notas + i
  }
  Promedio <- Suma_Notas/4
  print(Promedio)
  break
}

########
#DESAFIO
########

#Instalando el paquete de datas
install.packages("datasets.load")

#Descargando data, sobre la flor llamada Iris
data(iris)
iris

#Guardar data como una dataframe
iris <- as.data.frame(iris)

#1. Extraer valores del Largo del Pétalo de Iris

#A través de índice o $
iris[3]
iris$Petal.Length

#Cambie los nombres de todas las columnas en este formato "Largo_Sepalo"
colnames(iris)[1]<- "Largo_Sepalo"
colnames(iris)[2]<- "Ancho_Sepalo"
colnames(iris)[3]<- "Largo_Petalo"
colnames(iris)[4]<- "Ancho_Petalo"
colnames(iris)[5]<- "Especies"

colnames(iris)

#Determinar en cuantas ocasiones sucede que el Largo del Sepalo es mayor al Largo del Petalo

#Entregue TRUE cuando los Largos de Sepalo son mayores o iguales a 6, y FALSE en caso contrario

for(i in iris$Largo_Sepalo){
  if (i >= 6 ){
    print("TRUE")
  }else{
    print("FALSE")
  }
}


#Entregue la diferencia entre el Largo del Petalo y Ancho del mismo, guardelo como una variable llamada "Dif_Petalo"
Dif_Petalo <- iris$Largo_Petalo - iris$Ancho_Petalo

#Agregue la columna anterior a la DF Iris
iris <- cbind(iris, Dif_Petalo)
