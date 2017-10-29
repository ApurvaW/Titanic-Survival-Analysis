setwd("D:/Kaggle/Titanic")
summary(train)
str(train)
train <- read.csv("train.csv", stringsAsFactors = FALSE)
table(train$Survived) # 0- dead and 1- survived
prop.table(table(train$Survived))   #proportion of passengers
test$Survived <- rep(0, 418) # replicate elements rep(x,times)
submit <- data.frame(PassengerId= test$PassengerId, Survived= test$Survived)
write.csv(submit, file = "theyallperish.csv", row.names = FALSE)
