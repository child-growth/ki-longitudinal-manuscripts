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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        single    wasted   n_cell       n
----------  ---------------  -----------------------------  -------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      0              0      486     691
Birth       COHORTS          GUATEMALA                      0              1      168     691
Birth       COHORTS          GUATEMALA                      1              0       29     691
Birth       COHORTS          GUATEMALA                      1              1        8     691
Birth       COHORTS          INDIA                          0              0     3681    4463
Birth       COHORTS          INDIA                          0              1      775    4463
Birth       COHORTS          INDIA                          1              0        6    4463
Birth       COHORTS          INDIA                          1              1        1    4463
Birth       COHORTS          PHILIPPINES                    0              0     2365    2860
Birth       COHORTS          PHILIPPINES                    0              1      424    2860
Birth       COHORTS          PHILIPPINES                    1              0       55    2860
Birth       COHORTS          PHILIPPINES                    1              1       16    2860
Birth       JiVitA-4         BANGLADESH                     0              0     2150    2393
Birth       JiVitA-4         BANGLADESH                     0              1      238    2393
Birth       JiVitA-4         BANGLADESH                     1              0        5    2393
Birth       JiVitA-4         BANGLADESH                     1              1        0    2393
Birth       MAL-ED           BANGLADESH                     0              0      179     215
Birth       MAL-ED           BANGLADESH                     0              1       36     215
Birth       MAL-ED           BANGLADESH                     1              0        0     215
Birth       MAL-ED           BANGLADESH                     1              1        0     215
Birth       MAL-ED           BRAZIL                         0              0       53      62
Birth       MAL-ED           BRAZIL                         0              1        1      62
Birth       MAL-ED           BRAZIL                         1              0        7      62
Birth       MAL-ED           BRAZIL                         1              1        1      62
Birth       MAL-ED           INDIA                          0              0       40      45
Birth       MAL-ED           INDIA                          0              1        5      45
Birth       MAL-ED           INDIA                          1              0        0      45
Birth       MAL-ED           INDIA                          1              1        0      45
Birth       MAL-ED           NEPAL                          0              0       24      26
Birth       MAL-ED           NEPAL                          0              1        2      26
Birth       MAL-ED           NEPAL                          1              0        0      26
Birth       MAL-ED           NEPAL                          1              1        0      26
Birth       MAL-ED           PERU                           0              0      201     228
Birth       MAL-ED           PERU                           0              1        4     228
Birth       MAL-ED           PERU                           1              0       22     228
Birth       MAL-ED           PERU                           1              1        1     228
Birth       MAL-ED           SOUTH AFRICA                   0              0       58     120
Birth       MAL-ED           SOUTH AFRICA                   0              1        5     120
Birth       MAL-ED           SOUTH AFRICA                   1              0       50     120
Birth       MAL-ED           SOUTH AFRICA                   1              1        7     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              0      111     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              1        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        3     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0     115
Birth       PROBIT           BELARUS                        0              0    10498   13817
Birth       PROBIT           BELARUS                        0              1     2779   13817
Birth       PROBIT           BELARUS                        1              0      413   13817
Birth       PROBIT           BELARUS                        1              1      127   13817
Birth       ZVITAMBO         ZIMBABWE                       0              0    10162   12864
Birth       ZVITAMBO         ZIMBABWE                       0              1     1903   12864
Birth       ZVITAMBO         ZIMBABWE                       1              0      653   12864
Birth       ZVITAMBO         ZIMBABWE                       1              1      146   12864
6 months    COHORTS          GUATEMALA                      0              0      800     894
6 months    COHORTS          GUATEMALA                      0              1       27     894
6 months    COHORTS          GUATEMALA                      1              0       64     894
6 months    COHORTS          GUATEMALA                      1              1        3     894
6 months    COHORTS          INDIA                          0              0     4303    4964
6 months    COHORTS          INDIA                          0              1      652    4964
6 months    COHORTS          INDIA                          1              0        8    4964
6 months    COHORTS          INDIA                          1              1        1    4964
6 months    COHORTS          PHILIPPINES                    0              0     2454    2674
6 months    COHORTS          PHILIPPINES                    0              1      152    2674
6 months    COHORTS          PHILIPPINES                    1              0       61    2674
6 months    COHORTS          PHILIPPINES                    1              1        7    2674
6 months    Guatemala BSC    GUATEMALA                      0              0      246     277
6 months    Guatemala BSC    GUATEMALA                      0              1        2     277
6 months    Guatemala BSC    GUATEMALA                      1              0       28     277
6 months    Guatemala BSC    GUATEMALA                      1              1        1     277
6 months    JiVitA-4         BANGLADESH                     0              0     4541    4824
6 months    JiVitA-4         BANGLADESH                     0              1      275    4824
6 months    JiVitA-4         BANGLADESH                     1              0        8    4824
6 months    JiVitA-4         BANGLADESH                     1              1        0    4824
6 months    MAL-ED           BANGLADESH                     0              0      233     241
6 months    MAL-ED           BANGLADESH                     0              1        8     241
6 months    MAL-ED           BANGLADESH                     1              0        0     241
6 months    MAL-ED           BANGLADESH                     1              1        0     241
6 months    MAL-ED           BRAZIL                         0              0      179     209
6 months    MAL-ED           BRAZIL                         0              1        0     209
6 months    MAL-ED           BRAZIL                         1              0       29     209
6 months    MAL-ED           BRAZIL                         1              1        1     209
6 months    MAL-ED           INDIA                          0              0      215     234
6 months    MAL-ED           INDIA                          0              1       19     234
6 months    MAL-ED           INDIA                          1              0        0     234
6 months    MAL-ED           INDIA                          1              1        0     234
6 months    MAL-ED           NEPAL                          0              0      232     236
6 months    MAL-ED           NEPAL                          0              1        4     236
6 months    MAL-ED           NEPAL                          1              0        0     236
6 months    MAL-ED           NEPAL                          1              1        0     236
6 months    MAL-ED           PERU                           0              0      240     273
6 months    MAL-ED           PERU                           0              1        0     273
6 months    MAL-ED           PERU                           1              0       33     273
6 months    MAL-ED           PERU                           1              1        0     273
6 months    MAL-ED           SOUTH AFRICA                   0              0      136     254
6 months    MAL-ED           SOUTH AFRICA                   0              1        4     254
6 months    MAL-ED           SOUTH AFRICA                   1              0      111     254
6 months    MAL-ED           SOUTH AFRICA                   1              1        3     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              0      238     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        8     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0     247
6 months    PROBIT           BELARUS                        0              0    15009   15757
6 months    PROBIT           BELARUS                        0              1      105   15757
6 months    PROBIT           BELARUS                        1              0      640   15757
6 months    PROBIT           BELARUS                        1              1        3   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1756    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       78    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      170    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        8    2012
6 months    ZVITAMBO         ZIMBABWE                       0              0     7731    8474
6 months    ZVITAMBO         ZIMBABWE                       0              1      240    8474
6 months    ZVITAMBO         ZIMBABWE                       1              0      480    8474
6 months    ZVITAMBO         ZIMBABWE                       1              1       23    8474
24 months   COHORTS          GUATEMALA                      0              0      895    1021
24 months   COHORTS          GUATEMALA                      0              1       37    1021
24 months   COHORTS          GUATEMALA                      1              0       80    1021
24 months   COHORTS          GUATEMALA                      1              1        9    1021
24 months   COHORTS          INDIA                          0              0     3361    3726
24 months   COHORTS          INDIA                          0              1      356    3726
24 months   COHORTS          INDIA                          1              0        9    3726
24 months   COHORTS          INDIA                          1              1        0    3726
24 months   COHORTS          PHILIPPINES                    0              0     2204    2420
24 months   COHORTS          PHILIPPINES                    0              1      157    2420
24 months   COHORTS          PHILIPPINES                    1              0       50    2420
24 months   COHORTS          PHILIPPINES                    1              1        9    2420
24 months   JiVitA-4         BANGLADESH                     0              0     3801    4727
24 months   JiVitA-4         BANGLADESH                     0              1      920    4727
24 months   JiVitA-4         BANGLADESH                     1              0        6    4727
24 months   JiVitA-4         BANGLADESH                     1              1        0    4727
24 months   MAL-ED           BANGLADESH                     0              0      191     212
24 months   MAL-ED           BANGLADESH                     0              1       21     212
24 months   MAL-ED           BANGLADESH                     1              0        0     212
24 months   MAL-ED           BANGLADESH                     1              1        0     212
24 months   MAL-ED           BRAZIL                         0              0      146     169
24 months   MAL-ED           BRAZIL                         0              1        2     169
24 months   MAL-ED           BRAZIL                         1              0       20     169
24 months   MAL-ED           BRAZIL                         1              1        1     169
24 months   MAL-ED           INDIA                          0              0      198     225
24 months   MAL-ED           INDIA                          0              1       27     225
24 months   MAL-ED           INDIA                          1              0        0     225
24 months   MAL-ED           INDIA                          1              1        0     225
24 months   MAL-ED           NEPAL                          0              0      223     228
24 months   MAL-ED           NEPAL                          0              1        5     228
24 months   MAL-ED           NEPAL                          1              0        0     228
24 months   MAL-ED           NEPAL                          1              1        0     228
24 months   MAL-ED           PERU                           0              0      173     201
24 months   MAL-ED           PERU                           0              1        3     201
24 months   MAL-ED           PERU                           1              0       24     201
24 months   MAL-ED           PERU                           1              1        1     201
24 months   MAL-ED           SOUTH AFRICA                   0              0      130     238
24 months   MAL-ED           SOUTH AFRICA                   0              1        1     238
24 months   MAL-ED           SOUTH AFRICA                   1              0      107     238
24 months   MAL-ED           SOUTH AFRICA                   1              1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              0      205     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        1     214
24 months   PROBIT           BELARUS                        0              0     3798    3970
24 months   PROBIT           BELARUS                        0              1       30    3970
24 months   PROBIT           BELARUS                        1              0      140    3970
24 months   PROBIT           BELARUS                        1              1        2    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0              0      313     432
24 months   ZVITAMBO         ZIMBABWE                       0              1       75     432
24 months   ZVITAMBO         ZIMBABWE                       1              0       41     432
24 months   ZVITAMBO         ZIMBABWE                       1              1        3     432


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/7dd847c6-77b4-4a87-bdc8-ee502f73b14e/d2b0dd3b-309e-4155-b05d-fca07606f237/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7dd847c6-77b4-4a87-bdc8-ee502f73b14e/d2b0dd3b-309e-4155-b05d-fca07606f237/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7dd847c6-77b4-4a87-bdc8-ee502f73b14e/d2b0dd3b-309e-4155-b05d-fca07606f237/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7dd847c6-77b4-4a87-bdc8-ee502f73b14e/d2b0dd3b-309e-4155-b05d-fca07606f237/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      0                    NA                0.2568807   0.2233712   0.2903903
Birth       COHORTS          GUATEMALA                      1                    NA                0.2162162   0.0834756   0.3489569
Birth       COHORTS          PHILIPPINES                    0                    NA                0.1520258   0.1386959   0.1653557
Birth       COHORTS          PHILIPPINES                    1                    NA                0.2253521   0.1288293   0.3218750
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                0.0793651   0.0123375   0.1463926
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                0.1228070   0.0372438   0.2083702
Birth       PROBIT           BELARUS                        0                    NA                0.2093093   0.1438982   0.2747204
Birth       PROBIT           BELARUS                        1                    NA                0.2351852   0.1530948   0.3172755
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.1577290   0.1512249   0.1642330
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1827284   0.1559319   0.2095249
6 months    COHORTS          PHILIPPINES                    0                    NA                0.0583269   0.0493273   0.0673266
6 months    COHORTS          PHILIPPINES                    1                    NA                0.1029412   0.0307008   0.1751815
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0425300   0.0332922   0.0517677
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0449438   0.0145003   0.0753874
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0301091   0.0263574   0.0338608
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0457256   0.0274696   0.0639817
24 months   COHORTS          GUATEMALA                      0                    NA                0.0396996   0.0271581   0.0522411
24 months   COHORTS          GUATEMALA                      1                    NA                0.1011236   0.0384561   0.1637911
24 months   COHORTS          PHILIPPINES                    0                    NA                0.0664972   0.0564389   0.0765556
24 months   COHORTS          PHILIPPINES                    1                    NA                0.1525424   0.0630548   0.2420299


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2547033   0.2221942   0.2872125
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1538462   0.1406207   0.1670716
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                0.1000000   0.0460991   0.1539009
Birth       PROBIT           BELARUS                        NA                   NA                0.2103206   0.1450833   0.2755580
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1592817   0.1529578   0.1656056
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0594615   0.0504964   0.0684266
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0427435   0.0339027   0.0515843
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0310361   0.0273436   0.0347286
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0450539   0.0323246   0.0577831
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0685950   0.0585223   0.0786677


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA                      1                    0                 0.8416988   0.4493449   1.576644
Birth       COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    1                    0                 1.4823279   0.9573473   2.295192
Birth       MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 1.5473684   0.5177350   4.624662
Birth       PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
Birth       PROBIT           BELARUS                        1                    0                 1.1236249   0.8811413   1.432838
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 1.1584962   0.9948026   1.349125
6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    1                    0                 1.7648994   0.8603360   3.620527
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0567560   0.5188512   2.152319
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.5186630   0.9995869   2.307291
24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      1                    0                 2.5472214   1.2705067   5.106889
24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    1                    0                 2.2939652   1.2516399   4.204306


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      0                    NA                -0.0021774   -0.0095398   0.0051850
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0018203   -0.0006513   0.0042919
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0206349   -0.0311403   0.0724101
Birth       PROBIT           BELARUS                        0                    NA                 0.0010113   -0.0011473   0.0031699
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0015527   -0.0001631   0.0032686
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0011345   -0.0007358   0.0030049
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002135   -0.0026012   0.0030283
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0009270   -0.0001821   0.0020360
24 months   COHORTS          GUATEMALA                      0                    NA                 0.0053543   -0.0003173   0.0110259
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0020978   -0.0002148   0.0044103


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      0                    NA                -0.0085488   -0.0378663   0.0199405
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0118322   -0.0043446   0.0277484
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.2063492   -0.5049168   0.5814509
Birth       PROBIT           BELARUS                        0                    NA                 0.0048083   -0.0057122   0.0152187
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0097484   -0.0010785   0.0204583
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0190803   -0.0127647   0.0499240
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0049961   -0.0630759   0.0687092
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0298673   -0.0063617   0.0647920
24 months   COHORTS          GUATEMALA                      0                    NA                 0.1188421   -0.0116736   0.2325200
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0305823   -0.0034701   0.0634791
