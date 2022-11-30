
#Citlali Guadalupe Garcia Ramones
# 26/09/22
#Examen 

#Ejercicio 1 

InsectSprays

boxplot(InsectSprays$count ~ InsectSprays$spray,
        xlab = "spray",
        ylab= "count", 
        col = "green")

#tapply

tapply(InsectSprays$count, InsectSprays$spray, median)                       
tapply(InsectSprays$count, InsectSprays$spray,var)

#ANOVA 

par.aov <- aov (InsectSprays$count ~ InsectSprays$spray)
summary(par.aov)

#tukey 

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))
