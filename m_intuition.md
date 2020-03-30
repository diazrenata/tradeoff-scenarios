Situations to match the flowchart
================

-   [Beginning](#beginning)
-   [E is stable](#e-is-stable)
    -   [Stable E, N decreases](#stable-e-n-decreases)

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

Beginning
=========

Beginning with a community of 1000 energy units divided into two species of fairly different sizes. The two species have *equal shares of the energy*. This means there are *more individuals of the smaller species*.

![](m_intuition_files/figure-markdown_github/toy%20setup-1.png)

E is stable
===========

Stable E, N decreases
---------------------

Achieved by increasing the average size.

Average metabolic rate increases.

The energy spectrum becomes skewed large.

The size spectrum becomes more large-skewed than it was, but note that *beginning with energetic equivalence means beginning with a small-skewed size spectrum*.

![](m_intuition_files/figure-markdown_github/E%20stable%20N%20decrease-1.png)![](m_intuition_files/figure-markdown_github/E%20stable%20N%20decrease-2.png)

    ##                 variable     ratio
    ## 1                E ratio 1.0007447
    ## 2                N ratio 0.8055556
    ## 3                M ratio 1.0689655
    ## 4           avg e change 1.2423037
    ## 5        avg size change 1.3269917
    ## 6 size change / e change 1.0681701

<!-- ## E is stable, N increases -->
<!-- Achieved by decreasing the average size. -->
<!-- Average metabolic rate decreases. -->
<!-- The size spectrum in individuals becomes more concentrated at small sizes, and the energy spectrum skews small.  -->
<!-- ```{r E stable N increase, fig.dim = c(4,4)} -->
<!-- N1 = ceiling((.75 * E)/E1) -->
<!-- N2 = ceiling((.25 * E)/E2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- # E increases  -->
<!-- ## E increases and N increases proportionally -->
<!-- Here we have increased E by 1.5 by amplifying the original community without changing the underlying size structure. -->
<!-- ```{r E increase, N increase proportional, fig.dim = c(4,4)} -->
<!-- Eamp = E * 1.5 -->
<!-- N1 = ceiling((Eamp/2)/E1) -->
<!-- N2 = ceiling((Eamp/2)/E2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E increases, N increases but not as much as E -->
<!-- Gains went to large species more than to small species. -->
<!-- ```{r E increase, N increases less, fig.dim = c(4,4)} -->
<!-- N1 = ceiling((E/2)/E1) -->
<!-- N2 = ceiling((E/2)/E2) -->
<!-- N1 = ceiling(1.2 * N1) -->
<!-- N2 = ceiling(1.75 * N2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E increases, N increases more than E -->
<!-- Gains go disproportionately to small species. -->
<!-- ### Additional energy available only to small species -->
<!-- ```{r E increase for small, fig.dim = c(4,4)} -->
<!-- N1 = ceiling(((E/2) + (.2 * E))/E1) -->
<!-- N2 = ceiling((E/2)/E2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ### E increase available to all sizes -->
<!-- ```{r E increase for all, fig.dim = c(4,4)} -->
<!-- N1 = ceiling((E/2 + 500)/E1) -->
<!-- N2 = ceiling((E/2 + 500)/E2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E increases, N does not change -->
<!-- Achieved by reallocating small individuals to large individuals. -->
<!-- The spectra shift large. -->
<!-- Average energy use and size increase. -->
<!-- ```{r E increase, N stable, fig.dim = c(4,4)} -->
<!-- N1 = ceiling((E/2)/E1) -->
<!-- N2 = ceiling((E/2)/E2) -->
<!-- N2 = N2 + ceiling(.75 * N1) -->
<!-- N1 = ceiling(.25 * N1) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E increases, N decreases -->
<!-- Small species decline, and large species increase. The greater the size difference the easier it is to get this pattern; if they're too close it might actually be impossible to get it very convincingly, because E scales at .75.  -->
<!-- ```{r E increase, N decreases, fig.dim = c(4,4)} -->
<!-- N1 = ceiling((E/2)/E1) -->
<!-- N2 = ceiling((E/2)/E2) -->
<!-- N2 = N2 + ceiling(.4 * N1) -->
<!-- N1 = ceiling(.5 * N1) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- # E decreases -->
<!-- ## E decreases and N increases proportionally -->
<!-- Resources decrease for all sizes, turning-down-the-volume on the whole community without changing the size structure. -->
<!-- ```{r E decreases, N proportionally, fig.dim = c(4,4)} -->
<!-- Edamp = .75 * E -->
<!-- N1 = ceiling((Edamp/2)/E1) -->
<!-- N2 = ceiling((Edamp/2)/E2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E decreases and N decreases more than E -->
<!-- Small species decline. Large species can increase (to a limit) or decline, but loss of energy to large species must be less than to small species.  -->
<!-- ```{r E decreases, N decreases more, fig.dim = c(4,4)} -->
<!-- N1 = ceiling(.75 * ((E/2)/E1)) -->
<!-- N2 = ceiling((E/2) / E2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E decreases and N decreases less than E -->
<!-- Large species decline disproportionately. -->
<!-- ```{r E decreases, N decreases less, fig.dim = c(4,4)} -->
<!-- N1 = ceiling(((E/2)/E1)) -->
<!-- N2 = ceiling(.75 * ((E/2)/E2)) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E decreases and N is stable -->
<!-- Large species decline disproportionately. -->
<!-- Average e must decrease.  -->
<!-- ```{r E decreases, N stable, fig.dim = c(4,4)} -->
<!-- N1 = ceiling(((E/2)/E1)) -->
<!-- N2 = ceiling(((E/2)/E2)) -->
<!-- N1 = N1 + ceiling(.25 * N2) -->
<!-- N2 = ceiling(.75 * N2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ## E decreases and N increases -->
<!-- Large species *must decline* and small species *must gain*. -->
<!-- This can only result in a *decrease* in E to a threshold/with a particular arrangement of relative sizes and the increase.  -->
<!-- ```{r E decreases, N increases, fig.dim = c(4,4)} -->
<!-- N1 = ceiling(((E/2)/E1)) -->
<!-- N2 = ceiling(((E/2)/E2)) -->
<!-- N1 = ceiling(N1 * 1.5) -->
<!-- N2 = ceiling(.3 * N2) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
<!-- ```{r reallocate to the mean} -->
<!-- N1 = ceiling(((E/2)/E1)) -->
<!-- N2 = ceiling(((E/2)/E2)) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- mean_e = mean(scenario$energy) -->
<!-- sum_e = sum(scenario$energy) -->
<!-- N1 = N/2 -->
<!-- N2 = N/2 -->
<!-- E1 = mean_e -->
<!-- E2 = mean_e -->
<!-- M1 = mean_e ^ (1/.75) -->
<!-- M2 = mean_e ^ (1/.75) -->
<!-- scenario <-  bind_rows(individuals_t1, data.frame( -->
<!--   species = c(rep(1, times = N1), -->
<!--               rep(2, times = N2)), -->
<!--   energy = c(rep(E1, times = N1), -->
<!--              rep(E2, times = N2)), -->
<!--   mass =c(rep(M1, times = N1), -->
<!--           rep(M2, times = N2)), -->
<!--   ts = 2 -->
<!-- )) -->
<!-- plot_spectra(scenario) -->
<!-- plot_sv(scenario) -->
<!-- sv_ratios(scenario) -->
<!-- ``` -->
