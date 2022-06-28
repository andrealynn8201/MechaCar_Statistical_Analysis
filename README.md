# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Questions to be answered

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

* The Vehicle Length has a p-value of 2.6e-12, significantly less than .05 indicating it provides a non-random amount of variance.
* The Ground Clearance has a p-value of 5.21e-08, significantly less than .05 indicating it provides a non-random amount of variance.


Is the slope of the linear model considered to be zero? Why or why not?

* No, because the p-value for the model is 5.35e-11, which is much less than .05 and is sufficient to reject the null hypothesis. This means the slope is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

* Yes, because the r-squared is .71 with a p-value that is considered to be significant at 5.35e-11.

![Linear_Regression_Deliverable_1](https://user-images.githubusercontent.com/93801125/176050796-f4300011-bfce-447c-b175-079d7ab1ad1a.png)


## Summary Statistics on Suspension Coils

![Summarize_coil_table](https://user-images.githubusercontent.com/93801125/176050829-303a1cca-a0f6-46d9-9410-9250abe71ca4.png)

![Summarize_coil_table_by_lot](https://user-images.githubusercontent.com/93801125/176050839-38ceb27d-1e28-4c3e-8a0c-e990d72210e2.png)


The design specifications for the MechaCar suspension coils require that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* When we look at the total, the current manufacturing data indicates the design specifications are being met with a variance of 62 psi, which is less then the maximum of 100 pounds psi.
* When we look at them individually, the current manufacturing data indicates the design specifications of Lots 1 and 2 are being met with variances of .98 psi and 7.57 psi respectively. However, Lot 3 exceeds these specifications at 170.29, which is 70 over the max psi.


## T-Tests on Suspension Coils

The p-value for the population t-test against a mean of 1500 is .06. As it is above the .05 significance level, the data population as a whole is statistically similar to 1500.
![Sample_t-test](https://user-images.githubusercontent.com/93801125/176050982-a3714851-72ab-4746-80cc-5197cae4949c.png)


The p-value for Lot 1 t-test against a mean of 1500 is 1. As it is above the .05 significance level, the data is statistically similar to 1500.
![Sample_t-test_Lot_1](https://user-images.githubusercontent.com/93801125/176050996-87b3c872-0442-41d1-b9ee-8816cac34707.png)


The p-value for Lot 2 t-test against a mean of 1500 is .61. As it is above the .05 significance level, the data is statistically similar to 1500.
![Sample_t-test_Lot_2](https://user-images.githubusercontent.com/93801125/176051009-bb235f62-a02f-4f13-83d0-dea84cd8ddd2.png)


The p-value for Lot 3 t-test against a mean of 1500 is .04. As it is below the .05 significance level, the data is not statistically similar to 1500.
![Sample_t-test_Lot_3](https://user-images.githubusercontent.com/93801125/176051029-96845174-88d4-4359-9932-8b86193785e2.png)


## Study Design: MechaCar vs Competition
In an effort to determine how MechaCar stands up to it's competition, a statistical study can be performed.

The metrics to focus on should be as follows:

* Highway miles per gallon
* City miles per gallon
* Delivery price
* Safety Rating

The null hypothesis would be: There is no statistical difference between the MechaCar data and the competition.

One of the test to determine this would be a multiple linear regression with summary.  It woul dbe useful when using multiple independent variables as wee as assessing the impact of each variable.

Another test would be a one sample t-test on each metric. This would ensure that if there are meterics that don't meet that of the competitions, they can be easily identified and it can then be determined what the severity of that difference is.

The data that would be required are first, the mileage of both city and highway for each of the competitors comparitive models. Second, the delivered price for each of the competitors comparitive models.  Third, the safety rating for each of the competitors comparitive models.
