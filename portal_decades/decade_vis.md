Exploratory plots
================

    ## `geom_smooth()` using formula 'y ~ x'

![](decade_vis_files/figure-gfm/aggregate%20and%20species%20plots-1.png)<!-- -->

    ## `geom_smooth()` using formula 'y ~ x'

![](decade_vis_files/figure-gfm/aggregate%20and%20species%20plots-2.png)<!-- -->

    ## `geom_smooth()` using formula 'y ~ x'

![](decade_vis_files/figure-gfm/aggregate%20and%20species%20plots-3.png)<!-- -->

    ## `geom_smooth()` using formula 'y ~ x'

![](decade_vis_files/figure-gfm/facet%20svs-1.png)<!-- -->

    ## Registered S3 method overwritten by 'quantmod':
    ##   method            from
    ##   as.zoo.data.frame zoo

    ## 
    ##  Augmented Dickey-Fuller Test
    ## 
    ## data:  dat$sv_abund
    ## Dickey-Fuller = -3.0898, Lag order = 8, p-value = 0.117
    ## alternative hypothesis: stationary

    ## 
    ##  Augmented Dickey-Fuller Test
    ## 
    ## data:  dat$sv_energy
    ## Dickey-Fuller = -3.5303, Lag order = 8, p-value = 0.03939
    ## alternative hypothesis: stationary

    ## 
    ##  Augmented Dickey-Fuller Test
    ## 
    ## data:  dat$sv_biomass
    ## Dickey-Fuller = -3.7594, Lag order = 8, p-value = 0.02103
    ## alternative hypothesis: stationary

    ## Warning in tseries::kpss.test(dat$sv_abund, null = c("L")): p-value smaller than
    ## printed p-value

    ## 
    ##  KPSS Test for Level Stationarity
    ## 
    ## data:  dat$sv_abund
    ## KPSS Level = 1.3665, Truncation lag parameter = 6, p-value = 0.01

    ## Warning in tseries::kpss.test(dat$sv_energy, null = c("L")): p-value smaller
    ## than printed p-value

    ## 
    ##  KPSS Test for Level Stationarity
    ## 
    ## data:  dat$sv_energy
    ## KPSS Level = 3.1075, Truncation lag parameter = 6, p-value = 0.01

    ## Warning in tseries::kpss.test(dat$sv_biomass, null = c("L")): p-value smaller
    ## than printed p-value

    ## 
    ##  KPSS Test for Level Stationarity
    ## 
    ## data:  dat$sv_biomass
    ## KPSS Level = 3.7219, Truncation lag parameter = 6, p-value = 0.01

    ## Warning in tseries::kpss.test(dat$sv_abund, null = c("T")): p-value smaller than
    ## printed p-value

    ## 
    ##  KPSS Test for Trend Stationarity
    ## 
    ## data:  dat$sv_abund
    ## KPSS Trend = 0.63687, Truncation lag parameter = 6, p-value = 0.01

    ## Warning in tseries::kpss.test(dat$sv_energy, null = c("T")): p-value smaller
    ## than printed p-value

    ## 
    ##  KPSS Test for Trend Stationarity
    ## 
    ## data:  dat$sv_energy
    ## KPSS Trend = 0.55504, Truncation lag parameter = 6, p-value = 0.01

    ## Warning in tseries::kpss.test(dat$sv_biomass, null = c("T")): p-value smaller
    ## than printed p-value

    ## 
    ##  KPSS Test for Trend Stationarity
    ## 
    ## data:  dat$sv_biomass
    ## KPSS Trend = 0.49296, Truncation lag parameter = 6, p-value = 0.01
