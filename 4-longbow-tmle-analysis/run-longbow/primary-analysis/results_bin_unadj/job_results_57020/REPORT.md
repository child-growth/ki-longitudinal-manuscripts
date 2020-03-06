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

**Outcome Variable:** ever_swasted

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

agecat        studyid          country                        single    ever_swasted   n_cell       n
------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                    0     1017    1197
0-24 months   COHORTS          GUATEMALA                      0                    1       82    1197
0-24 months   COHORTS          GUATEMALA                      1                    0       90    1197
0-24 months   COHORTS          GUATEMALA                      1                    1        8    1197
0-24 months   COHORTS          INDIA                          0                    0     4814    5376
0-24 months   COHORTS          INDIA                          0                    1      553    5376
0-24 months   COHORTS          INDIA                          1                    0        7    5376
0-24 months   COHORTS          INDIA                          1                    1        2    5376
0-24 months   COHORTS          PHILIPPINES                    0                    0     2571    3005
0-24 months   COHORTS          PHILIPPINES                    0                    1      360    3005
0-24 months   COHORTS          PHILIPPINES                    1                    0       54    3005
0-24 months   COHORTS          PHILIPPINES                    1                    1       20    3005
0-24 months   Guatemala BSC    GUATEMALA                      0                    0      250     282
0-24 months   Guatemala BSC    GUATEMALA                      0                    1        2     282
0-24 months   Guatemala BSC    GUATEMALA                      1                    0       29     282
0-24 months   Guatemala BSC    GUATEMALA                      1                    1        1     282
0-24 months   MAL-ED           BANGLADESH                     0                    0      242     263
0-24 months   MAL-ED           BANGLADESH                     0                    1       21     263
0-24 months   MAL-ED           BANGLADESH                     1                    0        0     263
0-24 months   MAL-ED           BANGLADESH                     1                    1        0     263
0-24 months   MAL-ED           BRAZIL                         0                    0      194     233
0-24 months   MAL-ED           BRAZIL                         0                    1        3     233
0-24 months   MAL-ED           BRAZIL                         1                    0       35     233
0-24 months   MAL-ED           BRAZIL                         1                    1        1     233
0-24 months   MAL-ED           INDIA                          0                    0      223     249
0-24 months   MAL-ED           INDIA                          0                    1       26     249
0-24 months   MAL-ED           INDIA                          1                    0        0     249
0-24 months   MAL-ED           INDIA                          1                    1        0     249
0-24 months   MAL-ED           NEPAL                          0                    0      231     240
0-24 months   MAL-ED           NEPAL                          0                    1        9     240
0-24 months   MAL-ED           NEPAL                          1                    0        0     240
0-24 months   MAL-ED           NEPAL                          1                    1        0     240
0-24 months   MAL-ED           PERU                           0                    0      264     302
0-24 months   MAL-ED           PERU                           0                    1        4     302
0-24 months   MAL-ED           PERU                           1                    0       34     302
0-24 months   MAL-ED           PERU                           1                    1        0     302
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0      169     312
0-24 months   MAL-ED           SOUTH AFRICA                   0                    1        7     312
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0      127     312
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1        9     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      244     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        7     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        8     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     261
0-24 months   PROBIT           BELARUS                        0                    0    14939   16898
0-24 months   PROBIT           BELARUS                        0                    1     1266   16898
0-24 months   PROBIT           BELARUS                        1                    0      634   16898
0-24 months   PROBIT           BELARUS                        1                    1       59   16898
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2008    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      143    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      209    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       15    2375
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0    11829   13890
0-24 months   ZVITAMBO         ZIMBABWE                       0                    1     1183   13890
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0      781   13890
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1       97   13890
0-6 months    COHORTS          GUATEMALA                      0                    0      832     959
0-6 months    COHORTS          GUATEMALA                      0                    1       58     959
0-6 months    COHORTS          GUATEMALA                      1                    0       67     959
0-6 months    COHORTS          GUATEMALA                      1                    1        2     959
0-6 months    COHORTS          INDIA                          0                    0     4794    5170
0-6 months    COHORTS          INDIA                          0                    1      368    5170
0-6 months    COHORTS          INDIA                          1                    0        8    5170
0-6 months    COHORTS          INDIA                          1                    1        0    5170
0-6 months    COHORTS          PHILIPPINES                    0                    0     2730    3004
0-6 months    COHORTS          PHILIPPINES                    0                    1      200    3004
0-6 months    COHORTS          PHILIPPINES                    1                    0       65    3004
0-6 months    COHORTS          PHILIPPINES                    1                    1        9    3004
0-6 months    Guatemala BSC    GUATEMALA                      0                    0      238     265
0-6 months    Guatemala BSC    GUATEMALA                      0                    1        0     265
0-6 months    Guatemala BSC    GUATEMALA                      1                    0       26     265
0-6 months    Guatemala BSC    GUATEMALA                      1                    1        1     265
0-6 months    MAL-ED           BANGLADESH                     0                    0      247     263
0-6 months    MAL-ED           BANGLADESH                     0                    1       16     263
0-6 months    MAL-ED           BANGLADESH                     1                    0        0     263
0-6 months    MAL-ED           BANGLADESH                     1                    1        0     263
0-6 months    MAL-ED           BRAZIL                         0                    0      195     233
0-6 months    MAL-ED           BRAZIL                         0                    1        2     233
0-6 months    MAL-ED           BRAZIL                         1                    0       35     233
0-6 months    MAL-ED           BRAZIL                         1                    1        1     233
0-6 months    MAL-ED           INDIA                          0                    0      228     249
0-6 months    MAL-ED           INDIA                          0                    1       21     249
0-6 months    MAL-ED           INDIA                          1                    0        0     249
0-6 months    MAL-ED           INDIA                          1                    1        0     249
0-6 months    MAL-ED           NEPAL                          0                    0      233     240
0-6 months    MAL-ED           NEPAL                          0                    1        7     240
0-6 months    MAL-ED           NEPAL                          1                    0        0     240
0-6 months    MAL-ED           NEPAL                          1                    1        0     240
0-6 months    MAL-ED           PERU                           0                    0      267     302
0-6 months    MAL-ED           PERU                           0                    1        1     302
0-6 months    MAL-ED           PERU                           1                    0       34     302
0-6 months    MAL-ED           PERU                           1                    1        0     302
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0      173     312
0-6 months    MAL-ED           SOUTH AFRICA                   0                    1        3     312
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0      133     312
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        3     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      248     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        9     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        1     261
0-6 months    PROBIT           BELARUS                        0                    0    14948   16895
0-6 months    PROBIT           BELARUS                        0                    1     1254   16895
0-6 months    PROBIT           BELARUS                        1                    0      634   16895
0-6 months    PROBIT           BELARUS                        1                    1       59   16895
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2080    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       71    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      216    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        8    2375
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0    12056   13797
0-6 months    ZVITAMBO         ZIMBABWE                       0                    1      874   13797
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0      792   13797
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1       75   13797
6-24 months   COHORTS          GUATEMALA                      0                    0      993    1111
6-24 months   COHORTS          GUATEMALA                      0                    1       24    1111
6-24 months   COHORTS          GUATEMALA                      1                    0       88    1111
6-24 months   COHORTS          GUATEMALA                      1                    1        6    1111
6-24 months   COHORTS          INDIA                          0                    0     4825    5025
6-24 months   COHORTS          INDIA                          0                    1      191    5025
6-24 months   COHORTS          INDIA                          1                    0        7    5025
6-24 months   COHORTS          INDIA                          1                    1        2    5025
6-24 months   COHORTS          PHILIPPINES                    0                    0     2526    2775
6-24 months   COHORTS          PHILIPPINES                    0                    1      177    2775
6-24 months   COHORTS          PHILIPPINES                    1                    0       61    2775
6-24 months   COHORTS          PHILIPPINES                    1                    1       11    2775
6-24 months   Guatemala BSC    GUATEMALA                      0                    0      234     266
6-24 months   Guatemala BSC    GUATEMALA                      0                    1        2     266
6-24 months   Guatemala BSC    GUATEMALA                      1                    0       30     266
6-24 months   Guatemala BSC    GUATEMALA                      1                    1        0     266
6-24 months   MAL-ED           BANGLADESH                     0                    0      235     240
6-24 months   MAL-ED           BANGLADESH                     0                    1        5     240
6-24 months   MAL-ED           BANGLADESH                     1                    0        0     240
6-24 months   MAL-ED           BANGLADESH                     1                    1        0     240
6-24 months   MAL-ED           BRAZIL                         0                    0      176     207
6-24 months   MAL-ED           BRAZIL                         0                    1        1     207
6-24 months   MAL-ED           BRAZIL                         1                    0       30     207
6-24 months   MAL-ED           BRAZIL                         1                    1        0     207
6-24 months   MAL-ED           INDIA                          0                    0      227     233
6-24 months   MAL-ED           INDIA                          0                    1        6     233
6-24 months   MAL-ED           INDIA                          1                    0        0     233
6-24 months   MAL-ED           INDIA                          1                    1        0     233
6-24 months   MAL-ED           NEPAL                          0                    0      233     235
6-24 months   MAL-ED           NEPAL                          0                    1        2     235
6-24 months   MAL-ED           NEPAL                          1                    0        0     235
6-24 months   MAL-ED           NEPAL                          1                    1        0     235
6-24 months   MAL-ED           PERU                           0                    0      235     270
6-24 months   MAL-ED           PERU                           0                    1        3     270
6-24 months   MAL-ED           PERU                           1                    0       32     270
6-24 months   MAL-ED           PERU                           1                    1        0     270
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0      140     259
6-24 months   MAL-ED           SOUTH AFRICA                   0                    1        4     259
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0      109     259
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        6     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      233     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        7     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        1     245
6-24 months   PROBIT           BELARUS                        0                    0    15907   16598
6-24 months   PROBIT           BELARUS                        0                    1       12   16598
6-24 months   PROBIT           BELARUS                        1                    0      679   16598
6-24 months   PROBIT           BELARUS                        1                    1        0   16598
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1745    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       75    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      175    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        8    2003
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0     9772   10771
6-24 months   ZVITAMBO         ZIMBABWE                       0                    1      331   10771
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0      645   10771
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1       23   10771


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/a5c825bf-9525-48b3-b78d-ff78880cffb2/9a8b5f1e-055a-4c09-b087-33105c327805/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a5c825bf-9525-48b3-b78d-ff78880cffb2/9a8b5f1e-055a-4c09-b087-33105c327805/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a5c825bf-9525-48b3-b78d-ff78880cffb2/9a8b5f1e-055a-4c09-b087-33105c327805/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a5c825bf-9525-48b3-b78d-ff78880cffb2/9a8b5f1e-055a-4c09-b087-33105c327805/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.0746133   0.0590715   0.0901551
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.0816327   0.0274005   0.1358648
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.1228250   0.1109354   0.1347145
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2702703   0.1705848   0.3699557
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0397727   0.0108547   0.0686907
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.0661765   0.0243299   0.1080230
0-24 months   PROBIT           BELARUS                        0                    NA                0.0781240   0.0450774   0.1111706
0-24 months   PROBIT           BELARUS                        1                    NA                0.0851371   0.0540467   0.1162275
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0664807   0.0559507   0.0770107
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0669643   0.0342237   0.0997049
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0909161   0.0859762   0.0958559
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1104784   0.0897420   0.1312148
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0682594   0.0591229   0.0773959
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.1216216   0.0482307   0.1950126
0-6 months    PROBIT           BELARUS                        0                    NA                0.0773979   0.0443066   0.1104891
0-6 months    PROBIT           BELARUS                        1                    NA                0.0851371   0.0540406   0.1162335
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330079   0.0254563   0.0405595
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0357143   0.0114068   0.0600217
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0675947   0.0632674   0.0719221
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0865052   0.0677928   0.1052175
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.0235988   0.0142654   0.0329323
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.0638298   0.0143909   0.1132687
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0654828   0.0561554   0.0748102
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.1527778   0.0696610   0.2358946
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0412088   0.0320744   0.0503431
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0437158   0.0140850   0.0733467
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0327625   0.0292912   0.0362339
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0344311   0.0206035   0.0482588


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0751880   0.0602434   0.0901325
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1264559   0.1145706   0.1383412
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.0512821   0.0267678   0.0757963
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0784116   0.0458146   0.1110087
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0665263   0.0565020   0.0765506
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0921526   0.0873423   0.0969629
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0695739   0.0604740   0.0786738
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0777153   0.0450748   0.1103558
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0332632   0.0260497   0.0404766
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687831   0.0645599   0.0730062
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0270027   0.0174671   0.0365383
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0677477   0.0583957   0.0770998
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0328660   0.0294989   0.0362331


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      1                    0                 1.094077   0.5453529   2.194916
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 2.200451   1.5028070   3.221959
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.663865   0.6347971   4.361155
0-24 months   PROBIT           BELARUS                        0                    0                 1.000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        1                    0                 1.089768   0.8021415   1.480530
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.007274   0.6024838   1.684030
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.215169   0.9994804   1.477402
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 1.781757   0.9603060   3.305881
0-6 months    PROBIT           BELARUS                        0                    0                 1.000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        1                    0                 1.099993   0.8080955   1.497328
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.081992   0.5276998   2.218509
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.279762   1.0213087   1.603620
6-24 months   COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      1                    0                 2.704787   1.1335391   6.454011
6-24 months   COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                 2.333098   1.3295250   4.094203
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.060838   0.5199252   2.164498
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.050930   0.6937326   1.592045


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.0005747   -0.0040454   0.0051948
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0036309    0.0009915   0.0062704
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0115093   -0.0107109   0.0337295
0-24 months   PROBIT           BELARUS                        0                    NA                0.0002876   -0.0007268   0.0013021
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0000456   -0.0031981   0.0032893
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0012366   -0.0001132   0.0025863
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0013145   -0.0005579   0.0031870
0-6 months    PROBIT           BELARUS                        0                    NA                0.0003174   -0.0006967   0.0013316
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0002553   -0.0021456   0.0026561
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0011883   -0.0000210   0.0023977
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.0034039   -0.0009036   0.0077114
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0022650    0.0000343   0.0044956
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0002291   -0.0026040   0.0030621
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0001035   -0.0007807   0.0009877


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.0076433   -0.0557292   0.0672117
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0287130    0.0077382   0.0492444
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.2244318   -0.3345633   0.5492863
0-24 months   PROBIT           BELARUS                        0                    NA                0.0036680   -0.0100897   0.0172382
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0006856   -0.0492821   0.0482738
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0134185   -0.0013243   0.0279442
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0188938   -0.0082968   0.0453512
0-6 months    PROBIT           BELARUS                        0                    NA                0.0040848   -0.0098896   0.0178657
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0076738   -0.0671750   0.0772729
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0172765   -0.0004358   0.0346752
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.1260570   -0.0417454   0.2668302
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0334321    0.0002274   0.0655341
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0055276   -0.0652363   0.0715907
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0031486   -0.0241193   0.0296905
