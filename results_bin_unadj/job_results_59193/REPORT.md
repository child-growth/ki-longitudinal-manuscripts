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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        vagbrth    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0       17     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    1        8     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0      185     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    1      158     368
0-24 months (no birth wast)   IRC              INDIA                          0                    0       38     409
0-24 months (no birth wast)   IRC              INDIA                          0                    1       32     409
0-24 months (no birth wast)   IRC              INDIA                          1                    0      158     409
0-24 months (no birth wast)   IRC              INDIA                          1                    1      181     409
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0     1301   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    1      189   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0    20624   26404
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    1     4290   26404
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0      291    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    1       79    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0     3007    4499
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    1     1122    4499
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0      181     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    1       21     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0      245     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    1       49     496
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0     1805   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    1      147   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0    13926   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    1     1001   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0      132     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    1       27     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0      433     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    1       95     687
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      174    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       38    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1712    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      431    2355
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0     1042   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    1      100   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0    11104   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    1     1276   13522
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0       15     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    1        8     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0      227     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    1      100     350
0-6 months (no birth wast)    IRC              INDIA                          0                    0       42     390
0-6 months (no birth wast)    IRC              INDIA                          0                    1       25     390
0-6 months (no birth wast)    IRC              INDIA                          1                    0      215     390
0-6 months (no birth wast)    IRC              INDIA                          1                    1      108     390
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0     1387   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    1       71   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0    22889   26154
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    1     1807   26154
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0      347    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    1       11    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0     3907    4380
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    1      115    4380
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    0      199     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    1        3     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    0      282     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    1        9     493
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0     1805   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    1      131   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0    13866   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    1      891   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0      146     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    1       12     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0      500     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    1       25     683
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      198    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       13    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1947    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      189    2347
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0     1107   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    1       22   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0    11731   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    1      404   13264
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    0       22     373
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    1        3     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    0      252     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    1       96     373
6-24 months                   IRC              INDIA                          0                    0       57     410
6-24 months                   IRC              INDIA                          0                    1       13     410
6-24 months                   IRC              INDIA                          1                    0      226     410
6-24 months                   IRC              INDIA                          1                    1      114     410
6-24 months                   JiVitA-3         BANGLADESH                     0                    0      989   17212
6-24 months                   JiVitA-3         BANGLADESH                     0                    1      124   17212
6-24 months                   JiVitA-3         BANGLADESH                     1                    0    13399   17212
6-24 months                   JiVitA-3         BANGLADESH                     1                    1     2700   17212
6-24 months                   JiVitA-4         BANGLADESH                     0                    0      296    4510
6-24 months                   JiVitA-4         BANGLADESH                     0                    1       73    4510
6-24 months                   JiVitA-4         BANGLADESH                     1                    0     3079    4510
6-24 months                   JiVitA-4         BANGLADESH                     1                    1     1062    4510
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0      176     472
6-24 months                   NIH-Crypto       BANGLADESH                     0                    1       18     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0      232     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                    1       46     472
6-24 months                   PROBIT           BELARUS                        0                    0     1901   16598
6-24 months                   PROBIT           BELARUS                        0                    1       18   16598
6-24 months                   PROBIT           BELARUS                        1                    0    14558   16598
6-24 months                   PROBIT           BELARUS                        1                    1      121   16598
6-24 months                   PROVIDE          BANGLADESH                     0                    0      124     615
6-24 months                   PROVIDE          BANGLADESH                     0                    1       19     615
6-24 months                   PROVIDE          BANGLADESH                     1                    0      392     615
6-24 months                   PROVIDE          BANGLADESH                     1                    1       80     615
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      159    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       27    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1516    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      294    1996
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0      827   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    1       83   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0     8872   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    1      941   10723


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA

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
![](/tmp/13b196b7-3472-40fa-a324-ba763693c623/700c91ae-52ee-45d0-9fe1-04b5a3148407/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13b196b7-3472-40fa-a324-ba763693c623/700c91ae-52ee-45d0-9fe1-04b5a3148407/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13b196b7-3472-40fa-a324-ba763693c623/700c91ae-52ee-45d0-9fe1-04b5a3148407/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13b196b7-3472-40fa-a324-ba763693c623/700c91ae-52ee-45d0-9fe1-04b5a3148407/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368958   0.5031042
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.4606414   0.4078197   0.5134631
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                0.4571429   0.3403007   0.5739850
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.5339233   0.4807556   0.5870910
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                0.1268456   0.1076897   0.1460016
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    NA                0.1721923   0.1667650   0.1776197
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                0.2135135   0.1547580   0.2722690
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    NA                0.2717365   0.2562153   0.2872577
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                0.1039604   0.0618288   0.1460920
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    NA                0.1666667   0.1240238   0.2093095
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                0.0753074   0.0602081   0.0904066
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                0.0670597   0.0551025   0.0790169
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                0.1698113   0.1114080   0.2282146
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    NA                0.1799242   0.1471359   0.2127126
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1792453   0.1276033   0.2308873
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2011199   0.1841454   0.2180944
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                0.0875657   0.0711711   0.1039602
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.1030695   0.0977134   0.1084256
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3478261   0.1529008   0.5427514
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    NA                0.3058104   0.2558000   0.3558208
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                0.3731343   0.2571797   0.4890889
0-6 months (no birth wast)    IRC              INDIA                          1                    NA                0.3343653   0.2828504   0.3858802
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                0.0486968   0.0359867   0.0614070
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    NA                0.0731697   0.0694318   0.0769077
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                0.0307263   0.0032182   0.0582343
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    NA                0.0285927   0.0232597   0.0339258
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                0.0676653   0.0546908   0.0806398
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                0.0603781   0.0489097   0.0718465
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                0.0759494   0.0346115   0.1172872
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    NA                0.0476190   0.0293892   0.0658489
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0616114   0.0291609   0.0940619
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0884831   0.0764369   0.1005294
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                0.0194863   0.0114230   0.0275495
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                0.0332921   0.0301001   0.0364841
6-24 months                   IRC              INDIA                          0                    NA                0.1857143   0.0945047   0.2769239
6-24 months                   IRC              INDIA                          1                    NA                0.3352941   0.2850522   0.3855361
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                0.1114106   0.0907564   0.1320648
6-24 months                   JiVitA-3         BANGLADESH                     1                    NA                0.1677123   0.1613333   0.1740912
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                0.1978320   0.1415736   0.2540904
6-24 months                   JiVitA-4         BANGLADESH                     1                    NA                0.2564598   0.2413023   0.2716173
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                0.0927835   0.0519141   0.1336529
6-24 months                   NIH-Crypto       BANGLADESH                     1                    NA                0.1654676   0.1217391   0.2091961
6-24 months                   PROBIT           BELARUS                        0                    NA                0.0093799   0.0015144   0.0172454
6-24 months                   PROBIT           BELARUS                        1                    NA                0.0082431   0.0041613   0.0123248
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                0.1328671   0.0771890   0.1885453
6-24 months                   PROVIDE          BANGLADESH                     1                    NA                0.1694915   0.1356167   0.2033663
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1451613   0.0945243   0.1957983
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1624309   0.1454343   0.1794275
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                0.0912088   0.0725021   0.1099155
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.0958932   0.0900672   0.1017192


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.1696334   0.1643208   0.1749460
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.2669482   0.2519234   0.2819730
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.1411290   0.1104588   0.1717993
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0680135   0.0562135   0.0798135
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1991507   0.1830179   0.2152836
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1017601   0.0966641   0.1068561
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0718055   0.0681632   0.0754477
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     NA                   NA                0.0287671   0.0234680   0.0340662
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0612233   0.0502388   0.0722078
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0860673   0.0747182   0.0974164
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0321170   0.0291164   0.0351176
6-24 months                   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.1640716   0.1579211   0.1702221
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.2516630   0.2368610   0.2664649
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.1355932   0.1046749   0.1665115
6-24 months                   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months                   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1608216   0.1447012   0.1769421
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0954957   0.0899327   0.1010586


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0                 1.4395044   0.8030978   2.580225
0-24 months (no birth wast)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   IRC              INDIA                          1                    0                 1.1679572   0.8877643   1.536584
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0                 1.3574952   1.1660406   1.580385
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0                 1.2726899   0.9607719   1.685873
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0                 1.6031746   0.9927383   2.588969
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0                 0.8904797   0.7613448   1.041518
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0                 1.0595539   0.7179331   1.563731
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1220375   0.8310464   1.514919
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0                 1.1770533   0.9691951   1.429490
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0                 0.8792049   0.4904064   1.576246
0-6 months (no birth wast)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    IRC              INDIA                          1                    0                 0.8960991   0.6334601   1.267631
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0                 1.5025562   1.1551639   1.954420
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0                 0.9305637   0.3699269   2.340865
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0                 0.8923057   0.7382256   1.078545
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0                 0.6269841   0.3223025   1.219690
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4361495   0.8335668   2.474337
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0                 1.7084916   1.1172365   2.612646
6-24 months                   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   IRC              INDIA                          1                    0                 1.8054299   1.0803876   3.017044
6-24 months                   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3         BANGLADESH                     1                    0                 1.5053530   1.2464932   1.817970
6-24 months                   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4         BANGLADESH                     1                    0                 1.2963516   0.9714678   1.729885
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0                 1.7833733   1.0669775   2.980775
6-24 months                   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   PROBIT           BELARUS                        1                    0                 0.8788027   0.3784339   2.040764
6-24 months                   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE          BANGLADESH                     1                    0                 1.2756467   0.8018618   2.029370
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1189687   0.7774146   1.610583
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0                 1.0513592   0.8488918   1.302117


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1310870   -0.0465745   0.3087484
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0636395   -0.0427971   0.1700762
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0427878    0.0243635   0.0612120
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.0534347   -0.0024178   0.1092871
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0371686    0.0015328   0.0728045
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.0072939   -0.0174684   0.0028807
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0077724   -0.0437050   0.0592497
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0199055   -0.0295618   0.0693727
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0141944   -0.0015964   0.0299852
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0392547   -0.2272721   0.1487628
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0321087   -0.1372038   0.0729864
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                 0.0231086    0.0108033   0.0354139
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                -0.0019591   -0.0278993   0.0239810
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                -0.0064420   -0.0172664   0.0043823
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.0217766   -0.0565158   0.0129626
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244559   -0.0070480   0.0559598
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0126307    0.0046966   0.0205649
6-24 months                   IRC              INDIA                          0                    NA                 0.1240418    0.0375165   0.2105672
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.0526610    0.0325472   0.0727748
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.0538310    0.0007392   0.1069228
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.0428097    0.0074091   0.0782103
6-24 months                   PROBIT           BELARUS                        0                    NA                -0.0010054   -0.0078622   0.0058515
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0281085   -0.0219257   0.0781426
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0156604   -0.0327761   0.0640968
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0042869   -0.0136434   0.0222171


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.2906024   -0.2363609   0.5929627
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.1221999   -0.1082930   0.3047569
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.2522366    0.1350424   0.3535520
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.2001688   -0.0402976   0.3850510
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.2633663   -0.0308441   0.4736069
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.1072415   -0.2700321   0.0346829
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0437674   -0.2947761   0.2937923
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0999517   -0.1860012   0.3169595
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1394891   -0.0304082   0.2813731
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1272142   -0.9353750   0.3434803
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0941533   -0.4501527   0.1744515
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                 0.3218225    0.1265910   0.4734143
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                -0.0681032   -1.4789041   0.5397787
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                -0.1052218   -0.3044913   0.0636080
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                -0.4019843   -1.1985729   0.1059838
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2841490   -0.1909202   0.5697087
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3932725    0.0923109   0.5944446
6-24 months                   IRC              INDIA                          0                    NA                 0.4004499    0.0490764   0.6219883
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.3209634    0.1868215   0.4329773
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.2139011   -0.0299002   0.3999890
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.3157216    0.0093736   0.5273326
6-24 months                   PROBIT           BELARUS                        0                    NA                -0.1200528   -1.3324879   0.4621545
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.1746133   -0.2012267   0.4328604
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0973771   -0.2599959   0.3533884
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0448908   -0.1625778   0.2153354
