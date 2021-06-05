#Deliverable 1

#Load library 
library(dplyr)

#Import mpg csv file as a dataframe
mpg_data_df <- read.csv("resources/MechaCar_mpg.csv")

#Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data=mpg_data_df)

#summarize linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data=mpg_data_df))

# Deliverable 2

#2 Import coil CSV file as dataframe
coil_df <- read.csv(file = 'resources/Suspension_Coil.csv')

#3 Create a total_summary df 
tot_summary <- coil_df%>%data.frame()%>%summarize(Mean=mean(PSI),Median=median(PSI),
                                                  Variance=var(PSI),SD=sd(PSI),)

#4 Create a lot_summary df  
lot_summary <- coil_df%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),
                                                                 Median=median(PSI),
                                                                 Variance=var(PSI),
                                                                 SD=sd(PSI), .groups = 'keep')


# Deliverable 3

#t.test to determine PSI
t.test(coil_df$PSI,mu=1500)

#t.test & subset for each lot
t.test(subset(coil_df, Manufacturing_Lot=="Lot1")$PSI,mu=1500) 
t.test(subset(coil_df, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(coil_df, Manufacturing_Lot=="Lot3")$PSI,mu=1500)