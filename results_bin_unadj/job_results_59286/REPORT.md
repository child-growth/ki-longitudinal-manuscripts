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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        vagbrth    ever_co   n_cell       n
------------  ---------------  -----------------------------  --------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          0                0       21     373
0-24 months   CMC-V-BCS-2002   INDIA                          0                1        4     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                0      266     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                1       82     373
0-24 months   IRC              INDIA                          0                0       60     410
0-24 months   IRC              INDIA                          0                1       10     410
0-24 months   IRC              INDIA                          1                0      274     410
0-24 months   IRC              INDIA                          1                1       66     410
0-24 months   JiVitA-3         BANGLADESH                     0                0     1402   26797
0-24 months   JiVitA-3         BANGLADESH                     0                1      111   26797
0-24 months   JiVitA-3         BANGLADESH                     1                0    23011   26797
0-24 months   JiVitA-3         BANGLADESH                     1                1     2273   26797
0-24 months   JiVitA-4         BANGLADESH                     0                0      330    4520
0-24 months   JiVitA-4         BANGLADESH                     0                1       41    4520
0-24 months   JiVitA-4         BANGLADESH                     1                0     3447    4520
0-24 months   JiVitA-4         BANGLADESH                     1                1      702    4520
0-24 months   NIH-Crypto       BANGLADESH                     0                0      189     500
0-24 months   NIH-Crypto       BANGLADESH                     0                1       15     500
0-24 months   NIH-Crypto       BANGLADESH                     1                0      259     500
0-24 months   NIH-Crypto       BANGLADESH                     1                1       37     500
0-24 months   PROBIT           BELARUS                        0                0     1949   16897
0-24 months   PROBIT           BELARUS                        0                1        2   16897
0-24 months   PROBIT           BELARUS                        1                0    14930   16897
0-24 months   PROBIT           BELARUS                        1                1       16   16897
0-24 months   PROVIDE          BANGLADESH                     0                0      144     700
0-24 months   PROVIDE          BANGLADESH                     0                1       16     700
0-24 months   PROVIDE          BANGLADESH                     1                0      466     700
0-24 months   PROVIDE          BANGLADESH                     1                1       74     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      203    2367
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2367
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2046    2367
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      109    2367
0-24 months   ZVITAMBO         ZIMBABWE                       0                0     1130   13827
0-24 months   ZVITAMBO         ZIMBABWE                       0                1       40   13827
0-24 months   ZVITAMBO         ZIMBABWE                       1                0    12114   13827
0-24 months   ZVITAMBO         ZIMBABWE                       1                1      543   13827
0-6 months    CMC-V-BCS-2002   INDIA                          0                0       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          0                1        2     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                0      314     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                1       29     368
0-6 months    IRC              INDIA                          0                0       63     409
0-6 months    IRC              INDIA                          0                1        7     409
0-6 months    IRC              INDIA                          1                0      321     409
0-6 months    IRC              INDIA                          1                1       18     409
0-6 months    JiVitA-3         BANGLADESH                     0                0     1439   26735
0-6 months    JiVitA-3         BANGLADESH                     0                1       71   26735
0-6 months    JiVitA-3         BANGLADESH                     1                0    24235   26735
0-6 months    JiVitA-3         BANGLADESH                     1                1      990   26735
0-6 months    JiVitA-4         BANGLADESH                     0                0      351    4474
0-6 months    JiVitA-4         BANGLADESH                     0                1       16    4474
0-6 months    JiVitA-4         BANGLADESH                     1                0     3999    4474
0-6 months    JiVitA-4         BANGLADESH                     1                1      108    4474
0-6 months    NIH-Crypto       BANGLADESH                     0                0      198     500
0-6 months    NIH-Crypto       BANGLADESH                     0                1        6     500
0-6 months    NIH-Crypto       BANGLADESH                     1                0      292     500
0-6 months    NIH-Crypto       BANGLADESH                     1                1        4     500
0-6 months    PROBIT           BELARUS                        0                0     1950   16892
0-6 months    PROBIT           BELARUS                        0                1        1   16892
0-6 months    PROBIT           BELARUS                        1                0    14929   16892
0-6 months    PROBIT           BELARUS                        1                1       12   16892
0-6 months    PROVIDE          BANGLADESH                     0                0      155     700
0-6 months    PROVIDE          BANGLADESH                     0                1        5     700
0-6 months    PROVIDE          BANGLADESH                     1                0      515     700
0-6 months    PROVIDE          BANGLADESH                     1                1       25     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      208    2367
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        4    2367
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     2140    2367
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       15    2367
0-6 months    ZVITAMBO         ZIMBABWE                       0                0     1155   13732
0-6 months    ZVITAMBO         ZIMBABWE                       0                1       10   13732
0-6 months    ZVITAMBO         ZIMBABWE                       1                0    12411   13732
0-6 months    ZVITAMBO         ZIMBABWE                       1                1      156   13732
6-24 months   CMC-V-BCS-2002   INDIA                          0                0       23     373
6-24 months   CMC-V-BCS-2002   INDIA                          0                1        2     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                0      280     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                1       68     373
6-24 months   IRC              INDIA                          0                0       64     410
6-24 months   IRC              INDIA                          0                1        6     410
6-24 months   IRC              INDIA                          1                0      282     410
6-24 months   IRC              INDIA                          1                1       58     410
6-24 months   JiVitA-3         BANGLADESH                     0                0     1064   17194
6-24 months   JiVitA-3         BANGLADESH                     0                1       49   17194
6-24 months   JiVitA-3         BANGLADESH                     1                0    14634   17194
6-24 months   JiVitA-3         BANGLADESH                     1                1     1447   17194
6-24 months   JiVitA-4         BANGLADESH                     0                0      339    4510
6-24 months   JiVitA-4         BANGLADESH                     0                1       30    4510
6-24 months   JiVitA-4         BANGLADESH                     1                0     3501    4510
6-24 months   JiVitA-4         BANGLADESH                     1                1      640    4510
6-24 months   NIH-Crypto       BANGLADESH                     0                0      183     472
6-24 months   NIH-Crypto       BANGLADESH                     0                1       11     472
6-24 months   NIH-Crypto       BANGLADESH                     1                0      244     472
6-24 months   NIH-Crypto       BANGLADESH                     1                1       34     472
6-24 months   PROBIT           BELARUS                        0                0     1918   16598
6-24 months   PROBIT           BELARUS                        0                1        1   16598
6-24 months   PROBIT           BELARUS                        1                0    14674   16598
6-24 months   PROBIT           BELARUS                        1                1        5   16598
6-24 months   PROVIDE          BANGLADESH                     0                0      130     614
6-24 months   PROVIDE          BANGLADESH                     0                1       13     614
6-24 months   PROVIDE          BANGLADESH                     1                0      409     614
6-24 months   PROVIDE          BANGLADESH                     1                1       62     614
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      178    1995
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        8    1995
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1705    1995
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      104    1995
6-24 months   ZVITAMBO         ZIMBABWE                       0                0      880   10721
6-24 months   ZVITAMBO         ZIMBABWE                       0                1       30   10721
6-24 months   ZVITAMBO         ZIMBABWE                       1                0     9404   10721
6-24 months   ZVITAMBO         ZIMBABWE                       1                1      407   10721


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/719e367f-7b69-4113-b811-b5a092feac1b/cd9e37ce-9639-4eeb-bc61-4cd8faa5cc34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/719e367f-7b69-4113-b811-b5a092feac1b/cd9e37ce-9639-4eeb-bc61-4cd8faa5cc34/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/719e367f-7b69-4113-b811-b5a092feac1b/cd9e37ce-9639-4eeb-bc61-4cd8faa5cc34/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/719e367f-7b69-4113-b811-b5a092feac1b/cd9e37ce-9639-4eeb-bc61-4cd8faa5cc34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          0                    NA                0.1428571   0.0607829   0.2249314
0-24 months   IRC              INDIA                          1                    NA                0.1941176   0.1520249   0.2362104
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0733642   0.0581242   0.0886042
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0898988   0.0858935   0.0939040
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.1105121   0.0742008   0.1468234
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.1691974   0.1560742   0.1823206
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0735294   0.0376774   0.1093815
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1250000   0.0872866   0.1627134
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1000000   0.0534821   0.1465179
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1370370   0.1080117   0.1660623
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0424528   0.0153069   0.0695988
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0505800   0.0413259   0.0598342
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0341880   0.0237756   0.0446005
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0429012   0.0393709   0.0464315
0-6 months    IRC              INDIA                          0                    NA                0.1000000   0.0296358   0.1703642
0-6 months    IRC              INDIA                          1                    NA                0.0530973   0.0291989   0.0769957
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0470199   0.0344606   0.0595792
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0392468   0.0367359   0.0417577
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0435967   0.0193761   0.0678174
0-6 months    JiVitA-4         BANGLADESH                     1                    NA                0.0262966   0.0203534   0.0322398
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.0312500   0.0042708   0.0582292
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.0462963   0.0285609   0.0640317
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0085837   0.0032863   0.0138811
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0124135   0.0104776   0.0143494
6-24 months   IRC              INDIA                          0                    NA                0.0857143   0.0200549   0.1513737
6-24 months   IRC              INDIA                          1                    NA                0.1705882   0.1305570   0.2106194
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0440252   0.0311372   0.0569131
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0899820   0.0850530   0.0949109
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0813008   0.0509483   0.1116533
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.1545520   0.1420819   0.1670222
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0567010   0.0241228   0.0892793
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1223022   0.0837476   0.1608567
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0909091   0.0437526   0.1380656
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1316348   0.1010766   0.1621930
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0430108   0.0138471   0.0721744
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0574903   0.0467609   0.0682198
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0329670   0.0213657   0.0445684
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0414840   0.0375381   0.0454300


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0889652   0.0850582   0.0928722
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1643805   0.1517702   0.1769909
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1040000   0.0772164   0.1307836
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498521   0.0410826   0.0586217
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0421639   0.0388141   0.0455137
0-6 months    IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396858   0.0371902   0.0421814
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0277157   0.0217808   0.0336506
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120886   0.0102607   0.0139164
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0870071   0.0823429   0.0916713
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1485588   0.1367632   0.1603543
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0953390   0.0688164   0.1218616
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0561404   0.0460367   0.0662440
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0407611   0.0370180   0.0445043


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          1                    0                 1.3588235   0.7353124   2.511043
0-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     1                    0                 1.2253767   0.9920919   1.513517
0-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     1                    0                 1.5310301   1.0967696   2.137234
0-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.7000000   0.9581452   3.016244
0-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     1                    0                 1.3703704   0.8219726   2.284644
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1914411   0.6126664   2.316974
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2548590   0.9153372   1.720318
0-6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          1                    0                 0.5309735   0.2303117   1.224136
0-6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     1                    0                 0.8346850   0.6357340   1.095897
0-6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     1                    0                 0.6031775   0.3361682   1.082265
0-6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     1                    0                 1.4814815   0.5761031   3.809713
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.4461685   0.7651884   2.733188
6-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          1                    0                 1.9901961   0.8932121   4.434423
6-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     1                    0                 2.0438761   1.5129993   2.761026
6-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH                     1                    0                 1.9009901   1.2981419   2.783797
6-24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    0                 2.1569653   1.1200141   4.153965
6-24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     1                    0                 1.4479830   0.8202662   2.556066
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3366501   0.6615928   2.700503
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2583495   0.8739473   1.811829


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC              INDIA                          0                    NA                 0.0425087   -0.0340048   0.1190222
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0156010    0.0008466   0.0303555
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0538684    0.0190583   0.0886785
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0304706   -0.0004142   0.0613553
0-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0285714   -0.0137421   0.0708849
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0073993   -0.0187121   0.0335107
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0079758   -0.0020886   0.0180403
0-6 months    IRC              INDIA                          0                    NA                -0.0388753   -0.1004926   0.0227420
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.0073341   -0.0193314   0.0046633
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0158810   -0.0383911   0.0066290
0-6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0116071   -0.0133041   0.0365183
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0035049   -0.0016568   0.0086665
6-24 months   IRC              INDIA                          0                    NA                 0.0703833    0.0065372   0.1342293
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0429819    0.0298627   0.0561012
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0672579    0.0372667   0.0972491
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0386380    0.0087660   0.0685099
6-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0312407   -0.0118857   0.0743672
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0131296   -0.0150486   0.0413078
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0077941   -0.0034199   0.0190081


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC              INDIA                          0                    NA                 0.2293233   -0.3137534   0.5479041
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.1753608   -0.0084990   0.3257011
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.3277055    0.0787981   0.5093585
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.2929864   -0.0637892   0.5301060
0-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.2222222   -0.1841711   0.4891462
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1484250   -0.5741345   0.5393151
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1891630   -0.0877959   0.3956067
0-6 months    IRC              INDIA                          0                    NA                -0.6360000   -1.9871157   0.1039865
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.1848032   -0.5275683   0.0810502
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.5729982   -1.6171765   0.0545830
0-6 months    PROVIDE          BANGLADESH                     0                    NA                 0.2708333   -0.6021007   0.6681332
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.2899323   -0.2915091   0.6096069
6-24 months   IRC              INDIA                          0                    NA                 0.4508929   -0.1352628   0.7344063
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.4940050    0.3233528   0.6216182
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.4527363    0.2125952   0.6196397
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.4052692    0.0232668   0.6378697
6-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.2557576   -0.1906947   0.5348121
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2338710   -0.4720286   0.6012620
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1912138   -0.1357484   0.4240493
