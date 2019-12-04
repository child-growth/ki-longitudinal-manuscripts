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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country                        parity    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -------  --------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0      310    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1      142    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0      261    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1       99    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                    0      455    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                    1      266    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        4     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       46     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       31     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                    0      154     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                    1      166     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      227     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       44     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     0      214     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     1       30     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                    0      164     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                    1       21     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      750    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       71    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      688    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       83    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      685    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       80    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      182    1990
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1       59    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                     0      173    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                     1       41    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                    0     1158    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                    1      377    1990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      159     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       52     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0      143     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1       38     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                    0      227     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                    1       79     698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     5089   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      980   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0     3551   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      661   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                    0     3067   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                    1      725   14073
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                     0      121    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                     1       92    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                     0      105    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                     1       87    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                    0      503    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                    1      452    1360
0-24 months   ki1135781-COHORTS          INDIA                          1                     0      723    4630
0-24 months   ki1135781-COHORTS          INDIA                          1                     1       89    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                     0     1061    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                     1      124    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                    0     2205    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                    1      428    4630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     0      505    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     1      173    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                     0      470    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                     1      220    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                    0      994    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                    1      696    3058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     7949   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2303   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     7618   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1381   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                    0     6638   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                    1     1338   27227
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0      380    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1       71    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     0      314    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     1       45    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                    0      607    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                    1      113    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        2     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       67     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       10     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                    0      281     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                    1       38     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      257     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1       14     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     0      234     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                     1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                    0      178     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                    1        7     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      781    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       40    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      738    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       33    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    0      736    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                    1       29    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      197    1853
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       38    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                     0      181    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                     1       24    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                    0     1261    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                    1      152    1853
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      184     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       27     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0      170     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1       11     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                    0      284     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                    1       22     698
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     5503   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      559   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0     3875   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      332   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                    0     3396   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                    1      391   14056
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                     0      142    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                     1       17    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                     0      145    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                     1       13    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                    0      694    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                    1       80    1091
0-6 months    ki1135781-COHORTS          INDIA                          1                     0      725    4473
0-6 months    ki1135781-COHORTS          INDIA                          1                     1       40    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                     0     1102    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                     1       42    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                    0     2431    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                    1      133    4473
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                     0      638    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                     1       40    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                     0      654    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                     1       36    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                    0     1575    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                    1      115    3058
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8230   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1980   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     7948   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1032   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                    0     6980   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                    1      991   27161


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/077a2cbd-631e-42cf-9a61-607a166ac25f/8d5eed39-0a9a-49c1-b849-54a669d09053/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/077a2cbd-631e-42cf-9a61-607a166ac25f/8d5eed39-0a9a-49c1-b849-54a669d09053/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/077a2cbd-631e-42cf-9a61-607a166ac25f/8d5eed39-0a9a-49c1-b849-54a669d09053/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/077a2cbd-631e-42cf-9a61-607a166ac25f/8d5eed39-0a9a-49c1-b849-54a669d09053/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3050068    0.2609802   0.3490334
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2779735    0.2358844   0.3200627
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3391180    0.2890019   0.3892341
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2513314    0.1609596   0.3417033
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1312363    0.0514022   0.2110704
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0992663    0.0507080   0.1478247
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0864124    0.0614160   0.1114088
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1055001    0.0794343   0.1315658
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1083394    0.0807952   0.1358835
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2119376    0.1528158   0.2710594
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2124342    0.1289657   0.2959026
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.2385800    0.2115340   0.2656259
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2306480    0.1277033   0.3335927
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2195402    0.1161078   0.3229726
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2155604    0.1635853   0.2675355
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1491516    0.1355169   0.1627864
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1635759    0.1456098   0.1815421
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2131958    0.1936616   0.2327300
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4402854    0.3374583   0.5431125
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.4225608    0.3057119   0.5394097
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4575250    0.4203069   0.4947431
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.1096942    0.0800000   0.1393884
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1099097    0.0876886   0.1321309
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1501601    0.1353844   0.1649359
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2108346    0.1735429   0.2481262
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2971887    0.2470191   0.3473583
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.3944822    0.3646618   0.4243027
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2183032    0.2024910   0.2341154
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1625156    0.1507654   0.1742658
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1388010    0.1272862   0.1503159
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1751257    0.1313795   0.2188718
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1368733    0.1026366   0.1711100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1237144    0.0685094   0.1789195
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0516605    0.0252890   0.0780320
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0409836    0.0160904   0.0658769
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0378378    0.0103234   0.0653522
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0447050    0.0263280   0.0630820
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0466982    0.0268070   0.0665894
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0282049    0.0172640   0.0391458
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1149285    0.0789733   0.1508838
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1277178    0.0600772   0.1953584
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1038556    0.0848991   0.1228121
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1138650    0.0330551   0.1946748
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0858984   -0.0058220   0.1776187
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0615120    0.0319376   0.0910864
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0860592    0.0752541   0.0968643
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0912834    0.0763647   0.1062022
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1081144    0.0943786   0.1218503
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1159363    0.0310113   0.2008612
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0642438    0.0099516   0.1185359
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0897268    0.0696453   0.1098082
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0449670    0.0268584   0.0630756
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0391326    0.0231916   0.0550737
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0542283    0.0444844   0.0639723
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0425789    0.0246094   0.0605485
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0582153    0.0277023   0.0887283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0621415    0.0474301   0.0768530
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1975831    0.1822354   0.2129308
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1196384    0.1084101   0.1308667
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0983532    0.0881301   0.1085763


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0992787   0.0872038   0.1113537
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2396985   0.2209375   0.2584595
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1681234   0.1619444   0.1743023
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4639706   0.4374564   0.4904847
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1384449   0.1284958   0.1483940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1844493   0.1788538   0.1900447
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432754   0.0350591   0.0514916
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1154884   0.1009322   0.1300446
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912066   0.0864469   0.0959663
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1008249   0.0829501   0.1186997
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0480662   0.0417969   0.0543355
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1473804   0.1423344   0.1524264


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9113683   0.7720976   1.0757607
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1118375   0.9344291   1.3229282
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5221641   0.2584253   1.0550644
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.3949618   0.2154275   0.7241176
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2208905   0.8349862   1.7851475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2537479   0.8534088   1.8418883
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0023431   0.6189147   1.6233120
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1257088   0.8330141   1.5212471
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9518411   0.4981980   1.8185568
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9345862   0.5628941   1.5517152
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0967090   0.9508544   1.2649369
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4293897   1.2561001   1.6265860
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9597429   0.6686997   1.3774592
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0391555   0.8123136   1.3293440
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0019647   0.7149329   1.4042343
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.3688973   1.0266395   1.8252560
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.4095824   1.1056095   1.7971288
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.8710511   1.5445567   2.2665611
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7444493   0.6723480   0.8242825
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.6358178   0.5708959   0.7081226
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7815719   0.5338906   1.1441568
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.7064324   0.3680642   1.3558686
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7933255   0.3588172   1.7540002
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7324324   0.3012417   1.7808198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0445867   0.5780240   1.8877442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.6309126   0.3584703   1.1104148
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.1112800   0.6009460   2.0549985
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9036536   0.6293150   1.2975852
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7543881   0.2095344   2.7160292
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.5402189   0.2289780   1.2745175
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0607049   0.8632651   1.3033016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2562796   1.0509327   1.5017502
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.5541300   0.1811158   1.6953800
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7739319   0.3597906   1.6647754
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8702521   0.4907821   1.5431262
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.2059580   0.7759494   1.8742647
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3672319   0.6981326   2.6776047
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.4594431   0.9003598   2.3656922
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6055093   0.5367747   0.6830455
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4977812   0.4378730   0.5658858


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0257173   -0.0050075    0.0564420
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1156172   -0.2000730   -0.0311613
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0128663   -0.0098506    0.0355832
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0277609   -0.0307061    0.0862279
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0114724   -0.0864010    0.1093457
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0189717    0.0065018    0.0314417
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0236852   -0.0762636    0.1236339
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0287507   -0.0000386    0.0575400
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1452805    0.1093154    0.1812456
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0338539   -0.0485008   -0.0192070
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0254525   -0.0781065    0.0272016
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0073748   -0.0271125    0.0123629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0014296   -0.0176788    0.0148195
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0005599   -0.0344127    0.0355324
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0279051   -0.1038270    0.0480169
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0051474   -0.0046970    0.0149917
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0151113   -0.0982328    0.0680102
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0030992   -0.0141001    0.0202984
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0198802    0.0025681    0.0371922
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0502027   -0.0644165   -0.0359889


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0777605   -0.0210704    0.1670254
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8519159   -1.5998140   -0.3191683
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1295982   -0.1314380    0.3304102
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1158161   -0.1637902    0.3282456
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0473829   -0.4562380    0.3768331
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1128441    0.0355852    0.1839138
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0510489   -0.1907253    0.2437313
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2076688   -0.0292541    0.3900547
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4079595    0.2992346    0.4998156
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1835405   -0.2657307   -0.1066873
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1700536   -0.5988273    0.1437315
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1665278   -0.7044880    0.2016446
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0330357   -0.4857026    0.2817118
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0048478   -0.3489866    0.2658727
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3246290   -1.5709634    0.3175158
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0564364   -0.0578598    0.1583836
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1498770   -1.3563496    0.4388705
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0644770   -0.3711388    0.3616961
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3182910   -0.0177257    0.5433670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3406334   -0.4406840   -0.2475309
