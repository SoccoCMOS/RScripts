library(mlbench)
library(e1071)
library(class)
data(Glass)
attach(Glass)

### Données training et test

### Récupérer les index
n=dim(Glass)[1]  ### dimension de Glass
index = sample(n,0.7*n)

### Echantillon d'apprentissage
Appren=Glass[index,] ## Echantillon d'apprentissage

### Echantillon de test
test=Glass[-index,1:9]
y=Glass[-index,Type]  ## Bonne réponses
test
y

#### Création du modèle
model <- svm (Type~. , data=Appren)
model

#### Prédiction
pred <- predict(model,test)
pred
y


#### Table de confusion
table(pred,y)

### Visualisation graphique

pred <- predict (model, Appren, decision.values= TRUE)
attr(pred, "decision.values") [1:8,]

plot(cmdscale(dist(Appren[,-10])),
     col = as.integer(Appren[,10]),
     pch = c("o","+")[1:214 %in% model$index + 1])