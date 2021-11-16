# Automatic Grid; Random Forest

WholeYear=read.csv("TASK2/WholeYear.csv",header = TRUE,sep = ",")
head(WholeYear)
dim(WholeYear)

#load library and set seed
library(caret)
set.seed(998)

#create a 20% sample of the data 
35136 *0.2
WholeYear <- WholeYear[sample(1:nrow(WholeYear), 7000,replace=FALSE),]


# define an 75%/25% train/test split of the dataset
inTraining <- createDataPartition(WholeYear$SolarRad, p = .75, list = FALSE)
training <- WholeYear[inTraining,]
testing <- WholeYear[-inTraining,]


#10 fold cross validation
(fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 1))


#train Random Forest Regression model with a tuneLenght = 1 (trains with 1 mtry value for RandomForest)
(rfFit1 <- train(SolarRad~., data = training, method = "rf", trControl=fitControl, tuneLength = 1))




