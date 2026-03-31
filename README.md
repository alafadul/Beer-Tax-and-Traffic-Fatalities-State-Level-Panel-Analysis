# Beer-Tax-and-Traffic-Fatalities-State-Level-Panel-Analysis
Panel data analysis of US state-level traffic fatalities examining the relationship between beer taxes and fatality rates. The study uses fixed effects models to estimate the effect of beer taxation on traffic fatalities while controlling for unobserved state-level heterogeneity.

DATA:

The analysis uses the Fatalities dataset from the AER package in R, containing US state-level data on traffic fatalities, beer taxes, population, and related variables.

Unit of observation: US states
Time dimension: repeated yearly observations (panel data structure)
Key variables:
Fatality rate (constructed as fatalities per 10,000 population)
Beer tax (beertax)
State identifiers

The dataset forms a balanced panel across states and years.

DATA PREPARATION:

A fatality rate variable was constructed using the ratio of total fatalities to population, scaled per 10,000 people. The data was structured for panel regression analysis with state and year identifiers.


METHODOLOGY:

Three econometric approaches were applied:

Fixed effects with state dummy variables (LSDV approach, dropping constant)
Entity-demeaned OLS model (within transformation)
Fixed effects model using plm() within estimator

Robust standard errors were computed to account for heteroskedasticity.

KEY RESULTS:


The estimated coefficient on the beer tax is approximately -0.66 in the fixed-effects specification.
Results are consistent across both the dummy variable and within-transformation approaches.
The effect is statistically significant in the fixed effects model.

Overall, results suggest that higher beer taxes are associated with lower traffic fatality rates.

INTERPRETTAION:

The results indicate a negative relationship between beer taxes and traffic fatality rates, suggesting that increases in beer taxes are associated with reductions in fatalities.

However, the analysis is subject to limitations. The model is based on observational panel data, so causal interpretation should be made cautiously. There may be omitted variables that vary over time, such as changes in road safety policies, enforcement intensity, or driving behaviour, which could bias estimates. While state fixed effects control for time-invariant differences across states, time-varying unobserved factors may still affect results.


TOOLS USED:

R, AER package, plm package, fixed effects regression, entity-demeaned OLS, clustered/robust standard errors


REPRODUCIBILITY:


The analysis can be replicated by:

Installing and loading the AER and plm packages in R
Loading the Fatalities dataset
Running the provided regression models using the .R script
Reproducing fixed effects estimates using both dummy-variable and within estimators


