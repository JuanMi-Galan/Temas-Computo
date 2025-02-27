#Galan Olivares Juan Miguel
library(lattice)

df=read.csv("heart.csv")

df$cp <- as.factor(df$cp)
df$sex <- as.factor(df$sex)
head(df)

#Dibujar el histograma de la variable “edad” agrupando por “género”.
densityplot(~ age, groups = sex, data = df, plot.points = FALSE, auto.key = TRUE)

#Dibujar un “Box plot” y “Violin plot” de la variable “cohlesterol” (chol) dividiendo por “Type of chest pain” (cp)

# Basic box plot 
bwplot(chol ~ cp, data = df, xlab = "Type of chest pain", ylab = "cohlesterol") 
# Violin plot using panel = panel.violin 
bwplot(chol ~ cp, data = df, panel = panel.violin, xlab = "Type of chest pain", ylab = "cohlesterol") 

