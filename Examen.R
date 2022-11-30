
#Examen Metodos Estadisticos 
#Citlali Garcia 
#12/10/22



sueloz <- read.csv("https://raw.githubusercontent.com/citlali07/Metodos-Estadisticos-/main/su.csv")
library(repmis)
boxplot(sueloz$Nem ~ sueloz$Suelo,
        xlab = "Suelo",
        ylab = "Nematodos",
        col = "Green")

#tapply 
tapply(sueloz$Nem, sueloz$Suelo, var)

#la dif entre la mas pequeña y la más grande es de 480.9 (571.7 a 90.8), 
#es decir, 6.29 veces más

#ANOVA
par.aov <- aov (sueloz$Nem ~ sueloz$Suelo)
summary(par.aov)

#valor de p = 9.287
#grados de libertad = 4
#grados de libertad residuales = 20
#contraste = .000207

#shapiro
shapiro.test(sueloz$Nem)
#Shapiro-Wilk normality test
#   data:  sueloz$Nem
#  W = 0.96032, p-value = 0.421

#Existe una diferencia significativa en el S4,
#el valor promedio mostro una variabilidad con los demás grupos, también 
#en el valor promedio de S1, y en la variabilidad del S5.

#turkey
TukeyHSD(par.aov)
# Tukey multiple comparisons of means
# 95% family-wise confidence level
# Fit: aov(formula = sueloz$Nem ~ sueloz$Suelo)
# $`sueloz$Suelo`


#tabla turkey
plot(TukeyHSD(par.aov))
# Si existen diferencias en 3 comparaciones, 
# y esas 3 comparaciones están involucradas con el "S4" (s4-s1, s4-s2, s5-s4), 
# en la tabla esas 3 no tocan la línea del 0

#Conclusion: Existieron 3 comparaciones que resultaron tener diferencias significativas, 
#sin embargo en la mayoria estavan en la linea 0 

