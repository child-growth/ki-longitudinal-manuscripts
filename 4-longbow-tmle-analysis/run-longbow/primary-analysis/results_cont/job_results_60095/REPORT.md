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

agecat      studyid          country                        parity    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      1             94     756
Birth       COHORTS          GUATEMALA                      2            118     756
Birth       COHORTS          GUATEMALA                      3+           544     756
Birth       COHORTS          INDIA                          1            641    3855
Birth       COHORTS          INDIA                          2            982    3855
Birth       COHORTS          INDIA                          3+          2232    3855
Birth       COHORTS          PHILIPPINES                    1            640    2899
Birth       COHORTS          PHILIPPINES                    2            657    2899
Birth       COHORTS          PHILIPPINES                    3+          1602    2899
Birth       GMS-Nepal        NEPAL                          1            185     641
Birth       GMS-Nepal        NEPAL                          2            169     641
Birth       GMS-Nepal        NEPAL                          3+           287     641
Birth       JiVitA-3         BANGLADESH                     1           5520   18014
Birth       JiVitA-3         BANGLADESH                     2           6303   18014
Birth       JiVitA-3         BANGLADESH                     3+          6191   18014
Birth       Keneba           GAMBIA                         1            146    1338
Birth       Keneba           GAMBIA                         2            142    1338
Birth       Keneba           GAMBIA                         3+          1050    1338
Birth       PROVIDE          BANGLADESH                     1            202     532
Birth       PROVIDE          BANGLADESH                     2            182     532
Birth       PROVIDE          BANGLADESH                     3+           148     532
Birth       SAS-CompFeed     INDIA                          1            304    1103
Birth       SAS-CompFeed     INDIA                          2            258    1103
Birth       SAS-CompFeed     INDIA                          3+           541    1103
Birth       ZVITAMBO         ZIMBABWE                       1           5561   12916
Birth       ZVITAMBO         ZIMBABWE                       2           3882   12916
Birth       ZVITAMBO         ZIMBABWE                       3+          3473   12916
6 months    COHORTS          GUATEMALA                      1            132     963
6 months    COHORTS          GUATEMALA                      2            139     963
6 months    COHORTS          GUATEMALA                      3+           692     963
6 months    COHORTS          INDIA                          1            741    4285
6 months    COHORTS          INDIA                          2           1093    4285
6 months    COHORTS          INDIA                          3+          2451    4285
6 months    COHORTS          PHILIPPINES                    1            574    2706
6 months    COHORTS          PHILIPPINES                    2            607    2706
6 months    COHORTS          PHILIPPINES                    3+          1525    2706
6 months    GMS-Nepal        NEPAL                          1            153     564
6 months    GMS-Nepal        NEPAL                          2            149     564
6 months    GMS-Nepal        NEPAL                          3+           262     564
6 months    JiVitA-3         BANGLADESH                     1           6398   16784
6 months    JiVitA-3         BANGLADESH                     2           5685   16784
6 months    JiVitA-3         BANGLADESH                     3+          4701   16784
6 months    Keneba           GAMBIA                         1            195    1623
6 months    Keneba           GAMBIA                         2            164    1623
6 months    Keneba           GAMBIA                         3+          1264    1623
6 months    PROVIDE          BANGLADESH                     1            218     603
6 months    PROVIDE          BANGLADESH                     2            222     603
6 months    PROVIDE          BANGLADESH                     3+           163     603
6 months    SAS-CompFeed     INDIA                          1            392    1334
6 months    SAS-CompFeed     INDIA                          2            302    1334
6 months    SAS-CompFeed     INDIA                          3+           640    1334
6 months    SAS-FoodSuppl    INDIA                          1              7     380
6 months    SAS-FoodSuppl    INDIA                          2             72     380
6 months    SAS-FoodSuppl    INDIA                          3+           301     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ZVITAMBO         ZIMBABWE                       1           3392    8504
6 months    ZVITAMBO         ZIMBABWE                       2           2587    8504
6 months    ZVITAMBO         ZIMBABWE                       3+          2525    8504
24 months   COHORTS          GUATEMALA                      1            167    1076
24 months   COHORTS          GUATEMALA                      2            151    1076
24 months   COHORTS          GUATEMALA                      3+           758    1076
24 months   COHORTS          INDIA                          1            561    3354
24 months   COHORTS          INDIA                          2            837    3354
24 months   COHORTS          INDIA                          3+          1956    3354
24 months   COHORTS          PHILIPPINES                    1            523    2449
24 months   COHORTS          PHILIPPINES                    2            544    2449
24 months   COHORTS          PHILIPPINES                    3+          1382    2449
24 months   GMS-Nepal        NEPAL                          1            130     487
24 months   GMS-Nepal        NEPAL                          2            130     487
24 months   GMS-Nepal        NEPAL                          3+           227     487
24 months   JiVitA-3         BANGLADESH                     1           3166    8603
24 months   JiVitA-3         BANGLADESH                     2           2909    8603
24 months   JiVitA-3         BANGLADESH                     3+          2528    8603
24 months   Keneba           GAMBIA                         1            137    1376
24 months   Keneba           GAMBIA                         2            139    1376
24 months   Keneba           GAMBIA                         3+          1100    1376
24 months   PROVIDE          BANGLADESH                     1            211     579
24 months   PROVIDE          BANGLADESH                     2            213     579
24 months   PROVIDE          BANGLADESH                     3+           155     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ZVITAMBO         ZIMBABWE                       1            161     432
24 months   ZVITAMBO         ZIMBABWE                       2            123     432
24 months   ZVITAMBO         ZIMBABWE                       3+           148     432


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
![](/tmp/35e11cde-f11f-4750-b327-415070dd3081/4b13e020-7ad0-498c-a0ec-b4efc0862e21/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/35e11cde-f11f-4750-b327-415070dd3081/4b13e020-7ad0-498c-a0ec-b4efc0862e21/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/35e11cde-f11f-4750-b327-415070dd3081/4b13e020-7ad0-498c-a0ec-b4efc0862e21/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -1.5564901   -1.9475674   -1.1654129
Birth       COHORTS          GUATEMALA                      2                    NA                -1.1980470   -1.5690546   -0.8270394
Birth       COHORTS          GUATEMALA                      3+                   NA                -1.0854133   -1.2182345   -0.9525920
Birth       COHORTS          INDIA                          1                    NA                -1.2041561   -1.3391972   -1.0691150
Birth       COHORTS          INDIA                          2                    NA                -0.9902339   -1.0934579   -0.8870099
Birth       COHORTS          INDIA                          3+                   NA                -0.8856255   -0.9384875   -0.8327634
Birth       COHORTS          PHILIPPINES                    1                    NA                -1.1291604   -1.2641459   -0.9941750
Birth       COHORTS          PHILIPPINES                    2                    NA                -0.8326563   -0.9952277   -0.6700849
Birth       COHORTS          PHILIPPINES                    3+                   NA                -0.5878584   -0.6616386   -0.5140782
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.2634469   -1.4595769   -1.0673170
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.1482574   -1.4516182   -0.8448966
Birth       GMS-Nepal        NEPAL                          3+                   NA                -1.1028915   -1.2564066   -0.9493764
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.9758639   -1.0261237   -0.9256040
Birth       JiVitA-3         BANGLADESH                     2                    NA                -0.7396415   -0.7909917   -0.6882912
Birth       JiVitA-3         BANGLADESH                     3+                   NA                -0.6442600   -0.6884587   -0.6000613
Birth       Keneba           GAMBIA                         1                    NA                -2.4334661   -2.7154882   -2.1514441
Birth       Keneba           GAMBIA                         2                    NA                -1.3240994   -1.5336958   -1.1145031
Birth       Keneba           GAMBIA                         3+                   NA                -1.2258665   -1.3183882   -1.1333448
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.4065478   -1.5727336   -1.2403620
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.1988416   -1.3794309   -1.0182522
Birth       PROVIDE          BANGLADESH                     3+                   NA                -1.2577494   -1.4542941   -1.0612047
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.0150420   -1.1829514   -0.8471327
Birth       SAS-CompFeed     INDIA                          2                    NA                -0.6698803   -0.8552059   -0.4845546
Birth       SAS-CompFeed     INDIA                          3+                   NA                -0.5412823   -0.7353494   -0.3472152
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.7265934   -0.7958914   -0.6572955
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                -0.4301973   -0.5057340   -0.3546605
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                -0.3215754   -0.3954123   -0.2477385
6 months    COHORTS          GUATEMALA                      1                    NA                 0.0911254   -0.1561828    0.3384337
6 months    COHORTS          GUATEMALA                      2                    NA                 0.3700458    0.0745029    0.6655887
6 months    COHORTS          GUATEMALA                      3+                   NA                 0.1783729    0.0842325    0.2725132
6 months    COHORTS          INDIA                          1                    NA                -0.5552337   -0.6571386   -0.4533288
6 months    COHORTS          INDIA                          2                    NA                -0.6210290   -0.7209579   -0.5211000
6 months    COHORTS          INDIA                          3+                   NA                -0.7865297   -0.8437603   -0.7292991
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.2938940   -0.4048394   -0.1829487
6 months    COHORTS          PHILIPPINES                    2                    NA                -0.2510898   -0.3731302   -0.1290494
6 months    COHORTS          PHILIPPINES                    3+                   NA                -0.3764090   -0.4554616   -0.2973564
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.3422018   -0.5705960   -0.1138077
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.5919669   -0.9602439   -0.2236898
6 months    GMS-Nepal        NEPAL                          3+                   NA                -0.7774011   -0.9314484   -0.6233538
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.6067432   -0.6581377   -0.5553488
6 months    JiVitA-3         BANGLADESH                     2                    NA                -0.5604559   -0.6010897   -0.5198220
6 months    JiVitA-3         BANGLADESH                     3+                   NA                -0.5549108   -0.6011088   -0.5087128
6 months    Keneba           GAMBIA                         1                    NA                -0.0846360   -0.2197815    0.0505095
6 months    Keneba           GAMBIA                         2                    NA                 0.0184337   -0.2767205    0.3135879
6 months    Keneba           GAMBIA                         3+                   NA                -0.1336880   -0.2098748   -0.0575011
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0627639   -0.2429203    0.1173926
6 months    PROVIDE          BANGLADESH                     2                    NA                -0.1554620   -0.3357142    0.0247902
6 months    PROVIDE          BANGLADESH                     3+                   NA                -0.4817185   -0.6500961   -0.3133408
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.5913154   -0.7331458   -0.4494849
6 months    SAS-CompFeed     INDIA                          2                    NA                -0.7168822   -0.9014238   -0.5323405
6 months    SAS-CompFeed     INDIA                          3+                   NA                -0.6941017   -0.8252090   -0.5629945
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9457143   -2.3960187   -1.4954099
6 months    SAS-FoodSuppl    INDIA                          2                    NA                -0.7120833   -0.9054564   -0.5187103
6 months    SAS-FoodSuppl    INDIA                          3+                   NA                -1.0622259   -1.1982227   -0.9262292
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0413448   -0.0790888    0.1617784
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0566647   -0.0717839    0.1851133
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0455340   -0.0779937    0.1690618
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.3602122    0.3041334    0.4162909
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                 0.3084044    0.2294202    0.3873885
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                 0.3372096    0.2567489    0.4176703
24 months   COHORTS          GUATEMALA                      1                    NA                -0.2716168   -0.4948662   -0.0483675
24 months   COHORTS          GUATEMALA                      2                    NA                -0.2661790   -0.5093855   -0.0229725
24 months   COHORTS          GUATEMALA                      3+                   NA                -0.2917283   -0.3730160   -0.2104407
24 months   COHORTS          INDIA                          1                    NA                -0.5497352   -0.6602354   -0.4392350
24 months   COHORTS          INDIA                          2                    NA                -0.5879484   -0.6818958   -0.4940011
24 months   COHORTS          INDIA                          3+                   NA                -0.7164163   -0.7695731   -0.6632596
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.4474577   -0.5658201   -0.3290953
24 months   COHORTS          PHILIPPINES                    2                    NA                -0.6071295   -0.7406878   -0.4735713
24 months   COHORTS          PHILIPPINES                    3+                   NA                -0.6712172   -0.7386311   -0.6038033
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1644295   -1.5292830   -0.7995760
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1466360   -1.4666785   -0.8265935
24 months   GMS-Nepal        NEPAL                          3+                   NA                -1.0640926   -1.2300009   -0.8981843
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.2774495   -1.3326778   -1.2222211
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.3062597   -1.3640641   -1.2484553
24 months   JiVitA-3         BANGLADESH                     3+                   NA                -1.2909761   -1.3585260   -1.2234262
24 months   Keneba           GAMBIA                         1                    NA                -0.7522787   -0.9357100   -0.5688474
24 months   Keneba           GAMBIA                         2                    NA                -0.8053699   -1.0397874   -0.5709525
24 months   Keneba           GAMBIA                         3+                   NA                -0.7509482   -0.8209412   -0.6809551
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8838286   -1.0338823   -0.7337749
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.8633688   -1.0784326   -0.6483050
24 months   PROVIDE          BANGLADESH                     3+                   NA                -0.9735805   -1.1540941   -0.7930670
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.9042709   -1.0603146   -0.7482273
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                -1.0458322   -1.2742179   -0.8174466
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                -1.4495306   -1.6782866   -1.2207745


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
Birth       COHORTS          GUATEMALA                      2                    1                  0.3584431   -0.1798258    0.8967121
Birth       COHORTS          GUATEMALA                      3+                   1                  0.4710769    0.0575647    0.8845891
Birth       COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          2                    1                  0.2139222    0.0438523    0.3839921
Birth       COHORTS          INDIA                          3+                   1                  0.3185306    0.1734492    0.4636121
Birth       COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                  0.2965041    0.0853206    0.5076876
Birth       COHORTS          PHILIPPINES                    3+                   1                  0.5413020    0.3874173    0.6951868
Birth       GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                  0.1151895   -0.2457983    0.4761773
Birth       GMS-Nepal        NEPAL                          3+                   1                  0.1605554   -0.0887041    0.4098149
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                  0.2362224    0.1641564    0.3082883
Birth       JiVitA-3         BANGLADESH                     3+                   1                  0.3316039    0.2660096    0.3971982
Birth       Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         2                    1                  1.1093667    0.7585162    1.4602173
Birth       Keneba           GAMBIA                         3+                   1                  1.2075997    0.9098834    1.5053159
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                  0.2077062   -0.0374306    0.4528430
Birth       PROVIDE          BANGLADESH                     3+                   1                  0.1487984   -0.1087800    0.4063768
Birth       SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                  0.3451618    0.1721253    0.5181983
Birth       SAS-CompFeed     INDIA                          3+                   1                  0.4737598    0.2409037    0.7066158
Birth       ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                  0.2963961    0.1939220    0.3988703
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                  0.4050180    0.3037946    0.5062415
6 months    COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      2                    1                  0.2789204   -0.1060661    0.6639068
6 months    COHORTS          GUATEMALA                      3+                   1                  0.0872474   -0.1771552    0.3516500
6 months    COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          2                    1                 -0.0657952   -0.2084032    0.0768127
6 months    COHORTS          INDIA                          3+                   1                 -0.2312960   -0.3481045   -0.1144875
6 months    COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                  0.0428042   -0.1223107    0.2079192
6 months    COHORTS          PHILIPPINES                    3+                   1                 -0.0825150   -0.2186953    0.0536653
6 months    GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 -0.2497650   -0.6837128    0.1841827
6 months    GMS-Nepal        NEPAL                          3+                   1                 -0.4351993   -0.7105812   -0.1598173
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                  0.0462874   -0.0181505    0.1107252
6 months    JiVitA-3         BANGLADESH                     3+                   1                  0.0518325   -0.0151018    0.1187668
6 months    Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         2                    1                  0.1030697   -0.2216398    0.4277792
6 months    Keneba           GAMBIA                         3+                   1                 -0.0490520   -0.2035053    0.1054013
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 -0.0926981   -0.3470918    0.1616956
6 months    PROVIDE          BANGLADESH                     3+                   1                 -0.4189546   -0.6653644   -0.1725449
6 months    SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 -0.1255668   -0.3018996    0.0507661
6 months    SAS-CompFeed     INDIA                          3+                   1                 -0.1027864   -0.2625581    0.0569854
6 months    SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          2                    1                  1.2336310    0.7435624    1.7236995
6 months    SAS-FoodSuppl    INDIA                          3+                   1                  0.8834884    0.4130958    1.3538809
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0153199   -0.1610844    0.1917242
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0041892   -0.1689396    0.1773181
6 months    ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 -0.0518078   -0.1484936    0.0448780
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0230025   -0.1209472    0.0749421
24 months   COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      2                    1                  0.0054379   -0.3247142    0.3355900
24 months   COHORTS          GUATEMALA                      3+                   1                 -0.0201115   -0.2577524    0.2175294
24 months   COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          2                    1                 -0.0382132   -0.1827073    0.1062809
24 months   COHORTS          INDIA                          3+                   1                 -0.1666811   -0.2889063   -0.0444560
24 months   COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 -0.1596719   -0.3381253    0.0187815
24 months   COHORTS          PHILIPPINES                    3+                   1                 -0.2237595   -0.3598136   -0.0877055
24 months   GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                  0.0177935   -0.4688415    0.5044285
24 months   GMS-Nepal        NEPAL                          3+                   1                  0.1003369   -0.3027063    0.5033801
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 -0.0288102   -0.1074591    0.0498387
24 months   JiVitA-3         BANGLADESH                     3+                   1                 -0.0135266   -0.1007774    0.0737242
24 months   Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         2                    1                 -0.0530912   -0.3508695    0.2446871
24 months   Keneba           GAMBIA                         3+                   1                  0.0013305   -0.1951344    0.1977955
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                  0.0204598   -0.2412233    0.2821429
24 months   PROVIDE          BANGLADESH                     3+                   1                 -0.0897519   -0.3212228    0.1417189
24 months   ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 -0.1415613   -0.4167922    0.1336696
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 -0.5452596   -0.8217789   -0.2687403


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                 0.4943473    0.1105611    0.8781334
Birth       COHORTS          INDIA                          1                    NA                 0.2543481    0.1244866    0.3842096
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.3864354    0.2569835    0.5158872
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.1470039   -0.0377735    0.3317812
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.1980366    0.1492810    0.2467922
Birth       Keneba           GAMBIA                         1                    NA                 1.2297442    0.9512199    1.5082684
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.1080891   -0.0417199    0.2578982
Birth       SAS-CompFeed     INDIA                          1                    NA                 0.3449967    0.1267147    0.5632787
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.2109586    0.1461966    0.2757206
6 months    COHORTS          GUATEMALA                      1                    NA                 0.1029556   -0.1391818    0.3450929
6 months    COHORTS          INDIA                          1                    NA                -0.1516274   -0.2494755   -0.0537793
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0000507   -0.1062918    0.1063933
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.2616398   -0.4833370   -0.0399426
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0132271   -0.0343014    0.0607555
6 months    Keneba           GAMBIA                         1                    NA                -0.1027540   -0.2402666    0.0347585
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1363268   -0.2962533    0.0235997
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0743930   -0.2025306    0.0537446
6 months    SAS-FoodSuppl    INDIA                          1                    NA                 0.9335564    0.4796129    1.3874999
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0383731   -0.0687500    0.1454962
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0495689   -0.1013591    0.0022213
24 months   COHORTS          GUATEMALA                      1                    NA                -0.0097586   -0.2271566    0.2076393
24 months   COHORTS          INDIA                          1                    NA                -0.1067377   -0.2126781   -0.0007972
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.1625015   -0.2757402   -0.0492628
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0281187   -0.3226496    0.3788871
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0203536   -0.0723723    0.0316650
24 months   Keneba           GAMBIA                         1                    NA                -0.0311291   -0.2140586    0.1518004
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0090384   -0.1412603    0.1231834
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.2775115   -0.4205149   -0.1345081
