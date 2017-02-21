library(nnet)
#Species en fonction des autres variables explicatives

class=nnet(Species~.,data=iris,size=5,decay=1,linout=TRUE,maxit=100)
class

class$fitted.values #valeurs ajustée
class$convergence # s'il y a convergence
class$wts #les poids
class$residuals #l'erreur

#### ECHANTILLON
n=dim(iris)[1]
index = sample(n,0.3*n)
y=iris[index,5]
Appren=iris[index,1:4]

pred<- predict(class,Appren)
pred

# Erreur quadratique
#sum((pred-dataset[,"Species"])^2)/nrow(dataset)

##Matrice de confusion pour la prévision
table(pred,y)  --> ##### !!! Erreur de longueur !!!