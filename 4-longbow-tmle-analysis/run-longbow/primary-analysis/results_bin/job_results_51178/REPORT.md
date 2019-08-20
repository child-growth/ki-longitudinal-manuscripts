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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0       25    247
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    1      137    247
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0        8    247
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    1       77    247
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0       57    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    1       56    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      296    887
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    1      478    887
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       18    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       40    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       54    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      145    257
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      299    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    1      170    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       97    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       68    634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      320    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      194    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       76    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       63    653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1465   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      626   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23   2129
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       15   2129
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0       54    498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    1       73    498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0      130    498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    1      241    498
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0       65    247
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    1       97    247
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0       34    247
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    1       51    247
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0       92    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    1       21    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0      615    887
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    1      159    887
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       58    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      196    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        3    257
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      397    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       72    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      136    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       29    634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      416    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       98    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      113    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       26    653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1807   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       29   2129
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        9   2129
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0      104    498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    1       23    498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0      305    498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    1       66    498
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
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0       24     97
6-24 months                  ki1000109-EE               PAKISTAN                       0                    1       40     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0        7     97
6-24 months                  ki1000109-EE               PAKISTAN                       1                    1       26     97
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0       53    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    1       35    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0      244    653
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    1      321    653
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       16    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       40    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       43    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      144    243
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0      245    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    1       98    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0       75    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    1       39    457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      301    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       96    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       72    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       37    506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1162   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      342   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       15   1525
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        6   1525
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0       50    400
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    1       50    400
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0      125    400
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    1      175    400
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
![](/tmp/6c41c970-0087-4d1d-a956-d65f24c54212/22d34941-9c68-4f2c-98b2-e560352e11f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c41c970-0087-4d1d-a956-d65f24c54212/22d34941-9c68-4f2c-98b2-e560352e11f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c41c970-0087-4d1d-a956-d65f24c54212/22d34941-9c68-4f2c-98b2-e560352e11f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c41c970-0087-4d1d-a956-d65f24c54212/22d34941-9c68-4f2c-98b2-e560352e11f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                0.8456790   0.7899365   0.9014216
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    NA                0.9058823   0.8436823   0.9680824
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4732755   0.3981563   0.5483946
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6170006   0.5612822   0.6727190
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6918602   0.5676820   0.8160384
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7286621   0.6667148   0.7906094
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3622892   0.3187864   0.4057921
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4120161   0.3356944   0.4883377
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3753362   0.3334320   0.4172403
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4570192   0.3744599   0.5395785
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2993714   0.2795923   0.3191505
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3780804   0.2624767   0.4936841
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5876230   0.4995747   0.6756713
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6433777   0.5940095   0.6927459
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                0.2651910   0.2476002   0.2827818
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    NA                0.3716380   0.3469240   0.3963521
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2647059   0.1432986   0.3861132
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3911111   0.3201765   0.4620457
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3860623   0.3465415   0.4255831
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4397560   0.4153985   0.4641134
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                0.5976036   0.5219670   0.6732402
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    NA                0.5892702   0.4859615   0.6925788
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1636800   0.1151223   0.2122377
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2050521   0.1746653   0.2354389
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1547970   0.1221043   0.1874897
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1785522   0.1202320   0.2368724
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1893051   0.1553017   0.2233086
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1841628   0.1187231   0.2496024
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1358202   0.1210246   0.1506157
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2368421   0.1403120   0.3333722
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1915306   0.1183387   0.2647226
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1728710   0.1344808   0.2112613
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                0.0744026   0.0634587   0.0853464
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    NA                0.0973728   0.0815502   0.1131954
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0991175   0.0746935   0.1235415
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0976143   0.0834098   0.1118188
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                0.6250000   0.5057759   0.7442241
6-24 months                  ki1000109-EE               PAKISTAN                       1                    NA                0.7878788   0.6476739   0.9280837
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4034791   0.3434158   0.4635424
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5657884   0.5350393   0.5965374
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7173674   0.5928761   0.8418588
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7688514   0.7079773   0.8297256
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2881233   0.2402077   0.3360390
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3619670   0.2769088   0.4470252
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2412563   0.1991156   0.2833970
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3441310   0.2537015   0.4345605
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2273936   0.2059594   0.2488279
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2857143   0.1792529   0.3921757
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4989674   0.3975013   0.6004334
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5792936   0.5228265   0.6357607
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                0.2245441   0.2070499   0.2420382
6-24 months                  ki1135781-COHORTS          INDIA                          1                    NA                0.3425191   0.3154075   0.3696307
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2580645   0.1217194   0.3944096
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2941176   0.2209212   0.3673141
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3240197   0.2815978   0.3664415
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3811551   0.3560733   0.4062369


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       NA                   NA                0.8663968   0.8238812   0.9089123
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6020293   0.5512634   0.6527952
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3010803   0.2815901   0.3205706
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6305221   0.5880881   0.6729561
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.3036392   0.2901712   0.3171072
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3745174   0.3090067   0.4400281
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4273638   0.4069167   0.4478110
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.5991903   0.5379507   0.6604298
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2029312   0.1748514   0.2310111
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1376233   0.1229861   0.1522605
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1787149   0.1450329   0.2123968
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0812729   0.0731685   0.0893773
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0979284   0.0852731   0.1105838
6-24 months                  ki1000109-EE               PAKISTAN                       NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5451761   0.5131549   0.5771973
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2281967   0.2071268   0.2492667
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5625000   0.5138243   0.6111757
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2661332   0.2522150   0.2800514
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2889908   0.2220207   0.3559610
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3675807   0.3466082   0.3885532


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                    0                 1.0711893   0.9739352   1.178155
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.3036818   1.0609904   1.601886
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0531927   0.8633143   1.284833
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1372573   0.9116124   1.418754
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2176264   0.9847340   1.505599
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2629142   0.9236988   1.726701
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0948818   0.9249731   1.296001
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          1                    0                 1.4013976   1.2764826   1.538537
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4775309   0.9188173   2.375986
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1390804   1.0129269   1.280945
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                    0                 0.9860552   0.7935775   1.225217
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2527621   0.9179263   1.709737
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1534601   0.7816156   1.702205
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9728357   0.6532373   1.448798
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7437917   1.1436025   2.658974
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9025765   0.5800668   1.404397
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          1                    0                 1.3087290   1.0512905   1.629209
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9848346   0.7442023   1.303274
6-24 months                  ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000109-EE               PAKISTAN                       1                    0                 1.2606061   0.9711420   1.636349
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4022741   1.1784431   1.668619
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0717680   0.8855351   1.297167
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2562920   0.9414119   1.676492
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4264124   1.0409491   1.954613
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2564745   0.8555225   1.845338
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1609849   0.9259423   1.455691
6-24 months                  ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          1                    0                 1.5253982   1.3657748   1.703677
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1397059   0.6462995   2.009795
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1763333   1.0143379   1.364200


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0207177   -0.0082463   0.0496818
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1287539    0.0337005   0.2238072
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0279841   -0.0811786   0.1371469
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0131051   -0.0097120   0.0359221
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0182320   -0.0017862   0.0382501
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017089   -0.0011530   0.0045708
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0428991   -0.0333496   0.1191478
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0384482    0.0260662   0.0508302
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1098115   -0.0067521   0.2263750
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0413015    0.0071575   0.0754455
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0015867   -0.0432806   0.0464539
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0392512   -0.0087052   0.0872077
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0045090   -0.0129764   0.0219944
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0005877   -0.0151025   0.0162778
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018031   -0.0007036   0.0043098
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0128158   -0.0769216   0.0512901
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0068703   -0.0010977   0.0148384
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0011890   -0.0215333   0.0191552
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0554124   -0.0090750   0.1198997
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1416970    0.0733256   0.2100683
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0398342   -0.0685011   0.1481695
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0116578   -0.0136807   0.0369964
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0215895    0.0001393   0.0430397
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008031   -0.0019332   0.0035394
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0635326   -0.0250894   0.1521547
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.0415891    0.0292588   0.0539195
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0309263   -0.0977535   0.1596061
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0435610    0.0066605   0.0804616


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0239125   -0.0103447   0.0570082
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2138664    0.0517225   0.3482857
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0388753   -0.1255632   0.1792902
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0349102   -0.0278232   0.0938146
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0463248   -0.0059631   0.0958949
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0056759   -0.0038927   0.0151532
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0680374   -0.0612982   0.1816115
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1266247    0.0849195   0.1664290
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2932080   -0.0879598   0.5408333
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0966426    0.0130420   0.1731617
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0026480   -0.0751126   0.0747844
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1934214   -0.0733943   0.3939142
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0283040   -0.0877434   0.1319707
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0030947   -0.0830560   0.0823926
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131018   -0.0053045   0.0311711
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0717107   -0.4976039   0.2330657
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0845340   -0.0186691   0.1772814
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0121419   -0.2426682   0.1756197
6-24 months                  ki1000109-EE               PAKISTAN                       0                    NA                 0.0814394   -0.0205034   0.1731986
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2599104    0.1309558   0.3697299
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0526072   -0.1022057   0.1856754
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0388879   -0.0493357   0.1196940
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0821376   -0.0029120   0.1599747
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035194   -0.0085713   0.0154651
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1129469   -0.0599205   0.2576206
6-24 months                  ki1135781-COHORTS          INDIA                          0                    NA                 0.1562719    0.1088827   0.2011409
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1070148   -0.4655911   0.4559039
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1185074    0.0119346   0.2135853
