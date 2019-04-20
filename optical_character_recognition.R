#import the dataset
letters<-read.csv("letterdata.csv")

#create the training data and test data
letters_train<-letters[1:16000,]
letters_test<-letters[16001:20000,]

#load the required package
library(kernlab)

#create the training model
model<-ksvm(letter~.,data=letters_train,kernel="rbfdot")

#predict the characters by giving the testdata to the model
pred<-predict(model,letters_test)

#Evaluating model performance ----

#TRUE indicates no of values predicted correctly
#FALSE indicates no of values predicted wrongly
res<-pred==letters_test$letter
table(res)
