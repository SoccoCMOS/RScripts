library(FSelector)
library(e1071)
result <- cfs(Species~. , iris)
result
class <- naiveBayes(iris[,1:4],iris[,5])
class

weights <- information.gain(Species~.,iris)
print(weights)  ### gains d'infos par atribut

subset <- cutoff.k(weights,2) ## les 2 plus pertinentes
subset

f<- as.simple.formula(subset,"Species")  // formule simple
print(f)

weights <-gain.ratio(Species~.,iris)
print(weights)