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

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
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
0-24 months   JiVitA-4         BANGLADESH                     0                   0     1529   2062
0-24 months   JiVitA-4         BANGLADESH                     0                   1      532   2062
0-24 months   JiVitA-4         BANGLADESH                     1                   0        1   2062
0-24 months   JiVitA-4         BANGLADESH                     1                   1        0   2062
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
0-6 months    JiVitA-4         BANGLADESH                     0                   0      242    548
0-6 months    JiVitA-4         BANGLADESH                     0                   1      306    548
0-6 months    JiVitA-4         BANGLADESH                     1                   0        0    548
0-6 months    JiVitA-4         BANGLADESH                     1                   1        0    548
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
6-24 months   JiVitA-4         BANGLADESH                     0                   0     1287   1514
6-24 months   JiVitA-4         BANGLADESH                     0                   1      226   1514
6-24 months   JiVitA-4         BANGLADESH                     1                   0        1   1514
6-24 months   JiVitA-4         BANGLADESH                     1                   1        0   1514
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
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/fc5da71d-4ef6-430e-8199-31632f36d9f2/f72e70c9-0dc2-47c5-87de-23dfcdc936e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc5da71d-4ef6-430e-8199-31632f36d9f2/f72e70c9-0dc2-47c5-87de-23dfcdc936e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc5da71d-4ef6-430e-8199-31632f36d9f2/f72e70c9-0dc2-47c5-87de-23dfcdc936e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc5da71d-4ef6-430e-8199-31632f36d9f2/f72e70c9-0dc2-47c5-87de-23dfcdc936e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.4559271   0.4002153   0.5116388
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.2500000   0.0728958   0.4271042
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.6091552   0.5838268   0.6344836
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.4874738   0.3583050   0.6166427
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8139535   0.6823222   0.9455848
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7727273   0.6455316   0.8999229
0-24 months   PROBIT           BELARUS                        0                    NA                0.8808777   0.8711653   0.8905901
0-24 months   PROBIT           BELARUS                        1                    NA                0.8738648   0.8279492   0.9197804
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6346643   0.5952790   0.6740496
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5498254   0.4135094   0.6861413
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.5415913   0.5245380   0.5586445
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.5475214   0.4785281   0.6165147
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.7380282   0.7055710   0.7704853
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.6666667   0.4900832   0.8432501
0-6 months    PROBIT           BELARUS                        0                    NA                0.9013165   0.8920966   0.9105363
0-6 months    PROBIT           BELARUS                        1                    NA                0.8921813   0.8487527   0.9356099
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7130861   0.6615624   0.7646098
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6317858   0.4562042   0.8073674
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.7465604   0.7290188   0.7641020
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.7596036   0.6979767   0.8212306
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.5077951   0.4732557   0.5423345
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2692308   0.1105079   0.4279537
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5635472   0.5090381   0.6180563
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4939294   0.2966967   0.6911622
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0695548   0.0538912   0.0852185
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1222582   0.0501719   0.1943445


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
0-24 months   COHORTS          PHILIPPINES                    1                    0                 0.8002457   0.6119864   1.0464174
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 0.9493506   0.7536894   1.1958064
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        1                    0                 0.9920388   0.9401886   1.0467484
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8663247   0.6709668   1.1185627
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.0109495   0.8880508   1.1508563
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 0.9033079   0.6906013   1.1815285
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        1                    0                 0.9898646   0.9418476   1.0403297
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8859880   0.6646493   1.1810362
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.0174711   0.9358239   1.1062418
6-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                 0.5301957   0.2928894   0.9597734
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8764651   0.5812984   1.3215088
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.7577238   0.9349594   3.3045210


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0140007   -0.0277753   -0.0002261
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0040980   -0.0081579   -0.0000381
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0208500   -0.1134431    0.0717430
0-24 months   PROBIT           BELARUS                        0                    NA                -0.0002062   -0.0023100    0.0018976
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0079037   -0.0205086    0.0047011
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012341   -0.0035475    0.0060157
0-6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0026143   -0.0092776    0.0040489
0-6 months    PROBIT           BELARUS                        0                    NA                -0.0004493   -0.0024935    0.0015948
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0089441   -0.0263529    0.0084647
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0009426   -0.0035241    0.0054094
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0067128   -0.0124377   -0.0009880
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070956   -0.0245370    0.0103458
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0045531   -0.0011041    0.0102103


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0316811   -0.0634737   -0.0008389
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0067729   -0.0134903   -0.0001001
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0262892   -0.1499083    0.0840405
0-24 months   PROBIT           BELARUS                        0                    NA                -0.0002341   -0.0026258    0.0021519
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0126105   -0.0329629    0.0073409
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022735   -0.0065735    0.0110427
0-6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0035549   -0.0126621    0.0054704
0-6 months    PROBIT           BELARUS                        0                    NA                -0.0004988   -0.0027705    0.0017678
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0127021   -0.0377923    0.0117814
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012610   -0.0047322    0.0072185
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0133967   -0.0249192   -0.0020037
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0127515   -0.0446547    0.0181774
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0614390   -0.0172145    0.1340108
