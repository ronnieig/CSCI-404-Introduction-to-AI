#Author:Ronald Britt Jr
#Date: September 23rd, 2025 (09/23/2025)
#Purpose: Test decision trees in R

#Loading library rpart
library(rpart)

#Load dummy data set Kyphosis
kyphosis <- kyphosis
kyphosis

#Growing the tree with dummy data in rpart called Kyphosis
#Where does Age, Number, and State have relation with kyphosis
fit <- rpart(Kyphosis ~ Age + Number + Start, method="class", data=kyphosis)
fit

#plot the results
plot(fit, main="Classification plot for Kyphosis", uniform=TRUE)
text(fit, use.n=TRUE, all=TRUE, cex=.8)
