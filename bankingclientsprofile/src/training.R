
#This file shall only be run after the loaddata.r because it assumes the dataframe mydata is loaded and clean with 9 columns

#split the data to training set and testing set (75/25)
indexes = sample(1:nrow(mydata), size=0.25*nrow(mydata))
test <- mydata[indexes,]
train <- mydata[-indexes,]

#Run algorithms
#1. linear regression
train.model<-glm(y~age+job+marital+education+default+housing+loan+contact,data=train, family=binomial)
summary(mydata.model)

sink("glmsummary.txt")
print(summary(train.model))
sink()


