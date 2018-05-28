###EJEMPLO DE CICLADO EN EL METODO SIMPLEX###
#Cargar librerias
library(lpSolve)
library(linprog)

########### Establecer funcion objeto y restricciones ##########
# Maximizar 
#3x1 + 2x2  Sujeto a: 
#4x1 - x2 <= 8 
#4x1 + 3x2 <= 12
#4x1 + x2 <= 8
#x1, x2 >= 0

z <- c(3, 2)
A <- matrix(c(4,4,4,1,3,1), ncol = 2)
b <- c(8,12,8)
dir <- rep('<=', 3)

solopt <- solveLP(z,b,A, maximum = TRUE, dir, verbose = 4) #Verbose muestra las tablas con cada iteracion

summary(solopt)

