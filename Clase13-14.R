##################################
#Clase 13-14: Operaciones datasets
##################################

#Llamamos la biblioteca que contiene a select
library(dplyr)
library(readr)

#Descargamos la base de datos “mtcars”
data("mtcars")

#Ejemplo
mtcars%>% select(disp)
select(mtcars, 1, 6)
select(mtcars, 1:6)
select(mtcars, mpg, wt)
select(mtcars, -c(mpg, disp))
mtcars %>%
  select(-c(mpg, disp))

filter(mtcars, cyl == 8 & hp > 240)
filter(mtcars, cyl == 8 | hp > 240)

arrange(mtcars, mpg)
arrange(mtcars, desc(mpg))

#########
#Desafio
########@

#1. Importar base de datos con nombre “Salaries”
#2. Seleccionar nombre del trabajador, pago de horas extras, otros pagos y el pago total
#3. Filtrar aquellos trabajadores que ganen más de 250 mil
#4. Crear nueva variable que establezca el pago base de cada trabajador
#5. Haga funcionar todo el desafío ejecutándolo con ctrl+enter una sola vez


salarios <- read_csv("/Users/bigdata/Desktop/Salaries.csv")
salarios %>%
  select(EmployeeName,OvertimePay, OtherPay, TotalPay)%>%
  filter(TotalPay > 250000) %>%
  mutate(sueldo_base = (TotalPay - OtherPay - OvertimePay))
