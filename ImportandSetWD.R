
#select the file manually

stats <- read.csv(file.choose())
stats

#Set WD and Read Data
getwd()

#Set working directory
setwd("C:\\Users\\user1\\Desktop\\RScript")
getwd()

rm(stats)
stats <- read.csv("Demographic-Data.csv")
stats

#----------------------------------Exploring Data

stats
nrow(stats)
ncol(stats)

head(stats, n=10)
tail(stats, n=8)
str(stats)

summary(stats)

#--------------------------------- Using the $ sign
stats
head(stats)
stats[3, 3]
stats[3, "Birth.rate"]

stats$Internet.users
stats$Internet.users[2]
stats$Income.Group<- as.factor(stats$Income.Group)

levels(stats$Income.Group)

#----------------------------------- Basics operations with a DF

stats[1:10,]
stats[3:9]
stats[c(4,100),]

#Remember how [] work:
is.data.frame(stats[1,]) #no need for drop=F
is.data.frame(stats[,1, drop = F])
stats[,1,drop=F]


stats$MyCalc <- stats$Birth.rate * stats$Internet.users
#remove a column
stats$MyCalc <- NULL

#-------------------------------------------------------- Filtering Data Frames

head(stats)
filter <- stats$Internet.users < 2
stats[!filter, ]

stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
stats[stats$Income.Group == "High income",]

levels(stats$Income.Group)


#------------------------------------------------------ Introduction to qplot()


library(ggplot2)
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y = Birth.rate, size= I(10))
qplot(data=stats, x=Income.Group, y = Birth.rate, size= I(3), colour=I("blue"))
qplot(data=stats, x=Income.Group, y = Birth.rate,geom = "boxplot")


#---------------------------------------------------- Visualizing what we need

qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(5), colour=Income.Group)


#--------------------------------------------------------- Creating Data Frames

head(mydf)
colnames(mydf) <- c("Country", "Code", "Region")
head(mydf)

rm(mydf)

mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)

head(mydf)
tail(mydf)
summary(mydf)

#---------------------------------------------------------- Merging Data Frames
head(stats)
head(mydf)

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(merged)

merged$Country <- NULL
str(merged)



#--------------------------------------------------- Visualizing With new Split

qplot(data=merged, x=Internet.users, y=Birth.rate)
qplot(data=merged, x=Internet.users, y=Birth.rate, colour = Region)

#1. Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate, colour = Region, size=I(5), shape=I(15))

#2. Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate, colour = Region, size=I(2), shape=I(15), alpha=I(0.6))

#3. Title
qplot(data=merged, x=Internet.users, y=Birth.rate, colour = Region, size=I(2), shape=I(15), alpha=I(0.6) ,main = "Birth vs Internet Users")
      

















