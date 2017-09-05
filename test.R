# scatterplot3d による3次元プロット
library(scatterplot3d)
scatterplot3d(iris[, 1:3], pch = as.numeric(iris$Species))

# latticeを使った3次元プロット
#library(lattice)
#cloud(Petal.Length ~ Sepal.Length * Sepal.Width, data = iris, groups = Species)