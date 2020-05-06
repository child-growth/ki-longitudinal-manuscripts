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

**Outcome Variable:** stunted

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

agecat      studyid         country                        safeh20    stunted   n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       JiVitA-3        BANGLADESH                     1                0    15028   22432  stunted          
Birth       JiVitA-3        BANGLADESH                     1                1     7364   22432  stunted          
Birth       JiVitA-3        BANGLADESH                     0                0       22   22432  stunted          
Birth       JiVitA-3        BANGLADESH                     0                1       18   22432  stunted          
Birth       JiVitA-4        BANGLADESH                     1                0     1964    2820  stunted          
Birth       JiVitA-4        BANGLADESH                     1                1      856    2820  stunted          
Birth       JiVitA-4        BANGLADESH                     0                0        0    2820  stunted          
Birth       JiVitA-4        BANGLADESH                     0                1        0    2820  stunted          
Birth       MAL-ED          BANGLADESH                     1                0        0     213  stunted          
Birth       MAL-ED          BANGLADESH                     1                1        0     213  stunted          
Birth       MAL-ED          BANGLADESH                     0                0      176     213  stunted          
Birth       MAL-ED          BANGLADESH                     0                1       37     213  stunted          
Birth       MAL-ED          BRAZIL                         1                0        0      41  stunted          
Birth       MAL-ED          BRAZIL                         1                1        0      41  stunted          
Birth       MAL-ED          BRAZIL                         0                0       32      41  stunted          
Birth       MAL-ED          BRAZIL                         0                1        9      41  stunted          
Birth       MAL-ED          INDIA                          1                0        0      41  stunted          
Birth       MAL-ED          INDIA                          1                1        0      41  stunted          
Birth       MAL-ED          INDIA                          0                0       33      41  stunted          
Birth       MAL-ED          INDIA                          0                1        8      41  stunted          
Birth       MAL-ED          NEPAL                          1                0        1      26  stunted          
Birth       MAL-ED          NEPAL                          1                1        0      26  stunted          
Birth       MAL-ED          NEPAL                          0                0       23      26  stunted          
Birth       MAL-ED          NEPAL                          0                1        2      26  stunted          
Birth       MAL-ED          PERU                           1                0        8     207  stunted          
Birth       MAL-ED          PERU                           1                1        1     207  stunted          
Birth       MAL-ED          PERU                           0                0      176     207  stunted          
Birth       MAL-ED          PERU                           0                1       22     207  stunted          
Birth       MAL-ED          SOUTH AFRICA                   1                0       12      96  stunted          
Birth       MAL-ED          SOUTH AFRICA                   1                1        1      96  stunted          
Birth       MAL-ED          SOUTH AFRICA                   0                0       76      96  stunted          
Birth       MAL-ED          SOUTH AFRICA                   0                1        7      96  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       68     119  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       11     119  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       30     119  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       10     119  stunted          
Birth       NIH-Birth       BANGLADESH                     1                0      511     608  stunted          
Birth       NIH-Birth       BANGLADESH                     1                1       95     608  stunted          
Birth       NIH-Birth       BANGLADESH                     0                0        0     608  stunted          
Birth       NIH-Birth       BANGLADESH                     0                1        2     608  stunted          
Birth       NIH-Crypto      BANGLADESH                     1                0      631     732  stunted          
Birth       NIH-Crypto      BANGLADESH                     1                1      101     732  stunted          
Birth       NIH-Crypto      BANGLADESH                     0                0        0     732  stunted          
Birth       NIH-Crypto      BANGLADESH                     0                1        0     732  stunted          
Birth       PROVIDE         BANGLADESH                     1                0       43      45  stunted          
Birth       PROVIDE         BANGLADESH                     1                1        2      45  stunted          
Birth       PROVIDE         BANGLADESH                     0                0        0      45  stunted          
Birth       PROVIDE         BANGLADESH                     0                1        0      45  stunted          
6 months    CONTENT         PERU                           1                0       54      57  stunted          
6 months    CONTENT         PERU                           1                1        0      57  stunted          
6 months    CONTENT         PERU                           0                0        3      57  stunted          
6 months    CONTENT         PERU                           0                1        0      57  stunted          
6 months    JiVitA-3        BANGLADESH                     1                0    12567   16803  stunted          
6 months    JiVitA-3        BANGLADESH                     1                1     4216   16803  stunted          
6 months    JiVitA-3        BANGLADESH                     0                0       12   16803  stunted          
6 months    JiVitA-3        BANGLADESH                     0                1        8   16803  stunted          
6 months    JiVitA-4        BANGLADESH                     1                0     3606    4825  stunted          
6 months    JiVitA-4        BANGLADESH                     1                1     1218    4825  stunted          
6 months    JiVitA-4        BANGLADESH                     0                0        1    4825  stunted          
6 months    JiVitA-4        BANGLADESH                     0                1        0    4825  stunted          
6 months    LCNI-5          MALAWI                         1                0      428     816  stunted          
6 months    LCNI-5          MALAWI                         1                1      244     816  stunted          
6 months    LCNI-5          MALAWI                         0                0       92     816  stunted          
6 months    LCNI-5          MALAWI                         0                1       52     816  stunted          
6 months    MAL-ED          BANGLADESH                     1                0        0     240  stunted          
6 months    MAL-ED          BANGLADESH                     1                1        0     240  stunted          
6 months    MAL-ED          BANGLADESH                     0                0      196     240  stunted          
6 months    MAL-ED          BANGLADESH                     0                1       44     240  stunted          
6 months    MAL-ED          BRAZIL                         1                0        0     142  stunted          
6 months    MAL-ED          BRAZIL                         1                1        0     142  stunted          
6 months    MAL-ED          BRAZIL                         0                0      140     142  stunted          
6 months    MAL-ED          BRAZIL                         0                1        2     142  stunted          
6 months    MAL-ED          INDIA                          1                0        0     235  stunted          
6 months    MAL-ED          INDIA                          1                1        0     235  stunted          
6 months    MAL-ED          INDIA                          0                0      191     235  stunted          
6 months    MAL-ED          INDIA                          0                1       44     235  stunted          
6 months    MAL-ED          NEPAL                          1                0        1     233  stunted          
6 months    MAL-ED          NEPAL                          1                1        0     233  stunted          
6 months    MAL-ED          NEPAL                          0                0      221     233  stunted          
6 months    MAL-ED          NEPAL                          0                1       11     233  stunted          
6 months    MAL-ED          PERU                           1                0        8     259  stunted          
6 months    MAL-ED          PERU                           1                1        3     259  stunted          
6 months    MAL-ED          PERU                           0                0      195     259  stunted          
6 months    MAL-ED          PERU                           0                1       53     259  stunted          
6 months    MAL-ED          SOUTH AFRICA                   1                0       27     248  stunted          
6 months    MAL-ED          SOUTH AFRICA                   1                1       10     248  stunted          
6 months    MAL-ED          SOUTH AFRICA                   0                0      172     248  stunted          
6 months    MAL-ED          SOUTH AFRICA                   0                1       39     248  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      130     246  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       38     246  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       58     246  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       20     246  stunted          
6 months    NIH-Birth       BANGLADESH                     1                0      391     537  stunted          
6 months    NIH-Birth       BANGLADESH                     1                1      144     537  stunted          
6 months    NIH-Birth       BANGLADESH                     0                0        2     537  stunted          
6 months    NIH-Birth       BANGLADESH                     0                1        0     537  stunted          
6 months    NIH-Crypto      BANGLADESH                     1                0      565     715  stunted          
6 months    NIH-Crypto      BANGLADESH                     1                1      150     715  stunted          
6 months    NIH-Crypto      BANGLADESH                     0                0        0     715  stunted          
6 months    NIH-Crypto      BANGLADESH                     0                1        0     715  stunted          
6 months    PROVIDE         BANGLADESH                     1                0       10      11  stunted          
6 months    PROVIDE         BANGLADESH                     1                1        1      11  stunted          
6 months    PROVIDE         BANGLADESH                     0                0        0      11  stunted          
6 months    PROVIDE         BANGLADESH                     0                1        0      11  stunted          
6 months    SAS-FoodSuppl   INDIA                          1                0      217     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          1                1      163     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          0                0        0     380  stunted          
6 months    SAS-FoodSuppl   INDIA                          0                1        0     380  stunted          
24 months   CONTENT         PERU                           1                0       43      48  stunted          
24 months   CONTENT         PERU                           1                1        2      48  stunted          
24 months   CONTENT         PERU                           0                0        3      48  stunted          
24 months   CONTENT         PERU                           0                1        0      48  stunted          
24 months   JiVitA-3        BANGLADESH                     1                0     4385    8623  stunted          
24 months   JiVitA-3        BANGLADESH                     1                1     4227    8623  stunted          
24 months   JiVitA-3        BANGLADESH                     0                0        3    8623  stunted          
24 months   JiVitA-3        BANGLADESH                     0                1        8    8623  stunted          
24 months   JiVitA-4        BANGLADESH                     1                0     2843    4747  stunted          
24 months   JiVitA-4        BANGLADESH                     1                1     1903    4747  stunted          
24 months   JiVitA-4        BANGLADESH                     0                0        1    4747  stunted          
24 months   JiVitA-4        BANGLADESH                     0                1        0    4747  stunted          
24 months   LCNI-5          MALAWI                         1                0      263     574  stunted          
24 months   LCNI-5          MALAWI                         1                1      212     574  stunted          
24 months   LCNI-5          MALAWI                         0                0       57     574  stunted          
24 months   LCNI-5          MALAWI                         0                1       42     574  stunted          
24 months   MAL-ED          BANGLADESH                     1                0        0     212  stunted          
24 months   MAL-ED          BANGLADESH                     1                1        0     212  stunted          
24 months   MAL-ED          BANGLADESH                     0                0      111     212  stunted          
24 months   MAL-ED          BANGLADESH                     0                1      101     212  stunted          
24 months   MAL-ED          BRAZIL                         1                0        0     113  stunted          
24 months   MAL-ED          BRAZIL                         1                1        0     113  stunted          
24 months   MAL-ED          BRAZIL                         0                0      110     113  stunted          
24 months   MAL-ED          BRAZIL                         0                1        3     113  stunted          
24 months   MAL-ED          INDIA                          1                0        0     227  stunted          
24 months   MAL-ED          INDIA                          1                1        0     227  stunted          
24 months   MAL-ED          INDIA                          0                0      130     227  stunted          
24 months   MAL-ED          INDIA                          0                1       97     227  stunted          
24 months   MAL-ED          NEPAL                          1                0        1     226  stunted          
24 months   MAL-ED          NEPAL                          1                1        0     226  stunted          
24 months   MAL-ED          NEPAL                          0                0      175     226  stunted          
24 months   MAL-ED          NEPAL                          0                1       50     226  stunted          
24 months   MAL-ED          PERU                           1                0        3     193  stunted          
24 months   MAL-ED          PERU                           1                1        4     193  stunted          
24 months   MAL-ED          PERU                           0                0      117     193  stunted          
24 months   MAL-ED          PERU                           0                1       69     193  stunted          
24 months   MAL-ED          SOUTH AFRICA                   1                0       22     237  stunted          
24 months   MAL-ED          SOUTH AFRICA                   1                1       12     237  stunted          
24 months   MAL-ED          SOUTH AFRICA                   0                0      131     237  stunted          
24 months   MAL-ED          SOUTH AFRICA                   0                1       72     237  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       40     213  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1      105     213  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       18     213  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       50     213  stunted          
24 months   NIH-Birth       BANGLADESH                     1                0      184     429  stunted          
24 months   NIH-Birth       BANGLADESH                     1                1      243     429  stunted          
24 months   NIH-Birth       BANGLADESH                     0                0        1     429  stunted          
24 months   NIH-Birth       BANGLADESH                     0                1        1     429  stunted          
24 months   NIH-Crypto      BANGLADESH                     1                0      382     514  stunted          
24 months   NIH-Crypto      BANGLADESH                     1                1      132     514  stunted          
24 months   NIH-Crypto      BANGLADESH                     0                0        0     514  stunted          
24 months   NIH-Crypto      BANGLADESH                     0                1        0     514  stunted          
24 months   PROVIDE         BANGLADESH                     1                0        5       9  stunted          
24 months   PROVIDE         BANGLADESH                     1                1        4       9  stunted          
24 months   PROVIDE         BANGLADESH                     0                0        0       9  stunted          
24 months   PROVIDE         BANGLADESH                     0                1        0       9  stunted          


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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
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
