# Creating data
v1<- c(1,2,3,4,5)
v2<- c(6,7,8,9,10)
v3<- c(11,12,13,14,15)
v4<- c(16,17,18,19,20)
vcol<-cbind(v1,v2,v3,v4)
vcol
vrow<- rbind(v1,v2,v3,v4)
vrow

#alternatively
vmat<-seq(1,20,1)
vmat
vmatnew<-matrix(vmat, nrow = 4, ncol = 5, byrow = TRUE)
vmatnew

#naming columns
colnames(vmatnew)<- c("col1","col2","col3","col4","col5")
rownames(vmatnew)<- c("row1","row2","row3","row4")
?kmeans
data()
data("cars")
cars
plot(cars$speed,cars$dist)
# checking for normality

shapiro.test(cars$dist) #pvalue >0.05, hence considered as normal
shapiro.test(cars$speed)
library(ggpubr)
ggqqplot(cars$dist)
ggqqplot(cars$speed) # almost all points being in line

ggdensity(cars$dist) # alternatively plot a density plot
ggdensity(cars$speed)

# chickweigts by feedtype
chickwts
legend_title<-"Feed type"
library(ggplot2)
ggplot(data=chickwts, aes(feed,weight,color=feed))+
  geom_boxplot(outlier.color = "red")+
  guides(fill=guide_legend(reverse = TRUE))+
  labs(title = "Boxplot of Weight against feed type", x="Feed type",y="Chicken weight",color="Feed type")+
  theme_classic()



