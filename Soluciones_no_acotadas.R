###EJEMPLO DE SOLUCION NO ACOTADA EN EL METODO SIMPLEX###
#Cargar librerias
library(lpSolve)
library(linprog)

########### Establecer funcion objeto y restricciones ##########
# Maximizar 
#2x1 + x2  Sujeto a: 
#x1 - x2 <= 10 
#2x1  <= 40
#x1, x2 >= 0

z <- c(2, 1)
A <- matrix(c(1,2,2,0), ncol = 2)
b <- c(10,40)
dir <- rep('<=', 2)

solopt <- solveLP(z,b,A, maximum = TRUE, dir, verbose = 4) #Verbose muestra las tablas con cada iteracion

summary(solopt)

