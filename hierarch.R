Data=iris[,-5]
Data
d<-dist(Data,method="euclidean")
CAH<-hclust(d,method="ward")
CAH
plot(CAH)
CAH3=cutree(CAH,k=3) ###  couper l'arbre en 3
CAH3

rect.hclust(CAH,k=3)
sort(CAH3)