#Assigment 1
#1. Density plot for a kernel density of computer decay

data1 <- read.csv("C:/Users/Ruthvik/Downloads/naval_vessel.csv",header= FALSE)
data1
colnames(data1) <- c(1:16,"Comp","Turbine")

data1 %>% ggplot(aes(Comp)) + geom_density() + ggtitle("Density Plot")
#answer: it is near to uniform distribution

#2
pairs(data1[,1:18])

#3
scaled_naval_data <- data1
for(i in 1:ncol(scaled_naval_data)){
  scaled_naval_data[,i] = ((scaled_naval_data[,i]-min(scaled_naval_data[,i]))/(max(scaled_naval_data[,i]-min(scaled_naval_data[,i]))))
}

head(scaled_naval_data)

#4.mean and median of both outputs
data1 %>% summarise(mean_comp = mean(Comp),median_comp = median(Comp),
                    mean_turbine=mean(Turbine),median_turbine=median(Turbine))

#5
library(MASS)
head(Boston)


#6
nrow(titanic %>% filter(Sex=="male" & Age < 18))

#7
nrow(titanic %>% filter(Pclass==1))
