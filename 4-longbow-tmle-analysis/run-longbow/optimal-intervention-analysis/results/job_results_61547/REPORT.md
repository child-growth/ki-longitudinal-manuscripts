---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: []
      A: ['parity_cat']
      Y: ['haz']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        parity    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      1            112     852
Birth       COHORTS          GUATEMALA                      2            137     852
Birth       COHORTS          GUATEMALA                      3+           603     852
Birth       COHORTS          INDIA                          1            696    4122
Birth       COHORTS          INDIA                          2           1037    4122
Birth       COHORTS          INDIA                          3+          2389    4122
Birth       COHORTS          PHILIPPINES                    1            675    3050
Birth       COHORTS          PHILIPPINES                    2            687    3050
Birth       COHORTS          PHILIPPINES                    3+          1688    3050
Birth       GMS-Nepal        NEPAL                          1            211     696
Birth       GMS-Nepal        NEPAL                          2            180     696
Birth       GMS-Nepal        NEPAL                          3+           305     696
Birth       JiVitA-3         BANGLADESH                     1           7456   22455
Birth       JiVitA-3         BANGLADESH                     2           7615   22455
Birth       JiVitA-3         BANGLADESH                     3+          7384   22455
Birth       Keneba           GAMBIA                         1            156    1407
Birth       Keneba           GAMBIA                         2            146    1407
Birth       Keneba           GAMBIA                         3+          1105    1407
Birth       PROVIDE          BANGLADESH                     1            206     539
Birth       PROVIDE          BANGLADESH                     2            183     539
Birth       PROVIDE          BANGLADESH                     3+           150     539
Birth       SAS-CompFeed     INDIA                          1            361    1252
Birth       SAS-CompFeed     INDIA                          2            289    1252
Birth       SAS-CompFeed     INDIA                          3+           602    1252
Birth       ZVITAMBO         ZIMBABWE                       1           5989   13874
Birth       ZVITAMBO         ZIMBABWE                       2           4144   13874
Birth       ZVITAMBO         ZIMBABWE                       3+          3741   13874
6 months    COHORTS          GUATEMALA                      1            132     961
6 months    COHORTS          GUATEMALA                      2            139     961
6 months    COHORTS          GUATEMALA                      3+           690     961
6 months    COHORTS          INDIA                          1            740    4291
6 months    COHORTS          INDIA                          2           1096    4291
6 months    COHORTS          INDIA                          3+          2455    4291
6 months    COHORTS          PHILIPPINES                    1            574    2708
6 months    COHORTS          PHILIPPINES                    2            606    2708
6 months    COHORTS          PHILIPPINES                    3+          1528    2708
6 months    GMS-Nepal        NEPAL                          1            153     564
6 months    GMS-Nepal        NEPAL                          2            149     564
6 months    GMS-Nepal        NEPAL                          3+           262     564
6 months    JiVitA-3         BANGLADESH                     1           6396   16811
6 months    JiVitA-3         BANGLADESH                     2           5700   16811
6 months    JiVitA-3         BANGLADESH                     3+          4715   16811
6 months    Keneba           GAMBIA                         1            194    1623
6 months    Keneba           GAMBIA                         2            164    1623
6 months    Keneba           GAMBIA                         3+          1265    1623
6 months    PROVIDE          BANGLADESH                     1            218     604
6 months    PROVIDE          BANGLADESH                     2            222     604
6 months    PROVIDE          BANGLADESH                     3+           164     604
6 months    SAS-CompFeed     INDIA                          1            392    1336
6 months    SAS-CompFeed     INDIA                          2            304    1336
6 months    SAS-CompFeed     INDIA                          3+           640    1336
6 months    SAS-FoodSuppl    INDIA                          1              7     380
6 months    SAS-FoodSuppl    INDIA                          2             72     380
6 months    SAS-FoodSuppl    INDIA                          3+           301     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995
6 months    ZVITAMBO         ZIMBABWE                       1           3466    8668
6 months    ZVITAMBO         ZIMBABWE                       2           2638    8668
6 months    ZVITAMBO         ZIMBABWE                       3+          2564    8668
24 months   COHORTS          GUATEMALA                      1            166    1064
24 months   COHORTS          GUATEMALA                      2            151    1064
24 months   COHORTS          GUATEMALA                      3+           747    1064
24 months   COHORTS          INDIA                          1            564    3380
24 months   COHORTS          INDIA                          2            848    3380
24 months   COHORTS          INDIA                          3+          1968    3380
24 months   COHORTS          PHILIPPINES                    1            524    2445
24 months   COHORTS          PHILIPPINES                    2            544    2445
24 months   COHORTS          PHILIPPINES                    3+          1377    2445
24 months   GMS-Nepal        NEPAL                          1            130     488
24 months   GMS-Nepal        NEPAL                          2            130     488
24 months   GMS-Nepal        NEPAL                          3+           228     488
24 months   JiVitA-3         BANGLADESH                     1           3173    8632
24 months   JiVitA-3         BANGLADESH                     2           2923    8632
24 months   JiVitA-3         BANGLADESH                     3+          2536    8632
24 months   Keneba           GAMBIA                         1            137    1376
24 months   Keneba           GAMBIA                         2            139    1376
24 months   Keneba           GAMBIA                         3+          1100    1376
24 months   PROVIDE          BANGLADESH                     1            211     578
24 months   PROVIDE          BANGLADESH                     2            213     578
24 months   PROVIDE          BANGLADESH                     3+           154     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ZVITAMBO         ZIMBABWE                       1            640    1639
24 months   ZVITAMBO         ZIMBABWE                       2            507    1639
24 months   ZVITAMBO         ZIMBABWE                       3+           492    1639


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0f833652-c2ad-468b-9905-ba6f332c7080/3ff1ca68-28a6-48fe-8aaf-e223ad5c204d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.1367849   -0.0739481    0.3475178
Birth       COHORTS          INDIA                          optimal              observed          -0.7278774   -0.7994345   -0.6563202
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.2497066   -0.3955639   -0.1038493
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.7930346   -0.9961904   -0.5898788
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.4201488   -1.4632821   -1.3770155
Birth       Keneba           GAMBIA                         optimal              observed           0.2273705    0.0901644    0.3645765
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.6180335   -0.8184340   -0.4176330
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.3496781   -1.5269550   -1.1724011
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5289005   -0.5793654   -0.4784357
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.9182614   -2.2224598   -1.6140631
6 months    COHORTS          INDIA                          optimal              observed          -0.9911681   -1.0893906   -0.8929456
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.9953028   -1.1229735   -0.8676320
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.3420642   -1.5180237   -1.1661047
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2660161   -1.3113021   -1.2207300
6 months    Keneba           GAMBIA                         optimal              observed          -0.6853006   -0.9371548   -0.4334463
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.8780642   -1.0607525   -0.6953759
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.3077672   -1.4208862   -1.1946482
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.7291517   -2.0069779   -1.4513256
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5940852   -0.6982967   -0.4898738
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8846475   -0.9564264   -0.8128685
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.9792040   -3.2575761   -2.7008318
24 months   COHORTS          INDIA                          optimal              observed          -1.8953959   -2.0619865   -1.7288053
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.0057863   -2.1834064   -1.8281663
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7636655   -1.9874935   -1.5398375
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9343046   -2.0011649   -1.8674442
24 months   Keneba           GAMBIA                         optimal              observed          -1.2499025   -1.4899870   -1.0098180
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.5716158   -1.7678222   -1.3754094
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5267338   -1.7088538   -1.3446139


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          observed             observed          -0.6773241   -0.7124609   -0.6421873
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       Keneba           GAMBIA                         observed             observed           0.0483298   -0.0182746    0.1149342
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5003222   -0.5208673   -0.4797770
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          observed             observed          -1.0455022   -1.0805318   -1.0104727
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    Keneba           GAMBIA                         observed             observed          -0.9239386   -0.9768148   -0.8710623
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5432778   -0.5926218   -0.4939338
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679886   -0.8935535   -0.8424236
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9905921   -3.0548289   -2.9263553
24 months   COHORTS          INDIA                          observed             observed          -2.2397574   -2.2808841   -2.1986307
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409
24 months   Keneba           GAMBIA                         observed             observed          -1.5883084   -1.6443765   -1.5322402
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6059640   -1.6629797   -1.5489484


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.0070548   -0.1989442    0.1848346
Birth       COHORTS          INDIA                          optimal              observed           0.0505533   -0.0112224    0.1123289
Birth       COHORTS          PHILIPPINES                    optimal              observed           0.0006574   -0.1377239    0.1390388
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.2921234   -0.4847051   -0.0995417
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.1692660   -0.2108957   -0.1276363
Birth       Keneba           GAMBIA                         optimal              observed          -0.1790407   -0.3060641   -0.0520172
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.2670685   -0.4468327   -0.0873043
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0817437   -0.2554057    0.0919183
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed           0.0285784   -0.0175903    0.0747470
6 months    COHORTS          GUATEMALA                      optimal              observed           0.1025278   -0.1906050    0.3956606
6 months    COHORTS          INDIA                          optimal              observed          -0.0543341   -0.1468525    0.0381843
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.1452696   -0.2664361   -0.0241031
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0087751   -0.1687526    0.1512025
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0470771   -0.0867084   -0.0074459
6 months    Keneba           GAMBIA                         optimal              observed          -0.2386380   -0.4858396    0.0085636
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.2136273   -0.3774605   -0.0497941
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0940891   -0.1794198   -0.0087583
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.1695325   -0.4178242    0.0787593
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0508075   -0.0388167    0.1404316
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.0166589   -0.0500713    0.0833890
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0113881   -0.2795823    0.2568060
24 months   COHORTS          INDIA                          optimal              observed          -0.3443615   -0.5056285   -0.1830946
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.4083282   -0.5812169   -0.2354395
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.1237525   -0.3365042    0.0889991
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0793435   -0.1419130   -0.0167740
24 months   Keneba           GAMBIA                         optimal              observed          -0.3384059   -0.5740542   -0.1027576
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0308064   -0.2087553    0.1471426
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0792302   -0.2484514    0.0899910
