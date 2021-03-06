# MechaCar_Statistical_Analysis:car:

This analysis uses R to perform statistical studies on production data of a prototype car, the "MechaCar".  The production has been blocked from manufacturing progress and this analysis of the production data is aimed to provide insights to the manufacturing team.

## Linear Regression to Predict MPG

The first analysis used production data to perform a multiple linear regresson analysis to identify which variables in the dataset predicts the miles per gallon (mpg) of the MechaCar prototypes.  

![Deliverable1_LM.png](Deliverable1_LM.png)

Based on above analysis from R, some interpretations of the summary output:

--The variable/coefficients that provided non-random amount of variance to the mpg values are vehicle length and ground clearance, both with p-values lower than significant value of 0.05.  These 2 variables are statistically unlikely to provide random amounts of variance to the linear model. 

--The slope of this linear model is not considered 0 since there are significant relationships between the variables and not determined by random chance.

--This linear model can predict the mpg of MechaCar prototypes effectively, indicated by the r-squared values at ~ 0.7 or 70% chance of predicting the mpg.  There are other factors not captured that can contribute to mpg predictability. 

## Summary Statistics on Suspension Coils

In the second analysis, the pounds per square inch (PSI) of the suspension coil data was analyzed and summarized with the followinging results for mean, median, variance and standard deviation:

Total summary of all lots:
![Deliverable2_total_summary.png](Deliverable2_total_summary.png)

Summary per each lot:
![Deliverable2_lot_summary.png](Deliverable2_lot_summary.png)

--The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data shows the overall data to be high but still meet the criteria with variance at 62.  In the summary for each lot, Lot #1 and Lot #2 shows a small variance at 1 and 7, respectively.  For Lot #3, this shows the most variance, above the design specification at 170.  This lot is the most problematic, causing the total summary's variance to be high.  By grouping the lots and performing analysis separately, it can show the specific lot that has the most variance.

## T-Tests on Suspension Coils

Further analysis on the Suspension Coils using t-test that compares all manufacturing lots against mean population PSI of 1500, then additional t-tests for each manufacturing lots.  

The t-test for all lots have a p-value of 0.06, which is slightly greater than the significant level of 0.05, and cannot reject the null hypothesis that the mean is equal to population mean.  This aligns with earlier analysis of variance, high yet still falls within specifications.

In the t-tests for individual lots, Lot #1 and Lot #2 shows large p-values of 1 and 0.6, respectively.  The large p-values are greater than significant level of 0.05, and cannot reject the null hypothesis that the mean is equal to population mean.  Lot #3 has a p-value of 0.04, smaller than the significant level of 0.05 and we can therefore reject the null hypothesis.  The alternative hypothesis indicates here that the mean for Lot #3 is not equal to the population mean.  This also aligns with the earlier variance results where Lots #1 and #2 shows a small variance and Lot #3 shows the greatest variance that is not acceptable and t-test confirms with the rejection of the null hypothesis.

This analysis can assist to conclude that Lot #3 is the problematic lot and should be further reviewed on the manufacturing process to avoid additional delays to production progress.

T-test of all Manufacturing lots:

![Deliverable3_ttest_total.png](Deliverable3_ttest_total.png)

T-test of Lot #1:

![Deliverable3_ttest1.png](Deliverable3_ttest1.png)

T-test of Lot #2:

![Deliverable3_ttest2.png](Deliverable3_ttest2.png)

T-test of Lot #3:
![Deliverable3_ttest3.png](Deliverable3_ttest3.png)

## Study Design: MechaCar vs Competition

Using the production data analysis for the MechaCar in predicting mpg, we can see there is a statistical relationship between the mpg and the length of the vehicle.  Below plot shows the longer the vehicle length, the higher mpg or more distance in miles the car can travel per gallon of fuel.  Fuel efficiency is an  important factor for consumers when selecting a car for purchase. 

![MechaCar_mpg_vehicle_length.png](MechaCar_mpg_vehicle_length.png)

To compare the MechaCar with cars from other manufacturers, a new statistical study design will consider comparing with competitor vehicles of similar average length with their fuel efficiency in mpg.  

Hypothesis:
H0 = If the length of the MechaCar and the competitors are similar, then the mpg increases, indicating better fuel efficiency.

Ha = If the length of the MechaCar and the competitors are similar, then the mpg will not increase and does not indicate better fuel efficiency.

Using R, first summarize the MechaCar data to find the mean for vehicle length and mpg.  The study would require obtaining current vehicle models' data that has information on vehicle length and mpg, then filter or extract vehicles that are of similar average length as MechaCar.  Once this group of vehicles with simlar lengths are extracted, use ANOVA test to compare this competitor group with MechaCar's average mpg for fuel efficiency.  Using the p-value of the result, we can gain insight in how MechaCar's performance compares in mpg for fuel efficiency with other competitors in the market.
