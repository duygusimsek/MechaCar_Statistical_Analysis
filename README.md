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

The [MechaCar_mpg.csv](https://github.com/duygusimsek/MechaCar_Statistical_Analysis-/blob/main/MechaCar_mpg.csv) dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R,  a linear model that predicts the mpg of MechaCar prototypes was designed by using several variables from the MechaCar_mpg.csv file. 

* The [MechaCar_mpg.csv](https://github.com/duygusimsek/MechaCar_Statistical_Analysis-/blob/main/MechaCar_mpg.csv) was downloaded and placed in the active directory of the R session.
* An R script was written for a linear regression model to be performed on all six variables. [MechaCarChallege.RScript.R](https://github.com/duygusimsek/MechaCar_Statistical_Analysis-/blob/main/MechaCarChallege.RScript.R)
* An R script was written to create the statistical summary of the linear regression model with the intended p-values.


![Deliverable_1.png](https://github.com/duygusimsek/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable_1.png)

The summary of the linear regression helps to determine the quality of the dataset. Examining the regression, the min value is -19.47, the max value is 18.58  and the median is -0.07 which is close to zero. 

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

   - The p-value should be compared to alpha = .05 level of significance to verify if statistically significant.

   - The most significant variables in the dataset that show a non-random effect on the mpg of the MechaCar are the “vehicle length” and the “ground clearance”. As indicated in the image,  the p-values of “2.6x10-12” and “5.21x10-8”, respectively. Those numbers show that these values have a significant impact on miles per gallon on the MechaCar prototype. The vehicle weight, spoiler angle, and AWD have p-Values that indicate a random amount of variance with the dataset.

2.  Is the slope of the linear model considered to be zero? Why or why not?

    - The slope of the linear model can not be considered to be zero. Because the p-value of this linear is  5.35x10-1, which is much smaller than the assumed significance level of 0.05%. Thus the null hypothesis must be rejected. That result shows the relationship between the variables and the miles per gallon is more than random chance.


3.  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    - The linear regression shows the value of R-squared is 0.7149, which indicates that approximately 71% of all mpg predictions will be determined. Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. 

### Summary Statistics on Suspension Coils 

The  [Suspension_Coil.csv](https://github.com/duygusimsek/MechaCar_Statistical_Analysis-/blob/main/Suspension_Coil.csv) dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using R,  a summary statistics table  was created to show:

* The suspension coil’s PSI continuous variable across all manufacturing lots
* The following PSI metrics for each lot: mean, median, variance, and standard deviation.

The first data frame shows the multiple production lots: 

![Deliverable_2a.png](https://github.com/duygusimsek/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable_2a.png)

For the values of each of the 3 lots: 

![Deliverable_2b.png](https://github.com/duygusimsek/MechaCar_Statistical_Analysis-/blob/main/images/Deliverable_2b.png)

* Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

    - The entire population of the production lot displays that the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.
    - Examining the values of each 3 lots shows that, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively. However, Lot 3, with a variance of 170.29, indicates much larger than the other two lots. Lot 3’ s excessive value of variance affects the entire population of production’s variance value. 

### T-Tests on Suspension Coils

To determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch, t-tests were performed. 

   - The result of the t-test across all manufacturing lots displays that the true mean of the sample is 1498.78. The p-Value is 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis.  

![t.test](https://github.com/duygusimsek/MechaCar_Statistical_Analysis/blob/main/images/t.test.png)


For each individual lots:

* Lot 1 has the true sample mean of 1500. With a p-Value of 1, there is no statistical difference between the observed sample mean and the presumed population mean the null hypothesis cannot be rejected. 

* Lot 2 has essentially the same outcome with a sample mean of 1500.02, a p-Value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.

*  Lot 3 has a different result.  The sample mean is 1496.14 and the p-Value is 0.04. Those values are lower than the common significance level of 0.05, and the p-Value is low enough to reject the null hypothesis. This lot may need to be discarded or more closely evaluated.

![t.test_lots](https://github.com/duygusimsek/MechaCar_Statistical_Analysis/blob/main/images/t.test_lots.png)

