setwd("C:/Users/sjsa3/Desktop/Shared_with_Mac/Sem1_year2/FIT3152/Week - (1)/Dataset")
T <- read.csv("Toothbrush.csv")
InvestA <- read.csv("InvestA.csv")

tapply(InvestA$FV, InvestA$Group, mean)
cor(T)
plot(T)
 
attach(T)
fitted = lm(T$Function ~ Price)
