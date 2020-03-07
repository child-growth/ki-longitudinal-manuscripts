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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        nchldlt5    ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------  --------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                 0      956    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                 1      117    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                0     1849    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                1      266    3188
0-24 months   IRC              INDIA                          1                 0       69     410
0-24 months   IRC              INDIA                          1                 1       20     410
0-24 months   IRC              INDIA                          2+                0      265     410
0-24 months   IRC              INDIA                          2+                1       56     410
0-24 months   JiVitA-3         BANGLADESH                     1                 0    15656   26896
0-24 months   JiVitA-3         BANGLADESH                     1                 1     1540   26896
0-24 months   JiVitA-3         BANGLADESH                     2+                0     8851   26896
0-24 months   JiVitA-3         BANGLADESH                     2+                1      849   26896
0-24 months   LCNI-5           MALAWI                         1                 0      376     812
0-24 months   LCNI-5           MALAWI                         1                 1       15     812
0-24 months   LCNI-5           MALAWI                         2+                0      394     812
0-24 months   LCNI-5           MALAWI                         2+                1       27     812
0-24 months   NIH-Crypto       BANGLADESH                     1                 0      496     758
0-24 months   NIH-Crypto       BANGLADESH                     1                 1       45     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                0      191     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                1       26     758
0-24 months   PROVIDE          BANGLADESH                     1                 0      447     700
0-24 months   PROVIDE          BANGLADESH                     1                 1       65     700
0-24 months   PROVIDE          BANGLADESH                     2+                0      163     700
0-24 months   PROVIDE          BANGLADESH                     2+                1       25     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1552    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       85    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      714    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       34    2385
0-6 months    IRC              INDIA                          1                 0       79     409
0-6 months    IRC              INDIA                          1                 1       10     409
0-6 months    IRC              INDIA                          2+                0      305     409
0-6 months    IRC              INDIA                          2+                1       15     409
0-6 months    JiVitA-3         BANGLADESH                     1                 0    16380   26789
0-6 months    JiVitA-3         BANGLADESH                     1                 1      730   26789
0-6 months    JiVitA-3         BANGLADESH                     2+                0     9347   26789
0-6 months    JiVitA-3         BANGLADESH                     2+                1      332   26789
0-6 months    LCNI-5           MALAWI                         1                 0      122     267
0-6 months    LCNI-5           MALAWI                         1                 1        0     267
0-6 months    LCNI-5           MALAWI                         2+                0      145     267
0-6 months    LCNI-5           MALAWI                         2+                1        0     267
0-6 months    NIH-Crypto       BANGLADESH                     1                 0      531     758
0-6 months    NIH-Crypto       BANGLADESH                     1                 1       10     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                0      210     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                1        7     758
0-6 months    PROVIDE          BANGLADESH                     1                 0      491     700
0-6 months    PROVIDE          BANGLADESH                     1                 1       21     700
0-6 months    PROVIDE          BANGLADESH                     2+                0      179     700
0-6 months    PROVIDE          BANGLADESH                     2+                1        9     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1622    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       15    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      744    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        4    2385
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                 0      956    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                 1      117    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                0     1849    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                1      266    3188
6-24 months   IRC              INDIA                          1                 0       73     410
6-24 months   IRC              INDIA                          1                 1       16     410
6-24 months   IRC              INDIA                          2+                0      273     410
6-24 months   IRC              INDIA                          2+                1       48     410
6-24 months   JiVitA-3         BANGLADESH                     1                 0    10266   17268
6-24 months   JiVitA-3         BANGLADESH                     1                 1      924   17268
6-24 months   JiVitA-3         BANGLADESH                     2+                0     5503   17268
6-24 months   JiVitA-3         BANGLADESH                     2+                1      575   17268
6-24 months   LCNI-5           MALAWI                         1                 0      369     800
6-24 months   LCNI-5           MALAWI                         1                 1       15     800
6-24 months   LCNI-5           MALAWI                         2+                0      389     800
6-24 months   LCNI-5           MALAWI                         2+                1       27     800
6-24 months   NIH-Crypto       BANGLADESH                     1                 0      481     730
6-24 months   NIH-Crypto       BANGLADESH                     1                 1       39     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                0      186     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                1       24     730
6-24 months   PROVIDE          BANGLADESH                     1                 0      396     614
6-24 months   PROVIDE          BANGLADESH                     1                 1       52     614
6-24 months   PROVIDE          BANGLADESH                     2+                0      143     614
6-24 months   PROVIDE          BANGLADESH                     2+                1       23     614
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1303    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       80    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      593    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       33    2009


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/bcb24bcb-e87e-4ffc-942b-7f0c49cd395d/15033728-8b4c-42a7-8794-09ab517379ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bcb24bcb-e87e-4ffc-942b-7f0c49cd395d/15033728-8b4c-42a7-8794-09ab517379ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bcb24bcb-e87e-4ffc-942b-7f0c49cd395d/15033728-8b4c-42a7-8794-09ab517379ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bcb24bcb-e87e-4ffc-942b-7f0c49cd395d/15033728-8b4c-42a7-8794-09ab517379ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1090401   0.0771349   0.1409452
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1257683   0.1056249   0.1459117
0-24 months   IRC              INDIA                          1                    NA                0.2247191   0.1378965   0.3115417
0-24 months   IRC              INDIA                          2+                   NA                0.1744548   0.1328889   0.2160208
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0895557   0.0847944   0.0943170
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0875258   0.0812498   0.0938018
0-24 months   LCNI-5           MALAWI                         1                    NA                0.0383632   0.0193134   0.0574130
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.0641330   0.0407165   0.0875495
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0831793   0.0598938   0.1064648
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1198157   0.0765794   0.1630520
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1269531   0.0980953   0.1558110
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1329787   0.0844068   0.1815507
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0519243   0.0411739   0.0626746
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0454545   0.0305240   0.0603851
0-6 months    IRC              INDIA                          1                    NA                0.1123596   0.0466682   0.1780509
0-6 months    IRC              INDIA                          2+                   NA                0.0468750   0.0236877   0.0700623
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0426651   0.0395075   0.0458227
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.0343011   0.0303938   0.0382083
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.0184843   0.0071267   0.0298419
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.0322581   0.0087345   0.0557817
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0410156   0.0238245   0.0582067
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.0478723   0.0173323   0.0784124
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1090401   0.0771349   0.1409452
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1257683   0.1056249   0.1459117
6-24 months   IRC              INDIA                          1                    NA                0.1797753   0.0998996   0.2596510
6-24 months   IRC              INDIA                          2+                   NA                0.1495327   0.1104736   0.1885919
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0825737   0.0768526   0.0882948
6-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.0946035   0.0866778   0.1025292
6-24 months   LCNI-5           MALAWI                         1                    NA                0.0390625   0.0196723   0.0584527
6-24 months   LCNI-5           MALAWI                         2+                   NA                0.0649038   0.0412154   0.0885923
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.0750000   0.0523460   0.0976540
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1142857   0.0712252   0.1573462
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1160714   0.0863866   0.1457562
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1385542   0.0859559   0.1911525
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0578453   0.0455386   0.0701519
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0527157   0.0352059   0.0702254


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1201380   0.1003403   0.1399357
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888236   0.0849161   0.0927312
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0517241   0.0364818   0.0669665
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498952   0.0411552   0.0586351
0-6 months    IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396431   0.0371403   0.0421459
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0224274   0.0118796   0.0329753
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1201380   0.1003403   0.1399357
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0868080   0.0821488   0.0914672
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0525000   0.0370352   0.0679648
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562469   0.0461696   0.0663242


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1534138   0.8638414   1.5400549
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2+                   1                 0.7763240   0.4930694   1.2223004
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.9773332   0.8963868   1.0655894
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 1.6717340   0.9025850   3.0963228
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.4404506   0.9123274   2.2742908
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.0474632   0.6812370   1.6105688
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8754011   0.5937187   1.2907241
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2+                   1                 0.4171875   0.1939686   0.8972865
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.8039606   0.7035011   0.9187655
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.7451613   0.6725110   4.5286814
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 1.1671733   0.5440406   2.5040289
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1534138   0.8638414   1.5400549
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          2+                   1                 0.8317757   0.4967864   1.3926524
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.1456851   1.0277403   1.2771654
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         2+                   1                 1.6615385   0.8972857   3.0767348
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.5238095   0.9401710   2.4697585
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.1936979   0.7552723   1.8866237
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9113219   0.6142782   1.3520056


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0110979   -0.0099759    0.0321717
0-24 months   IRC              INDIA                          1                    NA                -0.0393532   -0.1147442    0.0360377
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0007321   -0.0034835    0.0020194
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0133610   -0.0023150    0.0290369
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0104882   -0.0036198    0.0245963
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0016183   -0.0135567    0.0167933
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0020291   -0.0078005    0.0037423
0-6 months    IRC              INDIA                          1                    NA                -0.0512349   -0.1058023    0.0033326
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0030220   -0.0048071   -0.0012368
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0039432   -0.0035482    0.0114345
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0018415   -0.0075736    0.0112566
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0110979   -0.0099759    0.0321717
6-24 months   IRC              INDIA                          1                    NA                -0.0236777   -0.0933016    0.0459461
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0042342    0.0007945    0.0076740
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0134375   -0.0025061    0.0293811
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0113014   -0.0027550    0.0253577
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0060784   -0.0102695    0.0224263
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015984   -0.0082680    0.0050712


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0923766   -0.1059181    0.2551164
0-24 months   IRC              INDIA                          1                    NA                -0.2123004   -0.6941184    0.1324855
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0082421   -0.0397046    0.0222683
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.2583120   -0.1027103    0.5011373
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1119731   -0.0501857    0.2490931
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0125868   -0.1127648    0.1238177
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0406667   -0.1627920    0.0686320
0-6 months    IRC              INDIA                          1                    NA                -0.8382022   -1.9162232   -0.1586862
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0762294   -0.1221913   -0.0321499
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.1758182   -0.2211410    0.4437370
0-6 months    PROVIDE          BANGLADESH                     1                    NA                 0.0429687   -0.2033820    0.2388877
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0923766   -0.1059181    0.2551164
6-24 months   IRC              INDIA                          1                    NA                -0.1516854   -0.6952935    0.2176108
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0487771    0.0082941    0.0876075
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.2559524   -0.1060520    0.4994748
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1309524   -0.0452064    0.2774214
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0497619   -0.0936031    0.1743326
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0284171   -0.1539935    0.0834941
