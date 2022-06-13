# MODULE 15 CHALLENGE
# DELIVERABLE 1

# 1.Download the MechaCar_mpg.csv file, and place it in the active directory for your R session.
# 2.Create a new RScript in R source pane, name it MechaCarChallenge.RScript,
#and save it to your active directory.

# 3.Use the library() function to load the dplyr package.

library(dplyr)

# 4.Import and read in the MechaCar_mpg.csv file as a dataframe.

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# 5. Perform linear regression using the lm() function. 
#add the data frame that was created in Step 4 as the data parameter.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=MechaCar_mpg)

# 6.Use the summary() function to determine the p-value and the r-squared value.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=MechaCar_mpg))

# DELIVERABLE 2 

# 1.Download the Suspension_Coil.csv file, and place it in the active directory for your R session.
# 2.In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.

suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# 3.Write an RScript that creates a total_summary dataframe using the summarize() function 
#to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary_df <- suspension_coil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Varince=var(PSI),
                                          Std_Dev =sd(PSI))
                                  
# 4.Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.

lot_summary_df <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI),  Std_Dev = sd(PSI), .groups = 'keep')


# DELIVERABLE 3

#1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.

t.test(suspension_coil$PSI,mu=1500)


#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI.

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
