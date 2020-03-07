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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country                        impsan    ever_co   n_cell       n
------------  -----------  -----------------------------  -------  --------  -------  ------
0-24 months   COHORTS      GUATEMALA                      1               0       76     875
0-24 months   COHORTS      GUATEMALA                      1               1        6     875
0-24 months   COHORTS      GUATEMALA                      0               0      677     875
0-24 months   COHORTS      GUATEMALA                      0               1      116     875
0-24 months   COHORTS      INDIA                          1               0     1908    5372
0-24 months   COHORTS      INDIA                          1               1      106    5372
0-24 months   COHORTS      INDIA                          0               0     2937    5372
0-24 months   COHORTS      INDIA                          0               1      421    5372
0-24 months   COHORTS      PHILIPPINES                    1               0      168    1191
0-24 months   COHORTS      PHILIPPINES                    1               1       11    1191
0-24 months   COHORTS      PHILIPPINES                    0               0      778    1191
0-24 months   COHORTS      PHILIPPINES                    0               1      234    1191
0-24 months   CONTENT      PERU                           1               0      201     215
0-24 months   CONTENT      PERU                           1               1        0     215
0-24 months   CONTENT      PERU                           0               0       14     215
0-24 months   CONTENT      PERU                           0               1        0     215
0-24 months   JiVitA-3     BANGLADESH                     1               0    17250   26894
0-24 months   JiVitA-3     BANGLADESH                     1               1     1490   26894
0-24 months   JiVitA-3     BANGLADESH                     0               0     7255   26894
0-24 months   JiVitA-3     BANGLADESH                     0               1      899   26894
0-24 months   JiVitA-4     BANGLADESH                     1               0     3557    5426
0-24 months   JiVitA-4     BANGLADESH                     1               1      631    5426
0-24 months   JiVitA-4     BANGLADESH                     0               0      993    5426
0-24 months   JiVitA-4     BANGLADESH                     0               1      245    5426
0-24 months   LCNI-5       MALAWI                         1               0        3     813
0-24 months   LCNI-5       MALAWI                         1               1        0     813
0-24 months   LCNI-5       MALAWI                         0               0      768     813
0-24 months   LCNI-5       MALAWI                         0               1       42     813
0-24 months   MAL-ED       BANGLADESH                     1               0      171     242
0-24 months   MAL-ED       BANGLADESH                     1               1       33     242
0-24 months   MAL-ED       BANGLADESH                     0               0       32     242
0-24 months   MAL-ED       BANGLADESH                     0               1        6     242
0-24 months   MAL-ED       BRAZIL                         1               0      203     210
0-24 months   MAL-ED       BRAZIL                         1               1        3     210
0-24 months   MAL-ED       BRAZIL                         0               0        4     210
0-24 months   MAL-ED       BRAZIL                         0               1        0     210
0-24 months   MAL-ED       INDIA                          1               0       93     233
0-24 months   MAL-ED       INDIA                          1               1       15     233
0-24 months   MAL-ED       INDIA                          0               0       89     233
0-24 months   MAL-ED       INDIA                          0               1       36     233
0-24 months   MAL-ED       NEPAL                          1               0      213     236
0-24 months   MAL-ED       NEPAL                          1               1       22     236
0-24 months   MAL-ED       NEPAL                          0               0        1     236
0-24 months   MAL-ED       NEPAL                          0               1        0     236
0-24 months   MAL-ED       PERU                           1               0       60     263
0-24 months   MAL-ED       PERU                           1               1        5     263
0-24 months   MAL-ED       PERU                           0               0      192     263
0-24 months   MAL-ED       PERU                           0               1        6     263
0-24 months   MAL-ED       SOUTH AFRICA                   1               0        3     250
0-24 months   MAL-ED       SOUTH AFRICA                   1               1        1     250
0-24 months   MAL-ED       SOUTH AFRICA                   0               0      226     250
0-24 months   MAL-ED       SOUTH AFRICA                   0               1       20     250
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     241
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     241
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      218     241
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       23     241
0-24 months   NIH-Birth    BANGLADESH                     1               0      196     624
0-24 months   NIH-Birth    BANGLADESH                     1               1       46     624
0-24 months   NIH-Birth    BANGLADESH                     0               0      291     624
0-24 months   NIH-Birth    BANGLADESH                     0               1       91     624
0-24 months   NIH-Crypto   BANGLADESH                     1               0      595     747
0-24 months   NIH-Crypto   BANGLADESH                     1               1       60     747
0-24 months   NIH-Crypto   BANGLADESH                     0               0       82     747
0-24 months   NIH-Crypto   BANGLADESH                     0               1       10     747
0-24 months   PROVIDE      BANGLADESH                     1               0       57      60
0-24 months   PROVIDE      BANGLADESH                     1               1        1      60
0-24 months   PROVIDE      BANGLADESH                     0               0        2      60
0-24 months   PROVIDE      BANGLADESH                     0               1        0      60
0-6 months    COHORTS      GUATEMALA                      1               0       67     667
0-6 months    COHORTS      GUATEMALA                      1               1        1     667
0-6 months    COHORTS      GUATEMALA                      0               0      587     667
0-6 months    COHORTS      GUATEMALA                      0               1       12     667
0-6 months    COHORTS      INDIA                          1               0     1893    5167
0-6 months    COHORTS      INDIA                          1               1       26    5167
0-6 months    COHORTS      INDIA                          0               0     3133    5167
0-6 months    COHORTS      INDIA                          0               1      115    5167
0-6 months    COHORTS      PHILIPPINES                    1               0      179    1191
0-6 months    COHORTS      PHILIPPINES                    1               1        0    1191
0-6 months    COHORTS      PHILIPPINES                    0               0      989    1191
0-6 months    COHORTS      PHILIPPINES                    0               1       23    1191
0-6 months    CONTENT      PERU                           1               0      201     215
0-6 months    CONTENT      PERU                           1               1        0     215
0-6 months    CONTENT      PERU                           0               0       14     215
0-6 months    CONTENT      PERU                           0               1        0     215
0-6 months    JiVitA-3     BANGLADESH                     1               0    18009   26787
0-6 months    JiVitA-3     BANGLADESH                     1               1      656   26787
0-6 months    JiVitA-3     BANGLADESH                     0               0     7716   26787
0-6 months    JiVitA-3     BANGLADESH                     0               1      406   26787
0-6 months    JiVitA-4     BANGLADESH                     1               0     3840    5079
0-6 months    JiVitA-4     BANGLADESH                     1               1       91    5079
0-6 months    JiVitA-4     BANGLADESH                     0               0     1105    5079
0-6 months    JiVitA-4     BANGLADESH                     0               1       43    5079
0-6 months    LCNI-5       MALAWI                         1               0        0     269
0-6 months    LCNI-5       MALAWI                         1               1        0     269
0-6 months    LCNI-5       MALAWI                         0               0      269     269
0-6 months    LCNI-5       MALAWI                         0               1        0     269
0-6 months    MAL-ED       BANGLADESH                     1               0      196     242
0-6 months    MAL-ED       BANGLADESH                     1               1        8     242
0-6 months    MAL-ED       BANGLADESH                     0               0       37     242
0-6 months    MAL-ED       BANGLADESH                     0               1        1     242
0-6 months    MAL-ED       BRAZIL                         1               0      205     210
0-6 months    MAL-ED       BRAZIL                         1               1        1     210
0-6 months    MAL-ED       BRAZIL                         0               0        4     210
0-6 months    MAL-ED       BRAZIL                         0               1        0     210
0-6 months    MAL-ED       INDIA                          1               0      102     233
0-6 months    MAL-ED       INDIA                          1               1        6     233
0-6 months    MAL-ED       INDIA                          0               0      114     233
0-6 months    MAL-ED       INDIA                          0               1       11     233
0-6 months    MAL-ED       NEPAL                          1               0      227     236
0-6 months    MAL-ED       NEPAL                          1               1        8     236
0-6 months    MAL-ED       NEPAL                          0               0        1     236
0-6 months    MAL-ED       NEPAL                          0               1        0     236
0-6 months    MAL-ED       PERU                           1               0       65     263
0-6 months    MAL-ED       PERU                           1               1        0     263
0-6 months    MAL-ED       PERU                           0               0      197     263
0-6 months    MAL-ED       PERU                           0               1        1     263
0-6 months    MAL-ED       SOUTH AFRICA                   1               0        4     250
0-6 months    MAL-ED       SOUTH AFRICA                   1               1        0     250
0-6 months    MAL-ED       SOUTH AFRICA                   0               0      243     250
0-6 months    MAL-ED       SOUTH AFRICA                   0               1        3     250
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     241
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     241
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      237     241
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        4     241
0-6 months    NIH-Birth    BANGLADESH                     1               0      222     622
0-6 months    NIH-Birth    BANGLADESH                     1               1       20     622
0-6 months    NIH-Birth    BANGLADESH                     0               0      355     622
0-6 months    NIH-Birth    BANGLADESH                     0               1       25     622
0-6 months    NIH-Crypto   BANGLADESH                     1               0      641     747
0-6 months    NIH-Crypto   BANGLADESH                     1               1       14     747
0-6 months    NIH-Crypto   BANGLADESH                     0               0       89     747
0-6 months    NIH-Crypto   BANGLADESH                     0               1        3     747
0-6 months    PROVIDE      BANGLADESH                     1               0       58      60
0-6 months    PROVIDE      BANGLADESH                     1               1        0      60
0-6 months    PROVIDE      BANGLADESH                     0               0        2      60
0-6 months    PROVIDE      BANGLADESH                     0               1        0      60
6-24 months   COHORTS      GUATEMALA                      1               0       75     857
6-24 months   COHORTS      GUATEMALA                      1               1        5     857
6-24 months   COHORTS      GUATEMALA                      0               0      668     857
6-24 months   COHORTS      GUATEMALA                      0               1      109     857
6-24 months   COHORTS      INDIA                          1               0     1811    5023
6-24 months   COHORTS      INDIA                          1               1       92    5023
6-24 months   COHORTS      INDIA                          0               0     2745    5023
6-24 months   COHORTS      INDIA                          0               1      375    5023
6-24 months   COHORTS      PHILIPPINES                    1               0      136    1113
6-24 months   COHORTS      PHILIPPINES                    1               1       11    1113
6-24 months   COHORTS      PHILIPPINES                    0               0      739    1113
6-24 months   COHORTS      PHILIPPINES                    0               1      227    1113
6-24 months   CONTENT      PERU                           1               0      201     215
6-24 months   CONTENT      PERU                           1               1        0     215
6-24 months   CONTENT      PERU                           0               0       14     215
6-24 months   CONTENT      PERU                           0               1        0     215
6-24 months   JiVitA-3     BANGLADESH                     1               0    11438   17268
6-24 months   JiVitA-3     BANGLADESH                     1               1      925   17268
6-24 months   JiVitA-3     BANGLADESH                     0               0     4331   17268
6-24 months   JiVitA-3     BANGLADESH                     0               1      574   17268
6-24 months   JiVitA-4     BANGLADESH                     1               0     3608    5422
6-24 months   JiVitA-4     BANGLADESH                     1               1      578    5422
6-24 months   JiVitA-4     BANGLADESH                     0               0     1013    5422
6-24 months   JiVitA-4     BANGLADESH                     0               1      223    5422
6-24 months   LCNI-5       MALAWI                         1               0        3     801
6-24 months   LCNI-5       MALAWI                         1               1        0     801
6-24 months   LCNI-5       MALAWI                         0               0      756     801
6-24 months   LCNI-5       MALAWI                         0               1       42     801
6-24 months   MAL-ED       BANGLADESH                     1               0      171     239
6-24 months   MAL-ED       BANGLADESH                     1               1       30     239
6-24 months   MAL-ED       BANGLADESH                     0               0       33     239
6-24 months   MAL-ED       BANGLADESH                     0               1        5     239
6-24 months   MAL-ED       BRAZIL                         1               0      201     207
6-24 months   MAL-ED       BRAZIL                         1               1        2     207
6-24 months   MAL-ED       BRAZIL                         0               0        4     207
6-24 months   MAL-ED       BRAZIL                         0               1        0     207
6-24 months   MAL-ED       INDIA                          1               0       95     233
6-24 months   MAL-ED       INDIA                          1               1       13     233
6-24 months   MAL-ED       INDIA                          0               0       93     233
6-24 months   MAL-ED       INDIA                          0               1       32     233
6-24 months   MAL-ED       NEPAL                          1               0      218     235
6-24 months   MAL-ED       NEPAL                          1               1       16     235
6-24 months   MAL-ED       NEPAL                          0               0        1     235
6-24 months   MAL-ED       NEPAL                          0               1        0     235
6-24 months   MAL-ED       PERU                           1               0       60     263
6-24 months   MAL-ED       PERU                           1               1        5     263
6-24 months   MAL-ED       PERU                           0               0      192     263
6-24 months   MAL-ED       PERU                           0               1        6     263
6-24 months   MAL-ED       SOUTH AFRICA                   1               0        3     250
6-24 months   MAL-ED       SOUTH AFRICA                   1               1        1     250
6-24 months   MAL-ED       SOUTH AFRICA                   0               0      227     250
6-24 months   MAL-ED       SOUTH AFRICA                   0               1       19     250
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     237
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     237
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      216     237
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1       21     237
6-24 months   NIH-Birth    BANGLADESH                     1               0      173     542
6-24 months   NIH-Birth    BANGLADESH                     1               1       35     542
6-24 months   NIH-Birth    BANGLADESH                     0               0      255     542
6-24 months   NIH-Birth    BANGLADESH                     0               1       79     542
6-24 months   NIH-Crypto   BANGLADESH                     1               0      578     719
6-24 months   NIH-Crypto   BANGLADESH                     1               1       52     719
6-24 months   NIH-Crypto   BANGLADESH                     0               0       79     719
6-24 months   NIH-Crypto   BANGLADESH                     0               1       10     719
6-24 months   PROVIDE      BANGLADESH                     1               0        9      10
6-24 months   PROVIDE      BANGLADESH                     1               1        1      10
6-24 months   PROVIDE      BANGLADESH                     0               0        0      10
6-24 months   PROVIDE      BANGLADESH                     0               1        0      10


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/17f77464-0905-44b7-8d93-875df2b549e1/fa098af5-e0af-4114-a6b8-f84572dcee40/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/17f77464-0905-44b7-8d93-875df2b549e1/fa098af5-e0af-4114-a6b8-f84572dcee40/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/17f77464-0905-44b7-8d93-875df2b549e1/fa098af5-e0af-4114-a6b8-f84572dcee40/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/17f77464-0905-44b7-8d93-875df2b549e1/fa098af5-e0af-4114-a6b8-f84572dcee40/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    NA                0.0731707   0.0167735   0.1295680
0-24 months   COHORTS      GUATEMALA     0                    NA                0.1462799   0.1216700   0.1708899
0-24 months   COHORTS      INDIA         1                    NA                0.0526316   0.0428785   0.0623847
0-24 months   COHORTS      INDIA         0                    NA                0.1253722   0.1141711   0.1365733
0-24 months   COHORTS      PHILIPPINES   1                    NA                0.0614525   0.0262558   0.0966492
0-24 months   COHORTS      PHILIPPINES   0                    NA                0.2312253   0.2052382   0.2572124
0-24 months   JiVitA-3     BANGLADESH    1                    NA                0.0795091   0.0750203   0.0839978
0-24 months   JiVitA-3     BANGLADESH    0                    NA                0.1102526   0.1034198   0.1170854
0-24 months   JiVitA-4     BANGLADESH    1                    NA                0.1506686   0.1382279   0.1631092
0-24 months   JiVitA-4     BANGLADESH    0                    NA                0.1978998   0.1736297   0.2221700
0-24 months   MAL-ED       BANGLADESH    1                    NA                0.1617647   0.1111290   0.2124004
0-24 months   MAL-ED       BANGLADESH    0                    NA                0.1578947   0.0417171   0.2740724
0-24 months   MAL-ED       INDIA         1                    NA                0.1388889   0.0735257   0.2042521
0-24 months   MAL-ED       INDIA         0                    NA                0.2880000   0.2084458   0.3675542
0-24 months   MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
0-24 months   MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
0-24 months   NIH-Birth    BANGLADESH    1                    NA                0.1900826   0.1406083   0.2395570
0-24 months   NIH-Birth    BANGLADESH    0                    NA                0.2382199   0.1954667   0.2809731
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                0.0916031   0.0694970   0.1137091
0-24 months   NIH-Crypto   BANGLADESH    0                    NA                0.1086957   0.0450507   0.1723406
0-6 months    COHORTS      INDIA         1                    NA                0.0135487   0.0083758   0.0187217
0-6 months    COHORTS      INDIA         0                    NA                0.0354064   0.0290502   0.0417626
0-6 months    JiVitA-3     BANGLADESH    1                    NA                0.0351460   0.0321378   0.0381542
0-6 months    JiVitA-3     BANGLADESH    0                    NA                0.0499877   0.0454039   0.0545714
0-6 months    JiVitA-4     BANGLADESH    1                    NA                0.0231493   0.0176971   0.0286015
0-6 months    JiVitA-4     BANGLADESH    0                    NA                0.0374564   0.0232045   0.0517084
0-6 months    MAL-ED       INDIA         1                    NA                0.0555556   0.0122621   0.0988490
0-6 months    MAL-ED       INDIA         0                    NA                0.0880000   0.0382302   0.1377698
0-6 months    NIH-Birth    BANGLADESH    1                    NA                0.0826446   0.0479257   0.1173635
0-6 months    NIH-Birth    BANGLADESH    0                    NA                0.0657895   0.0408432   0.0907358
6-24 months   COHORTS      GUATEMALA     1                    NA                0.0625000   0.0094259   0.1155741
6-24 months   COHORTS      GUATEMALA     0                    NA                0.1402831   0.1158504   0.1647158
6-24 months   COHORTS      INDIA         1                    NA                0.0483447   0.0387067   0.0579827
6-24 months   COHORTS      INDIA         0                    NA                0.1201923   0.1087807   0.1316039
6-24 months   COHORTS      PHILIPPINES   1                    NA                0.0748299   0.0322766   0.1173832
6-24 months   COHORTS      PHILIPPINES   0                    NA                0.2349896   0.2082403   0.2617390
6-24 months   JiVitA-3     BANGLADESH    1                    NA                0.0748200   0.0697099   0.0799302
6-24 months   JiVitA-3     BANGLADESH    0                    NA                0.1170234   0.1076693   0.1263776
6-24 months   JiVitA-4     BANGLADESH    1                    NA                0.1380793   0.1262484   0.1499103
6-24 months   JiVitA-4     BANGLADESH    0                    NA                0.1804207   0.1578939   0.2029475
6-24 months   MAL-ED       BANGLADESH    1                    NA                0.1492537   0.0998883   0.1986192
6-24 months   MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238766   0.2392813
6-24 months   MAL-ED       INDIA         1                    NA                0.1203704   0.0588697   0.1818710
6-24 months   MAL-ED       INDIA         0                    NA                0.2560000   0.1793286   0.3326714
6-24 months   MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months   MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
6-24 months   NIH-Birth    BANGLADESH    1                    NA                0.1682692   0.1173817   0.2191567
6-24 months   NIH-Birth    BANGLADESH    0                    NA                0.2365269   0.1909114   0.2821425
6-24 months   NIH-Crypto   BANGLADESH    1                    NA                0.0825397   0.0610364   0.1040430
6-24 months   NIH-Crypto   BANGLADESH    0                    NA                0.1123596   0.0467029   0.1780162


