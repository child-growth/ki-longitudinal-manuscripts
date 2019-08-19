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
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       46     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       31     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       51     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       41     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                    0      103     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                    1      125     397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      227     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       44     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     0      215     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                     1       29     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      129     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0      117     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1       38     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                    0      202     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                    1       74     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     5135   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      933   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0     3585   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      627   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                    0     3086   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                    1      706   14072
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     7939   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2289   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     7626   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1375   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                    0     6645   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                    1     1337   27211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0      380    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1       71    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     0      314    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     1       45    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                    0      607    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                    1      113    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       67     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       10     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       85     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        6     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                    0      196     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                    1       32     396
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      153     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       18     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0      146     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1        9     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                    0      261     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                    1       15     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     5502   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      557   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0     3876   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      329   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                    0     3395   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                    1      391   14050
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     8219   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1967   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     7956   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1026   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                    0     6988   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                    1      989   27145


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




# Results Detail

## Results Plots
![](/tmp/ea27aab6-3563-46aa-a3e4-6d9c78eb5bc7/18e48a68-6626-4c3d-ac45-1ef7bdc9cac1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ea27aab6-3563-46aa-a3e4-6d9c78eb5bc7/18e48a68-6626-4c3d-ac45-1ef7bdc9cac1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ea27aab6-3563-46aa-a3e4-6d9c78eb5bc7/18e48a68-6626-4c3d-ac45-1ef7bdc9cac1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ea27aab6-3563-46aa-a3e4-6d9c78eb5bc7/18e48a68-6626-4c3d-ac45-1ef7bdc9cac1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3085955   0.2482601   0.3689309
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2989675   0.2477634   0.3501715
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3467026   0.2991491   0.3942561
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3708516   0.2297093   0.5119939
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4401910   0.3042927   0.5760893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.5081503   0.4404463   0.5758543
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1973135   0.1333041   0.2613228
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1376021   0.0721640   0.2030402
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0823849   0.0444575   0.1203124
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0849855   0.0595150   0.1104559
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1058568   0.0784249   0.1332887
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1103881   0.0820840   0.1386922
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2075052   0.1489940   0.2660163
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1944437   0.1193700   0.2695174
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.2358746   0.2088617   0.2628876
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3161828   0.1737337   0.4586320
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2323764   0.1098994   0.3548535
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2373955   0.1801080   0.2946829
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1437267   0.1298857   0.1575677
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1561222   0.1388173   0.1734271
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2094893   0.1898897   0.2290888
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4146870   0.3235173   0.5058568
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.4111780   0.2872820   0.5350739
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4559882   0.4192883   0.4926880
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.1067676   0.0773031   0.1362320
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1093411   0.0864896   0.1321926
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1486374   0.1342627   0.1630122
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2086165   0.1712206   0.2460123
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2923753   0.2422929   0.3424576
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.3951297   0.3647013   0.4255580
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2206697   0.2047838   0.2365557
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1597394   0.1474050   0.1720737
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1403551   0.1288882   0.1518220
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1764267   0.1322408   0.2206126
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1523398   0.1179705   0.1867090
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1364523   0.0877959   0.1851087
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1298701   0.0546908   0.2050495
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.0659341   0.0148812   0.1169869
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.1403509   0.0952071   0.1854947
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0516605   0.0252890   0.0780320
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0409836   0.0160904   0.0658769
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0378378   0.0103234   0.0653522
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0408750   0.0257427   0.0560074
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0451619   0.0269834   0.0633404
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0271322   0.0165184   0.0377460
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1102591   0.0732714   0.1472469
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1394874   0.0641525   0.2148222
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1039826   0.0849136   0.1230517
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1052632   0.0592272   0.1512991
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0580645   0.0212169   0.0949121
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0543478   0.0275801   0.0811155
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0912487   0.0783076   0.1041898
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0863576   0.0727378   0.0999775
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1021273   0.0886239   0.1156306
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1106055   0.0292219   0.1919892
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0631068   0.0107362   0.1154773
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0876118   0.0678007   0.1074228
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0449259   0.0271168   0.0627349
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0382306   0.0229710   0.0534902
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0549843   0.0449085   0.0650601
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0432260   0.0247698   0.0616823
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0598283   0.0296978   0.0899588
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0595102   0.0463438   0.0726766
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1987876   0.1828916   0.2146837
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1183614   0.1071171   0.1296057
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0988219   0.0887270   0.1089168


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4962217   0.4469771   0.5454662
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1342857   0.1090095   0.1595619
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0992787   0.0872038   0.1113537
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2396985   0.2209375   0.2584595
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2558140   0.2209310   0.2906969
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1610290   0.1549559   0.1671021
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4639706   0.4374564   0.4904847
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1384449   0.1284958   0.1483940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1837860   0.1782094   0.1893625
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1212121   0.0890263   0.1533979
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432754   0.0350591   0.0514916
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1154884   0.1009322   0.1300446
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0697674   0.0494002   0.0901347
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0908897   0.0861364   0.0956429
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1008249   0.0829501   0.1186997
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0480662   0.0417969   0.0543355
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1466937   0.1416785   0.1517088


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9688005   0.7407386   1.2670790
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1234855   0.8982213   1.4052435
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.1869734   0.7285876   1.9337495
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3702254   0.9159027   2.0499094
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6973781   0.3931447   1.2370412
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.4175333   0.2387739   0.7301221
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2455875   0.8383267   1.8506963
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2989055   0.8755379   1.9269931
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9370548   0.5808784   1.5116274
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1367170   0.8384072   1.5411670
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7349433   0.3672205   1.4708917
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7508170   0.4505125   1.2512997
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0862438   0.9380202   1.2578894
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4575529   1.2745493   1.6668329
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9915381   0.6833506   1.4387166
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0995960   0.8712447   1.3877976
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0241046   0.7246687   1.4472685
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.3921592   1.0394373   1.8645733
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.4014965   1.0953311   1.7932407
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.8940482   1.5592984   2.3006621
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7238843   0.6518371   0.8038949
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.6360415   0.5723871   0.7067748
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8634735   0.5957136   1.2515854
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.7734223   0.4436538   1.3483081
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.5076923   0.1930800   1.3349467
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.0807018   0.5573126   2.0956217
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7933255   0.3588172   1.7540002
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7324324   0.3012417   1.7808198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1048783   0.6398243   1.9079552
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.6637842   0.3872650   1.1377466
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.2650868   0.6698089   2.3894048
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9430749   0.6437262   1.3816281
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.5516129   0.2552248   1.1921915
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.5163043   0.2672071   0.9976164
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9463986   0.7655938   1.1699027
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1192188   0.9220093   1.3586096
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.5705571   0.1881820   1.7298959
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7921103   0.3668992   1.7101119
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8509704   0.4848670   1.4935037
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.2238893   0.7908543   1.8940342
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3840801   0.7159492   2.6757173
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3767204   0.8518861   2.2248972
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5954165   0.5265670   0.6732682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4971229   0.4378858   0.5643736


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0221286   -0.0247735    0.0690306
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1253700   -0.0083176    0.2590577
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0630277   -0.1195771   -0.0064784
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0142933   -0.0090045    0.0375911
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0321933   -0.0257725    0.0901592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0603689   -0.1977308    0.0769930
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0173023    0.0045846    0.0300200
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0492836   -0.0391039    0.1376710
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0316774    0.0030943    0.0602605
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1474986    0.1114733    0.1835240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0368838   -0.0516630   -0.0221045
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0267535   -0.0793420    0.0258350
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0086580   -0.0756646    0.0583486
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0073748   -0.0271125    0.0123629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0024003   -0.0105527    0.0153533
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0052293   -0.0307948    0.0412533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0354957   -0.0719668    0.0009754
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0003590   -0.0124134    0.0116954
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0097806   -0.0894582    0.0698970
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0031403   -0.0137570    0.0200376
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0192331    0.0014675    0.0369986
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0520940   -0.0668358   -0.0373522


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0669095   -0.0879913    0.1997565
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2526493   -0.0723683    0.4791592
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4693555   -0.9586343   -0.1023016
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1439712   -0.1252455    0.3487774
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1343076   -0.1431311    0.3444118
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2359875   -0.9088999    0.1997144
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1074484    0.0249599    0.1829583
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1062213   -0.1058992    0.2776554
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2288085   -0.0069735    0.4093823
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4141881    0.3050798    0.5061654
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2006887   -0.2839924   -0.1227896
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1787460   -0.6067193    0.1352304
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0714286   -0.7945060    0.3602924
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1665278   -0.7044880    0.2016446
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0554665   -0.2965341    0.3119012
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0452796   -0.3226431    0.3108564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5087719   -1.1101884   -0.0787628
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0039500   -0.1457373    0.1202908
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0970056   -1.2555130    0.4664534
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0653327   -0.3611506    0.3581879
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3079307   -0.0384146    0.5387585
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3551207   -0.4593213   -0.2583604
