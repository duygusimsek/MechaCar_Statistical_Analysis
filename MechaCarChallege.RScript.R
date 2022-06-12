# MODULE 15 CHALLENGE: DELIVERABLE 1

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

