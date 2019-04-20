letters<-read.csv("letterdata.csv")
letters_train<-letters[1:16000,]
letters_test<-letters[16001:20000,]
library(kernlab)
model<-ksvm(letter~.,data=letters_train,kernel="rbfdot")
pred<-predict(model,letters_test)
res<-pred==letters_test$letter
table(res)