### Parameter: E(Y)


agecat        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      GUATEMALA     NA                   NA                0.1394286   0.1164638   0.1623933
0-24 months   COHORTS      INDIA         NA                   NA                0.0981013   0.0901463   0.1060562
0-24 months   COHORTS      PHILIPPINES   NA                   NA                0.2057095   0.1827432   0.2286758
0-24 months   JiVitA-3     BANGLADESH    NA                   NA                0.0888302   0.0849233   0.0927371
0-24 months   JiVitA-4     BANGLADESH    NA                   NA                0.1614449   0.1501252   0.1727646
0-24 months   MAL-ED       BANGLADESH    NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   MAL-ED       INDIA         NA                   NA                0.2188841   0.1656771   0.2720911
0-24 months   MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
0-24 months   NIH-Birth    BANGLADESH    NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto   BANGLADESH    NA                   NA                0.0937082   0.0727959   0.1146204
0-6 months    COHORTS      INDIA         NA                   NA                0.0272886   0.0228458   0.0317313
0-6 months    JiVitA-3     BANGLADESH    NA                   NA                0.0396461   0.0371429   0.0421492
0-6 months    JiVitA-4     BANGLADESH    NA                   NA                0.0263831   0.0210411   0.0317252
0-6 months    MAL-ED       INDIA         NA                   NA                0.0729614   0.0394957   0.1064270
0-6 months    NIH-Birth    BANGLADESH    NA                   NA                0.0723473   0.0519719   0.0927227
6-24 months   COHORTS      GUATEMALA     NA                   NA                0.1330222   0.1102724   0.1557720
6-24 months   COHORTS      INDIA         NA                   NA                0.0929723   0.0849408   0.1010038
6-24 months   COHORTS      PHILIPPINES   NA                   NA                0.2138365   0.1897378   0.2379351
6-24 months   JiVitA-3     BANGLADESH    NA                   NA                0.0868080   0.0821493   0.0914667
6-24 months   JiVitA-4     BANGLADESH    NA                   NA                0.1477315   0.1371478   0.1583151
6-24 months   MAL-ED       BANGLADESH    NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   MAL-ED       INDIA         NA                   NA                0.1931330   0.1423366   0.2439295
6-24 months   MAL-ED       PERU          NA                   NA                0.0418251   0.0175848   0.0660654
6-24 months   NIH-Birth    BANGLADESH    NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto   BANGLADESH    NA                   NA                0.0862309   0.0656987   0.1067631


