library("FactoMineR")

df <- read.delim("Data_CPDO.txt")

poluentes <- scale(df[, 2:9])

res.pca <- FactoMineR::PCA(poluentes, graph = F)

res.pca$eig

corr_matrix <- cor(poluentes)

a <- prcomp(corr_matrix)
a$x

?prcomp
biplot(prcomp(corr_matrix))
