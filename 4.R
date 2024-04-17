# install.packages("scatterplot3d")
library(scatterplot3d)
data = mtcars
Y=mtcars$mpg
Y
## [1] 110 80 70 120 150 90 70 120
X2=mtcars$hp
X1
## [1] 30 40 20 50 60 40 20 60
X1=mtcars$disp
X2

modd = lm(X1~X2+Y)
graph = scatterplot3d(Y, X1, X2)
graph$plane3d(modd)