### Parameter: RR


agecat        studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS      GUATEMALA     0                    1                 1.9991593   0.9082974   4.400142
0-24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS      INDIA         0                    1                 2.3820727   1.9391496   2.926164
0-24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS      PHILIPPINES   0                    1                 3.7626662   2.0989953   6.744968
0-24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH    0                    1                 1.3866674   1.2790147   1.503381
0-24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH    0                    1                 1.3134779   1.1353822   1.519510
0-24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       BANGLADESH    0                    1                 0.9760766   0.4387519   2.171445
0-24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       INDIA         0                    1                 2.0736000   1.2015260   3.578630
0-24 months   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
0-24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH    0                    1                 1.2532438   0.9135476   1.719254
0-24 months   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH    0                    1                 1.1865942   0.6298791   2.235359
0-6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS      INDIA         0                    1                 2.6132650   1.7137726   3.984866
0-6 months    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH    0                    1                 1.4222869   1.2534361   1.613884
0-6 months    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH    0                    1                 1.6180361   1.0359720   2.527135
0-6 months    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED       INDIA         0                    1                 1.5840000   0.6047559   4.148874
0-6 months    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH    0                    1                 0.7960526   0.4520294   1.401900
6-24 months   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS      GUATEMALA     0                    1                 2.2445302   0.9433052   5.340706
6-24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS      INDIA         0                    1                 2.4861518   1.9935606   3.100458
6-24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS      PHILIPPINES   0                    1                 3.1403162   1.7583498   5.608433
6-24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3     BANGLADESH    0                    1                 1.5640658   1.4105650   1.734271
6-24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4     BANGLADESH    0                    1                 1.3066455   1.1234098   1.519768
6-24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       BANGLADESH    0                    1                 0.8815789   0.3646285   2.131434
6-24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       INDIA         0                    1                 2.1267692   1.1762895   3.845267
6-24 months   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
6-24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH    0                    1                 1.4056459   0.9819838   2.012091
6-24 months   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH    0                    1                 1.3612792   0.7179440   2.581094


