###EJEMPLO DE DEGENERACION EN EL METODO SIMPLEX###
#Cargar librerias
library(lpSolve)
library(linprog)

########### Establecer funcion objeto y restricciones ##########
# Maximizar 
#3x1 + 9x2  Sujeto a: 
#x1 + 4x2 <= 8 
#x1 + 2x2 <= 4
#x1, x2 >= 0

z <- c(3, 9)
A <- matrix(c(1,1,4,2), ncol = 2, verbose = 4)
b <- c(8,4)
dir <- rep('<=', 2)

solopt <- solveLP(z,b,A, maximum = TRUE, dir, verbose = 4) #Verbose muestra las tablas con cada iteracion

summary(solopt)

