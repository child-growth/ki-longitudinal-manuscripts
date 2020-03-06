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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        single    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  -------  --------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                     0      582    1207
0-24 months   COHORTS          GUATEMALA                      0                     1      527    1207
0-24 months   COHORTS          GUATEMALA                      1                     0       43    1207
0-24 months   COHORTS          GUATEMALA                      1                     1       55    1207
0-24 months   COHORTS          INDIA                          0                     0     4639    5384
0-24 months   COHORTS          INDIA                          0                     1      736    5384
0-24 months   COHORTS          INDIA                          1                     0        7    5384
0-24 months   COHORTS          INDIA                          1                     1        2    5384
0-24 months   COHORTS          PHILIPPINES                    0                     0     1889    3018
0-24 months   COHORTS          PHILIPPINES                    0                     1     1054    3018
0-24 months   COHORTS          PHILIPPINES                    1                     0       50    3018
0-24 months   COHORTS          PHILIPPINES                    1                     1       25    3018
0-24 months   Guatemala BSC    GUATEMALA                      0                     0      207     282
0-24 months   Guatemala BSC    GUATEMALA                      0                     1       45     282
0-24 months   Guatemala BSC    GUATEMALA                      1                     0       22     282
0-24 months   Guatemala BSC    GUATEMALA                      1                     1        8     282
0-24 months   MAL-ED           BANGLADESH                     0                     0      207     265
0-24 months   MAL-ED           BANGLADESH                     0                     1       58     265
0-24 months   MAL-ED           BANGLADESH                     1                     0        0     265
0-24 months   MAL-ED           BANGLADESH                     1                     1        0     265
0-24 months   MAL-ED           BRAZIL                         0                     0      183     233
0-24 months   MAL-ED           BRAZIL                         0                     1       14     233
0-24 months   MAL-ED           BRAZIL                         1                     0       28     233
0-24 months   MAL-ED           BRAZIL                         1                     1        8     233
0-24 months   MAL-ED           INDIA                          0                     0      192     249
0-24 months   MAL-ED           INDIA                          0                     1       57     249
0-24 months   MAL-ED           INDIA                          1                     0        0     249
0-24 months   MAL-ED           INDIA                          1                     1        0     249
0-24 months   MAL-ED           NEPAL                          0                     0      219     240
0-24 months   MAL-ED           NEPAL                          0                     1       21     240
0-24 months   MAL-ED           NEPAL                          1                     0        0     240
0-24 months   MAL-ED           NEPAL                          1                     1        0     240
0-24 months   MAL-ED           PERU                           0                     0      214     303
0-24 months   MAL-ED           PERU                           0                     1       54     303
0-24 months   MAL-ED           PERU                           1                     0       25     303
0-24 months   MAL-ED           PERU                           1                     1       10     303
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0      138     314
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1       38     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0      103     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1       35     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      119     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1      133     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        6     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        4     262
0-24 months   PROBIT           BELARUS                        0                     0    15765   16897
0-24 months   PROBIT           BELARUS                        0                     1      439   16897
0-24 months   PROBIT           BELARUS                        1                     0      665   16897
0-24 months   PROBIT           BELARUS                        1                     1       28   16897
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     1933    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      218    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      205    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       19    2375
0-24 months   ZVITAMBO         ZIMBABWE                       0                     0    10952   14016
0-24 months   ZVITAMBO         ZIMBABWE                       0                     1     2175   14016
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0      709   14016
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      180   14016
0-6 months    COHORTS          GUATEMALA                      0                     0      816     974
0-6 months    COHORTS          GUATEMALA                      0                     1       89     974
0-6 months    COHORTS          GUATEMALA                      1                     0       57     974
0-6 months    COHORTS          GUATEMALA                      1                     1       12     974
0-6 months    COHORTS          INDIA                          0                     0     4942    5203
0-6 months    COHORTS          INDIA                          0                     1      253    5203
0-6 months    COHORTS          INDIA                          1                     0        8    5203
0-6 months    COHORTS          INDIA                          1                     1        0    5203
0-6 months    COHORTS          PHILIPPINES                    0                     0     2762    3018
0-6 months    COHORTS          PHILIPPINES                    0                     1      181    3018
0-6 months    COHORTS          PHILIPPINES                    1                     0       68    3018
0-6 months    COHORTS          PHILIPPINES                    1                     1        7    3018
0-6 months    Guatemala BSC    GUATEMALA                      0                     0      220     265
0-6 months    Guatemala BSC    GUATEMALA                      0                     1       18     265
0-6 months    Guatemala BSC    GUATEMALA                      1                     0       21     265
0-6 months    Guatemala BSC    GUATEMALA                      1                     1        6     265
0-6 months    MAL-ED           BANGLADESH                     0                     0      244     265
0-6 months    MAL-ED           BANGLADESH                     0                     1       21     265
0-6 months    MAL-ED           BANGLADESH                     1                     0        0     265
0-6 months    MAL-ED           BANGLADESH                     1                     1        0     265
0-6 months    MAL-ED           BRAZIL                         0                     0      186     233
0-6 months    MAL-ED           BRAZIL                         0                     1       11     233
0-6 months    MAL-ED           BRAZIL                         1                     0       30     233
0-6 months    MAL-ED           BRAZIL                         1                     1        6     233
0-6 months    MAL-ED           INDIA                          0                     0      230     249
0-6 months    MAL-ED           INDIA                          0                     1       19     249
0-6 months    MAL-ED           INDIA                          1                     0        0     249
0-6 months    MAL-ED           INDIA                          1                     1        0     249
0-6 months    MAL-ED           NEPAL                          0                     0      230     240
0-6 months    MAL-ED           NEPAL                          0                     1       10     240
0-6 months    MAL-ED           NEPAL                          1                     0        0     240
0-6 months    MAL-ED           NEPAL                          1                     1        0     240
0-6 months    MAL-ED           PERU                           0                     0      237     303
0-6 months    MAL-ED           PERU                           0                     1       31     303
0-6 months    MAL-ED           PERU                           1                     0       28     303
0-6 months    MAL-ED           PERU                           1                     1        7     303
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0      161     314
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1       15     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0      124     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1       14     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      215     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       37     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        9     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     262
0-6 months    PROBIT           BELARUS                        0                     0    16032   16892
0-6 months    PROBIT           BELARUS                        0                     1      167   16892
0-6 months    PROBIT           BELARUS                        1                     0      675   16892
0-6 months    PROBIT           BELARUS                        1                     1       18   16892
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2057    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       94    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      215    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        9    2375
0-6 months    ZVITAMBO         ZIMBABWE                       0                     0    11942   13999
0-6 months    ZVITAMBO         ZIMBABWE                       0                     1     1170   13999
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0      780   13999
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      107   13999


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/2d95a659-4634-4e2e-b149-c48b5837cbe9/45ed8685-e267-48bf-8970-57eab5bba49e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d95a659-4634-4e2e-b149-c48b5837cbe9/45ed8685-e267-48bf-8970-57eab5bba49e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d95a659-4634-4e2e-b149-c48b5837cbe9/45ed8685-e267-48bf-8970-57eab5bba49e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d95a659-4634-4e2e-b149-c48b5837cbe9/45ed8685-e267-48bf-8970-57eab5bba49e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.4752029   0.4457995   0.5046063
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.5612245   0.4629356   0.6595134
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.3581380   0.3408104   0.3754655
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.3333333   0.2272651   0.4394015
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.1785714   0.1312007   0.2259422
0-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.2666667   0.1081431   0.4251903
0-24 months   MAL-ED           BRAZIL                         0                    NA                0.0710660   0.0351099   0.1070221
0-24 months   MAL-ED           BRAZIL                         1                    NA                0.2222222   0.0861240   0.3583204
0-24 months   MAL-ED           PERU                           0                    NA                0.2014925   0.1533901   0.2495950
0-24 months   MAL-ED           PERU                           1                    NA                0.2857143   0.1358032   0.4356254
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.2159091   0.1550251   0.2767931
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2536232   0.1809164   0.3263299
0-24 months   PROBIT           BELARUS                        0                    NA                0.0270921   0.0195793   0.0346049
0-24 months   PROBIT           BELARUS                        1                    NA                0.0404040   0.0246121   0.0561960
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1013482   0.0885920   0.1141045
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0848214   0.0483274   0.1213154
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1656890   0.1593285   0.1720495
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2024747   0.1760585   0.2288909
0-6 months    COHORTS          GUATEMALA                      0                    NA                0.0983425   0.0789320   0.1177531
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.1739130   0.0844331   0.2633930
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0615019   0.0528192   0.0701845
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0933333   0.0278797   0.1587870
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                0.0756303   0.0419751   0.1092854
0-6 months    Guatemala BSC    GUATEMALA                      1                    NA                0.2222222   0.0651105   0.3793340
0-6 months    MAL-ED           BRAZIL                         0                    NA                0.0558376   0.0237057   0.0879694
0-6 months    MAL-ED           BRAZIL                         1                    NA                0.1666667   0.0446653   0.2886680
0-6 months    MAL-ED           PERU                           0                    NA                0.1156716   0.0773169   0.1540264
0-6 months    MAL-ED           PERU                           1                    NA                0.2000000   0.0672630   0.3327370
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.0852273   0.0439101   0.1265444
0-6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.1014493   0.0509951   0.1519034
0-6 months    PROBIT           BELARUS                        0                    NA                0.0103093   0.0068864   0.0137322
0-6 months    PROBIT           BELARUS                        1                    NA                0.0259740   0.0114705   0.0404775
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0437006   0.0350597   0.0523415
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0401786   0.0144564   0.0659008
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0892312   0.0843516   0.0941109
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1206313   0.0991966   0.1420660


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4821872   0.4539860   0.5103885
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3575215   0.3404198   0.3746233
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422658   0.2336207
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.0944206   0.0567935   0.1320477
0-24 months   MAL-ED           PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0276380   0.0201988   0.0350773
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997895   0.0877329   0.1118460
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1680223   0.1618323   0.1742123
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1036961   0.0845403   0.1228519
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0622929   0.0536688   0.0709170
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.0905660   0.0559470   0.1251850
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.0729614   0.0394957   0.1064270
0-6 months    MAL-ED           PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0109519   0.0074064   0.0144975
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0433684   0.0351750   0.0515619
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912208   0.0864511   0.0959905


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      1                    0                 1.1810208   0.9808233   1.422081
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 0.9307400   0.6745988   1.284137
0-24 months   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      1                    0                 1.4933333   0.7788347   2.863309
0-24 months   MAL-ED           BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         1                    0                 3.1269841   1.4129327   6.920379
0-24 months   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           1                    0                 1.4179894   0.7967560   2.523601
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.1746758   0.7857428   1.756126
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        1                    0                 1.4913601   1.0044969   2.214198
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8369307   0.5345706   1.310310
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2220162   1.0666310   1.400038
0-6 months    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      1                    0                 1.7684416   1.0192112   3.068437
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 1.5175691   0.7421172   3.103305
0-6 months    Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    Guatemala BSC    GUATEMALA                      1                    0                 2.9382716   1.2743457   6.774802
0-6 months    MAL-ED           BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BRAZIL                         1                    0                 2.9848485   1.1763672   7.573588
0-6 months    MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           1                    0                 1.7290323   0.8233744   3.630854
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0                 1.1903382   0.5943516   2.383951
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        1                    0                 2.5194805   1.4804517   4.287733
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9194054   0.4704504   1.796802
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.3518959   1.1225417   1.628111


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0069844   -0.0014503   0.0154191
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0006164   -0.0033068   0.0020740
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0093718   -0.0085135   0.0272571
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0233546    0.0004972   0.0462121
0-24 months   MAL-ED           PERU                           0                    NA                 0.0097286   -0.0087092   0.0281664
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0165750   -0.0251544   0.0583044
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0005460   -0.0000956   0.0011875
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0015587   -0.0052101   0.0020926
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0023332    0.0006034   0.0040630
0-6 months    COHORTS          GUATEMALA                      0                    NA                 0.0053536   -0.0012462   0.0119533
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0007910   -0.0008691   0.0024512
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0149358   -0.0022867   0.0321583
0-6 months    MAL-ED           BRAZIL                         0                    NA                 0.0171238   -0.0030390   0.0372866
0-6 months    MAL-ED           PERU                           0                    NA                 0.0097409   -0.0065060   0.0259878
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0071294   -0.0215449   0.0358038
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0006427    0.0000965   0.0011888
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003322   -0.0028918   0.0022274
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019896    0.0005909   0.0033882


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0144847   -0.0031815   0.0318398
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0017241   -0.0092775   0.0057727
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0498652   -0.0497480   0.1400259
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.2473466   -0.0142644   0.4414798
0-24 months   MAL-ED           PERU                           0                    NA                 0.0460588   -0.0450413   0.1292173
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0712951   -0.1264129   0.2343015
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0197542   -0.0047297   0.0436414
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0156202   -0.0528387   0.0202825
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0138864    0.0035453   0.0241202
0-6 months    COHORTS          GUATEMALA                      0                    NA                 0.0516274   -0.0136032   0.1126600
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0126987   -0.0142640   0.0389447
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.1649160   -0.0375013   0.3278415
0-6 months    MAL-ED           BRAZIL                         0                    NA                 0.2346969   -0.0710660   0.4531721
0-6 months    MAL-ED           PERU                           0                    NA                 0.0776709   -0.0596587   0.1972028
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0771944   -0.2905761   0.3401627
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0586793    0.0096570   0.1052750
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0076596   -0.0684244   0.0496494
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0218104    0.0063918   0.0369897
