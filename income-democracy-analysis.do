> cat("Intro/Log/Options")
Intro/Log/Options> 
> #################################################################################################################
> log_path <- "C:/Users/alafadul/Desktop/ECN702_Fadul_997/Ala_Fadul_RE2.txt"
> #################################################################################################################
> 
> dir.create(dirname(log_path), recursive = TRUE, showWarnings = FALSE)
> con <- file(log_path, open = "wt")
> 
> options(echo = TRUE, width = 1000)
> 
> sink(con, split = TRUE)
> sink(con, type = "message")
> 
> cat("Log started:", format(Sys.time()), "\n")
Log started: 2026-03-31 14:43:38 
> cat("User:", Sys.info()[["user"]], "\n")
User: alafadul 
> cat("R version:", R.version.string, "\n\n")
R version: R version 4.5.3 (2026-03-11) 

> 
> #################################################################################################################
> cat(log_path <- "/Users/alafadul/Desktop/ECN702_Fadul_997/Ala_Fadul_RE2.txt")
/Users/alafadul/Desktop/ECN702_Fadul_997/Ala_Fadul_RE2.txt> #################################################################################################################
> 
> 
> cat("======== Question 1 ========")
======== Question 1 ========> 
> cat("install AER Package; get the library(AER); input the data for Fatalities; get an overview of the data using is.data.frame(Fatalities); str(Fatalities) same with dim; head; and output the summary stats")
install AER Package; get the library(AER); input the data for Fatalities; get an overview of the data using is.data.frame(Fatalities); str(Fatalities) same with dim; head; and output the summary stats> 
> library(AER)
> data(Fatalities)
> 
> cat("======== Question 1(i) ==========")
======== Question 1(i) ==========> 
> cat("is.data.frame(Fatalities); dim(Fatalities); str(Fatalities); head(Fatalities); summary(Fatalities[, c(1,2)])")
is.data.frame(Fatalities); dim(Fatalities); str(Fatalities); head(Fatalities); summary(Fatalities[, c(1,2)])> 
> # Obtain the dimension and inspect the structure of the data
> is.data.frame(Fatalities)
[1] TRUE
> dim(Fatalities)
[1] 336  34
> str(Fatalities)
'data.frame':	336 obs. of  34 variables:
 $ state       : Factor w/ 48 levels "al","az","ar",..: 1 1 1 1 1 1 1 2 2 2 ...
 $ year        : Factor w/ 7 levels "1982","1983",..: 1 2 3 4 5 6 7 1 2 3 ...
 $ spirits     : num  1.37 1.36 1.32 1.28 1.23 ...
 $ unemp       : num  14.4 13.7 11.1 8.9 9.8 ...
 $ income      : num  10544 10733 11109 11333 11662 ...
 $ emppop      : num  50.7 52.1 54.2 55.3 56.5 ...
 $ beertax     : num  1.54 1.79 1.71 1.65 1.61 ...
 $ baptist     : num  30.4 30.3 30.3 30.3 30.3 ...
 $ mormon      : num  0.328 0.343 0.359 0.376 0.393 ...
 $ drinkage    : num  19 19 19 19.7 21 ...
 $ dry         : num  25 23 24 23.6 23.5 ...
 $ youngdrivers: num  0.212 0.211 0.211 0.211 0.213 ...
 $ miles       : num  7234 7836 8263 8727 8953 ...
 $ breath      : Factor w/ 2 levels "no","yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ jail        : Factor w/ 2 levels "no","yes": 1 1 1 1 1 1 1 2 2 2 ...
 $ service     : Factor w/ 2 levels "no","yes": 1 1 1 1 1 1 1 2 2 2 ...
 $ fatal       : int  839 930 932 882 1081 1110 1023 724 675 869 ...
 $ nfatal      : int  146 154 165 146 172 181 139 131 112 149 ...
 $ sfatal      : int  99 98 94 98 119 114 89 76 60 81 ...
 $ fatal1517   : int  53 71 49 66 82 94 66 40 40 51 ...
 $ nfatal1517  : int  9 8 7 9 10 11 8 7 7 8 ...
 $ fatal1820   : int  99 108 103 100 120 127 105 81 83 118 ...
 $ nfatal1820  : int  34 26 25 23 23 31 24 16 19 34 ...
 $ fatal2124   : int  120 124 118 114 119 138 123 96 80 123 ...
 $ nfatal2124  : int  32 35 34 45 29 30 25 36 17 33 ...
 $ afatal      : num  309 342 305 277 361 ...
 $ pop         : num  3942002 3960008 3988992 4021008 4049994 ...
 $ pop1517     : num  209000 202000 197000 195000 204000 ...
 $ pop1820     : num  221553 219125 216724 214349 212000 ...
 $ pop2124     : num  290000 290000 288000 284000 263000 ...
 $ milestot    : num  28516 31032 32961 35091 36259 ...
 $ unempus     : num  9.7 9.6 7.5 7.2 7 ...
 $ emppopus    : num  57.8 57.9 59.5 60.1 60.7 ...
 $ gsp         : num  -0.0221 0.0466 0.0628 0.0275 0.0321 ...
