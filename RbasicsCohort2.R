# basic arithmetic operations and functions----
2+2
4*2
sqrt(16)
abs(-10)
# getting help in R----
help(abs)
help("mean")
?mean
?sd
apropos("anov")
?manova

#package installation----
install.packages("ape","dplyr")
install.packages("biocmanager")
BiocManager::install("ggtree","ape","phyloseq")
#loading packages
library(ggplot2)
library(BiocManager)

# variable assignmnet----
z<-10
z
x<-10
A<-5
A
Name<-"Beatrice"
Name
a=29 #alternatively
a
A==a
x==z
z<-20
z
# basic data types----
# numeric
v<-10
y<-20
v+y
y**v
# character (text)
Hb<-"AB"
Hb
gend<-"female"

#logical
y==v
d<-TRUE
f<-FALSE
d
f
#advanced data types----
# vectors
vec1<-c(1,2,3,4,5,6)
vec1
vec2<-c(1,2,3,"female","men","science",TRUE,FALSE)
vec2
class(vec1)
class(vec2)
# factors
gender<-factor(c("male","female","others","male","female","others"))
levels(gender)
# matrix
mymatrix<-matrix(vec1, 2, 3)
mymatrix
vec3<-c(10,11,12,13,14,15)
rbind(vec1,vec3)
# dataframe
df<-data.frame(vec1,vec3)
df

# writing functions
newsummation<-function(x,y){
  summation<-x+y
  return(summation)
}
newsummation(4,5)
# datasets----
data()
women$height
mean(women$height)
sd(women$weight)
summary(women)
# readng in data into R----
data1<-read.csv("~/Documents/HackBio/HackBio_2/HB_C2_Stats/femaleMiceWeights copy.csv")
data1
library(readr)
ELIAS_data <- read_csv("~/Documents/Elias_Kabz/ELIAS_data.csv")
View(ELIAS_data)
#exporting data
write.csv(women,file="~/Documents/HackBio/HackBio_2/HB_C2_Stats/women.csv")

# computing discreteprobabilities in R----
dbinom(4,4,0.3) #discrete probability for a binomial distribution
dbin
dpois(5,3) # discrete probability for a poisson distribution
dpois()
# continous probability distributions----
x<-rnorm(100)  
hist(x,freq = FALSE)
curve(dnorm(x),add = TRUE)
#calculating the area under the curve for the above which is equal to its probability
x_dens<-density(x)
x_dens
integrate(approxfun(x_dens),lower = 1,upper = 2)
#example 1
vec<-c(1:100)
vec
vec_dens<-density(vec)
vec_dens
integrate(approxfun(vec_dens), lower = 20,upper = 70)
#example 2
df<- data.frame(x=c(sample(6:9, 50, replace=TRUE), sample(18:23, 25, replace=TRUE)))

dens<- density(df$x)
dens
integrate(approxfun(dens),lower = 0, upper=24) # get the density as a function(using approxfunc)
#and then integrate the function over the desired limits
veccor<-c(100:1)
vec
?cor
cor(vec,veccor,method = ("pearson"))
veccorpos<-c(1:100)
cor(vec,veccorpos,method = ("pearson"))
cor.test(vec,veccor)
cor.test(vec,veccorpos)
df1<-women
df1
cor(women$height,women$weight)
cor.test(women$height,women$weight)
# Linear regression----
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
data1<-data.frame(x,y)
data1
relation <- lm(y~x,data = data1)
relation
summary(relation)
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")

# Multiple linear regression
# How is it different from the linear regression
x1 <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
x2<-c(42,85,67,89,34,56,47,10,200,90)
data2<-data.frame(x1,y,x2)
data2
fit<-lm(y~x1+x2,data=data2)
fit
summary(fit)
#computing for variance inflation factor in multiple linear regression
install.packages("car", lib="/Library/Frameworks/R.framework/Versions/4.0/Resources/library")
library(car)
?vif
vif(fit)
vif()
