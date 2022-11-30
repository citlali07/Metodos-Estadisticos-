
## Citlali 
## Entrevista 31/08/22

Entrevista <- read.csv("https://raw.githubusercontent.com/AmandaIRoSan/Metodos_Estadisticos/main/Datos/Encuesta_codificada.csv")

Enc1 <- read.csv ("https://raw.githubusercontent.com/AmandaIRoSan/Metodos_Estadisticos/main/Datos/Encuesta_codificada.csv" , header=T)


# convertir variables a factores
Enc1$Entrev <- as.factor(Enc1$Entrev)
levels(Enc1$Entrev) # revisar si son factores

Enc1$Genero <- as.factor(Enc1$Genero)
levels(Enc1$Genero)
Enc1$Carrera <- as.factor(Enc1$Carrera)
levels(Enc1$Carrera)
Enc1$Semestre <- as.factor(Enc1$Semestre)
levels(Enc1$Semestre)

# Funcion para transformar caracteres a fechas

library(lubridate)
# Enc1$Fecha <- as_Date(Enc1$Fecha) #Pendiente de arreglar
gen <- table(Enc1$Genero)
round(gen/length(Enc1$Genero)*100,1)

#¿Qué equipo entrevistador tuvo más encuestas? 

ent <- table(Enc1$Entrev)
prop.table(ent)*100
pie(prop.table(ent)*100)

# ¿Cuál es el porcentaje de alumnos entrevistados por carrera?

table(Enc1$Carrera)
car <- table(Enc1$Carrera)
prop.table(car)*100
pie(prop.table(car)*100)

# Cuántos alumnos participaron por semestre?

sem <- table(Enc1$Semestre)
prop.table(sem)*100
pie(prop.table(sem)*100)

# Cuál es el rango de edad de los participantes?

range(Enc1$Edad)

#¿Cómo te enteraste de la facultad?

conFCF <- table(Enc1$oi_1)
prop.table(conFCF)*100
pie(prop.table(conFCF)*100)

# ¿Fué tu primera opción la FCF?
op <- table(Enc1$oi_2)
prop.table(op)*100
pie(prop.table(op)*100)

# ¿Presentaste en otra Facultad?
of <- table(Enc1$oi_2a)
prop.table(iof)*100
pie(prop.table(iof)*100)
  
#¿Cual facultad?
cf1 <- table(Enc1$oi_2b)
prop.table(cf1*100)
pie.(prop.table(cf1)*100)

#¿Estuviste en otra facultad? 
iof <-table(Enc1$oi_4)
prop.table(iof)*100
pie(prop.table(iof)*100)

#¿Cual facultad?
cf2 <- table(Enc1$oi_4a)
prop.table(cf2)*100
pie(prop.table(cf2)*100)

#Tu experiencia en la facultad 
 #Convivencia 

#¿Que te parece la convivencia entre los alumnos de a facultad?
ca <- table(Enc1$ef_1)
prop.table(ca)*100
pie(prop.table(ca)*100)

#Instalaciones 

#¿Te agradan las instalaciones de la facultad?
ai <- table(Enc1$ins_1)
prop.table(ai)*100
pie(prop.table(ai)*100)

#Aprendizaje

#¿Conoces la malla curricular de tu carrera?
ca <-table(Enc1$ap_1)
prop.table(cm)*100
pie(prop.table)(cm)*100

#Aprendizaje
#�Conoces la malla curricular de tu carrera?

cm <- table(Enc1$ap_1)
cm
prop.table(cm)*100
pie(prop.table(cm)*100)

#�Entregas las tareas a tiempo?

tat <- table(Enc1$ap_2)
tat
prop.table(tat)*100
pie(prop.table(tat)*100)

#�Estoy concentrado durante las clases?

cdc <- table(Enc1$ap_3)
cdc
prop.table(cdc)*100
pie(prop.table(cdc)*100)

# Guardar la BD con los datos nuebvos en formato csv
write.csv(Enc1, "Encuesta_codificada.csv")

library(dplyr)



#Guardar la BD con los datos nuevos en formato csv
write.csv (Enc1, "Encuesta codificada.csv")



library(dplyr)

Seg.opcion <- Enc1 %>%
  filter(oi_2 == "NO") 

prim.op <- Enc1 %>%
  filter(oi_2 == "SI")

fix(Enc1)

barplot(round(gen/length(Enc1$Genero)*100,1),
        ylim= c(0,100),
        col= "lightgreen" ,
        xlab = "Genero",
        ylab = "Porcentaje" 
        
  
        
        
#Remover objetos 
rm(oi2.no)
rw(F)





  
