library(MASS)
lda1 <- lda(as.matrix(iris[,1:4]),iris$Species)
lda1
plot(lda1)
plot(lda1,dimen=1,type="both")

##### KLAR Library for AD quadratique ou linéaire