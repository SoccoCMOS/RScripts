library(class)
library(e1071)
data(iris)
classifier<-naiveBayes(iris[,1:4],iris[,5]) 
#####4 premi�res colonnes pour attributs, on ignore les  lignes, 5�me colonne = r�sultat car c du supervis�
classifier
table(predict(classifier, iris[,-5]),iris[,5])
n=dim(iris)[1] ##### contient le nombre de valeurs
index = sample(n,0.7*n)
Appren=iris[index,]
Test=iris[-index,]
nb.model <- naiveBayes(Species ~ ., data=Appren) #~ attribut � consid�rer
Pred=predict(object=nb.model,newdata=Test)
table(Pred)
Test.mod<- cbind(Test,Pred)
head(Test.mod,5)
Confusion=table(Test.mod$Species, Test.mod$Pred)
round(prop.table(Confusion),2)