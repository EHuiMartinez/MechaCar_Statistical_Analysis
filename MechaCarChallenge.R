library(dplyr)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F) #read in csv
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg ,data=MechaCar) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary