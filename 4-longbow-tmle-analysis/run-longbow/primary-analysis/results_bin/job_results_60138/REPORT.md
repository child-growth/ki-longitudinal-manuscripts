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

**Outcome Variable:** stunted

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

agecat      studyid          country                        parity    stunted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      1               0      103     852
Birth       COHORTS          GUATEMALA                      1               1        9     852
Birth       COHORTS          GUATEMALA                      2               0      124     852
Birth       COHORTS          GUATEMALA                      2               1       13     852
Birth       COHORTS          GUATEMALA                      3+              0      575     852
Birth       COHORTS          GUATEMALA                      3+              1       28     852
Birth       COHORTS          INDIA                          1               0      582    4122
Birth       COHORTS          INDIA                          1               1      114    4122
Birth       COHORTS          INDIA                          2               0      939    4122
Birth       COHORTS          INDIA                          2               1       98    4122
Birth       COHORTS          INDIA                          3+              0     2126    4122
Birth       COHORTS          INDIA                          3+              1      263    4122
Birth       COHORTS          PHILIPPINES                    1               0      629    3050
Birth       COHORTS          PHILIPPINES                    1               1       46    3050
Birth       COHORTS          PHILIPPINES                    2               0      645    3050
Birth       COHORTS          PHILIPPINES                    2               1       42    3050
Birth       COHORTS          PHILIPPINES                    3+              0     1589    3050
Birth       COHORTS          PHILIPPINES                    3+              1       99    3050
Birth       GMS-Nepal        NEPAL                          1               0      158     696
Birth       GMS-Nepal        NEPAL                          1               1       53     696
Birth       GMS-Nepal        NEPAL                          2               0      152     696
Birth       GMS-Nepal        NEPAL                          2               1       28     696
Birth       GMS-Nepal        NEPAL                          3+              0      264     696
Birth       GMS-Nepal        NEPAL                          3+              1       41     696
Birth       JiVitA-3         BANGLADESH                     1               0     4469   22455
Birth       JiVitA-3         BANGLADESH                     1               1     2987   22455
Birth       JiVitA-3         BANGLADESH                     2               0     5323   22455
Birth       JiVitA-3         BANGLADESH                     2               1     2292   22455
Birth       JiVitA-3         BANGLADESH                     3+              0     5276   22455
Birth       JiVitA-3         BANGLADESH                     3+              1     2108   22455
Birth       Keneba           GAMBIA                         1               0      140    1407
Birth       Keneba           GAMBIA                         1               1       16    1407
Birth       Keneba           GAMBIA                         2               0      138    1407
Birth       Keneba           GAMBIA                         2               1        8    1407
Birth       Keneba           GAMBIA                         3+              0     1054    1407
Birth       Keneba           GAMBIA                         3+              1       51    1407
Birth       PROVIDE          BANGLADESH                     1               0      186     539
Birth       PROVIDE          BANGLADESH                     1               1       20     539
Birth       PROVIDE          BANGLADESH                     2               0      167     539
Birth       PROVIDE          BANGLADESH                     2               1       16     539
Birth       PROVIDE          BANGLADESH                     3+              0      138     539
Birth       PROVIDE          BANGLADESH                     3+              1       12     539
Birth       SAS-CompFeed     INDIA                          1               0      238    1252
Birth       SAS-CompFeed     INDIA                          1               1      123    1252
Birth       SAS-CompFeed     INDIA                          2               0      215    1252
Birth       SAS-CompFeed     INDIA                          2               1       74    1252
Birth       SAS-CompFeed     INDIA                          3+              0      450    1252
Birth       SAS-CompFeed     INDIA                          3+              1      152    1252
Birth       ZVITAMBO         ZIMBABWE                       1               0     5349   13874
Birth       ZVITAMBO         ZIMBABWE                       1               1      640   13874
Birth       ZVITAMBO         ZIMBABWE                       2               0     3735   13874
Birth       ZVITAMBO         ZIMBABWE                       2               1      409   13874
Birth       ZVITAMBO         ZIMBABWE                       3+              0     3356   13874
Birth       ZVITAMBO         ZIMBABWE                       3+              1      385   13874
6 months    COHORTS          GUATEMALA                      1               0       78     961
6 months    COHORTS          GUATEMALA                      1               1       54     961
6 months    COHORTS          GUATEMALA                      2               0       88     961
6 months    COHORTS          GUATEMALA                      2               1       51     961
6 months    COHORTS          GUATEMALA                      3+              0      401     961
6 months    COHORTS          GUATEMALA                      3+              1      289     961
6 months    COHORTS          INDIA                          1               0      616    4291
6 months    COHORTS          INDIA                          1               1      124    4291
6 months    COHORTS          INDIA                          2               0      925    4291
6 months    COHORTS          INDIA                          2               1      171    4291
6 months    COHORTS          INDIA                          3+              0     1910    4291
6 months    COHORTS          INDIA                          3+              1      545    4291
6 months    COHORTS          PHILIPPINES                    1               0      474    2708
6 months    COHORTS          PHILIPPINES                    1               1      100    2708
6 months    COHORTS          PHILIPPINES                    2               0      497    2708
6 months    COHORTS          PHILIPPINES                    2               1      109    2708
6 months    COHORTS          PHILIPPINES                    3+              0     1165    2708
6 months    COHORTS          PHILIPPINES                    3+              1      363    2708
6 months    GMS-Nepal        NEPAL                          1               0      117     564
6 months    GMS-Nepal        NEPAL                          1               1       36     564
6 months    GMS-Nepal        NEPAL                          2               0      120     564
6 months    GMS-Nepal        NEPAL                          2               1       29     564
6 months    GMS-Nepal        NEPAL                          3+              0      205     564
6 months    GMS-Nepal        NEPAL                          3+              1       57     564
6 months    JiVitA-3         BANGLADESH                     1               0     4618   16811
6 months    JiVitA-3         BANGLADESH                     1               1     1778   16811
6 months    JiVitA-3         BANGLADESH                     2               0     4463   16811
6 months    JiVitA-3         BANGLADESH                     2               1     1237   16811
6 months    JiVitA-3         BANGLADESH                     3+              0     3504   16811
6 months    JiVitA-3         BANGLADESH                     3+              1     1211   16811
6 months    Keneba           GAMBIA                         1               0      175    1623
6 months    Keneba           GAMBIA                         1               1       19    1623
6 months    Keneba           GAMBIA                         2               0      150    1623
6 months    Keneba           GAMBIA                         2               1       14    1623
6 months    Keneba           GAMBIA                         3+              0     1071    1623
6 months    Keneba           GAMBIA                         3+              1      194    1623
6 months    PROVIDE          BANGLADESH                     1               0      176     604
6 months    PROVIDE          BANGLADESH                     1               1       42     604
6 months    PROVIDE          BANGLADESH                     2               0      188     604
6 months    PROVIDE          BANGLADESH                     2               1       34     604
6 months    PROVIDE          BANGLADESH                     3+              0      144     604
6 months    PROVIDE          BANGLADESH                     3+              1       20     604
6 months    SAS-CompFeed     INDIA                          1               0      288    1336
6 months    SAS-CompFeed     INDIA                          1               1      104    1336
6 months    SAS-CompFeed     INDIA                          2               0      222    1336
6 months    SAS-CompFeed     INDIA                          2               1       82    1336
6 months    SAS-CompFeed     INDIA                          3+              0      446    1336
6 months    SAS-CompFeed     INDIA                          3+              1      194    1336
6 months    SAS-FoodSuppl    INDIA                          1               0        2     380
6 months    SAS-FoodSuppl    INDIA                          1               1        5     380
6 months    SAS-FoodSuppl    INDIA                          2               0       44     380
6 months    SAS-FoodSuppl    INDIA                          2               1       28     380
6 months    SAS-FoodSuppl    INDIA                          3+              0      171     380
6 months    SAS-FoodSuppl    INDIA                          3+              1      130     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      625    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       55    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      584    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      593    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       65    1995
6 months    ZVITAMBO         ZIMBABWE                       1               0     2911    8668
6 months    ZVITAMBO         ZIMBABWE                       1               1      555    8668
6 months    ZVITAMBO         ZIMBABWE                       2               0     2237    8668
6 months    ZVITAMBO         ZIMBABWE                       2               1      401    8668
6 months    ZVITAMBO         ZIMBABWE                       3+              0     2108    8668
6 months    ZVITAMBO         ZIMBABWE                       3+              1      456    8668
24 months   COHORTS          GUATEMALA                      1               0       30    1064
24 months   COHORTS          GUATEMALA                      1               1      136    1064
24 months   COHORTS          GUATEMALA                      2               0       29    1064
24 months   COHORTS          GUATEMALA                      2               1      122    1064
24 months   COHORTS          GUATEMALA                      3+              0      141    1064
24 months   COHORTS          GUATEMALA                      3+              1      606    1064
24 months   COHORTS          INDIA                          1               0      303    3380
24 months   COHORTS          INDIA                          1               1      261    3380
24 months   COHORTS          INDIA                          2               0      425    3380
24 months   COHORTS          INDIA                          2               1      423    3380
24 months   COHORTS          INDIA                          3+              0      711    3380
24 months   COHORTS          INDIA                          3+              1     1257    3380
24 months   COHORTS          PHILIPPINES                    1               0      254    2445
24 months   COHORTS          PHILIPPINES                    1               1      270    2445
24 months   COHORTS          PHILIPPINES                    2               0      223    2445
24 months   COHORTS          PHILIPPINES                    2               1      321    2445
24 months   COHORTS          PHILIPPINES                    3+              0      445    2445
24 months   COHORTS          PHILIPPINES                    3+              1      932    2445
24 months   GMS-Nepal        NEPAL                          1               0       79     488
24 months   GMS-Nepal        NEPAL                          1               1       51     488
24 months   GMS-Nepal        NEPAL                          2               0       68     488
24 months   GMS-Nepal        NEPAL                          2               1       62     488
24 months   GMS-Nepal        NEPAL                          3+              0      122     488
24 months   GMS-Nepal        NEPAL                          3+              1      106     488
24 months   JiVitA-3         BANGLADESH                     1               0     1623    8632
24 months   JiVitA-3         BANGLADESH                     1               1     1550    8632
24 months   JiVitA-3         BANGLADESH                     2               0     1553    8632
24 months   JiVitA-3         BANGLADESH                     2               1     1370    8632
24 months   JiVitA-3         BANGLADESH                     3+              0     1217    8632
24 months   JiVitA-3         BANGLADESH                     3+              1     1319    8632
24 months   Keneba           GAMBIA                         1               0       95    1376
24 months   Keneba           GAMBIA                         1               1       42    1376
24 months   Keneba           GAMBIA                         2               0      103    1376
24 months   Keneba           GAMBIA                         2               1       36    1376
24 months   Keneba           GAMBIA                         3+              0      708    1376
24 months   Keneba           GAMBIA                         3+              1      392    1376
24 months   PROVIDE          BANGLADESH                     1               0      149     578
24 months   PROVIDE          BANGLADESH                     1               1       62     578
24 months   PROVIDE          BANGLADESH                     2               0      138     578
24 months   PROVIDE          BANGLADESH                     2               1       75     578
24 months   PROVIDE          BANGLADESH                     3+              0      101     578
24 months   PROVIDE          BANGLADESH                     3+              1       53     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6
24 months   ZVITAMBO         ZIMBABWE                       1               0      411    1639
24 months   ZVITAMBO         ZIMBABWE                       1               1      229    1639
24 months   ZVITAMBO         ZIMBABWE                       2               0      338    1639
24 months   ZVITAMBO         ZIMBABWE                       2               1      169    1639
24 months   ZVITAMBO         ZIMBABWE                       3+              0      321    1639
24 months   ZVITAMBO         ZIMBABWE                       3+              1      171    1639


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

* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/3e927dab-32fc-4e8b-b0ff-88015e06ea5d/e235678d-1c38-4ac2-a767-2baa7ba7c865/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3e927dab-32fc-4e8b-b0ff-88015e06ea5d/e235678d-1c38-4ac2-a767-2baa7ba7c865/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3e927dab-32fc-4e8b-b0ff-88015e06ea5d/e235678d-1c38-4ac2-a767-2baa7ba7c865/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3e927dab-32fc-4e8b-b0ff-88015e06ea5d/e235678d-1c38-4ac2-a767-2baa7ba7c865/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299820   0.1307322
Birth       COHORTS          GUATEMALA                      2                    NA                0.0948905   0.0457879   0.1439931
Birth       COHORTS          GUATEMALA                      3+                   NA                0.0464345   0.0296294   0.0632396
Birth       COHORTS          INDIA                          1                    NA                0.1775605   0.1365678   0.2185532
Birth       COHORTS          INDIA                          2                    NA                0.1062891   0.0802738   0.1323044
Birth       COHORTS          INDIA                          3+                   NA                0.1076804   0.0936449   0.1217159
Birth       COHORTS          PHILIPPINES                    1                    NA                0.0886727   0.0557623   0.1215831
Birth       COHORTS          PHILIPPINES                    2                    NA                0.0573979   0.0356517   0.0791442
Birth       COHORTS          PHILIPPINES                    3+                   NA                0.0509225   0.0388102   0.0630347
Birth       GMS-Nepal        NEPAL                          1                    NA                0.1426311   0.0976723   0.1875900
Birth       GMS-Nepal        NEPAL                          2                    NA                0.1588193   0.0515690   0.2660696
Birth       GMS-Nepal        NEPAL                          3+                   NA                0.0884408   0.0585368   0.1183447
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.4166015   0.3964704   0.4367327
Birth       JiVitA-3         BANGLADESH                     2                    NA                0.3095261   0.2925665   0.3264857
Birth       JiVitA-3         BANGLADESH                     3+                   NA                0.2792419   0.2614252   0.2970587
Birth       Keneba           GAMBIA                         1                    NA                0.1025641   0.0549386   0.1501896
Birth       Keneba           GAMBIA                         2                    NA                0.0547945   0.0178664   0.0917227
Birth       Keneba           GAMBIA                         3+                   NA                0.0461538   0.0337783   0.0585294
Birth       PROVIDE          BANGLADESH                     1                    NA                0.0973069   0.0570663   0.1375474
Birth       PROVIDE          BANGLADESH                     2                    NA                0.0882797   0.0472301   0.1293293
Birth       PROVIDE          BANGLADESH                     3+                   NA                0.0825086   0.0387454   0.1262718
Birth       SAS-CompFeed     INDIA                          1                    NA                0.4036321   0.3005657   0.5066985
Birth       SAS-CompFeed     INDIA                          2                    NA                0.2875537   0.2200028   0.3551047
Birth       SAS-CompFeed     INDIA                          3+                   NA                0.2317851   0.1812744   0.2822959
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1139911   0.0989684   0.1290138
Birth       ZVITAMBO         ZIMBABWE                       2                    NA                0.1004372   0.0860408   0.1148336
Birth       ZVITAMBO         ZIMBABWE                       3+                   NA                0.1137611   0.1000860   0.1274363
6 months    COHORTS          GUATEMALA                      1                    NA                0.4606583   0.3456967   0.5756198
6 months    COHORTS          GUATEMALA                      2                    NA                0.4080377   0.2830383   0.5330370
6 months    COHORTS          GUATEMALA                      3+                   NA                0.4287818   0.3861215   0.4714421
6 months    COHORTS          INDIA                          1                    NA                0.1652436   0.1268011   0.2036861
6 months    COHORTS          INDIA                          2                    NA                0.1658220   0.1364284   0.1952157
6 months    COHORTS          INDIA                          3+                   NA                0.2017012   0.1840747   0.2193276
6 months    COHORTS          PHILIPPINES                    1                    NA                0.1469965   0.1011190   0.1928741
6 months    COHORTS          PHILIPPINES                    2                    NA                0.1828048   0.1367385   0.2288711
6 months    COHORTS          PHILIPPINES                    3+                   NA                0.2315714   0.2058881   0.2572547
6 months    GMS-Nepal        NEPAL                          1                    NA                0.2890414   0.1393117   0.4387711
6 months    GMS-Nepal        NEPAL                          2                    NA                0.1847001   0.0586141   0.3107861
6 months    GMS-Nepal        NEPAL                          3+                   NA                0.1710851   0.1278993   0.2142708
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2653460   0.2450336   0.2856584
6 months    JiVitA-3         BANGLADESH                     2                    NA                0.2310406   0.2128962   0.2491850
6 months    JiVitA-3         BANGLADESH                     3+                   NA                0.2347666   0.2133001   0.2562332
6 months    Keneba           GAMBIA                         1                    NA                0.1205841   0.0690055   0.1721627
6 months    Keneba           GAMBIA                         2                    NA                0.0913330   0.0269587   0.1557072
6 months    Keneba           GAMBIA                         3+                   NA                0.1437595   0.1193627   0.1681564
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1882921   0.1367461   0.2398381
6 months    PROVIDE          BANGLADESH                     2                    NA                0.1492953   0.1024062   0.1961843
6 months    PROVIDE          BANGLADESH                     3+                   NA                0.1233360   0.0726403   0.1740317
6 months    SAS-CompFeed     INDIA                          1                    NA                0.3396931   0.2720157   0.4073705
6 months    SAS-CompFeed     INDIA                          2                    NA                0.2538225   0.1957999   0.3118451
6 months    SAS-CompFeed     INDIA                          3+                   NA                0.2756971   0.2253110   0.3260832
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0947741   0.0644239   0.1251243
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1058684   0.0756309   0.1361059
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0957340   0.0670047   0.1244633
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1680493   0.1467551   0.1893435
6 months    ZVITAMBO         ZIMBABWE                       2                    NA                0.1606728   0.1371329   0.1842126
6 months    ZVITAMBO         ZIMBABWE                       3+                   NA                0.2010515   0.1762221   0.2258808
24 months   COHORTS          GUATEMALA                      1                    NA                0.7384823   0.6250415   0.8519231
24 months   COHORTS          GUATEMALA                      2                    NA                0.7833578   0.6773486   0.8893669
24 months   COHORTS          GUATEMALA                      3+                   NA                0.8062476   0.7721320   0.8403632
24 months   COHORTS          INDIA                          1                    NA                0.4752362   0.4208000   0.5296724
24 months   COHORTS          INDIA                          2                    NA                0.5457803   0.5013219   0.5902387
24 months   COHORTS          INDIA                          3+                   NA                0.6193557   0.5953118   0.6433995
24 months   COHORTS          PHILIPPINES                    1                    NA                0.5195036   0.4637044   0.5753028
24 months   COHORTS          PHILIPPINES                    2                    NA                0.5732322   0.5005074   0.6459570
24 months   COHORTS          PHILIPPINES                    3+                   NA                0.6749823   0.6478872   0.7020774
24 months   GMS-Nepal        NEPAL                          1                    NA                0.3479484   0.2217376   0.4741593
24 months   GMS-Nepal        NEPAL                          2                    NA                0.4137106   0.2640230   0.5633981
24 months   GMS-Nepal        NEPAL                          3+                   NA                0.4648263   0.3912818   0.5383708
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4928506   0.4603930   0.5253082
24 months   JiVitA-3         BANGLADESH                     2                    NA                0.4839967   0.4490822   0.5189112
24 months   JiVitA-3         BANGLADESH                     3+                   NA                0.5163801   0.4863410   0.5464191
24 months   Keneba           GAMBIA                         1                    NA                0.2905522   0.1934978   0.3876065
24 months   Keneba           GAMBIA                         2                    NA                0.2588120   0.1474439   0.3701802
24 months   Keneba           GAMBIA                         3+                   NA                0.3524509   0.3183426   0.3865592
24 months   PROVIDE          BANGLADESH                     1                    NA                0.2891889   0.2122135   0.3661644
24 months   PROVIDE          BANGLADESH                     2                    NA                0.3696822   0.2784026   0.4609619
24 months   PROVIDE          BANGLADESH                     3+                   NA                0.2703521   0.1946860   0.3460182
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3252137   0.2740860   0.3763414
24 months   ZVITAMBO         ZIMBABWE                       2                    NA                0.3217515   0.2541902   0.3893127
24 months   ZVITAMBO         ZIMBABWE                       3+                   NA                0.3655092   0.2992994   0.4317190


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3289690   0.3216017   0.3363364
Birth       Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415628   0.0650470
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1033588   0.0982930   0.1084246
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    COHORTS          INDIA                          NA                   NA                0.1957586   0.1838852   0.2076319
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    Keneba           GAMBIA                         NA                   NA                0.1398644   0.1229849   0.1567440
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0967419   0.0837671   0.1097166
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628980   0.1551237   0.1706723
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8120301   0.7885439   0.8355162
24 months   COHORTS          INDIA                          NA                   NA                0.5742604   0.5575886   0.5909321
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910797   0.4779658   0.5041936
24 months   Keneba           GAMBIA                         NA                   NA                0.3415698   0.3165034   0.3666361
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3471629   0.3241082   0.3702176


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      2                    1                 1.1808597   0.5238079   2.6621012
Birth       COHORTS          GUATEMALA                      3+                   1                 0.5778515   0.2801877   1.1917453
Birth       COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          2                    1                 0.5986078   0.4277360   0.8377396
Birth       COHORTS          INDIA                          3+                   1                 0.6064434   0.4653614   0.7902969
Birth       COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    2                    1                 0.6473011   0.3811156   1.0994005
Birth       COHORTS          PHILIPPINES                    3+                   1                 0.5742743   0.3699340   0.8914860
Birth       GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          2                    1                 1.1134967   0.5307744   2.3359737
Birth       GMS-Nepal        NEPAL                          3+                   1                 0.6200664   0.3883874   0.9899452
Birth       JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     2                    1                 0.7429788   0.6913054   0.7985147
Birth       JiVitA-3         BANGLADESH                     3+                   1                 0.6702854   0.6202678   0.7243363
Birth       Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         2                    1                 0.5342466   0.2356709   1.2110933
Birth       Keneba           GAMBIA                         3+                   1                 0.4500000   0.2632335   0.7692790
Birth       PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     2                    1                 0.9072299   0.4881820   1.6859819
Birth       PROVIDE          BANGLADESH                     3+                   1                 0.8479215   0.4337487   1.6575748
Birth       SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          2                    1                 0.7124155   0.5683918   0.8929329
Birth       SAS-CompFeed     INDIA                          3+                   1                 0.5742485   0.3882245   0.8494090
Birth       ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       2                    1                 0.8810970   0.7252814   1.0703871
Birth       ZVITAMBO         ZIMBABWE                       3+                   1                 0.9979827   0.8349789   1.1928078
6 months    COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      2                    1                 0.8857709   0.5978709   1.3123068
6 months    COHORTS          GUATEMALA                      3+                   1                 0.9308024   0.7124929   1.2160023
6 months    COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          2                    1                 1.0035004   0.7495657   1.3434621
6 months    COHORTS          INDIA                          3+                   1                 1.2206291   0.9526654   1.5639651
6 months    COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    2                    1                 1.2435993   0.8336393   1.8551659
6 months    COHORTS          PHILIPPINES                    3+                   1                 1.5753526   1.1321276   2.1920990
6 months    GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          2                    1                 0.6390092   0.2708043   1.5078516
6 months    GMS-Nepal        NEPAL                          3+                   1                 0.5919050   0.3326057   1.0533539
6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     2                    1                 0.8707144   0.7805505   0.9712934
6 months    JiVitA-3         BANGLADESH                     3+                   1                 0.8847567   0.7890849   0.9920280
6 months    Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         2                    1                 0.7574213   0.3320952   1.7274780
6 months    Keneba           GAMBIA                         3+                   1                 1.1921932   0.7525270   1.8887355
6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     2                    1                 0.7928919   0.5225068   1.2031951
6 months    PROVIDE          BANGLADESH                     3+                   1                 0.6550249   0.3997141   1.0734112
6 months    SAS-CompFeed     INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          2                    1                 0.7472113   0.5931456   0.9412946
6 months    SAS-CompFeed     INDIA                          3+                   1                 0.8116065   0.6058595   1.0872243
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1170607   0.7270193   1.7163568
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0101282   0.6510822   1.5671737
6 months    ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       2                    1                 0.9561049   0.7879060   1.1602103
6 months    ZVITAMBO         ZIMBABWE                       3+                   1                 1.1963836   1.0026415   1.4275627
24 months   COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      2                    1                 1.0607671   0.8644165   1.3017184
24 months   COHORTS          GUATEMALA                      3+                   1                 1.0917628   0.9312681   1.2799172
24 months   COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          2                    1                 1.1484400   0.9990977   1.3201055
24 months   COHORTS          INDIA                          3+                   1                 1.3032586   1.1559435   1.4693476
24 months   COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    2                    1                 1.1034230   0.9357830   1.3010947
24 months   COHORTS          PHILIPPINES                    3+                   1                 1.2992832   1.1605168   1.4546424
24 months   GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          2                    1                 1.1889996   0.7138526   1.9804090
24 months   GMS-Nepal        NEPAL                          3+                   1                 1.3359057   0.8995500   1.9839298
24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     2                    1                 0.9820353   0.8944085   1.0782470
24 months   JiVitA-3         BANGLADESH                     3+                   1                 1.0477415   0.9604468   1.1429704
24 months   Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         2                    1                 0.8907593   0.5167338   1.5355144
24 months   Keneba           GAMBIA                         3+                   1                 1.2130382   0.8568385   1.7173151
24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     2                    1                 1.2783415   0.8920733   1.8318639
24 months   PROVIDE          BANGLADESH                     3+                   1                 0.9348631   0.6378996   1.3700730
24 months   ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       2                    1                 0.9893539   0.7619387   1.2846455
24 months   ZVITAMBO         ZIMBABWE                       3+                   1                 1.1239047   0.8850992   1.4271414


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.0216717   -0.0677134    0.0243700
Birth       COHORTS          INDIA                          1                    NA                -0.0623252   -0.1013511   -0.0232993
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.0273612   -0.0587417    0.0040192
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.0326562   -0.0072937    0.0726062
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0876325   -0.1065680   -0.0686970
Birth       Keneba           GAMBIA                         1                    NA                -0.0492592   -0.0928837   -0.0056347
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0082531   -0.0390474    0.0225412
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.1248781   -0.2093168   -0.0404395
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.0106323   -0.0247282    0.0034636
6 months    COHORTS          GUATEMALA                      1                    NA                -0.0506687   -0.1621118    0.0607745
6 months    COHORTS          INDIA                          1                    NA                 0.0305149   -0.0066779    0.0677078
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.0642295    0.0196598    0.1087991
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.0727294   -0.2173467    0.0718880
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0139630   -0.0328223    0.0048963
6 months    Keneba           GAMBIA                         1                    NA                 0.0192804   -0.0327611    0.0713218
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0293517   -0.0691827    0.0104794
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.0552619   -0.1104057   -0.0001182
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019678   -0.0257211    0.0296567
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0051513   -0.0250773    0.0147746
24 months   COHORTS          GUATEMALA                      1                    NA                 0.0735477   -0.0367311    0.1838266
24 months   COHORTS          INDIA                          1                    NA                 0.0990241    0.0470821    0.1509661
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.1034003    0.0507407    0.1560599
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.1008220   -0.0194282    0.2210723
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0017709   -0.0325635    0.0290217
24 months   Keneba           GAMBIA                         1                    NA                 0.0510176   -0.0453140    0.1473492
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0395308   -0.0303052    0.1093668
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0219492   -0.0244189    0.0683173


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      1                    NA                -0.3692857   -1.4191803    0.2249675
Birth       COHORTS          INDIA                          1                    NA                -0.5408514   -0.9187948   -0.2373511
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.4462659   -1.0614244   -0.0146795
Birth       GMS-Nepal        NEPAL                          1                    NA                 0.1863012   -0.0727521    0.3827970
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.2663852   -0.3257644   -0.2096656
Birth       Keneba           GAMBIA                         1                    NA                -0.9241026   -1.9135260   -0.2706839
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.0926752   -0.4985608    0.2032761
Birth       SAS-CompFeed     INDIA                          1                    NA                -0.4479868   -0.7597533   -0.1914544
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.1028678   -0.2480898    0.0254568
6 months    COHORTS          GUATEMALA                      1                    NA                -0.1235852   -0.4316052    0.1181620
6 months    COHORTS          INDIA                          1                    NA                 0.1558805   -0.0568648    0.3258005
6 months    COHORTS          PHILIPPINES                    1                    NA                 0.3040793    0.0586051    0.4855446
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.3362243   -1.2041598    0.1899429
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0555446   -0.1333772    0.0169430
6 months    Keneba           GAMBIA                         1                    NA                 0.1378503   -0.3231498    0.4382328
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1846710   -0.4626413    0.0404719
6 months    SAS-CompFeed     INDIA                          1                    NA                -0.1942893   -0.3961861   -0.0215880
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0203404   -0.3120177    0.2685061
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0316230   -0.1615244    0.0837507
24 months   COHORTS          GUATEMALA                      1                    NA                 0.0905727   -0.0560188    0.2168150
24 months   COHORTS          INDIA                          1                    NA                 0.1724377    0.0767456    0.2582117
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.1659972    0.0769338    0.2464671
24 months   GMS-Nepal        NEPAL                          1                    NA                 0.2246628   -0.0952940    0.4511540
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0036062   -0.0683189    0.0571866
24 months   Keneba           GAMBIA                         1                    NA                 0.1493622   -0.1837922    0.3887570
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1202568   -0.1192241    0.3084958
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0632244   -0.0802525    0.1876450
