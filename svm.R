library(e1071)
data(iris)
attach(iris)
model <- svm (Species~. , data=iris)
x <- subset(iris,select=-Species)
y<- Species
model <- svm(x,y)
print(model)
summary(model)

#test with train data
## Get test data random  (30% aléatoire)
n=dim(iris)[1]
index = sample(n,0.3*n)
y=iris[index,5]
Appren=iris[index,1:4]

pred<- predict(model,Appren)
pred

#check accuracy

table(pred,y)

#compute decision values and probabilities

pred <- predict (model, Appren, decision.values= TRUE)
attr(pred, "decision.values") [1:4,]

plot(cmdscale(dist(iris[,-5])),
     col = as.integer(iris[,5]),
     pch = c("o","+")[1:150 %in% model$index + 1])
