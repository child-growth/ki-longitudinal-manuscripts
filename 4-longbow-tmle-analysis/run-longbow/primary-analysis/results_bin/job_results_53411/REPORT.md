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

agecat      studyid                    country                        parity    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      238    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1      123    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0      215    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1       74    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0      450    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1      152    1252
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0      186     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1       20     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               0      167     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2               1       16     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+              0      138     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+              1       12     539
Birth       ki1101329-Keneba           GAMBIA                         1               0      140    1407
Birth       ki1101329-Keneba           GAMBIA                         1               1       16    1407
Birth       ki1101329-Keneba           GAMBIA                         2               0      138    1407
Birth       ki1101329-Keneba           GAMBIA                         2               1        8    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1054    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              1       51    1407
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0      158     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1       53     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2               0      152     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2               1       28     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3+              0      264     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3+              1       41     696
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5349   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      640   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3735   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      409   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3356   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      385   13874
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      103     852
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        9     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      124     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               1       13     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      575     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       28     852
Birth       ki1135781-COHORTS          INDIA                          1               0      582    4122
Birth       ki1135781-COHORTS          INDIA                          1               1      114    4122
Birth       ki1135781-COHORTS          INDIA                          2               0      939    4122
Birth       ki1135781-COHORTS          INDIA                          2               1       98    4122
Birth       ki1135781-COHORTS          INDIA                          3+              0     2126    4122
Birth       ki1135781-COHORTS          INDIA                          3+              1      263    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      629    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      645    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       42    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1589    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       99    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     4469   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     2987   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     5323   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     2292   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     5276   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1     2108   22455
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      288    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      104    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      222    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       82    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      446    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1      194    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       44     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1       28     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      171     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1      130     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      176     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       42     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      188     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       34     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      144     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1       20     604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      625    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       55    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      584    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      593    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       65    1995
6 months    ki1101329-Keneba           GAMBIA                         1               0      175    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1       19    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      150    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1       14    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1071    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1      194    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      117     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       36     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      120     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       29     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      205     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1       57     564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2911    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      555    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2237    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1      401    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2108    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      456    8668
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       78     961
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       54     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               0       88     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               1       51     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      401     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1      289     961
6 months    ki1135781-COHORTS          INDIA                          1               0      616    4291
6 months    ki1135781-COHORTS          INDIA                          1               1      124    4291
6 months    ki1135781-COHORTS          INDIA                          2               0      925    4291
6 months    ki1135781-COHORTS          INDIA                          2               1      171    4291
6 months    ki1135781-COHORTS          INDIA                          3+              0     1910    4291
6 months    ki1135781-COHORTS          INDIA                          3+              1      545    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      474    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1      100    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      497    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1      109    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1165    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1      363    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     4618   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     1778   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     4463   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     1237   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     3504   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1211   16811
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      149     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       62     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      138     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       75     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      101     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       53     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1               0       95    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1       42    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      103    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1       36    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0      708    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1      392    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       79     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       51     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       68     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       62     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      122     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      106     488
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      411    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      229    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0      338    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1      169    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0      321    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      171    1639
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       30    1064
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      136    1064
24 months   ki1135781-COHORTS          GUATEMALA                      2               0       29    1064
24 months   ki1135781-COHORTS          GUATEMALA                      2               1      122    1064
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      141    1064
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1      606    1064
24 months   ki1135781-COHORTS          INDIA                          1               0      303    3380
24 months   ki1135781-COHORTS          INDIA                          1               1      261    3380
24 months   ki1135781-COHORTS          INDIA                          2               0      425    3380
24 months   ki1135781-COHORTS          INDIA                          2               1      423    3380
24 months   ki1135781-COHORTS          INDIA                          3+              0      711    3380
24 months   ki1135781-COHORTS          INDIA                          3+              1     1257    3380
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      254    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      270    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      223    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      321    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0      445    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      932    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     1623    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     1550    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     1553    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     1370    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     1217    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1319    8632


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/fe633ddb-fcb4-4b49-9ca1-1ce5dccabaaf/9a6fc8df-672c-44e1-be9f-4d1d9a9a9a86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe633ddb-fcb4-4b49-9ca1-1ce5dccabaaf/9a6fc8df-672c-44e1-be9f-4d1d9a9a9a86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe633ddb-fcb4-4b49-9ca1-1ce5dccabaaf/9a6fc8df-672c-44e1-be9f-4d1d9a9a9a86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe633ddb-fcb4-4b49-9ca1-1ce5dccabaaf/9a6fc8df-672c-44e1-be9f-4d1d9a9a9a86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3920634   0.2870980   0.4970288
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2729279   0.1944311   0.3514246
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2309071   0.1941253   0.2676889
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1418472   0.0376843   0.2460100
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0875746   0.0328624   0.1422868
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0715800   0.0214810   0.1216789
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.1025641   0.0549386   0.1501896
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.0547945   0.0178664   0.0917227
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.0461538   0.0337783   0.0585294
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1384574   0.0934002   0.1835147
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1554716   0.0520338   0.2589094
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0994835   0.0572207   0.1417462
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1072407   0.0941350   0.1203464
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1030623   0.0889035   0.1172212
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1115290   0.0973064   0.1257516
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299820   0.1307322
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0948905   0.0457879   0.1439931
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0464345   0.0296294   0.0632396
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1651657   0.1305233   0.1998082
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.0999719   0.0756025   0.1243412
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1148897   0.1001802   0.1295991
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0918122   0.0561540   0.1274705
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0593652   0.0322440   0.0864863
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0504027   0.0390748   0.0617307
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4041549   0.3831326   0.4251773
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3045137   0.2882219   0.3208056
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2829368   0.2651647   0.3007089
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3080031   0.2615107   0.3544955
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2605464   0.1906451   0.3304476
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2848648   0.2369681   0.3327615
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1879353   0.1364235   0.2394470
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1507852   0.1034549   0.1981154
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1237340   0.0730294   0.1744386
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0941572   0.0644443   0.1238700
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1115400   0.0810084   0.1420717
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1106152   0.0814019   0.1398285
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1153129   0.0641037   0.1665221
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0899438   0.0258178   0.1540699
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1424547   0.1197608   0.1651486
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2852696   0.1645038   0.4060354
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1938658   0.0679797   0.3197519
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1839269   0.1315302   0.2363236
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1450770   0.1274606   0.1626935
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1553463   0.1351174   0.1755753
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2071609   0.1820511   0.2322708
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3563033   0.2445322   0.4680743
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3457360   0.2167653   0.4747068
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4429169   0.3952721   0.4905618
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1413773   0.1118139   0.1709408
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1564243   0.1286628   0.1841857
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2131135   0.1954851   0.2307418
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1314390   0.0973828   0.1654952
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1729206   0.1275397   0.2183015
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2330442   0.2067630   0.2593254
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2555428   0.2346496   0.2764359
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2282427   0.2116611   0.2448243
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2509809   0.2280570   0.2739049
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2705723   0.1980448   0.3430997
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3641395   0.2830130   0.4452661
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3064844   0.2226353   0.3903336
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3266000   0.2343920   0.4188080
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3037621   0.1890302   0.4184940
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3528578   0.3182595   0.3874560
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4179766   0.2401993   0.5957538
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4247793   0.2662867   0.5832719
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4790244   0.4007045   0.5573442
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3131690   0.2652230   0.3611150
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3355823   0.2706088   0.4005557
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.3702770   0.3065449   0.4340090
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7416960   0.6325891   0.8508029
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7872658   0.6840582   0.8904734
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.8113721   0.7780932   0.8446510
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4240339   0.3730207   0.4750472
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.4880534   0.4463647   0.5297421
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.6387536   0.6152749   0.6622323
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4620148   0.4001956   0.5238340
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5415338   0.4733838   0.6096838
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6943115   0.6667332   0.7218898
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4568445   0.4257795   0.4879094
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4802764   0.4496049   0.5109478
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5241278   0.4949992   0.5532563


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415629   0.0650470
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1033588   0.0982930   0.1084246
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3289690   0.3216017   0.3363364
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0967419   0.0837671   0.1097166
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1398644   0.1229849   0.1567440
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628980   0.1551237   0.1706723
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1957586   0.1838852   0.2076319
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3415698   0.3165034   0.3666361
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3471629   0.3241082   0.3702176
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8120301   0.7885439   0.8355162
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5742604   0.5575886   0.5909321
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910797   0.4779658   0.5041936


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.6961319   0.5439144   0.8909484
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.5889534   0.4233415   0.8193530
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6173873   0.2358593   1.6160780
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.5046274   0.1829649   1.3917906
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.5342466   0.2356709   1.2110933
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.4500000   0.2632335   0.7692791
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1228836   0.5367759   2.3489645
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7185129   0.4189976   1.2321331
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9610375   0.7997050   1.1549172
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0399876   0.8716662   1.2408125
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1808597   0.5238079   2.6621012
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5778515   0.2801877   1.1917454
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.6052821   0.4389509   0.8346410
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.6956025   0.5441503   0.8892082
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6465933   0.3550417   1.1775600
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5489762   0.3507003   0.8593514
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7534579   0.7001354   0.8108414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7000701   0.6459850   0.7586834
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8459211   0.6384000   1.1209000
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9248762   0.7303728   1.1711771
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8023252   0.5288121   1.2173050
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.6583861   0.4022517   1.0776145
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1846155   0.7802840   1.7984656
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1747930   0.7786835   1.7724001
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7799979   0.3366765   1.8070663
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.2353755   0.7707486   1.9800913
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6795882   0.3126246   1.4772993
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6447475   0.3872203   1.0735475
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0707853   0.8963966   1.2791004
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4279377   1.2032243   1.6946183
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9703420   0.5967612   1.5777897
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2430898   0.8933859   1.7296806
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.1064309   0.8414036   1.4549372
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.5074091   1.2042577   1.8868736
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3155956   0.9109377   1.9000111
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.7730209   1.3372976   2.3507134
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8931684   0.7985154   0.9990413
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9821486   0.8734018   1.1044354
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3458126   0.9530536   1.9004298
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1327268   0.7753333   1.6548625
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9300739   0.5805796   1.4899549
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.0803974   0.8014846   1.4563705
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0162755   0.5775054   1.7884091
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1460555   0.7267644   1.8072478
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0715693   0.8383249   1.3697085
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1823552   0.9399796   1.4872277
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0614400   0.8717155   1.2924571
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0939416   0.9394046   1.2739007
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.1509771   0.9938958   1.3328846
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5063737   1.3289488   1.7074862
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1721135   0.9764903   1.4069265
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5027906   1.3079810   1.7266150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0512907   0.9591433   1.1522909
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1472783   1.0514146   1.2518824


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1133094   -0.1998508   -0.0267680
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0527934   -0.1507782    0.0451915
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.0492592   -0.0928837   -0.0056347
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0368299   -0.0029471    0.0766069
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0038819   -0.0159372    0.0081734
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0216717   -0.0677134    0.0243700
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0499304   -0.0824277   -0.0174331
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0305008   -0.0647023    0.0037008
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0751859   -0.0949081   -0.0554637
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0235720   -0.0575971    0.0104531
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0289949   -0.0686167    0.0106270
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0025847   -0.0244022    0.0295715
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0245516   -0.0271537    0.0762568
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0689575   -0.1841564    0.0462414
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0178210    0.0016736    0.0339684
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0536863   -0.0553823    0.1627550
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0543812    0.0259833    0.0827792
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0797870    0.0467459    0.1128281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0041597   -0.0236925    0.0153730
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0581475   -0.0074039    0.1236988
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0149698   -0.0763810    0.1063206
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0307939   -0.1409660    0.2025538
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0339939   -0.0089700    0.0769579
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0703341   -0.0356015    0.1762696
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1502264    0.1017383    0.1987146
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1608891    0.1020814    0.2196967
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0342352    0.0047675    0.0637030


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.4064854   -0.7305991   -0.1430731
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5928255   -2.1559658    0.1960962
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.9241025   -1.9135260   -0.2706839
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2101116   -0.0490734    0.4052622
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0375574   -0.1610046    0.0727639
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3692857   -1.4191803    0.2249675
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4332908   -0.7444053   -0.1776635
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4974722   -1.1745789   -0.0311987
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2285501   -0.2902416   -0.1698082
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0828742   -0.2061602    0.0278103
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1824260   -0.4585675    0.0414354
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0267174   -0.2962630    0.2692230
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.1755382   -0.2854861    0.4712216
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3187873   -0.9769659    0.1202681
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1093997    0.0046451    0.2031296
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1309456   -0.1798063    0.3598478
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2777974    0.1181842    0.4085199
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3777327    0.2026535    0.5143685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0165474   -0.0973172    0.0582773
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1768907   -0.0474652    0.3531920
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0438265   -0.2643531    0.2768889
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0686184   -0.4049226    0.3825485
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0979192   -0.0346292    0.2134866
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0866151   -0.0537224    0.2082621
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2615998    0.1719049    0.3415795
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2582888    0.1572507    0.3472133
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0697142    0.0078934    0.1276827
