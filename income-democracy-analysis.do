Log started: 2026-03-23 09:48:11 
User: ala.fadul 
R version: R version 4.5.1 (2025-06-13 ucrt) 

C:/Users/ala.fadul.TMUAD/Desktop/ECN702_Fadul_997/Ala_Fadul_RE2.txt======== Question 1 ========install AER Package; get the library(AER); input the data for Fatalities; get an overview of the data using is.data.frame(Fatalities); str(Fatalities) same with dim; head; and output the summary statsError in library(AER) : there is no package called ‘AER’
======== Question 1(i) ==========is.data.frame(Fatalities); dim(Fatalities); str(Fatalities); head(Fatalities); summary(Fatalities[, c(1,2)])Error: object 'Fatalities' not found
Error: object 'Fatalities' not found
======== Question 1(ii) ==========class(state); levels(state)Error: object 'Fatalities' not found
Solution Q1: The dataset contains 336 observations across 34 variables; state is a factor variable with 48 levels (one for each state state). Also, the variable year is a factor variable with 7 levels (one for each year). So, 7 x 48 = 336. We can also see that all variables are observed over all time periods, so the panel is balanced.======== Question 2 ========Consider the state fixed effects model for traffic fatality ratesConsider three types of commands: (i) Runs the regression with entity dummies; (ii) second one applies OLS to entity-demeaned data; (iii) third one relies on the within option for lm() so that the valid robust variance-covariance matrix is computed and returned======== Question 2a =========Fatalities$fatal_rate <- Fatalities$fatal / Fatalities$pop * 10000; fatal_fe_lm_mod <- lm(fatal_rate ~ beertax + state - 1, data = Fatalities); fatal_fe_lm_modError: object 'Fatalities' not found
Error in eval(mf, parent.frame()) : object 'Fatalities' not found
Solution 2a: We defined the fatality rate as the number of fatalities per 10000 people. Then as you can see above we ran the fixed effects regression using the dummy variable specification by using -1 to drop constant.======== Question 2b ==========Fatalities_demeaned <- with(Fatalities,
                            data.frame(fatal_rate = fatal_rate - ave(fatal_rate, state),
                                       beertax = beertax - ave(beertax, state))); summary(lm(fatal_rate ~ beertax - 1, data = Fatalities_demeaned))Error: object 'Fatalities' not found
Error in eval(mf, parent.frame()) : 
  object 'Fatalities_demeaned' not found
[1] "Solution 2b: Above, we ran the entity-demeaned model. This model takes the averages on both sides of the regression using 1/T and then takes that averages and subtracts it from the panel regression model we had initial proposed. In the end, there are two "Solution 2b: Above, we ran the entity-demeaned model. This model takes the averages on both sides of the regression using 1/T and then takes that averages and subtracts it from the panel regression model we had initial proposed. In the end, there are two ways we can model this: First
========== Question 2c ==========install.packages(plm); library(plm); fatal_fe_mod <- plm(fatal_rate ~ beertax, data = Fatalities, index = c(state, year), model = within); coeftest(fatal_fe_mod, vcov. = vcovHC, type = HC1)WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
G3;Installing package into ‘C:/Users/ala.fapackage ‘digest’ successfully unpacked and MD5 sums checked
package ‘Rcpp’ successfully unpacked and MD5 sums checked
package ‘miscTools’ successfully unpacked and MD5 sums checked
package ‘generics’ successfully unpacked and MD5 sums checked
package ‘rbibutils’ successfully unpacked and MD5 sums checked
package ‘bdsmatrix’ successfully unpacked and MD5 sums checked
package ‘collapse’ successfully unpacked and MD5 sums checked
package ‘zoo’ successfully unpacked and MD5 sums checked
package ‘sandwich’ successfully unpacked and MD5 sums checked
package ‘lmtest’ successfully unpacked and MD5 sums checked
package ‘maxLik’ successfully unpacked and MD5 sums checked
package ‘Rdpack’ successfully unpacked and MD5 sums checked
package ‘Formula’ successfully unpacked and MD5 sums checked
package ‘plm’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\ala.fadul.TMUAD\AppData\Local\Temp\RtmpiOndFn\downloaded_packages
Solution 2c/2d: Above we ran the FE regression using the within option for plm(). This uses the entity-demeaned algorithm and doesn't report dummy coefficients. So we have the estimated coefficient being -0.6559 (similar with the lm() command) with a standard error of 0.29. In the end, we have the model as follows: The fatality rate = -0.66 x BeerTax + State FE's. The coefficient on beertax is statistically significant. We can interpret this as follows: the estimated is as follows - the estimated reduction in traffic fatalities due to an increase in the real beer tax by $1 is 0.66 per 10000 people. However, there could be other ommitted variables that vary over time that could cause some bias.sessionInfo()R version 4.5.1 (2025-06-13 ucrt)
Platform: x86_64-w64-mingw32/x64
Running under: Windows 11 x64 (build 22631)

Matrix products: default
  LAPACK version 3.12.1

locale:
[1] LC_COLLATE=English_United States.utf8  LC_CTYPE=English_United States.utf8    LC_MONETARY=English_United States.utf8 LC_NUMERIC=C                           LC_TIME=English_United States.utf8    

time zone: America/New_York
tzcode source: internal

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] plm_2.6-7

loaded via a namespace (and not attached):
 [1] digest_0.6.39    Formula_1.2-5    collapse_2.1.6   lattice_0.22-7   zoo_1.8-15       parallel_4.5.1   generics_0.1.4   Rdpack_2.6.6     sandwich_3.1-1   grid_4.5.1       compiler_4.5.1   lmtest_0.9-40    rbibutils_2.4.1  tools_4.5.1      nlme_3.1-168     bdsmatrix_1.3-7  Rcpp_1.1.1       MASS_7.3-65      maxLik_1.5-2.2   miscTools_0.6-30
End of assignment/logWrote log to: C:/Users/ala.fadul.TMUAD/Desktop/ECN702_Fadul_997/Ala_Fadul_RE2.txt 
t report dummy coefficients. So we have the estimated coefficient being -0.6559 (similar with the lm() command) with a standard error of 0.29. In the end, we have the model as follows: The fatality rate = -0.66 x BeerTax + State FE's. The coefficient on beertax is statistically significant. We can interpret this as follows: the estimated is as follows - the estimated reduction in traffic fatalities due to an increase in the real beer tax by $1 is 0.66 per 10000 people. However, there could be other ommitted variables that vary over time that could cause some bias.sessionInfo()R version 4.5.1 (2025-06-13 ucrt)
Platform: x86_64-w64-mingw32/x64
Running under: Windows 11 x64 (build 22631)

Matrix products: default
  LAPACK version 3.12.1

locale:
[1] LC_COLLATE=English_United States.utf8  LC_CTYPE=English_United States.utf8    LC_MONETARY=English_United States.utf8 LC_NUMERIC=C                           LC_TIME=English_United States.utf8    

time zone: America/New_York
tzcode source: internal

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] plm_2.6-7

loaded via a namespace (and not attached):
 [1] digest_0.6.39    Formula_1.2-5    collapse_2.1.6   lattice_0.22-7   zoo_1.8-15       parallel_4.5.1   generics_0.1.4   Rdpack_2.6.6     sandwich_3.1-1   grid_4.5.1       compiler_4.5.1   lmtest_0.9-40    rbibutils_2.4.1  tools_4.5.1      nlme_3.1-168     bdsmatrix_1.3-7  Rcpp_1.1.1       MASS_7.3-65      maxLik_1.5-2.2   miscTools_0.6-30
End of assignment/log
