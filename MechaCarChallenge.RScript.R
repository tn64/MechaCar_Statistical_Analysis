library(dplyr)
library(tidyverse)

# Deliverable 1  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# MechaCar Analysis
mcar_table <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F) # read in csv file
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mcar_table) # create linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mcar_table)) # summary to determine p-value and r-squared value for lm

# Deliverable 2  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Suspension Coil Analysis
coil_table <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F) #read in csv file to create dataframe
summary_coil <-  coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # summarize dataframe

# Lot Summary
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# T-Test to determine PSI across manufacturing lots
t.test(coil_table$PSI, mu = 1500)

# T-Test for Manufacturing Lot 1
t.test(subset(coil_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# T-Test for Manufacturing Lot 2
t.test(subset(coil_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# T-Test for Manufacturing Lot 3
t.test(subset(coil_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
