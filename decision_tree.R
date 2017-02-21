library(rpart)
#library(cluster)
#clusplot(iris,iris$Species)
#precip
#library(rpart.plot)
data(Titanic)
summary(Titanic)

titanicchejra<-rpart(Survived~.,data=Titanic)
titanicchejra