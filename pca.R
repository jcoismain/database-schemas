data(iris)
head(iris)

logx <- log(iris[, 1:4])
species <- iris[,5]

iris_pca <- prcomp(logx, center=TRUE, scale.=TRUE)

print(iris_pca)

summary(iris_pca)




install.packages("factoextra")
library("FactoMineR")
library(factoextra)

res.pca <- PCA(logx, graph=FALSE)
get_eig(res.pca)


fviz_screeplot(res.pca, addlabels=TRUE, ylim=c(0,90))
