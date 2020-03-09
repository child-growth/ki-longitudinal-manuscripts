---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/f77fd2fd-5d29-4940-96bd-cd451987a202/9a8c3d22-00f2-41c6-b2ad-5d36ba91f151/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f77fd2fd-5d29-4940-96bd-cd451987a202/9a8c3d22-00f2-41c6-b2ad-5d36ba91f151/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f77fd2fd-5d29-4940-96bd-cd451987a202/9a8c3d22-00f2-41c6-b2ad-5d36ba91f151/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.4781280   -0.7810214   -0.1752345
Birth       COHORTS          GUATEMALA                      2                    NA                 0.0673157   -0.3435365    0.4781679
Birth       COHORTS          GUATEMALA                      3+                   NA                 0.3130339    0.2078585    0.4182093
Birth       COHORTS          INDIA                          1                    NA                -0.8279209   -0.9587169   -0.6971249
Birth       COHORTS          INDIA                          2                    NA                -0.6491823   -0.7429089   -0.5554557
Birth       COHORTS          INDIA                          3+                   NA                -0.6552239   -0.7080652   -0.6023826
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.4112095   -0.5476852   -0.2747337
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.2523087   -0.3983187   -0.1062986
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.2708186   -0.3328703   -0.2087668
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.1924612   -1.4463682   -0.9385541
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.0130435   -1.2869834   -0.7391036
Birth       GMS-Nepal        NEPAL                          3+                   NA                -0.7031087   -0.8410654   -0.5651521
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.8495037   -1.8982258   -1.8007816
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.5424302   -1.5833449   -1.5015154
Birth       JiVitA-3         BANGLADESH                     3+                   NA                -1.4310786   -1.4736013   -1.3885560
Birth       Keneba           GAMBIA                         1                    NA                -0.1223698   -0.3276929    0.0829533
Birth       Keneba           GAMBIA                         2                    NA                 0.2695080    0.1034882    0.4355278
Birth       Keneba           GAMBIA                         3+                   NA                 0.1539904    0.0627712    0.2452096
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.1208548   -1.2580991   -0.9836105
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.8356384   -1.0225180   -0.6487589
Birth       PROVIDE          BANGLADESH                     3+                   NA                -0.6643087   -0.8675444   -0.4610729
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.6404168   -1.9003938   -1.3804398
Birth       SAS-CompFeed     INDIA                          2                    NA                -1.4453712   -1.5926818   -1.2980607
Birth       SAS-CompFeed     INDIA                          3+                   NA                -1.3746945   -1.5177537   -1.2316352
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5740414   -0.6345052   -0.5135776
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.5429996   -0.5952475   -0.4907517
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.5826813   -0.6336615   -0.5317011
6 months    COHORTS          GUATEMALA                      1                    NA                -1.8840683   -2.1825917   -1.5855448
6 months    COHORTS          GUATEMALA                      2                    NA                -1.7245335   -2.0153997   -1.4336674
6 months    COHORTS          GUATEMALA                      3+                   NA                -1.8299660   -1.9169348   -1.7429971
6 months    COHORTS          INDIA                          1                    NA                -0.9402868   -1.0565222   -0.8240515
6 months    COHORTS          INDIA                          2                    NA                -0.9363822   -1.0176423   -0.8551221
6 months    COHORTS          INDIA                          3+                   NA                -1.0840520   -1.1351220   -1.0329821
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.9380443   -1.0581767   -0.8179118
6 months    COHORTS          PHILIPPINES                    2                    NA                -1.0588439   -1.2191988   -0.8984889
6 months    COHORTS          PHILIPPINES                    3+                   NA                -1.2702737   -1.3372860   -1.2032613
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.4458163   -1.7367240   -1.1549086
6 months    GMS-Nepal        NEPAL                          2                    NA                -1.3808138   -1.7342264   -1.0274013
6 months    GMS-Nepal        NEPAL                          3+                   NA                -1.2103450   -1.3665080   -1.0541820
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3791421   -1.4325337   -1.3257505
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.2706632   -1.3116607   -1.2296658
6 months    JiVitA-3         BANGLADESH                     3+                   NA                -1.3116549   -1.3615143   -1.2617955
6 months    Keneba           GAMBIA                         1                    NA                -0.5977670   -0.7103950   -0.4851390
6 months    Keneba           GAMBIA                         2                    NA                -0.5616334   -0.8109536   -0.3123132
6 months    Keneba           GAMBIA                         3+                   NA                -0.9447933   -1.0241074   -0.8654792
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2371287   -1.4149259   -1.0593314
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.0433093   -1.2200143   -0.8666043
6 months    PROVIDE          BANGLADESH                     3+                   NA                -0.6760714   -0.8429622   -0.5091806
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.3354454   -1.5193359   -1.1515549
6 months    SAS-CompFeed     INDIA                          2                    NA                -1.3076758   -1.4207886   -1.1945630
6 months    SAS-CompFeed     INDIA                          3+                   NA                -1.4609484   -1.5556390   -1.3662577
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.7371429   -3.8398050   -1.6344807
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -1.7179167   -1.9871634   -1.4486700
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.9224252   -2.0438733   -1.8009772
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5965456   -0.6975182   -0.4955731
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5529673   -0.6800927   -0.4258420
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.6357969   -0.7339521   -0.5376417
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8557079   -0.9228315   -0.7885844
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                -0.8613494   -0.9288718   -0.7938269
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                -1.0086444   -1.0779943   -0.9392944
24 months   COHORTS          GUATEMALA                      1                    NA                -2.7881813   -2.9918475   -2.5845152
24 months   COHORTS          GUATEMALA                      2                    NA                -2.8942615   -3.1620187   -2.6265044
24 months   COHORTS          GUATEMALA                      3+                   NA                -3.0326409   -3.1441614   -2.9211204
24 months   COHORTS          INDIA                          1                    NA                -1.9101938   -2.0832101   -1.7371774
24 months   COHORTS          INDIA                          2                    NA                -2.0865883   -2.1950808   -1.9780959
24 months   COHORTS          INDIA                          3+                   NA                -2.3790345   -2.4389688   -2.3191003
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.0273194   -2.1912074   -1.8634314
24 months   COHORTS          PHILIPPINES                    2                    NA                -2.2884595   -2.4704243   -2.1064946
24 months   COHORTS          PHILIPPINES                    3+                   NA                -2.6456977   -2.7201275   -2.5712680
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.7318600   -1.9484530   -1.5152670
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.8688200   -2.2293543   -1.5082857
24 months   GMS-Nepal        NEPAL                          3+                   NA                -1.9434012   -2.0629384   -1.8238640
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9047719   -1.9696413   -1.8399024
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.9956972   -2.0579611   -1.9334333
24 months   JiVitA-3         BANGLADESH                     3+                   NA                -2.1143703   -2.1838096   -2.0449310
24 months   Keneba           GAMBIA                         1                    NA                -1.3061768   -1.5429772   -1.0693763
24 months   Keneba           GAMBIA                         2                    NA                -1.2587589   -1.5129267   -1.0045910
24 months   Keneba           GAMBIA                         3+                   NA                -1.6141911   -1.6863830   -1.5419992
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6135002   -1.7911401   -1.4358602
24 months   PROVIDE          BANGLADESH                     2                    NA                -1.6099989   -1.8168344   -1.4031634
24 months   PROVIDE          BANGLADESH                     3+                   NA                -1.5559389   -1.7285949   -1.3832829
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.5193455   -1.7019097   -1.3367813
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.5323204   -1.6892438   -1.3753970
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.6899784   -1.8202854   -1.5596715


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6773241   -0.7124609   -0.6421873
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       Keneba           GAMBIA                         NA                   NA                 0.0483298   -0.0182746    0.1149342
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5003222   -0.5208673   -0.4797770
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          NA                   NA                -1.0455022   -1.0805318   -1.0104727
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    Keneba           GAMBIA                         NA                   NA                -0.9239386   -0.9768148   -0.8710623
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5432778   -0.5926218   -0.4939338
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679886   -0.8935535   -0.8424236
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   COHORTS          INDIA                          NA                   NA                -2.2397574   -2.2808841   -2.1986307
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   Keneba           GAMBIA                         NA                   NA                -1.5883084   -1.6443765   -1.5322402
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059640   -1.6629797   -1.5489484


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      2                    1                  0.5454437    0.0346600    1.0562273
Birth       COHORTS          GUATEMALA                      3+                   1                  0.7911619    0.4705886    1.1117352
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.1787386    0.0180960    0.3393812
Birth       COHORTS          INDIA                          3+                   1                  0.1726970    0.0319205    0.3134734
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.1589008   -0.0404920    0.3582936
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.1403909   -0.0090744    0.2898562
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.1794177   -0.1935701    0.5524055
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.4893524    0.1987028    0.7800021
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.3070736    0.2458977    0.3682494
Birth       JiVitA-3         BANGLADESH                     3+                   1                  0.4184251    0.3566251    0.4802251
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  0.3918778    0.1289295    0.6548260
Birth       Keneba           GAMBIA                         3+                   1                  0.2763602    0.0519206    0.5007998
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.2852164    0.0545355    0.5158973
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.4565461    0.2115078    0.7015845
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.1950455   -0.1219996    0.5120907
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.2657223   -0.0726825    0.6041271
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.0310418   -0.0486749    0.1107585
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0086399   -0.0876085    0.0703288
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                  0.1595347   -0.2573810    0.5764505
6 months    COHORTS          GUATEMALA                      3+                   1                  0.0541023   -0.2568007    0.3650053
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                  0.0039046   -0.1370320    0.1448412
6 months    COHORTS          INDIA                          3+                   1                 -0.1437652   -0.2699398   -0.0175907
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                 -0.1207996   -0.3212292    0.0796300
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.3322294   -0.4697937   -0.1946651
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                  0.0650025   -0.3935698    0.5235747
6 months    GMS-Nepal        NEPAL                          3+                   1                  0.2354713   -0.0942465    0.5651891
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.1084788    0.0442567    0.1727010
6 months    JiVitA-3         BANGLADESH                     3+                   1                  0.0674871   -0.0032429    0.1382172
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.0361336   -0.2372476    0.3095149
6 months    Keneba           GAMBIA                         3+                   1                 -0.3470263   -0.4849455   -0.2091070
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                  0.1938194   -0.0566280    0.4442668
6 months    PROVIDE          BANGLADESH                     3+                   1                  0.5610573    0.3173767    0.8047378
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                  0.0277696   -0.1495569    0.2050960
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1255030   -0.2882696    0.0372636
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.0192262   -0.1158322    2.1542846
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8147176   -0.2946126    1.9240478
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0435783   -0.1184027    0.2055593
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0392513   -0.1794832    0.1009807
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0056414   -0.1004736    0.0891908
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1529364   -0.2490753   -0.0567976
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 -0.1060802   -0.4422639    0.2301035
24 months   COHORTS          GUATEMALA                      3+                   1                 -0.2444596   -0.4763095   -0.0126096
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                 -0.1763946   -0.3805100    0.0277209
24 months   COHORTS          INDIA                          3+                   1                 -0.4688408   -0.6518368   -0.2858448
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.2611400   -0.5058873   -0.0163928
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.6183783   -0.7985975   -0.4381592
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                 -0.1369600   -0.5564954    0.2825755
24 months   GMS-Nepal        NEPAL                          3+                   1                 -0.2115412   -0.4586857    0.0356033
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 -0.0909253   -0.1751722   -0.0066785
24 months   JiVitA-3         BANGLADESH                     3+                   1                 -0.2095984   -0.3011339   -0.1180629
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                  0.0474179   -0.2989664    0.3938022
24 months   Keneba           GAMBIA                         3+                   1                 -0.3080143   -0.5547044   -0.0613242
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                  0.0035013   -0.2670576    0.2740601
24 months   PROVIDE          BANGLADESH                     3+                   1                  0.0575613   -0.1882238    0.3033464
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0129749   -0.2526070    0.2266572
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1706329   -0.3940523    0.0527865


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.6078580    0.3104919    0.9052242
Birth       COHORTS          INDIA                          1                    NA                 0.1505968    0.0245616    0.2766320
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.1621603    0.0316023    0.2927183
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.1073031   -0.1340024    0.3486087
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.2600889    0.2144876    0.3056902
Birth       Keneba           GAMBIA                         1                    NA                 0.1706996   -0.0339009    0.3753000
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.2357528    0.1115336    0.3599720
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.2089950   -0.0271787    0.4451688
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.0737192    0.0171179    0.1303205
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0683347   -0.2234725    0.3601418
6 months    COHORTS          INDIA                          1                    NA                -0.1052154   -0.2166984    0.0062676
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.2025281   -0.3180930   -0.0869633
6 months    GMS-Nepal        NEPAL                          1                    NA                 0.0949771   -0.1823863    0.3723405
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0660489    0.0173391    0.1147587
6 months    Keneba           GAMBIA                         1                    NA                -0.3261715   -0.4420232   -0.2103199
6 months    PROVIDE          BANGLADESH                     1                    NA                 0.1454372   -0.0179423    0.3088166
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0664109   -0.1884110    0.0555892
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.8384586   -0.2422291    1.9191464
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0532679   -0.0382702    0.1448060
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0122806   -0.0744313    0.0498700
24 months   COHORTS          GUATEMALA                      1                    NA                -0.2024108   -0.4025017   -0.0023198
24 months   COHORTS          INDIA                          1                    NA                -0.3295636   -0.4970748   -0.1620525
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.3867951   -0.5458524   -0.2277378
24 months   GMS-Nepal        NEPAL                          1                    NA                -0.1555580   -0.3612733    0.0501572
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.1088762   -0.1693434   -0.0484090
24 months   Keneba           GAMBIA                         1                    NA                -0.2821316   -0.5156773   -0.0485859
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0110780   -0.1478793    0.1700354
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0866185   -0.2560701    0.0828331
