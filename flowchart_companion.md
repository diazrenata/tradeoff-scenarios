Situations to match the flowchart
================

-   [Beginning](#beginning)
-   [E is stable](#e-is-stable)
    -   [Stable E, N decreases](#stable-e-n-decreases)
    -   [E is stable, N increases](#e-is-stable-n-increases)
-   [E increases](#e-increases)
    -   [E increases and N increases proportionally](#e-increases-and-n-increases-proportionally)
    -   [E increases, N increases but not as much as E](#e-increases-n-increases-but-not-as-much-as-e)
    -   [E increases, N increases more than E](#e-increases-n-increases-more-than-e)
        -   [Additional energy available only to small species](#additional-energy-available-only-to-small-species)
        -   [E increase available to all sizes](#e-increase-available-to-all-sizes)
    -   [E increases, N does not change](#e-increases-n-does-not-change)
    -   [E increases, N decreases](#e-increases-n-decreases)
-   [E decreases](#e-decreases)
    -   [E decreases and N increases proportionally](#e-decreases-and-n-increases-proportionally)
    -   [E decreases and N decreases more than E](#e-decreases-and-n-decreases-more-than-e)
    -   [E decreases and N decreases less than E](#e-decreases-and-n-decreases-less-than-e)
    -   [E decreases and N is stable](#e-decreases-and-n-is-stable)
    -   [E decreases and N increases](#e-decreases-and-n-increases)

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

![](flowchart_companion_files/figure-markdown_github/toy%20setup-1.png)

E is stable
===========

Stable E, N decreases
---------------------

Achieved by increasing the average size.

Average metabolic rate increases.

The energy spectrum becomes skewed large.

The size spectrum becomes more large-skewed than it was, but note that *beginning with energetic equivalence means beginning with a small-skewed size spectrum*.

![](flowchart_companion_files/figure-markdown_github/E%20stable%20N%20decrease-1.png)![](flowchart_companion_files/figure-markdown_github/E%20stable%20N%20decrease-2.png)

    ##                 variable     ratio
    ## 1                E ratio 1.0007447
    ## 2                N ratio 0.8055556
    ## 3                M ratio 1.0689655
    ## 4           avg e change 1.2423037
    ## 5        avg size change 1.3269917
    ## 6 size change / e change 1.0681701

E is stable, N increases
------------------------

Achieved by decreasing the average size.

Average metabolic rate decreases.

The size spectrum in individuals becomes more concentrated at small sizes, and the energy spectrum skews small.

![](flowchart_companion_files/figure-markdown_github/E%20stable%20N%20increase-1.png)![](flowchart_companion_files/figure-markdown_github/E%20stable%20N%20increase-2.png)

    ##                 variable     ratio
    ## 1                E ratio 0.9992553
    ## 2                N ratio 1.1944444
    ## 3                M ratio 0.9310345
    ## 4           avg e change 0.8365859
    ## 5        avg size change 0.7794707
    ## 6 size change / e change 0.9317283

E increases
===========

E increases and N increases proportionally
------------------------------------------

Here we have increased E by 1.5 by amplifying the original community without changing the underlying size structure.

![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20increase%20proportional-1.png)![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20increase%20proportional-2.png)

    ##                 variable ratio
    ## 1                E ratio   1.5
    ## 2                N ratio   1.5
    ## 3                M ratio   1.5
    ## 4           avg e change   1.0
    ## 5        avg size change   1.0
    ## 6 size change / e change   1.0

E increases, N increases but not as much as E
---------------------------------------------

Gains went to large species more than to small species.

![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20increases%20less-1.png)![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20increases%20less-2.png)

    ##                 variable    ratio
    ## 1                E ratio 1.479203
    ## 2                N ratio 1.370370
    ## 3                M ratio 1.517241
    ## 4           avg e change 1.079418
    ## 5        avg size change 1.107176
    ## 6 size change / e change 1.025715

E increases, N increases more than E
------------------------------------

Gains go disproportionately to small species.

### Additional energy available only to small species

![](flowchart_companion_files/figure-markdown_github/E%20increase%20for%20small-1.png)![](flowchart_companion_files/figure-markdown_github/E%20increase%20for%20small-2.png)

    ##                 variable     ratio
    ## 1                E ratio 1.1997021
    ## 2                N ratio 1.2777778
    ## 3                M ratio 1.1724138
    ## 4           avg e change 0.9388973
    ## 5        avg size change 0.9175412
    ## 6 size change / e change 0.9772541

### E increase available to all sizes

![](flowchart_companion_files/figure-markdown_github/E%20increase%20for%20all-1.png)![](flowchart_companion_files/figure-markdown_github/E%20increase%20for%20all-2.png)

    ##                 variable ratio
    ## 1                E ratio     2
    ## 2                N ratio     2
    ## 3                M ratio     2
    ## 4           avg e change     1
    ## 5        avg size change     1
    ## 6 size change / e change     1

E increases, N does not change
------------------------------

Achieved by reallocating small individuals to large individuals.

The spectra shift large.

Average energy use and size increase.

![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20stable-1.png)![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20stable-2.png)

    ##                 variable    ratio
    ## 1                E ratio 1.484558
    ## 2                N ratio 1.004630
    ## 3                M ratio 1.652299
    ## 4           avg e change 1.477717
    ## 5        avg size change 1.644685
    ## 6 size change / e change 1.112990

E increases, N decreases
------------------------

Small species decline, and large species increase. The greater the size difference the easier it is to get this pattern; if they're too close it might actually be impossible to get it very convincingly, because E scales at .75.

![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20decreases-1.png)![](flowchart_companion_files/figure-markdown_github/E%20increase,%20N%20decreases-2.png)

    ##                 variable     ratio
    ## 1                E ratio 1.2055948
    ## 2                N ratio 0.9305556
    ## 3                M ratio 1.3017241
    ## 4           avg e change 1.2955645
    ## 5        avg size change 1.3988677
    ## 6 size change / e change 1.0797361

E decreases
===========

E decreases and N increases proportionally
------------------------------------------

Resources decrease for all sizes, turning-down-the-volume on the whole community without changing the size structure.

![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20proportionally-1.png)![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20proportionally-2.png)

    ##                 variable     ratio
    ## 1                E ratio 0.7554577
    ## 2                N ratio 0.7546296
    ## 3                M ratio 0.7557471
    ## 4           avg e change 1.0010973
    ## 5        avg size change 1.0014809
    ## 6 size change / e change 1.0003831

E decreases and N decreases more than E
---------------------------------------

Small species decline. Large species can increase (to a limit) or decline, but loss of energy to large species must be less than to small species.

![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20decreases%20more-1.png)![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20decreases%20more-2.png)

    ##                 variable     ratio
    ## 1                E ratio 0.8768504
    ## 2                N ratio 0.8287037
    ## 3                M ratio 0.8936782
    ## 4           avg e change 1.0580987
    ## 5        avg size change 1.0784049
    ## 6 size change / e change 1.0191912

E decreases and N decreases less than E
---------------------------------------

Large species decline disproportionately.

![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20decreases%20less-1.png)![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20decreases%20less-2.png)

    ##                 variable     ratio
    ## 1                E ratio 0.8786074
    ## 2                N ratio 0.9259259
    ## 3                M ratio 0.8620690
    ## 4           avg e change 0.9488959
    ## 5        avg size change 0.9310345
    ## 6 size change / e change 0.9811766

E decreases and N is stable
---------------------------

Large species decline disproportionately.

Average e must decrease.

![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20stable-1.png)![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20stable-2.png)

    ##                 variable     ratio
    ## 1                E ratio 0.9351896
    ## 2                N ratio 1.0046296
    ## 3                M ratio 0.9109195
    ## 4           avg e change 0.9308800
    ## 5        avg size change 0.9067218
    ## 6 size change / e change 0.9740480

E decreases and N increases
---------------------------

Large species *must decline* and small species *must gain*.

This can only result in a *decrease* in E to a threshold/with a particular arrangement of relative sizes and the increase.

![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20increases-1.png)![](flowchart_companion_files/figure-markdown_github/E%20decreases,%20N%20increases-2.png)

    ##                 variable     ratio
    ## 1                E ratio 0.9006238
    ## 2                N ratio 1.1342593
    ## 3                M ratio 0.8189655
    ## 4           avg e change 0.7940194
    ## 5        avg size change 0.7220267
    ## 6 size change / e change 0.9093314

![](flowchart_companion_files/figure-markdown_github/reallocate%20to%20the%20mean-1.png)![](flowchart_companion_files/figure-markdown_github/reallocate%20to%20the%20mean-2.png)

    ##                 variable     ratio
    ## 1                E ratio 1.0000000
    ## 2                N ratio 1.0000000
    ## 3                M ratio 0.9637423
    ## 4           avg e change 1.0000000
    ## 5        avg size change 0.9637423
    ## 6 size change / e change 0.9637423
