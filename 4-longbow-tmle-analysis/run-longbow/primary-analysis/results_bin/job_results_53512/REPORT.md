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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        hdlvry    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       27    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      260    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        1    293
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        5    293
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0      145    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    1      208    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0        2    360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    1        5    360
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       29    212
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      112    212
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0       12    212
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1       59    212
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0       57    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    1       56    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      296    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    1      478    887
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       18    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       40    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       54    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      145    257
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      299    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      169    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       96    633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       69    633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      320    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      194    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       76    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       63    653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1465   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      626   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       15   2129
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0       66    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1       61    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0      168    535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1      240    535
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0     2102   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    1      686   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0     1017   4479
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    1      674   4479
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       25    259
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        9    259
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      137    259
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1       88    259
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      541   3194
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      339   3194
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1288   3194
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1026   3194
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      173    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      111    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        5    289
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0    289
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0      232    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    1      121    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0        4    360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1        3    360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0       69    212
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1       72    212
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0       26    212
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1       45    212
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0       92    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    1       21    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0      615    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    1      159    887
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       58    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      196    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        3    257
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      396    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       72    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      136    633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       29    633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      416    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       98    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      113    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       26    653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1807   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       29   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        9   2129
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      107    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1       20    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0      337    535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1       71    535
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0     2530   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    1      183   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0     1483   4368
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    1      172   4368
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       32    258
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    258
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      192    258
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1       33    258
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      793   3186
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       85   3186
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2081   3186
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      227   3186
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       27    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      150    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        1    183
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        5    183
6-24 months                  ki1000108-IRC              INDIA                          0                    0      145    236
6-24 months                  ki1000108-IRC              INDIA                          0                    1       87    236
6-24 months                  ki1000108-IRC              INDIA                          1                    0        2    236
6-24 months                  ki1000108-IRC              INDIA                          1                    1        2    236
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       29     93
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1       40     93
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0       10     93
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1       14     93
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0       53    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    1       35    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0      244    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    1      321    653
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       16    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       40    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       43    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      144    243
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      245    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1       97    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0       74    456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1       40    456
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      301    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       96    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       72    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       37    506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1162   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      342   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       15   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        6   1525
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0       49    373
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1       41    373
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0      114    373
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1      169    373
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0     1936   3874
6-24 months                  ki1135781-COHORTS          INDIA                          0                    1      515   3874
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0      907   3874
6-24 months                  ki1135781-COHORTS          INDIA                          1                    1      516   3874
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0       23    218
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    1        8    218
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0      132    218
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1       55    218
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0      539   2881
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    1      255   2881
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1283   2881
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1      804   2881


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/be11890d-2e7a-4c6a-a66d-1520a7e06e97/cd045a54-d3a2-412c-b76d-8b3b076c0abb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be11890d-2e7a-4c6a-a66d-1520a7e06e97/cd045a54-d3a2-412c-b76d-8b3b076c0abb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be11890d-2e7a-4c6a-a66d-1520a7e06e97/cd045a54-d3a2-412c-b76d-8b3b076c0abb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be11890d-2e7a-4c6a-a66d-1520a7e06e97/cd045a54-d3a2-412c-b76d-8b3b076c0abb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.7911222   0.7242163   0.8580280
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.8117491   0.7215717   0.9019266
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4732755   0.3981563   0.5483946
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6170006   0.5612822   0.6727190
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6930124   0.5702973   0.8157275
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7274013   0.6651836   0.7896189
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3598702   0.3163881   0.4033522
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4102415   0.3354160   0.4850671
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3770628   0.3351313   0.4189942
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4548265   0.3726777   0.5369753
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2993643   0.2795853   0.3191433
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3750858   0.2582222   0.4919495
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4917388   0.3984790   0.5849986
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5869529   0.5389696   0.6349363
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2657029   0.2480066   0.2833992
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.3725636   0.3475631   0.3975642
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2647059   0.1432986   0.3861132
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3911111   0.3201765   0.4620457
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3878735   0.3481736   0.4275733
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4389688   0.4144856   0.4634519
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5099288   0.4272781   0.5925794
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.6294890   0.5152286   0.7437494
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1636800   0.1151223   0.2122377
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2050521   0.1746653   0.2354389
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1553263   0.1225578   0.1880949
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1730777   0.1145531   0.2316023
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1904095   0.1563861   0.2244329
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1886399   0.1239830   0.2532969
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1358202   0.1210246   0.1506157
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2368421   0.1403120   0.3333722
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1618182   0.0945009   0.2291355
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1728744   0.1359647   0.2097841
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0746008   0.0636213   0.0855803
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.0985176   0.0827918   0.1142434
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0986074   0.0745995   0.1226154
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0972339   0.0831000   0.1113677
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.5738980   0.4553171   0.6924789
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.5620332   0.3564882   0.7675781
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4034791   0.3434158   0.4635424
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5657884   0.5350393   0.5965374
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7038203   0.5796178   0.8280228
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7702636   0.7093493   0.8311779
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2843071   0.2364152   0.3321989
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3534682   0.2654627   0.4414736
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2400270   0.1979208   0.2821332
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3455905   0.2558919   0.4352890
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2273936   0.2059594   0.2488279
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2857143   0.1792529   0.3921757
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4558016   0.3506368   0.5609664
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5957309   0.5380380   0.6534238
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2251354   0.2074689   0.2428020
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.3392811   0.3119338   0.3666284
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2580645   0.1217194   0.3944096
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2941176   0.2209212   0.3673141
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3235349   0.2825458   0.3645240
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3809166   0.3555988   0.4062344


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       NA                   NA                0.8066038   0.7533119   0.8598956
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6020293   0.5512634   0.6527952
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3010803   0.2815901   0.3205706
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5626168   0.5205427   0.6046909
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.3036392   0.2901712   0.3171072
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3745174   0.3090067   0.4400281
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4273638   0.4069167   0.4478110
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.5518868   0.4847863   0.6189873
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2029312   0.1748514   0.2310111
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1376233   0.1229861   0.1522605
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1700935   0.1382268   0.2019601
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0812729   0.0731685   0.0893773
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0979284   0.0852731   0.1105838
6-24 months                  ki1000109-EE               PAKISTAN                       NA                   NA                0.5806452   0.4798127   0.6814776
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5451761   0.5131549   0.5771973
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2281967   0.2071268   0.2492667
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5630027   0.5125980   0.6134074
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2661332   0.2522150   0.2800514
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2889908   0.2220207   0.3559610
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3675807   0.3466082   0.3885532


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.0260731   0.8911724   1.181394
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.3036818   1.0609904   1.601886
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0496223   0.8619291   1.278187
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1399709   0.9166433   1.417709
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2062356   0.9757895   1.491105
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2529410   0.9112400   1.722775
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1936275   0.9707048   1.467745
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.4021813   1.2763143   1.540461
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4775309   0.9188173   2.375986
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1317318   1.0058683   1.273345
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 1.2344647   0.9678859   1.574466
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2527621   0.9179263   1.709737
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1142846   0.7474626   1.661127
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9907064   0.6724528   1.459581
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7437917   1.1436025   2.658974
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0683248   0.6690837   1.705793
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.3205975   1.0630867   1.640485
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9860703   0.7467063   1.302165
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 0.9793258   0.6419778   1.493944
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4022741   1.1784431   1.668619
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0944038   0.9016974   1.328294
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2432619   0.9201836   1.679774
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4397981   1.0535994   1.967559
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2564745   0.8555225   1.845338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3069960   1.0172408   1.679286
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 1.5070089   1.3472410   1.685724
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1397059   0.6462995   2.009795
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1773585   1.0184093   1.361116


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0154816   -0.0221181   0.0530813
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1287539    0.0337005   0.2238072
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0268319   -0.0808566   0.1345205
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0161172   -0.0064639   0.0386983
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0165054   -0.0034248   0.0364355
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017160   -0.0011419   0.0045738
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0708780   -0.0113988   0.1531548
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0379363    0.0254565   0.0504162
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1098115   -0.0067521   0.2263750
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0394903    0.0049677   0.0740129
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0419580   -0.0057500   0.0896661
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0392512   -0.0087052   0.0872077
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0042313   -0.0134219   0.0218845
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0005167   -0.0162673   0.0152338
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018031   -0.0007036   0.0043098
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0082753   -0.0516103   0.0681609
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0066721   -0.0013006   0.0146448
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0006790   -0.0207292   0.0193712
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0067471   -0.0543442   0.0678384
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1416970    0.0733256   0.2100683
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0533813   -0.0550989   0.1618616
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0161315   -0.0091107   0.0413738
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0228188    0.0013792   0.0442585
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008031   -0.0019332   0.0035394
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1072011    0.0151805   0.1992216
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.0409977    0.0284725   0.0535230
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0309263   -0.0977535   0.1596061
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0440458    0.0084450   0.0796465


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0191936   -0.0286386   0.0648016
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2138664    0.0517225   0.3482857
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0372746   -0.1247287   0.1759434
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0428664   -0.0191586   0.1011165
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0419378   -0.0101029   0.0912974
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0056994   -0.0038559   0.0151638
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1259792   -0.0338179   0.2610765
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1249388    0.0828801   0.1650688
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2932080   -0.0879598   0.5408333
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0924045    0.0079037   0.1697080
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0760265   -0.0152160   0.1590686
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1934214   -0.0733943   0.3939142
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0265192   -0.0904862   0.1309703
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0027211   -0.0891923   0.0768851
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131018   -0.0053045   0.0311711
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0486513   -0.3773382   0.3428888
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0820953   -0.0212030   0.1749445
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0069335   -0.2339499   0.1783175
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0116201   -0.0994478   0.1114677
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2599104    0.1309558   0.3697299
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0704982   -0.0848699   0.2036154
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0536932   -0.0340794   0.1340157
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0868145    0.0017689   0.1646145
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035194   -0.0085713   0.0154651
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1904095    0.0080958   0.3392137
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.1540497    0.1058639   0.1996388
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1070148   -0.4655911   0.4559039
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1198261    0.0173144   0.2116439