### Parameter: PAR


agecat        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    NA                 0.0662578    0.0104736   0.1220421
0-24 months   COHORTS      INDIA         1                    NA                 0.0454697    0.0361381   0.0548013
0-24 months   COHORTS      PHILIPPINES   1                    NA                 0.1442570    0.1069221   0.1815918
0-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0093212    0.0069104   0.0117319
0-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0107763    0.0046425   0.0169101
0-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0006077   -0.0205087   0.0192933
0-24 months   MAL-ED       INDIA         1                    NA                 0.0799952    0.0239354   0.1360551
0-24 months   MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
0-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0294686   -0.0106027   0.0695400
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0021051   -0.0062025   0.0104127
0-6 months    COHORTS      INDIA         1                    NA                 0.0137398    0.0085803   0.0188994
0-6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0045001    0.0028191   0.0061811
0-6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0032338   -0.0002075   0.0066752
0-6 months    MAL-ED       INDIA         1                    NA                 0.0174058   -0.0180442   0.0528558
0-6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0102974   -0.0364238   0.0158291
6-24 months   COHORTS      GUATEMALA     1                    NA                 0.0705222    0.0175268   0.1235175
6-24 months   COHORTS      INDIA         1                    NA                 0.0446276    0.0352996   0.0539556
6-24 months   COHORTS      PHILIPPINES   1                    NA                 0.1390065    0.0952663   0.1827468
6-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0119879    0.0089829   0.0149929
6-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0096522    0.0038781   0.0154262
6-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0028102   -0.0216654   0.0160450
6-24 months   MAL-ED       INDIA         1                    NA                 0.0727627    0.0193188   0.1262065
6-24 months   MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
6-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0420629   -0.0001433   0.0842691
6-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0036912   -0.0048909   0.0122733


