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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              0      201     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              1       40     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1        0     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0              0      154     183
Birth       ki0047075b-MAL-ED          BRAZIL                         0              1        5     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0       23     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        1     183
Birth       ki0047075b-MAL-ED          INDIA                          0              0      169     202
Birth       ki0047075b-MAL-ED          INDIA                          0              1       33     202
Birth       ki0047075b-MAL-ED          INDIA                          1              0        0     202
Birth       ki0047075b-MAL-ED          INDIA                          1              1        0     202
Birth       ki0047075b-MAL-ED          NEPAL                          0              0      148     168
Birth       ki0047075b-MAL-ED          NEPAL                          0              1       20     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              0        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        0     168
Birth       ki0047075b-MAL-ED          PERU                           0              0      243     279
Birth       ki0047075b-MAL-ED          PERU                           0              1        4     279
Birth       ki0047075b-MAL-ED          PERU                           1              0       30     279
Birth       ki0047075b-MAL-ED          PERU                           1              1        2     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      138     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        7     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0      102     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1       11     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      110     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        2     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        6     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     118
Birth       ki1119695-PROBIT           BELARUS                        0              0    10522   13824
Birth       ki1119695-PROBIT           BELARUS                        0              1     2764   13824
Birth       ki1119695-PROBIT           BELARUS                        1              0      414   13824
Birth       ki1119695-PROBIT           BELARUS                        1              1      124   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0              0    10162   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0              1     1902   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0      653   12863
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1      146   12863
Birth       ki1135781-COHORTS          GUATEMALA                      0              0      486     691
Birth       ki1135781-COHORTS          GUATEMALA                      0              1      168     691
Birth       ki1135781-COHORTS          GUATEMALA                      1              0       29     691
Birth       ki1135781-COHORTS          GUATEMALA                      1              1        8     691
Birth       ki1135781-COHORTS          INDIA                          0              0     3681    4463
Birth       ki1135781-COHORTS          INDIA                          0              1      775    4463
Birth       ki1135781-COHORTS          INDIA                          1              0        6    4463
Birth       ki1135781-COHORTS          INDIA                          1              1        1    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0              0     2365    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    0              1      424    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1              0       55    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1              1       16    2860
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              0      233     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              1        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0              0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       29     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0              0      216     234
6 months    ki0047075b-MAL-ED          INDIA                          0              1       18     234
6 months    ki0047075b-MAL-ED          INDIA                          1              0        0     234
6 months    ki0047075b-MAL-ED          INDIA                          1              1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0              0      232     236
6 months    ki0047075b-MAL-ED          NEPAL                          0              1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0              0      240     273
6 months    ki0047075b-MAL-ED          PERU                           0              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           1              0       33     273
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      136     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0      111     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      238     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1756    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       78    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      170    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        8    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0              0      246     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0              1        2     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0       28     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        1     277
6 months    ki1119695-PROBIT           BELARUS                        0              0    14986   15757
6 months    ki1119695-PROBIT           BELARUS                        0              1      128   15757
6 months    ki1119695-PROBIT           BELARUS                        1              0      641   15757
6 months    ki1119695-PROBIT           BELARUS                        1              1        2   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0              0     7506    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0              1      240    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0      465    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       23    8234
6 months    ki1135781-COHORTS          GUATEMALA                      0              0      800     894
6 months    ki1135781-COHORTS          GUATEMALA                      0              1       27     894
6 months    ki1135781-COHORTS          GUATEMALA                      1              0       64     894
6 months    ki1135781-COHORTS          GUATEMALA                      1              1        3     894
6 months    ki1135781-COHORTS          INDIA                          0              0     4303    4964
6 months    ki1135781-COHORTS          INDIA                          0              1      652    4964
6 months    ki1135781-COHORTS          INDIA                          1              0        8    4964
6 months    ki1135781-COHORTS          INDIA                          1              1        1    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0              0     2454    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    0              1      152    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1              0       61    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1              1        7    2674
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              0      191     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              1       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0              0      146     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0              1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0              0      198     225
24 months   ki0047075b-MAL-ED          INDIA                          0              1       27     225
24 months   ki0047075b-MAL-ED          INDIA                          1              0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1              1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0              0      223     228
24 months   ki0047075b-MAL-ED          NEPAL                          0              1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0              0      174     201
24 months   ki0047075b-MAL-ED          PERU                           0              1        2     201
24 months   ki0047075b-MAL-ED          PERU                           1              0       24     201
24 months   ki0047075b-MAL-ED          PERU                           1              1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              0      130     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0      107     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0      205     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        5     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        1     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0              0     3788    3971
24 months   ki1119695-PROBIT           BELARUS                        0              1       41    3971
24 months   ki1119695-PROBIT           BELARUS                        1              0      139    3971
24 months   ki1119695-PROBIT           BELARUS                        1              1        3    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              0      307     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              1       72     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0       40     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1        3     422
24 months   ki1135781-COHORTS          GUATEMALA                      0              0      895    1021
24 months   ki1135781-COHORTS          GUATEMALA                      0              1       37    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1              0       80    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1              1        9    1021
24 months   ki1135781-COHORTS          INDIA                          0              0     3361    3726
24 months   ki1135781-COHORTS          INDIA                          0              1      356    3726
24 months   ki1135781-COHORTS          INDIA                          1              0        9    3726
24 months   ki1135781-COHORTS          INDIA                          1              1        0    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0              0     2204    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    0              1      157    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1              0       50    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1              1        9    2420


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

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
![](/tmp/baea944a-7da7-47b4-b5bf-f0a622e59a9f/9396616c-285b-4649-b686-2f557bdf2287/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/baea944a-7da7-47b4-b5bf-f0a622e59a9f/9396616c-285b-4649-b686-2f557bdf2287/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/baea944a-7da7-47b4-b5bf-f0a622e59a9f/9396616c-285b-4649-b686-2f557bdf2287/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/baea944a-7da7-47b4-b5bf-f0a622e59a9f/9396616c-285b-4649-b686-2f557bdf2287/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0482759   0.0133194   0.0832324
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0973451   0.0425843   0.1521060
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                0.2074421   0.1406566   0.2742275
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                0.1831884   0.1411605   0.2252162
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1587809   0.1522264   0.1653353
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1733984   0.1438958   0.2029009
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2568807   0.2233712   0.2903903
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2162162   0.0834756   0.3489569
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1520018   0.1386662   0.1653375
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2246337   0.1272387   0.3220287
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0425300   0.0332922   0.0517677
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0449438   0.0145003   0.0753874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0309563   0.0270967   0.0348159
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0496919   0.0299264   0.0694574
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0583269   0.0493273   0.0673266
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1029412   0.0307008   0.1751815
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0396996   0.0271581   0.0522411
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1011236   0.0384561   0.1637911
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0664972   0.0564389   0.0765556
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1525424   0.0630548   0.2420299


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0697674   0.0386213   0.1009135
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1592164   0.1528933   0.1655395
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2547033   0.2221942   0.2872125
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1538462   0.1406207   0.1670716
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0427435   0.0339027   0.0515843
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319407   0.0281424   0.0357391
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594615   0.0504964   0.0684266
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0450539   0.0323246   0.0577831
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0685950   0.0585223   0.0786677


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.0164349   0.8060526   5.044348
Birth       ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 0.8830820   0.6565308   1.187810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0920608   0.9166666   1.301015
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 0.8416988   0.4493449   1.576644
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4778357   0.9495035   2.300148
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0567560   0.5188512   2.152319
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6052252   1.0580501   2.435374
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7648994   0.8603360   3.620527
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 2.5472214   1.2705067   5.106889
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2939652   1.2516399   4.204306


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0214916   -0.0071182   0.0501014
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0014700   -0.0028257   0.0057656
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0004355   -0.0013673   0.0022383
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0021774   -0.0095398   0.0051850
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0018443   -0.0006301   0.0043188
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002135   -0.0026012   0.0030283
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0009844   -0.0001572   0.0021260
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0011345   -0.0007358   0.0030049
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0053543   -0.0003173   0.0110259
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0020978   -0.0002148   0.0044103


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3080460   -0.2137765   0.6055284
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0070363   -0.0145257   0.0281400
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0027353   -0.0086514   0.0139934
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0085488   -0.0378663   0.0199405
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0119882   -0.0042099   0.0279250
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0049961   -0.0630759   0.0687092
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0308195   -0.0054166   0.0657497
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0190803   -0.0127647   0.0499240
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1188421   -0.0116736   0.2325200
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0305823   -0.0034701   0.0634791
