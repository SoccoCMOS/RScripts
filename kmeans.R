#iris est un benchmark supervisé utilisé pour tester les méthodes de clustering aussi
# nombre d'erreurs = nombre d'individus mal classés
library(cluster)
Data=iris[,-5]
Data
d<-dist(Data,method="euclidean")
clust<-kmeans(Data,3)
clust

# Within cluster sum of squares by cluster: = inertie intraclase
# 1-erreur= inter (between) / total 
# inertie intra-classes = somme des variances dans chaque cluster

clusplot(Data,clust$cluster,color=TRUE,shade=TRUE,labels=2,lines=0)