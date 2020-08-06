###############################
#CLASE 3-4: Estructura de datos
###############################

##########
#VECTORES#
##########

#Ejemplo 0
# Vector numérico
c(1, 2, 3, 5, 8, 13)

# Vector de cadena de texto
c("arbol", "casa", "persona")

# Vector lógico
c(TRUE, TRUE, FALSE, FALSE, TRUE)

#Secuencia del 10 al 1
10:1

#Ejemplo 1
#Asignando nombres a vectores

Toyota <- c(5,7,13)
Audi <- c(4,1,7)
Nissan <- c(14,7,11)

Toyota

########
#LISTAS#
########

#Ejemplo 0
tierra <- list("5","hoja","2.3 kilogramos")

#Ejemplo 1
colores <- list(c("Blanco", "Negro", "Rojo"))

marcas <- list(c("Toyota", "Audi", "Nissan"))

##########
#MATRICES#
##########

#Ejemplo 0
a <-matrix(1:12, nrow = 3, ncol = 4)
a
class(a)

#Ejemplo 1
B <- matrix(c(Toyota, Audi, Nissan), nrow=3, ncol=3, dimnames = c(colores,marcas))
B
matrix()
t(B)
det(B)
solve(B)


############
#DATAFRAMES#
############

#Ejemplo 0
mi_df <- data.frame(
  "entero" = 1:4, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d"))
)

mi_df

#Ejemplo 1
Autos <- data.frame(Toyota, Audi, Nissan)
colnames(Autos)
Toyota[2]
Autos$Nissan

#Renombramos la primera posición "Toyota" a "Kia"
colnames(Autos)[1] <- "Kia"

#Renombramos las tres posiciones de las filas
rownames(Autos)[1] <- "Blanco"
rownames(Autos)[2] <- "Azul"
rownames(Autos)[3] <- "Negro"

#Agregando filas y columnas
Hyundai <- c(Blanco = 3, Azul = 5, Negro= 7)

Autos <- cbind(Autos, Hyundai)

#Creando nuevo vector y añadiendolo a la data frame con su nombre
Rojo <- c(5,2,6,8)
Autos <- rbind(Autos, Rojo)
rownames(Autos)[4] <- "Rojo"

#########
#DESAFIO#
#########

#Realiza los siguientes ejercicios y guarda como comentario tus resultados

#Cree un nuevo vector de otra marca de autos

Mazda <- c(5,6,2,9)
Mazda

#Agregue nuevo vector a la data frame Autos

Autos <- cbind(Autos, Mazda)
Autos

#Agregue nuevo vector de colores a la data frame Autos y que el índice de fila se llame de aquel color.

Amarillo <- c(4,6,3,6,7)
Autos <- rbind(Autos, Amarillo)
rownames(Autos)[5] <- "Amarillo"

#Obtenga la matriz transpuesta e inversa de la data frame

t(Autos)
solve(Autos)

#Renombre la columna de Audi por "Tesla"

colnames(Autos)[2] <- "Tesla"
Autos
