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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** safeh20

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
* impsan
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
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        safeh20    sstunted   n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       JiVitA-3        BANGLADESH                     1                 0    19952   22432  sstunted         
Birth       JiVitA-3        BANGLADESH                     1                 1     2440   22432  sstunted         
Birth       JiVitA-3        BANGLADESH                     0                 0       32   22432  sstunted         
Birth       JiVitA-3        BANGLADESH                     0                 1        8   22432  sstunted         
Birth       JiVitA-4        BANGLADESH                     1                 0     2587    2820  sstunted         
Birth       JiVitA-4        BANGLADESH                     1                 1      233    2820  sstunted         
Birth       JiVitA-4        BANGLADESH                     0                 0        0    2820  sstunted         
Birth       JiVitA-4        BANGLADESH                     0                 1        0    2820  sstunted         
Birth       MAL-ED          BANGLADESH                     1                 0        0     213  sstunted         
Birth       MAL-ED          BANGLADESH                     1                 1        0     213  sstunted         
Birth       MAL-ED          BANGLADESH                     0                 0      207     213  sstunted         
Birth       MAL-ED          BANGLADESH                     0                 1        6     213  sstunted         
Birth       MAL-ED          BRAZIL                         1                 0        0      41  sstunted         
Birth       MAL-ED          BRAZIL                         1                 1        0      41  sstunted         
Birth       MAL-ED          BRAZIL                         0                 0       38      41  sstunted         
Birth       MAL-ED          BRAZIL                         0                 1        3      41  sstunted         
Birth       MAL-ED          INDIA                          1                 0        0      41  sstunted         
Birth       MAL-ED          INDIA                          1                 1        0      41  sstunted         
Birth       MAL-ED          INDIA                          0                 0       39      41  sstunted         
Birth       MAL-ED          INDIA                          0                 1        2      41  sstunted         
Birth       MAL-ED          NEPAL                          1                 0        1      26  sstunted         
Birth       MAL-ED          NEPAL                          1                 1        0      26  sstunted         
Birth       MAL-ED          NEPAL                          0                 0       24      26  sstunted         
Birth       MAL-ED          NEPAL                          0                 1        1      26  sstunted         
Birth       MAL-ED          PERU                           1                 0        9     207  sstunted         
Birth       MAL-ED          PERU                           1                 1        0     207  sstunted         
Birth       MAL-ED          PERU                           0                 0      194     207  sstunted         
Birth       MAL-ED          PERU                           0                 1        4     207  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   1                 0       13      96  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   1                 1        0      96  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   0                 0       82      96  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   0                 1        1      96  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       74     119  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        5     119  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       37     119  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        3     119  sstunted         
Birth       NIH-Birth       BANGLADESH                     1                 0      587     608  sstunted         
Birth       NIH-Birth       BANGLADESH                     1                 1       19     608  sstunted         
Birth       NIH-Birth       BANGLADESH                     0                 0        2     608  sstunted         
Birth       NIH-Birth       BANGLADESH                     0                 1        0     608  sstunted         
Birth       NIH-Crypto      BANGLADESH                     1                 0      722     732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     1                 1       10     732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     0                 0        0     732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     0                 1        0     732  sstunted         
Birth       PROVIDE         BANGLADESH                     1                 0       45      45  sstunted         
Birth       PROVIDE         BANGLADESH                     1                 1        0      45  sstunted         
Birth       PROVIDE         BANGLADESH                     0                 0        0      45  sstunted         
Birth       PROVIDE         BANGLADESH                     0                 1        0      45  sstunted         
6 months    CONTENT         PERU                           1                 0       54      57  sstunted         
6 months    CONTENT         PERU                           1                 1        0      57  sstunted         
6 months    CONTENT         PERU                           0                 0        3      57  sstunted         
6 months    CONTENT         PERU                           0                 1        0      57  sstunted         
6 months    JiVitA-3        BANGLADESH                     1                 0    15767   16803  sstunted         
6 months    JiVitA-3        BANGLADESH                     1                 1     1016   16803  sstunted         
6 months    JiVitA-3        BANGLADESH                     0                 0       17   16803  sstunted         
6 months    JiVitA-3        BANGLADESH                     0                 1        3   16803  sstunted         
6 months    JiVitA-4        BANGLADESH                     1                 0     4553    4825  sstunted         
6 months    JiVitA-4        BANGLADESH                     1                 1      271    4825  sstunted         
6 months    JiVitA-4        BANGLADESH                     0                 0        1    4825  sstunted         
6 months    JiVitA-4        BANGLADESH                     0                 1        0    4825  sstunted         
6 months    LCNI-5          MALAWI                         1                 0      620     816  sstunted         
6 months    LCNI-5          MALAWI                         1                 1       52     816  sstunted         
6 months    LCNI-5          MALAWI                         0                 0      131     816  sstunted         
6 months    LCNI-5          MALAWI                         0                 1       13     816  sstunted         
6 months    MAL-ED          BANGLADESH                     1                 0        0     240  sstunted         
6 months    MAL-ED          BANGLADESH                     1                 1        0     240  sstunted         
6 months    MAL-ED          BANGLADESH                     0                 0      232     240  sstunted         
6 months    MAL-ED          BANGLADESH                     0                 1        8     240  sstunted         
6 months    MAL-ED          BRAZIL                         1                 0        0     142  sstunted         
6 months    MAL-ED          BRAZIL                         1                 1        0     142  sstunted         
6 months    MAL-ED          BRAZIL                         0                 0      142     142  sstunted         
6 months    MAL-ED          BRAZIL                         0                 1        0     142  sstunted         
6 months    MAL-ED          INDIA                          1                 0        0     235  sstunted         
6 months    MAL-ED          INDIA                          1                 1        0     235  sstunted         
6 months    MAL-ED          INDIA                          0                 0      226     235  sstunted         
6 months    MAL-ED          INDIA                          0                 1        9     235  sstunted         
6 months    MAL-ED          NEPAL                          1                 0        1     233  sstunted         
6 months    MAL-ED          NEPAL                          1                 1        0     233  sstunted         
6 months    MAL-ED          NEPAL                          0                 0      232     233  sstunted         
6 months    MAL-ED          NEPAL                          0                 1        0     233  sstunted         
6 months    MAL-ED          PERU                           1                 0       11     259  sstunted         
6 months    MAL-ED          PERU                           1                 1        0     259  sstunted         
6 months    MAL-ED          PERU                           0                 0      239     259  sstunted         
6 months    MAL-ED          PERU                           0                 1        9     259  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   1                 0       35     248  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   1                 1        2     248  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   0                 0      207     248  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   0                 1        4     248  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0      159     246  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     246  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       73     246  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     246  sstunted         
6 months    NIH-Birth       BANGLADESH                     1                 0      500     537  sstunted         
6 months    NIH-Birth       BANGLADESH                     1                 1       35     537  sstunted         
6 months    NIH-Birth       BANGLADESH                     0                 0        2     537  sstunted         
6 months    NIH-Birth       BANGLADESH                     0                 1        0     537  sstunted         
6 months    NIH-Crypto      BANGLADESH                     1                 0      692     715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     1                 1       23     715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     0                 0        0     715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     0                 1        0     715  sstunted         
6 months    PROVIDE         BANGLADESH                     1                 0       11      11  sstunted         
6 months    PROVIDE         BANGLADESH                     1                 1        0      11  sstunted         
6 months    PROVIDE         BANGLADESH                     0                 0        0      11  sstunted         
6 months    PROVIDE         BANGLADESH                     0                 1        0      11  sstunted         
6 months    SAS-FoodSuppl   INDIA                          1                 0      326     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          1                 1       54     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          0                 0        0     380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          0                 1        0     380  sstunted         
24 months   CONTENT         PERU                           1                 0       45      48  sstunted         
24 months   CONTENT         PERU                           1                 1        0      48  sstunted         
24 months   CONTENT         PERU                           0                 0        3      48  sstunted         
24 months   CONTENT         PERU                           0                 1        0      48  sstunted         
24 months   JiVitA-3        BANGLADESH                     1                 0     7268    8623  sstunted         
24 months   JiVitA-3        BANGLADESH                     1                 1     1344    8623  sstunted         
24 months   JiVitA-3        BANGLADESH                     0                 0       10    8623  sstunted         
24 months   JiVitA-3        BANGLADESH                     0                 1        1    8623  sstunted         
24 months   JiVitA-4        BANGLADESH                     1                 0     4294    4747  sstunted         
24 months   JiVitA-4        BANGLADESH                     1                 1      452    4747  sstunted         
24 months   JiVitA-4        BANGLADESH                     0                 0        1    4747  sstunted         
24 months   JiVitA-4        BANGLADESH                     0                 1        0    4747  sstunted         
24 months   LCNI-5          MALAWI                         1                 0      419     574  sstunted         
24 months   LCNI-5          MALAWI                         1                 1       56     574  sstunted         
24 months   LCNI-5          MALAWI                         0                 0       86     574  sstunted         
24 months   LCNI-5          MALAWI                         0                 1       13     574  sstunted         
24 months   MAL-ED          BANGLADESH                     1                 0        0     212  sstunted         
24 months   MAL-ED          BANGLADESH                     1                 1        0     212  sstunted         
24 months   MAL-ED          BANGLADESH                     0                 0      184     212  sstunted         
24 months   MAL-ED          BANGLADESH                     0                 1       28     212  sstunted         
24 months   MAL-ED          BRAZIL                         1                 0        0     113  sstunted         
24 months   MAL-ED          BRAZIL                         1                 1        0     113  sstunted         
24 months   MAL-ED          BRAZIL                         0                 0      113     113  sstunted         
24 months   MAL-ED          BRAZIL                         0                 1        0     113  sstunted         
24 months   MAL-ED          INDIA                          1                 0        0     227  sstunted         
24 months   MAL-ED          INDIA                          1                 1        0     227  sstunted         
24 months   MAL-ED          INDIA                          0                 0      197     227  sstunted         
24 months   MAL-ED          INDIA                          0                 1       30     227  sstunted         
24 months   MAL-ED          NEPAL                          1                 0        1     226  sstunted         
24 months   MAL-ED          NEPAL                          1                 1        0     226  sstunted         
24 months   MAL-ED          NEPAL                          0                 0      218     226  sstunted         
24 months   MAL-ED          NEPAL                          0                 1        7     226  sstunted         
24 months   MAL-ED          PERU                           1                 0        5     193  sstunted         
24 months   MAL-ED          PERU                           1                 1        2     193  sstunted         
24 months   MAL-ED          PERU                           0                 0      173     193  sstunted         
24 months   MAL-ED          PERU                           0                 1       13     193  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   1                 0       29     237  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   1                 1        5     237  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   0                 0      181     237  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   0                 1       22     237  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       96     213  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       49     213  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0       47     213  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       21     213  sstunted         
24 months   NIH-Birth       BANGLADESH                     1                 0      332     429  sstunted         
24 months   NIH-Birth       BANGLADESH                     1                 1       95     429  sstunted         
24 months   NIH-Birth       BANGLADESH                     0                 0        2     429  sstunted         
24 months   NIH-Birth       BANGLADESH                     0                 1        0     429  sstunted         
24 months   NIH-Crypto      BANGLADESH                     1                 0      478     514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     1                 1       36     514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     0                 0        0     514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     0                 1        0     514  sstunted         
24 months   PROVIDE         BANGLADESH                     1                 0        8       9  sstunted         
24 months   PROVIDE         BANGLADESH                     1                 1        1       9  sstunted         
24 months   PROVIDE         BANGLADESH                     0                 0        0       9  sstunted         
24 months   PROVIDE         BANGLADESH                     0                 1        0       9  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
