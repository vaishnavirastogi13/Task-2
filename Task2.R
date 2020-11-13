#Vaishnavi Rastogi
#PREDICTION USING UNSUPERVISED ML

data=iris
head(data)
str(data)
summary(data)
str(data$Species)
summary(data$Species)

df=data[,1:4]
library(ggplot2)
plot(df,main="Length and width of Sepal and Petal",col="blue")
km1=kmeans(df,2,nstart=100)
km1
km1$cluster
plot(df,col=(km1$cluster+1),main="Result of Kmeans clustering with k=2",pch=20,cex=2)

km2=kmeans(df,3,nstart=100)
km2
km2$cluster
plot(df,col=(km2$cluster+1),main="Result of Kmeans clustering with k=3",pch=20,cex=2)

x=rep(0,15)
for(i in 1:15)
{
  c1=kmeans(df,i)
  x[i]=c1$tot.withinss
}
x
plot(c(1:15),x,ylab="Total within sum of squares",xlab="Number of clusters",type="b",col="blue")
# after 2 clusters the observed difference in the within-cluster dissimilarity is not substantial. 
#Consequently, we can say with some reasonable confidence that the optimal number of clusters to be used is 2.