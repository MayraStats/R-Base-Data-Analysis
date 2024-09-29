#Para iniciar a exploração do dataset
data("ChickWeight")

#para visualizar todos os dados
View(ChickWeight)

#abriu para mim a documentação do data set, que pode conter detalhes
?ChickWeight 

#sumarização (um resumo) estatístico
summary(ChickWeight)

#Filtrar dados da Dieta 1
library(dplyr)
dieta_1 <- ChickWeight %>% filter(Diet==1)

# Criar gráfico de linhas para as 220 observações da dieta 1
library(ggplot2) 
ggplot(dieta_1, aes(x = Time, y = weight, group = Chick, color = factor(Chick))) +
  geom_line() +
  labs(title = "Crescimento dos Pintinhos na Dieta 1",
       x = "Tempo (dias)",
       y = "Peso (gramas)",
       color = "Pintinho") +
  theme_minimal()

#vamos filtrar a dieta 2
library(dplyr)
dieta_2 <- ChickWeight %>% filter(Diet==2)

#Vamos criar o gráfico da dieta 2
library(ggplot2)
ggplot(dieta_2, aes(x= Time, y=weight, group = Chick, color = factor(Chick)))+
  geom_line() + 
  labs(title = "Crescimento dos Pintinhos na Dieta 2", 
       x = "Tempo (dias)", 
       y = "Peso (gramas)", 
       color = "Pintinho") +
  theme_minimal()

#Filtrando Dados da Dieta 3
library(dplyr)
dieta_3 <- ChickWeight %>% filter(Diet==3)

#Criar o grafico para a dieta 3
library(ggplot2)
ggplot(dieta_3, aes(x=Time, y=weight, group = Chick, color = factor(Chick)))+
  geom_line() +
  labs(title = "Crescimento dos Pintinhos na Dieta 3",
       x = "Tempo (dias)",
       y = "Peso (gramas)",
       color = "Pintinho") +
  theme_minimal()

#fazer o mesmo para a dieta 4
library(dplyr)
dieta_4 <- ChickWeight %>% filter(Diet==4)

#Criar Gráfico Dieta 4
library(ggplot2)
ggplot(dieta_4, aes(x = Time, y = weight, group = Chick, color = factor(Chick)))+
  geom_line()+
  labs(title = "Crescimento dos Pintinhos na Dieta 4",
       x = "Tempo (dias)",
       y = "Peso (gramas)",
       Color = "Pintinho")+
  theme_minimal()
