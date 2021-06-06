# MechaCar_Statistical_Analysis
## Purpose
The purpose of this analysis is to utilize the coding language R and R studio to perform a statistical analysis of series of datasets related to the automotive industry.  This analysis will encompass creating a hypothesis and then testing it using statistical tests with in R studio to interpterpt the results.

## Resources
* MechaCar_mpg
* Suspension_Coil.csv
* R Studio 1.4.1106

## Results
### Linear Regression to Predict MPG

### Fig 1. Linear Regression analysis
![fig1](https://github.com/Jbailey8316/MechaCar_Statistical_Analysis/blob/main/images/Deliverable1.PNG)

* From our analysis we can conclude that the vehicle length and ground clearance both significantly impact miles per gallon.  Given these results, these two variables are statisically likely to provide non-random amounts of variance.  However, the returned p-values for the additonal variables (vehicle weight, spoiler angle, and AWD) indicate that they would provide random amounts of variance. 
* The returned p-value from our analysis is 5.35e-11.  This is significanlty smaller than our perceived 0.05% threshold.  This data indicates that the slope of our linear regression model is not equal to 0.
* Our analysis has returned an r squared value of 0.7149, or roughly 71%.  We can conclude from this value that just under three quarters of our predicitons would be accurate and thus our analysis would adequately predecit the mpg.

### Summary Statistics on Suspension

Fig. 2 Overall Suspenion Coil Lot Summary

![lot](https://github.com/Jbailey8316/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_D2.PNG)

* The next section of our anaylsis was to investigate the amount of variance of PSI within the coil suspension used on the prototype vehicles.  We were given a quality standard requirement of no more than 100 PSI per coil.  After compiling our dataset, we can see in Fig. 1 that the overall lot does meet our requirement.  We have variable PSI rating of 62.29356, indicating that the overall lot meets our specification.

Fig 3. Individual Lot Summaries for Coil Suspension

![total](https://github.com/Jbailey8316/MechaCar_Statistical_Analysis/blob/main/images/total_summary_D2.PNG)

* Upon further analysis of the lots individually, we see that one of the three lots does not meet our requirement as shown in Fig. 3.(above)  Lot 3 has returned a PSI varaince of 170.2861.  Lots 1 and 2 have returned much lower levels of vairance.  This indicates that the lot 3 coils are severly impacting the overall varaince within our dataset. 

### T-Tests on Suspension Coils
* Here we have decided to perform a t-test analysis on the suspension coils using a population mean of 1500.

Fig 4. Overall Lots Sample T-Test

![overall_t_test](https://github.com/Jbailey8316/MechaCar_Statistical_Analysis/blob/main/images/t_test_1.PNG)

* As shown in Fig. 4 (above), the overall mean of our dataset is 1498.78 and there is a p-value of 0.06.  This suggests that overall the manufacturing lots are statistically similair to our given population mean of 1500.

Fig 5 Individual Lots Sample T-Tests (Lot 1)

![](https://github.com/Jbailey8316/MechaCar_Statistical_Analysis/blob/main/images/t_test_2.PNG)

Fig 6 Individual Lots Sample T-Tests (Lot 2)

![](https://github.com/Jbailey8316/MechaCar_Statistical_Analysis/blob/main/images/t_test_3.PNG)

Fig 7 Individual Lots Sample T-Tests (Lot 3)

![](https://github.com/Jbailey8316/MechaCar_Statistical_Analysis/blob/main/images/t_test_4.PNG)

* Digging deeper into the lots indivudually, our t-tests have produced some expected results given our statistics summary performed above.  Lots 1 and 2 both have sample means that are equal to or closely equal to our population mean of 1500 (1500 & 1500.02) and p-values of 1 and 0.61 respectivly.  This indicates that these 2 lots are statiscally similiar to our given population.  Lot 3 has returned a sample mean of 1496.14 and a p-value of 0.04.  These results indicate that lot 3 is not statistically similiar to our population mean.

### Study Design: MechaCar vs Competition
From our study of the prototype MechaCar vehicles we could expand our analysis to include vehicles from other manufactureres.  With this new data we could begin testing other metrics such as safety ratings.  We could presume to have a null hypothesis that the MechaCar would would perform equally as good as the other manufactuer's vehicles.  We could perform an ANOVA analysis comparing the MechaCar prototypes to similair vehicles of a given manufacturer regarding crash ratings and other safety metrics to determine if the MechaCar prorotypes are on par or an improvement of current available vehicles.  We would need to acquire the safety testing data from all vehicles that would want to include in our analysis.  This data might contain useful metrics such as, but not limited to, frontal crash ratings, side impact, and roll over probablilty. 
