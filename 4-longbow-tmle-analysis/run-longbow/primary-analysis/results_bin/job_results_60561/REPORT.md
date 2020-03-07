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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/3f41d835-7960-430e-883a-c4d4eecda056/b222fbd7-1e2d-4f93-942b-357fb489e777/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f41d835-7960-430e-883a-c4d4eecda056/b222fbd7-1e2d-4f93-942b-357fb489e777/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f41d835-7960-430e-883a-c4d4eecda056/b222fbd7-1e2d-4f93-942b-357fb489e777/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f41d835-7960-430e-883a-c4d4eecda056/b222fbd7-1e2d-4f93-942b-357fb489e777/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    NA                0.0731707   0.0167735   0.1295680
0-24 months   COHORTS      GUATEMALA     0                    NA                0.1462799   0.1216700   0.1708899
0-24 months   COHORTS      INDIA         1                    NA                0.0710709   0.0575352   0.0846067
0-24 months   COHORTS      INDIA         0                    NA                0.1103209   0.0999458   0.1206959
0-24 months   COHORTS      PHILIPPINES   1                    NA                0.0968116   0.0318406   0.1617826
0-24 months   COHORTS      PHILIPPINES   0                    NA                0.2239383   0.1980394   0.2498371
0-24 months   JiVitA-3     BANGLADESH    1                    NA                0.0846841   0.0797491   0.0896190
0-24 months   JiVitA-3     BANGLADESH    0                    NA                0.1024826   0.0941692   0.1107961
0-24 months   JiVitA-4     BANGLADESH    1                    NA                0.1584032   0.1450551   0.1717513
0-24 months   JiVitA-4     BANGLADESH    0                    NA                0.1871075   0.1560112   0.2182038
0-24 months   MAL-ED       BANGLADESH    1                    NA                0.1617647   0.1111290   0.2124004
0-24 months   MAL-ED       BANGLADESH    0                    NA                0.1578947   0.0417171   0.2740724
0-24 months   MAL-ED       INDIA         1                    NA                0.1426894   0.0778997   0.2074790
0-24 months   MAL-ED       INDIA         0                    NA                0.2842517   0.2048665   0.3636369
0-24 months   MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
0-24 months   MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
0-24 months   NIH-Birth    BANGLADESH    1                    NA                0.2064703   0.1533703   0.2595702
0-24 months   NIH-Birth    BANGLADESH    0                    NA                0.2318063   0.1889537   0.2746589
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                0.0914994   0.0693884   0.1136104
0-24 months   NIH-Crypto   BANGLADESH    0                    NA                0.1085827   0.0426235   0.1745419
0-6 months    COHORTS      INDIA         1                    NA                0.0152018   0.0089681   0.0214354
0-6 months    COHORTS      INDIA         0                    NA                0.0325391   0.0265209   0.0385572
0-6 months    JiVitA-3     BANGLADESH    1                    NA                0.0372549   0.0339221   0.0405877
0-6 months    JiVitA-3     BANGLADESH    0                    NA                0.0444390   0.0392659   0.0496121
0-6 months    JiVitA-4     BANGLADESH    1                    NA                0.0241280   0.0187381   0.0295179
0-6 months    JiVitA-4     BANGLADESH    0                    NA                0.0312794   0.0122658   0.0502930
0-6 months    MAL-ED       INDIA         1                    NA                0.0555556   0.0122621   0.0988490
0-6 months    MAL-ED       INDIA         0                    NA                0.0880000   0.0382302   0.1377698
0-6 months    NIH-Birth    BANGLADESH    1                    NA                0.0833485   0.0487470   0.1179500
0-6 months    NIH-Birth    BANGLADESH    0                    NA                0.0668652   0.0418785   0.0918519
6-24 months   COHORTS      GUATEMALA     1                    NA                0.0625000   0.0094259   0.1155741
6-24 months   COHORTS      GUATEMALA     0                    NA                0.1402831   0.1158504   0.1647158
6-24 months   COHORTS      INDIA         1                    NA                0.0653532   0.0521143   0.0785921
6-24 months   COHORTS      INDIA         0                    NA                0.1056151   0.0949990   0.1162312
6-24 months   COHORTS      PHILIPPINES   1                    NA                0.0816353   0.0250510   0.1382195
6-24 months   COHORTS      PHILIPPINES   0                    NA                0.2281497   0.2017786   0.2545208
6-24 months   JiVitA-3     BANGLADESH    1                    NA                0.0824438   0.0765568   0.0883307
6-24 months   JiVitA-3     BANGLADESH    0                    NA                0.1029274   0.0922687   0.1135862
6-24 months   JiVitA-4     BANGLADESH    1                    NA                0.1463317   0.1333985   0.1592649
6-24 months   JiVitA-4     BANGLADESH    0                    NA                0.1652541   0.1361424   0.1943659
6-24 months   MAL-ED       BANGLADESH    1                    NA                0.1492537   0.0998883   0.1986192
6-24 months   MAL-ED       BANGLADESH    0                    NA                0.1315789   0.0238766   0.2392813
6-24 months   MAL-ED       INDIA         1                    NA                0.1256083   0.0631453   0.1880713
6-24 months   MAL-ED       INDIA         0                    NA                0.2497869   0.1730352   0.3265386
6-24 months   MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months   MAL-ED       PERU          0                    NA                0.0303030   0.0063807   0.0542254
6-24 months   NIH-Birth    BANGLADESH    1                    NA                0.1890997   0.1334027   0.2447966
6-24 months   NIH-Birth    BANGLADESH    0                    NA                0.2251314   0.1791289   0.2711339
6-24 months   NIH-Crypto   BANGLADESH    1                    NA                0.0837494   0.0619880   0.1055108
6-24 months   NIH-Crypto   BANGLADESH    0                    NA                0.1162418   0.0424098   0.1900737


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
0-24 months   COHORTS      INDIA         0                    1                 1.5522647   1.2566993   1.917345
0-24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS      PHILIPPINES   0                    1                 2.3131337   1.1709419   4.569473
0-24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH    0                    1                 1.2101762   1.1014419   1.329645
0-24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH    0                    1                 1.1812103   0.9842298   1.417614
0-24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       BANGLADESH    0                    1                 0.9760766   0.4387519   2.171445
0-24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       INDIA         0                    1                 1.9921015   1.1729353   3.383365
0-24 months   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
0-24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH    0                    1                 1.1227104   0.8186043   1.539790
0-24 months   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH    0                    1                 1.1867045   0.6170127   2.282396
0-6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS      INDIA         0                    1                 2.1404817   1.3651864   3.356071
0-6 months    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH    0                    1                 1.1928370   1.0279224   1.384210
0-6 months    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH    0                    1                 1.2963948   0.6883031   2.441714
0-6 months    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED       INDIA         0                    1                 1.5840000   0.6047559   4.148874
0-6 months    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH    0                    1                 0.8022366   0.4593868   1.400962
6-24 months   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS      GUATEMALA     0                    1                 2.2445302   0.9433052   5.340706
6-24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS      INDIA         0                    1                 1.6160660   1.2907846   2.023319
6-24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS      PHILIPPINES   0                    1                 2.7947443   1.3838338   5.644172
6-24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3     BANGLADESH    0                    1                 1.2484563   1.1043864   1.411320
6-24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4     BANGLADESH    0                    1                 1.1293122   0.9260288   1.377221
6-24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       BANGLADESH    0                    1                 0.8815789   0.3646285   2.131434
6-24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       INDIA         0                    1                 1.9886180   1.1161816   3.542973
6-24 months   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       PERU          0                    1                 0.3939394   0.1240553   1.250961
6-24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH    0                    1                 1.1905438   0.8328311   1.701899
6-24 months   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH    0                    1                 1.3879715   0.6986740   2.757316


### Parameter: PAR


agecat        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    NA                 0.0662578    0.0104736   0.1220421
0-24 months   COHORTS      INDIA         1                    NA                 0.0270303    0.0146599   0.0394008
0-24 months   COHORTS      PHILIPPINES   1                    NA                 0.1088979    0.0442742   0.1735215
0-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0041462    0.0012356   0.0070567
0-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0030417   -0.0039383   0.0100217
0-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0006077   -0.0205087   0.0192933
0-24 months   MAL-ED       INDIA         1                    NA                 0.0761948    0.0206544   0.1317351
0-24 months   MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
0-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0130810   -0.0302664   0.0564284
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0022088   -0.0061225   0.0105401
0-6 months    COHORTS      INDIA         1                    NA                 0.0120868    0.0060571   0.0181165
0-6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0023912    0.0003352   0.0044472
0-6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0022551   -0.0013385   0.0058487
0-6 months    MAL-ED       INDIA         1                    NA                 0.0174058   -0.0180442   0.0528558
0-6 months    NIH-Birth    BANGLADESH    1                    NA                -0.0110013   -0.0370164   0.0150139
6-24 months   COHORTS      GUATEMALA     1                    NA                 0.0705222    0.0175268   0.1235175
6-24 months   COHORTS      INDIA         1                    NA                 0.0276191    0.0154885   0.0397498
6-24 months   COHORTS      PHILIPPINES   1                    NA                 0.1322012    0.0750582   0.1893442
6-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0043642    0.0006087   0.0081197
6-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0013998   -0.0055063   0.0083059
6-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0028102   -0.0216654   0.0160450
6-24 months   MAL-ED       INDIA         1                    NA                 0.0675248    0.0139764   0.1210731
6-24 months   MAL-ED       PERU          1                    NA                -0.0350980   -0.0872308   0.0170348
6-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0212324   -0.0253225   0.0677874
6-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0024815   -0.0062613   0.0112242


