setwd("C:/Users/jess_/Documents/GitHub/CSX415-project/bankingclientsprofile")


# Read CSV into R
mydata <- read.csv(file="C:/Users/jess_/Documents/GitHub/CSX415-project/bankingclientsprofile/data/bank-additional-full.csv", header=TRUE, check.names=FALSE, sep=";")
#dim(mydata)
#glympse(mydata)
#any(is.na(mydata))
#summary(mydata)

#Remove irrelevant fields: duration (this field highly affects the outcome.  It can be only used for benchmarks but not for predict model) 
mydata<-subset(mydata, select = -(month:nr.employed))

#clean up unknow data with dominant majority value
mydata$job[mydata$job == "unknown"] <- "admin."
mydata$marital[mydata$marital =="unknown"] <- "single"
mydata$education[mydata$education=='unknown']<-'university.degree'

#Change yes/no fields: to 0/-1 fields. default, housing, loan, contact, and y.  Also clean up the missing data with dominant majority value
mydata$default<-ifelse(mydata$default=='yes',1,0)
mydata$housing<-ifelse(mydata$housing=='no',1,0)
mydata$loan<-ifelse(mydata$loan=='yes',1,0)

#Remove duplicated rows
mydata<-unique(mydata)
write.table(mydata, "updatedbankingdata.csv",row.names=FALSE, sep=",")
mydata <- read.csv(file="updatedbankingdata.csv", header=TRUE, check.names=FALSE, sep=",")
