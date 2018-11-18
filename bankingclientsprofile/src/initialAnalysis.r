#Data Analysis
#Assume mydata has been loaded

#Naive analysis: 
#1. single people has the most money to do a term deposit
#2. People with college degree tends to deposit more.
#The simplest case, one of the parameter has a linear relationship with the result.  We will use lm to find out.

hist(mydata$age[mydata$y=="yes"], main="Campaign success by Age")
successAge<-nrow(mydata[mydata$y=="yes" & mydata$age>19 & mydata$age<60,])
totalAge<-nrow(mydata[mydata$age>19 & mydata$age<60,])
successrate<-successAge/totalAge
#[1] 0.1878766