> 
> # List the first few observations
> head(Fatalities)
  state year spirits unemp   income   emppop  beertax baptist  mormon drinkage     dry youngdrivers    miles breath jail service fatal nfatal sfatal fatal1517 nfatal1517 fatal1820 nfatal1820 fatal2124 nfatal2124  afatal     pop  pop1517  pop1820  pop2124 milestot unempus emppopus         gsp
1    al 1982    1.37  14.4 10544.15 50.69204 1.539379 30.3557 0.32829    19.00 25.0063     0.211572 7233.887     no   no      no   839    146     99        53          9        99         34       120         32 309.438 3942002 208999.6 221553.4 290000.1    28516     9.7     57.8 -0.02212476
2    al 1983    1.36  13.7 10732.80 52.14703 1.788991 30.3336 0.34341    19.00 22.9942     0.210768 7836.348     no   no      no   930    154     98        71          8       108         26       124         35 341.834 3960008 202000.1 219125.5 290000.2    31032     9.6     57.9  0.04655825
3    al 1984    1.32  11.1 11108.79 54.16809 1.714286 30.3115 0.35924    19.00 24.0426     0.211484 8262.990     no   no      no   932    165     94        49          7       103         25       118         34 304.872 3988992 197000.0 216724.1 288000.2    32961     7.5     59.5  0.06279784
4    al 1985    1.28   8.9 11332.63 55.27114 1.652542 30.2895 0.37579    19.67 23.6339     0.211140 8726.917     no   no      no   882    146     98        66          9       100         23       114         45 276.742 4021008 194999.7 214349.0 284000.3    35091     7.2     60.1  0.02748997
5    al 1986    1.23   9.8 11661.51 56.51450 1.609907 30.2674 0.39311    21.00 23.4647     0.213400 8952.854     no   no      no  1081    172    119        82         10       120         23       119         29 360.716 4049994 203999.9 212000.0 263000.3    36259     7.0     60.7  0.03214295
6    al 1987    1.18   7.8 11944.00 57.50988 1.560000 30.2453 0.41123    21.00 23.7924     0.215527 9166.302     no   no      no  1110    181    114        94         11       127         31       138         30 368.421 4082999 204999.8 208998.5 258999.8    37426     6.2     61.5  0.04897637
> 
> # Summarize the variables 'state' and 'year'
> summary(Fatalities[, c(1,2)])
     state       year   
 al     :  7   1982:48  
 az     :  7   1983:48  
 ar     :  7   1984:48  
 ca     :  7   1985:48  
 co     :  7   1986:48  
 ct     :  7   1987:48  
 (Other):294   1988:48  
> 
> # Question 1 Part (ii)
> 
> cat("======== Question 1(ii) ==========")
======== Question 1(ii) ==========> 
> cat("class(state); levels(state)")
class(state); levels(state)> 
> class(Fatalities$state)
[1] "factor"
> levels(Fatalities$state)
 [1] "al" "az" "ar" "ca" "co" "ct" "de" "fl" "ga" "id" "il" "in" "ia" "ks" "ky" "la" "me" "md" "ma" "mi" "mn" "ms" "mo" "mt" "ne" "nv" "nh" "nj" "nm" "ny" "nc" "nd" "oh" "ok" "or" "pa" "ri" "sc" "sd" "tn" "tx" "ut" "vt" "va" "wa" "wv" "wi" "wy"
> 
> cat("Solution Q1: The dataset contains 336 observations across 34 variables; state is a factor variable with 48 levels (one for each state state). Also, the variable year is a factor variable with 7 levels (one for each year). So, 7 x 48 = 336. We can also see that all variables are observed over all time periods, so the panel is balanced.")
Solution Q1: The dataset contains 336 observations across 34 variables; state is a factor variable with 48 levels (one for each state state). Also, the variable year is a factor variable with 7 levels (one for each year). So, 7 x 48 = 336. We can also see that all variables are observed over all time periods, so the panel is balanced.> 
> cat("======== Question 2 ========")
======== Question 2 ========> 
> cat("Consider the state fixed effects model for traffic fatality rates")
Consider the state fixed effects model for traffic fatality rates> 
> cat("Consider three types of commands: (i) Runs the regression with entity dummies; (ii) second one applies OLS to entity-demeaned data; (iii) third one relies on the within option for lm() so that the valid robust variance-covariance matrix is computed and returned")
Consider three types of commands: (i) Runs the regression with entity dummies; (ii) second one applies OLS to entity-demeaned data; (iii) third one relies on the within option for lm() so that the valid robust variance-covariance matrix is computed and returned> 
> cat("======== Question 2a =========")
======== Question 2a =========> 
> cat("Fatalities$fatal_rate <- Fatalities$fatal / Fatalities$pop * 10000; fatal_fe_lm_mod <- lm(fatal_rate ~ beertax + state - 1, data = Fatalities); fatal_fe_lm_mod")
Fatalities$fatal_rate <- Fatalities$fatal / Fatalities$pop * 10000; fatal_fe_lm_mod <- lm(fatal_rate ~ beertax + state - 1, data = Fatalities); fatal_fe_lm_mod> 
> # Define the fatality rate
> Fatalities$fatal_rate <- Fatalities$fatal / Fatalities$pop * 10000
> 
> # Regress traffic fatality rate on beer tax and state binary regressors
> fatal_fe_lm_mod <- lm(fatal_rate ~ beertax + state - 1, data = Fatalities)
> fatal_fe_lm_mod

