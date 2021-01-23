# MechaCar_Statistical_Analysis

This analysis uses R to perform statistical studies on production data of a prototype car, the "MechaCar".  The production has been blocked from manufacturing progress and this analysis of the production data is aimed to provide insights to the manufacturing team.

## Linear Regression to Predict MPG

The first analysis used production data to perform a multiple linear regresson analysis to identify which variables in the dataset predicts the miles per gallon (mpg) of the MechaCar prototypes.  

![Deliverable1_LM.png](Deliverable1_LM.png)

Based on above analysis from R, some interpretations of the summary output:

--The variable/coefficients that provided non-random amount of variance to the mpg values are vehicle length and ground clearance, both with p-values lower than significant value of 0.05.  These 2 variables are statistically unlikely to provide random amounts of variance to the linear model. 

--The slope of this linear model is not considered 0 since there are significant relationships between the variables and not determined by random chance.

--This linear model can predict the mpg of MechaCar prototypes effectively, indicated by the r-squared values at ~ 0.7 or 70% chance of predicting the mpg.  

## Summary Statistics on Suspension Coils

--write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

--The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![Deliverable2_total_summary.png](Deliverable2_total_summary.png)

![Deliverable2_lot_summary.png](Deliverable2_lot_summary.png)

## T-Tests on Suspension Coils

briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

T-Test of all Manufacturing lots:

![Deliverable3_ttest_total.png](Deliverable3_ttest_total.png)

T-Test of Lot #1:

![Deliverable3_ttest1.png](Deliverable3_ttest1.png)

T-Test of Lot #2:

![Deliverable3_ttest2.png](Deliverable3_ttest2.png)

T-Test of Lot #3:
![Deliverable3_ttest3.png](Deliverable3_ttest3.png)

## Study Design: MechaCar vs Competition

--What metric or metrics are you going to test?

--What is the null hypothesis or alternative hypothesis?

--What statistical test would you use to test the hypothesis? And why?

--What data is needed to run the statistical test?