### Parameter: PAF


agecat        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    NA                 0.4752099   -0.1111802   0.7521513
0-24 months   COHORTS      INDIA         1                    NA                 0.4634975    0.3674910   0.5449314
0-24 months   COHORTS      PHILIPPINES   1                    NA                 0.7012655    0.4782073   0.8289698
0-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.1049322    0.0772077   0.1318237
0-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0667492    0.0280576   0.1039005
0-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0037707   -0.1351730   0.1124210
0-24 months   MAL-ED       INDIA         1                    NA                 0.3654684    0.0649920   0.5693830
0-24 months   MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
0-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.1342221   -0.0682709   0.2983322
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0224646   -0.0702101   0.1071141
0-6 months    COHORTS      INDIA         1                    NA                 0.5035017    0.2994630   0.6481121
0-6 months    JiVitA-3     BANGLADESH    1                    NA                 0.1135068    0.0694824   0.1554484
0-6 months    JiVitA-4     BANGLADESH    1                    NA                 0.1225714   -0.0123629   0.2395208
0-6 months    MAL-ED       INDIA         1                    NA                 0.2385621   -0.4206987   0.5918996
0-6 months    NIH-Birth    BANGLADESH    1                    NA                -0.1423324   -0.5645496   0.1659431
6-24 months   COHORTS      GUATEMALA     1                    NA                 0.5301535   -0.0763444   0.7949023
6-24 months   COHORTS      INDIA         1                    NA                 0.4800096    0.3789409   0.5646307
6-24 months   COHORTS      PHILIPPINES   1                    NA                 0.6500600    0.3914337   0.7987763
6-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.1380972    0.1032258   0.1716127
6-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0653358    0.0253450   0.1036857
6-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0191898   -0.1563308   0.1016863
6-24 months   MAL-ED       INDIA         1                    NA                 0.3767490    0.0480609   0.5919467
6-24 months   MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
6-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.1999831   -0.0261256   0.3762684
6-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0428059   -0.0616011   0.1369447
