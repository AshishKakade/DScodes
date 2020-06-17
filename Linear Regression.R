#Load data
Nd<-read.csv("C:/Users/Kakad/OneDrive/Desktop/Data science/R/WC_AT.csv")

# Visualization
boxplot(Nd$AT,col="dodgerblue4")
boxplot(Nd$Waist,col="dodgerblue4")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(Nd)
#Model building
model<- lm(AT~Waist,data =Nd)
summary(model)
#Preparing new data frame with new data
new_waist=data.frame(Waist=c(40,75,200))
#Predict for the new data
sun1=predict(model,new_waist)
#Print predicted value
sun1

#Predict for daily variable from the historical data
pred<-predict(model)
#Print predicted values
pred
#Prepare a new data frame with pred and error
finaldata<-data.frame(Nd,pred,"Error"= Nd$AT-pred)
finaldata
