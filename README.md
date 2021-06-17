
<img src="">
Photo by Jan Kopřiva from Pexels

# MechaCar Analysis
In the scenario for this module, we are to perform various analyses for a new automobile Manufacturing company. Specifically, the analyses we are tasked with performing are:
- a multiple linear regression analysis to determine which of factors included in the dataset impact fuel economy (mpg) 
- a visualization of measures of central tendency (and variance) of the suspension springs in the dataset
- T-Tests on all suspension coils and on suspension coils by manufacturing lot

## Linear Regression to Predict MPG
As seen in the image below vehicle length and ground clearance provide a non-random amount of variance impacting fuel economy. It should also be noted that the intercept is also statistically significant and indicates that there are other factors, not included in the dataset, which also have an impact on fuel economy. Furthermore, the r-squared value from this model is 0.7149, indicating that there is an approximately 71% probablility that predictions using this linear regression model will be correct.

## Summary Statistics for MechaCar Suspension Coils
as seen in the images below, the mean and median for the total number of suspension springs are nearly the same. Therefore, the dataset has a normal distribution. The rather high standard deviation (7.892627) indicates that the data points are distributed broadly over a wide range of values. Additionally, the design specifications for the coils dictate that the variance not exceed 100psi. The variance in this case is 62.29356 and therefore well within design specifications.
<img src="">
<img src="">
## T-Tests on Suspension Coils
The dataset also makes possible T-tests on the total of all manuracturing lots as well as on the three individual manufacturing lots.
The analysis shows that Lots 1 and 2 are not signifcantly different from the population mean. There is some evidence that the coils from lot 3 are different from the poputlation mean (1495.14 for the lot v. 1500 for the population).
### T-Test for All Manufacturing Lots

<img src="">

### T-Tests for Manufacturing Lots 1

<img src="">

### T-Tests for Manufacturing Lots 2

<img src="">

### T-Tests for Manufacturing Lots 3

<img src="">

## Study Design: Comparing MechaCar to the Competition
One significant factor when purchasing an automobile may be whether the performance of the vehicle is suited to the intended use. This can be studied by analyzing horsepower (as a measure of performance) and mpg (as a measure of fuel efficiency) as well as sales price. 

Hypothesis: If horsepower, fuel economy and sales price are correlated, then we can predict sales volume
Null Hypothesis: If horsepower and fuel economy are not correlated, we cannot predict sales volume based on those measures.

In this case a linear regression model would be used because of its predictive properties.

To perform this analysis, horsepower, sales price, and sales volume would need to be added to the dataset under consideration.

