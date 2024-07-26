library(dplyr)
library(tibble)
library(readxl)

dataset<-read_excel("Credit_Score1.xlsx")

Appl=dataset$Appl
Der=dataset$Der
SelfEm=factor(dataset$SelfEm)
Home=factor(dataset$Home)
Inc=dataset$Inc
Age=dataset$Age

mod0 = glm(Appl~1, family = "binomial")
summary(mod0)

mod1 = glm(Appl~Age, family = "binomial")
summary(mod1)

mod2 = glm(Appl~Inc, family = "binomial")
summary(mod2)

mod3 = glm(Appl~Age+Inc, family = "binomial")
summary(mod3)

mod4 = glm(Appl~Age+Inc+Home, family = "binomial")
summary(mod4)

Inc2=Inc^2
mod5 = glm(Appl~Age+Inc2+Der+Home, family = "binomial")
summary(mod5)

Inc3=Inc^3
mod6 = glm(Appl~Age+Inc3+Home+SelfEm, family = "binomial")
summary(mod6)

mod7 = glm(Appl~Age+Inc3+Der+Home+SelfEm, family = "binomial")
summary(mod7)

resd<-residuals(mod7,family="pearson")
resd

Simplest_Model= glm(Appl~Inc3+Der+SelfEm, family = "binomial")
summary(Simplest_Model)
