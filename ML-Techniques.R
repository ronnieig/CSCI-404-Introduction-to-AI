#Author: Ronald Britt Jr
#Date: 11/6/2025
#Purpose: Implement Neural Networks/ML techniques in R

#Load Library
library(caret)

#Create dataset
dataset <- iris
head(dataset)

#Classify what type of data is in which column (EXAMPLE: numeric)
sapply(dataset, class)
levels(dataset$Species)

validation_index <- createDataPartition(dataset$Species, p=0.80,
list=FALSE)
validation <- dataset[-validation_index,]
dataset <- dataset[validation_index,]