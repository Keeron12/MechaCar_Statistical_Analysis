# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Image of Values]MPG_p_and_r_value.png
- The variables that provide a non-random amount of variance are: vehicle length, vehicle weight, and ground clearance
- The p-value 5.35e-11 is significantly smaller that the assumed significance level of .05. Therefor, there is sufficient evidence to reject our null hypothesis, which means the slop of our linear model is not zero 
-The R-squared value is .7149 which means there is a strong correlation, so the linear model helps predict the mpg of MechaCar prototypes

## Summary Statistics on Suspension Coils

![Image of lot_summary table]lot_summary.png
![Image of total_summary table]total_summary.png

The current manufacturing data does meet the design specification for all the manufacturing lots based on the total_summary table. Individually lots 1 and 2 meet the design specs when looking at the lot_summary table. Lot 3 has a variance exceeding the design specs by 70 psi. Lots 1 and 2 variance are 1 and 7 psi respectively, so they fall well below the design specs of not exceeding 100s psi.

## T-Tests on Suspension Coils
![Image of T-Test for all Lots]T-Test_all_lots.png
![Image of T-Test for Lots1]T-Test_Lot1.png
![Image of T-Test for Lots2]T-Test_Lot2.png
![Image of T-Test for Lots3]T-TEST_Lot3.png

Looking at the p-value of the 4 test, which is .5 respectively and assuming a significance level of .05, we do not have sufficient evidencce to reject the null hypothesis. Meaning the mean of all the lots and each lot individually are statistically similar. 

## Study Design: MechaCar vs Competition

A statistical study that could be performed that can quantify how the MechaCar would perform against competition would be to compare the mean of mpg and quarter mile. This would see which car is faster and has better fuel efficeincy. 

The null hypothesis would be, there is no statistical difference between the observed fuel efficeincy and speed of the MechCar compared to the competition. The alternative hypothesis would be, there is a statistical difference between the observed fuel efficeincy and speed of the MechCar compared to the competition.

A two-sample t-test would be the best choice to test the hypothesis. This would be more useful since we would be comparing multiple stats from different samples

In order to run the test, we would need the city mpg and highway mpg from the MechaCar and the competition. We would also need the quarter mile times from the MechaCar and competition.