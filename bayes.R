library(class)
library(e1071)
data(iris)
classifier<-naiveBayes(iris[,1:4],iris[,5]) 
#####4 premières colonnes pour attributs, on ignore les  lignes, 5ème colonne = résultat car c du supervisé
classifier
table(predict(classifier, iris[,-5]),iris[,5])
n=dim(iris)[1] ##### contient le nombre de valeurs
index = sample(n,0.7*n)
Appren=iris[index,]
Test=iris[-index,]
nb.model <- naiveBayes(Species ~ ., data=Appren) #~ attribut à considérer
Pred=predict(object=nb.model,newdata=Test)
table(Pred)
Test.mod<- cbind(Test,Pred)
head(Test.mod,5)
Confusion=table(Test.mod$Species, Test.mod$Pred)
round(prop.table(Confusion),2)