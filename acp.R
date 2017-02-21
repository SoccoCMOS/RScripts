#library(ade4)
#library(FactoMineR)
Data<-iris[,-5]
acp<-PCA(Data) #dudi.pca(X,center=T,scale=T,nb=2) dans le cas de ade4
acp$eig
summary(acp)