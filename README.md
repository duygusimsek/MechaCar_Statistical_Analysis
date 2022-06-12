# MechaCar_Statistical_Analysis

## Overview

A couple of data analyses were performed to solve the problems of the “MechaCar” that are blocking the manufacturing progress. 

In this analysis ;

* Multiple linear regression analysis was performed to identify which variables in the dataset predict the mpg of the “MechaCar” prototypes. 

* Summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots were collected. 

* To determine if the manufacturing lots are statistically different from the mean population t-test was run. 

* A statistical study to compare the vehicle performance of the MechaCar vehicles against vehicles from other manufacturers was designed. 

* For the findings of each statistical analysis, a summary was written. 

## Results 

### Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R,  a linear model that predicts the mpg of MechaCar prototypes was designed by using several variables from the MechaCar_mpg.csv file. 

* The MechaCar_mpg.csv file(add a link here) was downloaded and placed in the active directory of the R session.
* An R script was written for a linear regression model to be performed on all six variables.
* An R script was written to create the statistical summary of the linear regression model with the intended p-values.

The summary of the linear regression helps to determine the quality of the dataset. Examining the regression, the min value is -19.47, the max value is 18.58  and the median is -0.07 which is close to zero. 



1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

   - The p-value should be compared to alpha = .05 level of significance to verify if statistically significant.

   - The most significant variables in the dataset that show a non-random effect on the mpg of the MechaCar are the “vehicle length” and the “ground clearance”. As indicated in the image,  the p-values of “2.6x10-12” and “5.21x10-8”, respectively. Those numbers show that these values have a significant impact on miles per gallon on the MechaCar prototype. The vehicle weight, spoiler angle, and AWD have p-Values that indicate a random amount of variance with the dataset.

2.  Is the slope of the linear model considered to be zero? Why or why not?

    - The slope of the linear model can not be considered to be zero. Because the p-value of this linear is  5.35x10-1, which is much smaller than the assumed significance level of 0.05%. Thus the null hypothesis must be rejected. That result shows the relationship between the variables and the miles per gallon is more than random chance.


3.  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    - The linear regression shows the value of R-squared is 0.7149, which indicates that approximately 71% of all mpg predictions will be determined. Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. 