### Parameter: PAF


agecat        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS      GUATEMALA     1                    NA                 0.4752099   -0.1111802   0.7521513
0-24 months   COHORTS      INDIA         1                    NA                 0.2755351    0.1399244   0.3897637
0-24 months   COHORTS      PHILIPPINES   1                    NA                 0.5293769    0.0904741   0.7564818
0-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0466750    0.0132160   0.0789996
0-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0188405   -0.0253933   0.0611661
0-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0037707   -0.1351730   0.1124210
0-24 months   MAL-ED       INDIA         1                    NA                 0.3481055    0.0535794   0.5509751
0-24 months   MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
0-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0595806   -0.1599062   0.2375344
0-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0235710   -0.0693850   0.1084468
0-6 months    COHORTS      INDIA         1                    NA                 0.4429259    0.1890081   0.6173432
0-6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0603140    0.0066108   0.1111140
0-6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0854769   -0.0561101   0.2080821
0-6 months    MAL-ED       INDIA         1                    NA                 0.2385621   -0.4206987   0.5918996
0-6 months    NIH-Birth    BANGLADESH    1                    NA                -0.1520619   -0.5717593   0.1555663
6-24 months   COHORTS      GUATEMALA     1                    NA                 0.5301535   -0.0763444   0.7949023
6-24 months   COHORTS      INDIA         1                    NA                 0.2970681    0.1564489   0.4142463
6-24 months   COHORTS      PHILIPPINES   1                    NA                 0.6182351    0.2458287   0.8067489
6-24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0502744    0.0060165   0.0925616
6-24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0094752   -0.0384349   0.0551750
6-24 months   MAL-ED       BANGLADESH    1                    NA                -0.0191898   -0.1563308   0.1016863
6-24 months   MAL-ED       INDIA         1                    NA                 0.3496283    0.0207587   0.5680499
6-24 months   MAL-ED       PERU          1                    NA                -0.8391608   -2.4633938   0.0233532
6-24 months   NIH-Birth    BANGLADESH    1                    NA                 0.1009473   -0.1491910   0.2966393
6-24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0287770   -0.0778306   0.1248402