Call:
lm(formula = fatal_rate ~ beertax + state - 1, data = Fatalities)

Coefficients:
beertax  stateal  stateaz  statear  stateca  stateco  statect  statede  statefl  statega  stateid  stateil  statein  stateia  stateks  stateky  statela  stateme  statemd  statema  statemi  statemn  statems  statemo  statemt  statene  statenv  statenh  statenj  statenm  stateny  statenc  statend  stateoh  stateok  stateor  statepa  stateri  statesc  statesd  statetn  statetx  stateut  statevt  stateva  statewa  statewv  statewi  statewy  
-0.6559   3.4776   2.9099   2.8227   1.9682   1.9933   1.6154   2.1700   3.2095   4.0022   2.8086   1.5160   2.0161   1.9337   2.2544   2.2601   2.6305   2.3697   1.7712   1.3679   1.9931   1.5804   3.4486   2.1814   3.1172   1.9555   2.8769   2.2232   1.3719   3.9040   1.2910   3.1872   1.8542   1.8032   2.9326   2.3096   1.7102   1.2126   4.0348   2.4739   2.6020   2.5602   2.3137   2.5116   2.1874   1.8181   2.5809   1.7184   3.2491  

> 
> cat("Solution 2a: We defined the fatality rate as the number of fatalities per 10000 people. Then as you can see above we ran the fixed effects regression using the dummy variable specification by using -1 to drop constant.")
Solution 2a: We defined the fatality rate as the number of fatalities per 10000 people. Then as you can see above we ran the fixed effects regression using the dummy variable specification by using -1 to drop constant.> 
> cat("======== Question 2b ==========")
======== Question 2b ==========> 
> cat("Fatalities_demeaned <- with(Fatalities,
+                             data.frame(fatal_rate = fatal_rate - ave(fatal_rate, state),
+                                        beertax = beertax - ave(beertax, state))); summary(lm(fatal_rate ~ beertax - 1, data = Fatalities_demeaned))")
Fatalities_demeaned <- with(Fatalities,
                            data.frame(fatal_rate = fatal_rate - ave(fatal_rate, state),
                                       beertax = beertax - ave(beertax, state))); summary(lm(fatal_rate ~ beertax - 1, data = Fatalities_demeaned))> 
> # Obtain demeaned data
> Fatalities_demeaned <- with(Fatalities,
+                             data.frame(fatal_rate = fatal_rate - ave(fatal_rate, state),
+                                        beertax = beertax - ave(beertax, state)))
> 
> # estimate the regression
> summary(lm(fatal_rate ~ beertax - 1, data = Fatalities_demeaned))

Call:
lm(formula = fatal_rate ~ beertax - 1, data = Fatalities_demeaned)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.58696 -0.08284 -0.00127  0.07955  0.89780 

Coefficients:
        Estimate Std. Error t value Pr(>|t|)    
beertax  -0.6559     0.1739  -3.772 0.000191 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.1757 on 335 degrees of freedom
Multiple R-squared:  0.04074,	Adjusted R-squared:  0.03788 
F-statistic: 14.23 on 1 and 335 DF,  p-value: 0.0001913

