#Projeto Integrador Transdisciplinar em Ci?ncia de Dados
#Aluno: Anderson Ferreira dos Santos - RGM 22056742

setwd("D:/Universidade/PIT II")
library(readxl)
df <- read_excel("atividade_PIT_II_ci?ncia_dados.xlsx")
head(df)

qqnorm(scale(dados$'Valor Total Liberado'), xlab = "Distribuição Normal Teórica",
       ylab = 'Amostras')

qqline(scale(dados$'Valor Total Liberado'), col = "blue")