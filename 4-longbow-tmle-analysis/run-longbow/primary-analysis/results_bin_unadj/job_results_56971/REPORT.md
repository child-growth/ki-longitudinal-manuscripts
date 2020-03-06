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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        single    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  -------  ------------  -------  -----
0-24 months   COHORTS          GUATEMALA                      0                   0      179    353
0-24 months   COHORTS          GUATEMALA                      0                   1      150    353
0-24 months   COHORTS          GUATEMALA                      1                   0       18    353
0-24 months   COHORTS          GUATEMALA                      1                   1        6    353
0-24 months   COHORTS          INDIA                          0                   0     1499   1962
0-24 months   COHORTS          INDIA                          0                   1      459   1962
0-24 months   COHORTS          INDIA                          1                   0        3   1962
0-24 months   COHORTS          INDIA                          1                   1        1   1962
0-24 months   COHORTS          PHILIPPINES                    0                   0      628   1661
0-24 months   COHORTS          PHILIPPINES                    0                   1      980   1661
0-24 months   COHORTS          PHILIPPINES                    1                   0       28   1661
0-24 months   COHORTS          PHILIPPINES                    1                   1       25   1661
0-24 months   Guatemala BSC    GUATEMALA                      0                   0       18     37
0-24 months   Guatemala BSC    GUATEMALA                      0                   1       16     37
0-24 months   Guatemala BSC    GUATEMALA                      1                   0        2     37
0-24 months   Guatemala BSC    GUATEMALA                      1                   1        1     37
0-24 months   MAL-ED           BANGLADESH                     0                   0       44    124
0-24 months   MAL-ED           BANGLADESH                     0                   1       80    124
0-24 months   MAL-ED           BANGLADESH                     1                   0        0    124
0-24 months   MAL-ED           BANGLADESH                     1                   1        0    124
0-24 months   MAL-ED           BRAZIL                         0                   0        5     24
0-24 months   MAL-ED           BRAZIL                         0                   1       13     24
0-24 months   MAL-ED           BRAZIL                         1                   0        1     24
0-24 months   MAL-ED           BRAZIL                         1                   1        5     24
0-24 months   MAL-ED           INDIA                          0                   0       71    180
0-24 months   MAL-ED           INDIA                          0                   1      109    180
0-24 months   MAL-ED           INDIA                          1                   0        0    180
0-24 months   MAL-ED           INDIA                          1                   1        0    180
0-24 months   MAL-ED           NEPAL                          0                   0       20     98
0-24 months   MAL-ED           NEPAL                          0                   1       78     98
0-24 months   MAL-ED           NEPAL                          1                   0        0     98
0-24 months   MAL-ED           NEPAL                          1                   1        0     98
0-24 months   MAL-ED           PERU                           0                   0        4     35
0-24 months   MAL-ED           PERU                           0                   1       23     35
0-24 months   MAL-ED           PERU                           1                   0        2     35
0-24 months   MAL-ED           PERU                           1                   1        6     35
0-24 months   MAL-ED           SOUTH AFRICA                   0                   0        8     87
0-24 months   MAL-ED           SOUTH AFRICA                   0                   1       35     87
0-24 months   MAL-ED           SOUTH AFRICA                   1                   0       10     87
0-24 months   MAL-ED           SOUTH AFRICA                   1                   1       34     87
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        8     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       38     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        1     51
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        4     51
0-24 months   PROBIT           BELARUS                        0                   0      501   4408
0-24 months   PROBIT           BELARUS                        0                   1     3704   4408
0-24 months   PROBIT           BELARUS                        1                   0       25   4408
0-24 months   PROBIT           BELARUS                        1                   1      178   4408
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      236    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      409    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       29    710
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    710
0-24 months   ZVITAMBO         ZIMBABWE                       0                   0     1524   3596
0-24 months   ZVITAMBO         ZIMBABWE                       0                   1     1808   3596
0-24 months   ZVITAMBO         ZIMBABWE                       1                   0      120   3596
0-24 months   ZVITAMBO         ZIMBABWE                       1                   1      144   3596
0-6 months    COHORTS          GUATEMALA                      0                   0       45    197
0-6 months    COHORTS          GUATEMALA                      0                   1      142    197
0-6 months    COHORTS          GUATEMALA                      1                   0        4    197
0-6 months    COHORTS          GUATEMALA                      1                   1        6    197
0-6 months    COHORTS          INDIA                          0                   0      830   1290
0-6 months    COHORTS          INDIA                          0                   1      459   1290
0-6 months    COHORTS          INDIA                          1                   0        0   1290
0-6 months    COHORTS          INDIA                          1                   1        1   1290
0-6 months    COHORTS          PHILIPPINES                    0                   0      186    737
0-6 months    COHORTS          PHILIPPINES                    0                   1      524    737
0-6 months    COHORTS          PHILIPPINES                    1                   0        9    737
0-6 months    COHORTS          PHILIPPINES                    1                   1       18    737
0-6 months    Guatemala BSC    GUATEMALA                      0                   0        3      9
0-6 months    Guatemala BSC    GUATEMALA                      0                   1        4      9
0-6 months    Guatemala BSC    GUATEMALA                      1                   0        2      9
0-6 months    Guatemala BSC    GUATEMALA                      1                   1        0      9
0-6 months    MAL-ED           BANGLADESH                     0                   0       13     63
0-6 months    MAL-ED           BANGLADESH                     0                   1       50     63
0-6 months    MAL-ED           BANGLADESH                     1                   0        0     63
0-6 months    MAL-ED           BANGLADESH                     1                   1        0     63
0-6 months    MAL-ED           BRAZIL                         0                   0        0     15
0-6 months    MAL-ED           BRAZIL                         0                   1       11     15
0-6 months    MAL-ED           BRAZIL                         1                   0        1     15
0-6 months    MAL-ED           BRAZIL                         1                   1        3     15
0-6 months    MAL-ED           INDIA                          0                   0       27     85
0-6 months    MAL-ED           INDIA                          0                   1       58     85
0-6 months    MAL-ED           INDIA                          1                   0        0     85
0-6 months    MAL-ED           INDIA                          1                   1        0     85
0-6 months    MAL-ED           NEPAL                          0                   0        9     48
0-6 months    MAL-ED           NEPAL                          0                   1       39     48
0-6 months    MAL-ED           NEPAL                          1                   0        0     48
0-6 months    MAL-ED           NEPAL                          1                   1        0     48
0-6 months    MAL-ED           PERU                           0                   0        0     11
0-6 months    MAL-ED           PERU                           0                   1        8     11
0-6 months    MAL-ED           PERU                           1                   0        0     11
0-6 months    MAL-ED           PERU                           1                   1        3     11
0-6 months    MAL-ED           SOUTH AFRICA                   0                   0        4     36
0-6 months    MAL-ED           SOUTH AFRICA                   0                   1       14     36
0-6 months    MAL-ED           SOUTH AFRICA                   1                   0        5     36
0-6 months    MAL-ED           SOUTH AFRICA                   1                   1       13     36
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        1     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       11     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     14
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     14
0-6 months    PROBIT           BELARUS                        0                   0      402   4267
0-6 months    PROBIT           BELARUS                        0                   1     3668   4267
0-6 months    PROBIT           BELARUS                        1                   0       21   4267
0-6 months    PROBIT           BELARUS                        1                   1      176   4267
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       88    338
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      218    338
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       12    338
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       20    338
0-6 months    ZVITAMBO         ZIMBABWE                       0                   0      586   2503
0-6 months    ZVITAMBO         ZIMBABWE                       0                   1     1738   2503
0-6 months    ZVITAMBO         ZIMBABWE                       1                   0       46   2503
0-6 months    ZVITAMBO         ZIMBABWE                       1                   1      133   2503
6-24 months   COHORTS          GUATEMALA                      0                   0      134    156
6-24 months   COHORTS          GUATEMALA                      0                   1        8    156
6-24 months   COHORTS          GUATEMALA                      1                   0       14    156
6-24 months   COHORTS          GUATEMALA                      1                   1        0    156
6-24 months   COHORTS          INDIA                          0                   0      669    672
6-24 months   COHORTS          INDIA                          0                   1        0    672
6-24 months   COHORTS          INDIA                          1                   0        3    672
6-24 months   COHORTS          INDIA                          1                   1        0    672
6-24 months   COHORTS          PHILIPPINES                    0                   0      442    924
6-24 months   COHORTS          PHILIPPINES                    0                   1      456    924
6-24 months   COHORTS          PHILIPPINES                    1                   0       19    924
6-24 months   COHORTS          PHILIPPINES                    1                   1        7    924
6-24 months   Guatemala BSC    GUATEMALA                      0                   0       15     28
6-24 months   Guatemala BSC    GUATEMALA                      0                   1       12     28
6-24 months   Guatemala BSC    GUATEMALA                      1                   0        0     28
6-24 months   Guatemala BSC    GUATEMALA                      1                   1        1     28
6-24 months   MAL-ED           BANGLADESH                     0                   0       31     61
6-24 months   MAL-ED           BANGLADESH                     0                   1       30     61
6-24 months   MAL-ED           BANGLADESH                     1                   0        0     61
6-24 months   MAL-ED           BANGLADESH                     1                   1        0     61
6-24 months   MAL-ED           BRAZIL                         0                   0        5      9
6-24 months   MAL-ED           BRAZIL                         0                   1        2      9
6-24 months   MAL-ED           BRAZIL                         1                   0        0      9
6-24 months   MAL-ED           BRAZIL                         1                   1        2      9
6-24 months   MAL-ED           INDIA                          0                   0       44     95
6-24 months   MAL-ED           INDIA                          0                   1       51     95
6-24 months   MAL-ED           INDIA                          1                   0        0     95
6-24 months   MAL-ED           INDIA                          1                   1        0     95
6-24 months   MAL-ED           NEPAL                          0                   0       11     50
6-24 months   MAL-ED           NEPAL                          0                   1       39     50
6-24 months   MAL-ED           NEPAL                          1                   0        0     50
6-24 months   MAL-ED           NEPAL                          1                   1        0     50
6-24 months   MAL-ED           PERU                           0                   0        4     24
6-24 months   MAL-ED           PERU                           0                   1       15     24
6-24 months   MAL-ED           PERU                           1                   0        2     24
6-24 months   MAL-ED           PERU                           1                   1        3     24
6-24 months   MAL-ED           SOUTH AFRICA                   0                   0        4     51
6-24 months   MAL-ED           SOUTH AFRICA                   0                   1       21     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                   0        5     51
6-24 months   MAL-ED           SOUTH AFRICA                   1                   1       21     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        7     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       27     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        1     37
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     37
6-24 months   PROBIT           BELARUS                        0                   0       99    141
6-24 months   PROBIT           BELARUS                        0                   1       36    141
6-24 months   PROBIT           BELARUS                        1                   0        4    141
6-24 months   PROBIT           BELARUS                        1                   1        2    141
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      148    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      191    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       17    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       16    372
6-24 months   ZVITAMBO         ZIMBABWE                       0                   0      938   1093
6-24 months   ZVITAMBO         ZIMBABWE                       0                   1       70   1093
6-24 months   ZVITAMBO         ZIMBABWE                       1                   0       74   1093
6-24 months   ZVITAMBO         ZIMBABWE                       1                   1       11   1093


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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/b46ef82d-91f0-49c3-93fd-b9e6c5d84b0f/83c7ee7d-d5c4-41ff-9312-d26a9c441062/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b46ef82d-91f0-49c3-93fd-b9e6c5d84b0f/83c7ee7d-d5c4-41ff-9312-d26a9c441062/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b46ef82d-91f0-49c3-93fd-b9e6c5d84b0f/83c7ee7d-d5c4-41ff-9312-d26a9c441062/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b46ef82d-91f0-49c3-93fd-b9e6c5d84b0f/83c7ee7d-d5c4-41ff-9312-d26a9c441062/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.4559271   0.4002153   0.5116388
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.2500000   0.0728958   0.4271042
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.6094527   0.5842542   0.6346513
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.4716981   0.3604061   0.5829901
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8139535   0.6823222   0.9455848
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7727273   0.6455316   0.8999229
0-24 months   PROBIT           BELARUS                        0                    NA                0.8808561   0.8711418   0.8905704
0-24 months   PROBIT           BELARUS                        1                    NA                0.8768473   0.8322187   0.9214758
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6341085   0.5947500   0.6734670
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5538462   0.4224385   0.6852538
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.5426170   0.5255459   0.5596882
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.5454545   0.4843323   0.6065768
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.7380282   0.7055710   0.7704853
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.6666667   0.4900832   0.8432501
0-6 months    PROBIT           BELARUS                        0                    NA                0.9012285   0.8920062   0.9104508
0-6 months    PROBIT           BELARUS                        1                    NA                0.8934010   0.8499162   0.9368858
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7124183   0.6609879   0.7638487
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6250000   0.4534564   0.7965436
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.7478485   0.7302129   0.7654842
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.7430168   0.6787333   0.8073002
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.5077951   0.4732557   0.5423345
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2692308   0.1105079   0.4279537
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5634218   0.5089777   0.6178660
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4848485   0.3004875   0.6692095
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0694444   0.0537898   0.0850991
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1294118   0.0593625   0.1994610


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4419263   0.3882796   0.4955731
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6050572   0.5803571   0.6297573
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7931034   0.7014938   0.8847131
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5428254   0.5263835   0.5592672
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7354138   0.7034648   0.7673628
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7041420   0.6547600   0.7535240
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475030   0.7304953   0.7645107
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5010823   0.4670433   0.5351212
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0741080   0.0586494   0.0895665


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      1                    0                 0.5483333   0.2671990   1.1252640
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 0.7739700   0.6091162   0.9834405
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 0.9493506   0.7536894   1.1958064
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        1                    0                 0.9954489   0.9449349   1.0486634
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8734249   0.6834759   1.1161636
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.0052293   0.8947823   1.1293093
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 0.9033079   0.6906013   1.1815285
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        1                    0                 0.9913146   0.9432153   1.0418668
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8772936   0.6605262   1.1651983
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 0.9935391   0.9083233   1.0867496
6-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                 0.5301957   0.2928894   0.9597734
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8605426   0.5812790   1.2739726
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.8635294   1.0367727   3.3495693


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0140007   -0.0277753   -0.0002261
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0043955   -0.0082996   -0.0004914
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0208500   -0.1134431    0.0717430
0-24 months   PROBIT           BELARUS                        0                    NA                -0.0001846   -0.0022880    0.0019188
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0073480   -0.0199549    0.0052590
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0002083   -0.0044509    0.0048675
0-6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0026143   -0.0092776    0.0040489
0-6 months    PROBIT           BELARUS                        0                    NA                -0.0003614   -0.0024146    0.0016918
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0082763   -0.0254616    0.0089090
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003455   -0.0051128    0.0044217
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0067128   -0.0124377   -0.0009880
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0069702   -0.0242145    0.0102740
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0046635   -0.0009906    0.0103176


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0316811   -0.0634737   -0.0008389
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0072647   -0.0137298   -0.0008408
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0262892   -0.1499083    0.0840405
0-24 months   PROBIT           BELARUS                        0                    NA                -0.0002096   -0.0026009    0.0021759
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0117237   -0.0320775    0.0082287
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0003838   -0.0082364    0.0089302
0-6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0035549   -0.0126621    0.0054704
0-6 months    PROBIT           BELARUS                        0                    NA                -0.0004011   -0.0026830    0.0018755
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0117537   -0.0365149    0.0124160
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0004623   -0.0068603    0.0058951
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0133967   -0.0249192   -0.0020037
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0125262   -0.0440634    0.0180584
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0629287   -0.0156718    0.1354464
