#Deliverable 1
library(dplyr)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F) #read in csv
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary

#Deliverable 2
SuspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F) #read in csv
library(tidyverse)
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create total summary table
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable 3
t.test(SuspensionCoil$PSI,mu=1500)

t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

t.test(subset(SuspensionCoil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

ggplot(MechaCar, aes(x=mpg, y=vehicle_length)) + geom_point() + geom_smooth()
