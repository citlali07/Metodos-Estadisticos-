
#Examen 3 
#Citlali Guadalupe García Ramoes 
#1899126

#Ejercicio 1 

sueloz <- read.csv("https://raw.githubusercontent.com/citlali07/Metodos-Estadisticos-/main/su.csv")
library(repmis)
boxplot(sueloz$Nem ~ sueloz$Suelo,
        xlab = "Suelo",
        ylab = "Nematodos",
        col = "blue")

#Se observa algunas diferencias con valores un poco altos 

#tapply 

tapply(sueloz$Nem, sueloz$Suelo, var)

#La varianza es 6 veces mas pequeña en comparacion a la grande

#ANOVA 

par.aov <- aov (sueloz$Nem ~ sueloz$Suelo)
summary(par.aov)

#Tukey
TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))

#Hipotesis nula: Todos los valores son iguales y son muy altos 
#Hipotesis alternativa: Los valores de los nematodos son altos 
# El valor P es de 9.28 con grados de libertad en un valor de 4 
# obteniendo como grados residuales 20 y con un contratse de 0.000207 
# Si se encuentra una diferencia porque se encuentra un valor menos de .05 
# Conclusion: La importancia de observar los valores de ANOVA nos indica la probabilidad que hay 
#sobre los valores vistos en este punto y hacer una hipotesis desde diferente punto de vista. 

#Ejercicio 2

riegoz <- read.csv("https://raw.githubusercontent.com/citlali07/Metodos-Estadisticos-/main/Exam.csv")
library(repmis)
boxplot(riegoz$Observaciones ~ riegoz$Riego,
        xlab = "Riego",
        ylab = "Crecimiento",
        col = "blue")
#taply
tapply(riegoz$Observaciones, riegoz$Riego, var)

#ANOVA
par.aov <- aov (riegoz$Observaciones ~ riegoz$Riego)
summary(par.aov)

#Tukey 
TukeyHSD(par.aov)

plot(TukeyHSD(par.aov))
