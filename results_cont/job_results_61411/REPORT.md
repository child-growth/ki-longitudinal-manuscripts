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

**Outcome Variable:** whz

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

agecat      studyid          country                        parity    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      1             94     756  whz              
Birth       COHORTS          GUATEMALA                      2            118     756  whz              
Birth       COHORTS          GUATEMALA                      3+           544     756  whz              
Birth       COHORTS          INDIA                          1            641    3855  whz              
Birth       COHORTS          INDIA                          2            982    3855  whz              
Birth       COHORTS          INDIA                          3+          2232    3855  whz              
Birth       COHORTS          PHILIPPINES                    1            640    2899  whz              
Birth       COHORTS          PHILIPPINES                    2            657    2899  whz              
Birth       COHORTS          PHILIPPINES                    3+          1602    2899  whz              
Birth       GMS-Nepal        NEPAL                          1            185     641  whz              
Birth       GMS-Nepal        NEPAL                          2            169     641  whz              
Birth       GMS-Nepal        NEPAL                          3+           287     641  whz              
Birth       JiVitA-3         BANGLADESH                     1           5520   18014  whz              
Birth       JiVitA-3         BANGLADESH                     2           6303   18014  whz              
Birth       JiVitA-3         BANGLADESH                     3+          6191   18014  whz              
Birth       Keneba           GAMBIA                         1            146    1338  whz              
Birth       Keneba           GAMBIA                         2            142    1338  whz              
Birth       Keneba           GAMBIA                         3+          1050    1338  whz              
Birth       PROVIDE          BANGLADESH                     1            202     532  whz              
Birth       PROVIDE          BANGLADESH                     2            182     532  whz              
Birth       PROVIDE          BANGLADESH                     3+           148     532  whz              
Birth       SAS-CompFeed     INDIA                          1            304    1103  whz              
Birth       SAS-CompFeed     INDIA                          2            258    1103  whz              
Birth       SAS-CompFeed     INDIA                          3+           541    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       1           5561   12916  whz              
Birth       ZVITAMBO         ZIMBABWE                       2           3882   12916  whz              
Birth       ZVITAMBO         ZIMBABWE                       3+          3473   12916  whz              
6 months    COHORTS          GUATEMALA                      1            132     963  whz              
6 months    COHORTS          GUATEMALA                      2            139     963  whz              
6 months    COHORTS          GUATEMALA                      3+           692     963  whz              
6 months    COHORTS          INDIA                          1            741    4285  whz              
6 months    COHORTS          INDIA                          2           1093    4285  whz              
6 months    COHORTS          INDIA                          3+          2451    4285  whz              
6 months    COHORTS          PHILIPPINES                    1            574    2706  whz              
6 months    COHORTS          PHILIPPINES                    2            607    2706  whz              
6 months    COHORTS          PHILIPPINES                    3+          1525    2706  whz              
6 months    GMS-Nepal        NEPAL                          1            153     564  whz              
6 months    GMS-Nepal        NEPAL                          2            149     564  whz              
6 months    GMS-Nepal        NEPAL                          3+           262     564  whz              
6 months    JiVitA-3         BANGLADESH                     1           6398   16784  whz              
6 months    JiVitA-3         BANGLADESH                     2           5685   16784  whz              
6 months    JiVitA-3         BANGLADESH                     3+          4701   16784  whz              
6 months    Keneba           GAMBIA                         1            195    1623  whz              
6 months    Keneba           GAMBIA                         2            164    1623  whz              
6 months    Keneba           GAMBIA                         3+          1264    1623  whz              
6 months    PROVIDE          BANGLADESH                     1            218     603  whz              
6 months    PROVIDE          BANGLADESH                     2            222     603  whz              
6 months    PROVIDE          BANGLADESH                     3+           163     603  whz              
6 months    SAS-CompFeed     INDIA                          1            392    1334  whz              
6 months    SAS-CompFeed     INDIA                          2            302    1334  whz              
6 months    SAS-CompFeed     INDIA                          3+           640    1334  whz              
6 months    SAS-FoodSuppl    INDIA                          1              7     380  whz              
6 months    SAS-FoodSuppl    INDIA                          2             72     380  whz              
6 months    SAS-FoodSuppl    INDIA                          3+           301     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994  whz              
6 months    ZVITAMBO         ZIMBABWE                       1           3392    8504  whz              
6 months    ZVITAMBO         ZIMBABWE                       2           2587    8504  whz              
6 months    ZVITAMBO         ZIMBABWE                       3+          2525    8504  whz              
24 months   COHORTS          GUATEMALA                      1            167    1076  whz              
24 months   COHORTS          GUATEMALA                      2            151    1076  whz              
24 months   COHORTS          GUATEMALA                      3+           758    1076  whz              
24 months   COHORTS          INDIA                          1            561    3354  whz              
24 months   COHORTS          INDIA                          2            837    3354  whz              
24 months   COHORTS          INDIA                          3+          1956    3354  whz              
24 months   COHORTS          PHILIPPINES                    1            523    2449  whz              
24 months   COHORTS          PHILIPPINES                    2            544    2449  whz              
24 months   COHORTS          PHILIPPINES                    3+          1382    2449  whz              
24 months   GMS-Nepal        NEPAL                          1            130     487  whz              
24 months   GMS-Nepal        NEPAL                          2            130     487  whz              
24 months   GMS-Nepal        NEPAL                          3+           227     487  whz              
24 months   JiVitA-3         BANGLADESH                     1           3166    8603  whz              
24 months   JiVitA-3         BANGLADESH                     2           2909    8603  whz              
24 months   JiVitA-3         BANGLADESH                     3+          2528    8603  whz              
24 months   Keneba           GAMBIA                         1            137    1376  whz              
24 months   Keneba           GAMBIA                         2            139    1376  whz              
24 months   Keneba           GAMBIA                         3+          1100    1376  whz              
24 months   PROVIDE          BANGLADESH                     1            211     579  whz              
24 months   PROVIDE          BANGLADESH                     2            213     579  whz              
24 months   PROVIDE          BANGLADESH                     3+           155     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       1            161     432  whz              
24 months   ZVITAMBO         ZIMBABWE                       2            123     432  whz              
24 months   ZVITAMBO         ZIMBABWE                       3+           148     432  whz              


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
![](/tmp/e97c3c3a-d280-4c0e-8dc4-906047ef06e4/d8964f1c-5f1d-4480-8030-54b50be946ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e97c3c3a-d280-4c0e-8dc4-906047ef06e4/d8964f1c-5f1d-4480-8030-54b50be946ac/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e97c3c3a-d280-4c0e-8dc4-906047ef06e4/d8964f1c-5f1d-4480-8030-54b50be946ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -1.6294458   -1.9588107   -1.3000808
Birth       COHORTS          GUATEMALA                      2                    NA                -1.2505809   -1.6998122   -0.8013496
Birth       COHORTS          GUATEMALA                      3+                   NA                -1.0741897   -1.2156206   -0.9327589
Birth       COHORTS          INDIA                          1                    NA                -1.1964591   -1.3188944   -1.0740238
Birth       COHORTS          INDIA                          2                    NA                -0.9889041   -1.0873332   -0.8904750
Birth       COHORTS          INDIA                          3+                   NA                -0.8898999   -0.9442921   -0.8355077
Birth       COHORTS          PHILIPPINES                    1                    NA                -1.1201940   -1.2563649   -0.9840231
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.7837077   -0.9417903   -0.6256250
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.5729942   -0.6529600   -0.4930283
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.2706073   -1.4755074   -1.0657072
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.1423076   -1.4419082   -0.8427070
Birth       GMS-Nepal        NEPAL                          3+                   NA                -1.0104170   -1.1608261   -0.8600080
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.9970528   -1.0484893   -0.9456163
Birth       JiVitA-3         BANGLADESH                     2                    NA                -0.7354173   -0.7840259   -0.6868088
Birth       JiVitA-3         BANGLADESH                     3+                   NA                -0.6302571   -0.6742315   -0.5862828
Birth       Keneba           GAMBIA                         1                    NA                -2.3611917   -2.6448592   -2.0775241
Birth       Keneba           GAMBIA                         2                    NA                -1.2388094   -1.4111663   -1.0664526
Birth       Keneba           GAMBIA                         3+                   NA                -1.2328876   -1.3246324   -1.1411427
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3835862   -1.5483523   -1.2188201
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.2221814   -1.4096166   -1.0347462
Birth       PROVIDE          BANGLADESH                     3+                   NA                -1.2935398   -1.4972728   -1.0898068
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.0150420   -1.1829514   -0.8471327
Birth       SAS-CompFeed     INDIA                          2                    NA                -0.6698803   -0.8552059   -0.4845546
Birth       SAS-CompFeed     INDIA                          3+                   NA                -0.5412823   -0.7353494   -0.3472152
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.7155182   -0.7818583   -0.6491780
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.4153977   -0.4913223   -0.3394731
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.2982990   -0.3692721   -0.2273260
6 months    COHORTS          GUATEMALA                      1                    NA                 0.1290676   -0.1287037    0.3868389
6 months    COHORTS          GUATEMALA                      2                    NA                 0.3550998    0.0570264    0.6531732
6 months    COHORTS          GUATEMALA                      3+                   NA                 0.2008354    0.1119847    0.2896862
6 months    COHORTS          INDIA                          1                    NA                -0.5901898   -0.6943695   -0.4860101
6 months    COHORTS          INDIA                          2                    NA                -0.6119755   -0.7064027   -0.5175484
6 months    COHORTS          INDIA                          3+                   NA                -0.7907081   -0.8478322   -0.7335841
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.2981546   -0.4111866   -0.1851227
6 months    COHORTS          PHILIPPINES                    2                    NA                -0.2533373   -0.3789907   -0.1276839
6 months    COHORTS          PHILIPPINES                    3+                   NA                -0.4023338   -0.4798121   -0.3248555
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.3442238   -0.5793530   -0.1090946
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.6380157   -1.0359211   -0.2401104
6 months    GMS-Nepal        NEPAL                          3+                   NA                -0.8194578   -0.9571605   -0.6817551
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6108046   -0.6609490   -0.5606603
6 months    JiVitA-3         BANGLADESH                     2                    NA                -0.5644117   -0.6053685   -0.5234548
6 months    JiVitA-3         BANGLADESH                     3+                   NA                -0.5471595   -0.5968354   -0.4974836
6 months    Keneba           GAMBIA                         1                    NA                -0.0604171   -0.1963635    0.0755293
6 months    Keneba           GAMBIA                         2                    NA                -0.0272640   -0.3089070    0.2543790
6 months    Keneba           GAMBIA                         3+                   NA                -0.1439971   -0.2185327   -0.0694615
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1408400   -0.3407443    0.0590643
6 months    PROVIDE          BANGLADESH                     2                    NA                -0.1654060   -0.3417807    0.0109687
6 months    PROVIDE          BANGLADESH                     3+                   NA                -0.4228654   -0.5785981   -0.2671327
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.5913154   -0.7331458   -0.4494849
6 months    SAS-CompFeed     INDIA                          2                    NA                -0.7168822   -0.9014238   -0.5323405
6 months    SAS-CompFeed     INDIA                          3+                   NA                -0.6941017   -0.8252090   -0.5629945
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9457143   -2.3960187   -1.4954099
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -0.7120833   -0.9054564   -0.5187103
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.0622259   -1.1982227   -0.9262292
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0121876   -0.1356905    0.1113153
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0737326   -0.0476320    0.1950972
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0606048   -0.0646299    0.1858396
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.3568953    0.3006443    0.4131464
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                 0.3040918    0.2288613    0.3793222
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                 0.3206073    0.2435088    0.3977057
24 months   COHORTS          GUATEMALA                      1                    NA                -0.3122731   -0.5258124   -0.0987337
24 months   COHORTS          GUATEMALA                      2                    NA                -0.2303504   -0.4672049    0.0065040
24 months   COHORTS          GUATEMALA                      3+                   NA                -0.2957096   -0.3745381   -0.2168811
24 months   COHORTS          INDIA                          1                    NA                -0.5844393   -0.7048337   -0.4640449
24 months   COHORTS          INDIA                          2                    NA                -0.5690820   -0.6627538   -0.4754102
24 months   COHORTS          INDIA                          3+                   NA                -0.7138729   -0.7661453   -0.6616004
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.4705300   -0.5975271   -0.3435328
24 months   COHORTS          PHILIPPINES                    2                    NA                -0.5914679   -0.7259771   -0.4569587
24 months   COHORTS          PHILIPPINES                    3+                   NA                -0.6810995   -0.7484667   -0.6137323
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1522510   -1.4696939   -0.8348081
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1473555   -1.5048913   -0.7898197
24 months   GMS-Nepal        NEPAL                          3+                   NA                -1.1004919   -1.2456890   -0.9552948
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.2787867   -1.3435684   -1.2140050
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.3005228   -1.3629497   -1.2380958
24 months   JiVitA-3         BANGLADESH                     3+                   NA                -1.2771239   -1.3388556   -1.2153923
24 months   Keneba           GAMBIA                         1                    NA                -0.7576465   -0.9348695   -0.5804234
24 months   Keneba           GAMBIA                         2                    NA                -0.8320188   -1.0712932   -0.5927444
24 months   Keneba           GAMBIA                         3+                   NA                -0.7524202   -0.8244251   -0.6804154
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8889757   -1.0423106   -0.7356409
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.8568603   -1.0549619   -0.6587588
24 months   PROVIDE          BANGLADESH                     3+                   NA                -0.9921447   -1.1849995   -0.7992899
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.0077466   -1.1728104   -0.8426828
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.0399166   -1.2379558   -0.8418774
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.4310170   -1.6628538   -1.1991801


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9498080   -0.9874148   -0.9122013
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       Keneba           GAMBIA                         NA                   NA                -1.2037220   -1.2694226   -1.1380213
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5156349   -0.5414936   -0.4897762
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          NA                   NA                -0.7068611   -0.7417800   -0.6719423
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    Keneba           GAMBIA                         NA                   NA                -0.1873900   -0.2456638   -0.1291162
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797179    0.0266621    0.1327737
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3106432    0.2849661    0.3363203
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   COHORTS          INDIA                          NA                   NA                -0.6564729   -0.6914450   -0.6215007
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   Keneba           GAMBIA                         NA                   NA                -0.7834078   -0.8357743   -0.7310414
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1817824   -1.2809226   -1.0826422


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      2                    1                  0.3788648   -0.1785414    0.9362711
Birth       COHORTS          GUATEMALA                      3+                   1                  0.5552561    0.1963689    0.9141432
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.2075550    0.0503962    0.3647138
Birth       COHORTS          INDIA                          3+                   1                  0.3065592    0.1725797    0.4405388
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.3364863    0.1277770    0.5451956
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.5471998    0.3890628    0.7053369
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.1282997   -0.2344604    0.4910597
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.2601903    0.0060120    0.5143685
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.2616355    0.1908169    0.3324541
Birth       JiVitA-3         BANGLADESH                     3+                   1                  0.3667957    0.3000242    0.4335672
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  1.1223822    0.7912758    1.4534887
Birth       Keneba           GAMBIA                         3+                   1                  1.1283041    0.8294302    1.4271780
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.1614048   -0.0882781    0.4110877
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.0900464   -0.1722204    0.3523132
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.3451618    0.1721253    0.5181983
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.4737598    0.2409037    0.7066158
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.3001205    0.1993356    0.4009053
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                  0.4172192    0.3200953    0.5143430
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                  0.2260323   -0.1671754    0.6192400
6 months    COHORTS          GUATEMALA                      3+                   1                  0.0717679   -0.1996262    0.3431620
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                 -0.0217857   -0.1622402    0.1186689
6 months    COHORTS          INDIA                          3+                   1                 -0.2005183   -0.3192343   -0.0818023
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                  0.0448173   -0.1243449    0.2139795
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.1041792   -0.2411675    0.0328091
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 -0.2937919   -0.7562602    0.1686764
6 months    GMS-Nepal        NEPAL                          3+                   1                 -0.4752340   -0.7472610   -0.2032069
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.0463930   -0.0175896    0.1103756
6 months    JiVitA-3         BANGLADESH                     3+                   1                  0.0636451   -0.0044837    0.1317739
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.0331532   -0.2794875    0.3457938
6 months    Keneba           GAMBIA                         3+                   1                 -0.0835800   -0.2379832    0.0708232
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 -0.0245660   -0.2906529    0.2415209
6 months    PROVIDE          BANGLADESH                     3+                   1                 -0.2820254   -0.5352492   -0.0288016
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 -0.1255668   -0.3018996    0.0507661
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1027864   -0.2625581    0.0569854
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.2336310    0.7435624    1.7236995
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8834884    0.4130958    1.3538809
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0859202   -0.0873380    0.2591784
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0727924   -0.1036867    0.2492716
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0528036   -0.1465485    0.0409414
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0362880   -0.1315953    0.0590192
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                  0.0819226   -0.2370624    0.4009077
24 months   COHORTS          GUATEMALA                      3+                   1                  0.0165635   -0.2110884    0.2442154
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                  0.0153573   -0.1366592    0.1673738
24 months   COHORTS          INDIA                          3+                   1                 -0.1294335   -0.2603745    0.0015074
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.1209379   -0.3059913    0.0641154
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.2105696   -0.3543267   -0.0668124
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                  0.0048955   -0.4738222    0.4836132
24 months   GMS-Nepal        NEPAL                          3+                   1                  0.0517591   -0.2985738    0.4020920
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 -0.0217360   -0.1104013    0.0669292
24 months   JiVitA-3         BANGLADESH                     3+                   1                  0.0016628   -0.0879245    0.0912501
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                 -0.0743723   -0.3721957    0.2234511
24 months   Keneba           GAMBIA                         3+                   1                  0.0052262   -0.1861154    0.1965678
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                  0.0321154   -0.2179170    0.2821479
24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.1031690   -0.3486548    0.1423168
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.0321700   -0.2895671    0.2252270
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.4232704   -0.7074833   -0.1390574


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.5673029    0.2429937    0.8916122
Birth       COHORTS          INDIA                          1                    NA                 0.2466511    0.1296177    0.3636844
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.3774689    0.2467979    0.5081399
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.1541642   -0.0383086    0.3466370
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.2192256    0.1690359    0.2694152
Birth       Keneba           GAMBIA                         1                    NA                 1.1574697    0.8775770    1.4373624
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0851275   -0.0638602    0.2341153
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.3449967    0.1267147    0.5632787
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.1998833    0.1382272    0.2615394
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0650134   -0.1859722    0.3159991
6 months    COHORTS          INDIA                          1                    NA                -0.1166713   -0.2167708   -0.0165718
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0043113   -0.1042280    0.1128507
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.2596178   -0.4864510   -0.0327846
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0172885   -0.0288354    0.0634123
6 months    Keneba           GAMBIA                         1                    NA                -0.1269729   -0.2649945    0.0110487
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0582507   -0.2391031    0.1226018
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0743930   -0.2025306    0.0537446
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.9335564    0.4796129    1.3874999
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0919055   -0.0187961    0.2026070
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0462521   -0.0982869    0.0057828
24 months   COHORTS          GUATEMALA                      1                    NA                 0.0308976   -0.1770378    0.2388329
24 months   COHORTS          INDIA                          1                    NA                -0.0720335   -0.1879215    0.0438544
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.1394292   -0.2611790   -0.0176794
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0159403   -0.2858753    0.3177559
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0190164   -0.0807593    0.0427265
24 months   Keneba           GAMBIA                         1                    NA                -0.0257614   -0.2027434    0.1512207
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0038913   -0.1390107    0.1312282
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.1740358   -0.3238804   -0.0241912