> 
> ("Solution 2b: Above, we ran the entity-demeaned model. This model takes the averages on both sides of the regression using 1/T and then takes that averages and subtracts it from the panel regression model we had initial proposed. In the end, there are two ways we can model this: First, we can run OLS of the dummy regression model, using n-1 regressors, having n different intercepts - one for each entity; or second, we can run a OLS using the entity demeaned data as we just did by first taking the 1/T average then taking the difference")
[1] "Solution 2b: Above, we ran the entity-demeaned model. This model takes the averages on both sides of the regression using 1/T and then takes that averages and subtracts it from the panel regression model we had initial proposed. In the end, there are two ways we can model this: First, we can run OLS of the dummy regression model, using n-1 regressors, having n different intercepts - one for each entity; or second, we can run a OLS using the entity demeaned data as we just did by first taking the 1/T average then taking the difference"
> 
> cat("========== Question 2c ==========")
========== Question 2c ==========> 
> cat("install.packages(plm); library(plm); fatal_fe_mod <- plm(fatal_rate ~ beertax, data = Fatalities, index = c(state, year), model = within); coeftest(fatal_fe_mod, vcov. = vcovHC, type = HC1)")
install.packages(plm); library(plm); fatal_fe_mod <- plm(fatal_rate ~ beertax, data = Fatalities, index = c(state, year), model = within); coeftest(fatal_fe_mod, vcov. = vcovHC, type = HC1)> 
> 
> install.packages("plm")

The downloaded binary packages are in
	/var/folders/kg/gkc5l3ys15g8xyx44qdxrt440000gn/T//RtmpE2tUMZ/downloaded_packages
> library(plm)
> 
> # Estimate the fixed effects regression with plm()
> fatal_fe_mod <- plm(fatal_rate ~ beertax, 
+                     data = Fatalities,
+                     index = c("state", "year"), 
+                     model = "within")
> 
> # Print summary using robust standard errors
> coeftest(fatal_fe_mod, vcov. = vcovHC, type = "HC1")

t test of coefficients:

        Estimate Std. Error t value Pr(>|t|)  
beertax -0.65587    0.28880  -2.271  0.02388 *
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

> 
> cat("Solution 2c/2d: Above we ran the FE regression using the within option for plm(). This uses the entity-demeaned algorithm and doesn't report dummy coefficients. So we have the estimated coefficient being -0.6559 (similar with the lm() command) with a standard error of 0.29. In the end, we have the model as follows: The fatality rate = -0.66 x BeerTax + State FE's. The coefficient on beertax is statistically significant. We can interpret this as follows: the estimated is as follows - the estimated reduction in traffic fatalities due to an increase in the real beer tax by $1 is 0.66 per 10000 people. However, there could be other ommitted variables that vary over time that could cause some bias.")
Solution 2c/2d: Above we ran the FE regression using the within option for plm(). This uses the entity-demeaned algorithm and doesn't report dummy coefficients. So we have the estimated coefficient being -0.6559 (similar with the lm() command) with a standard error of 0.29. In the end, we have the model as follows: The fatality rate = -0.66 x BeerTax + State FE's. The coefficient on beertax is statistically significant. We can interpret this as follows: the estimated is as follows - the estimated reduction in traffic fatalities due to an increase in the real beer tax by $1 is 0.66 per 10000 people. However, there could be other ommitted variables that vary over time that could cause some bias.> #End
> cat("sessionInfo()"); print(sessionInfo())
sessionInfo()R version 4.5.3 (2026-03-11)
Platform: aarch64-apple-darwin20
Running under: macOS Tahoe 26.3.1

Matrix products: default
BLAS:   /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib 
LAPACK: /Library/Frameworks/R.framework/Versions/4.5-arm64/Resources/lib/libRlapack.dylib;  LAPACK version 3.12.1

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

time zone: America/Toronto
tzcode source: internal

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] plm_2.6-7      AER_1.2-16     survival_3.8-6 sandwich_3.1-1 lmtest_0.9-40  zoo_1.8-14     car_3.1-5      carData_3.0-6 

loaded via a namespace (and not attached):
 [1] Matrix_1.7-4       gtable_0.3.6       dplyr_1.1.4        compiler_4.5.3     tidyselect_1.2.1   Rcpp_1.0.14        collapse_2.1.6     parallel_4.5.3     splines_4.5.3      scales_1.4.0       lattice_0.22-9     ggplot2_4.0.0      R6_2.6.1           maxLik_1.5-2.2     generics_0.1.4     Formula_1.2-5      rbibutils_2.4.1    MASS_7.3-65        bdsmatrix_1.3-7    tibble_3.2.1       pillar_1.10.2      RColorBrewer_1.1-3 rlang_1.1.6        S7_0.2.0           cli_3.6.5          magrittr_2.0.3     Rdpack_2.6.6       digest_0.6.39      grid_4.5.3         nlme_3.1-168       lifecycle_1.0.4    miscTools_0.6-30   vctrs_0.6.5        glue_1.8.0         farver_2.1.2       abind_1.4-8        tools_4.5.3        pkgconfig_2.0.3   
> cat("End of assignment/log")
End of assignment/log> 
> sink(type = "message")
> sink()
> close(con)
> 
> cat("Wrote log to:", log_path, "\n")
Wrote log to: /Users/alafadul/Desktop/ECN702_Fadul_997/Ala_Fadul_RE2.txt 
