
#This file shall only be run after the loaddata.r because it assumes the dataframe mydata is loaded and clean with 9 columns

#split the data to training set and testing set (75/25)
indexes = sample(1:nrow(mydata), size=0.25*nrow(mydata))
test <- mydata[indexes,]
train <- mydata[-indexes,]
x_test<-test[1:8]
y_test<-test[9]

#Run algorithms
#1. linear regression
train.model<-glm(y~age+job+marital+education+default+housing+loan+contact,data=train, family=binomial)
summary(mydata.model)

sink("glmsummary.txt")
print(summary(train.model))
sink()

#confusion matrix:

      FALSE TRUE
  no   8842   11
  yes  2257   11

#typeof(train.model) == list
predictions<-predict(train.model, x_test, type="response")

# the predictions only has 11 yes, while the y_test has 737.  The model apparently doesn't fit very well.
# first, let's remove age, default and housing and see.
# Things are not any better
# next, we can check if the parameters are inner-related.

#next algorithm to try is random forest

library("randomForest")
library("caret")
randomForest(y~age+job+marital+education+default+housing+loan+contact, data=train, y=train$y, xtest=x_test, ytest=y_test)

 randomForest(y~age+job+marital+education+default+housing+loan+contact, data=train)
 Call:
 randomForest(formula = y ~ age + job + marital + education +      default + housing + loan + contact, data = train)
               Type of random forest: classification
                     Number of trees: 500
No. of variables tried at each split: 2

        OOB estimate of  error rate: 20.52%
Confusion matrix:
      no yes class.error
no  8799  65 0.007333032
yes 2217  40 0.982277359

#The accuracy is 80%.  Very good.
predict.rf<-predict(train.model, x_test, type="response")

#looking at the confusion matrix, although the result is better than linear regression, most yeses were still missed by the algorithm
# try logistic regression as the next step.  Can't use lm for classification.
#try naive bayes, svm, multiple gaussiam.



