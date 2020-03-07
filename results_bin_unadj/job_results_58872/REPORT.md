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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        vagbrth    stunted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                0        9      92
Birth       CMC-V-BCS-2002   INDIA                          0                1        2      92
Birth       CMC-V-BCS-2002   INDIA                          1                0       66      92
Birth       CMC-V-BCS-2002   INDIA                          1                1       15      92
Birth       IRC              INDIA                          0                0       58     388
Birth       IRC              INDIA                          0                1       10     388
Birth       IRC              INDIA                          1                0      285     388
Birth       IRC              INDIA                          1                1       35     388
Birth       JiVitA-3         BANGLADESH                     0                0      418   22418
Birth       JiVitA-3         BANGLADESH                     0                1      121   22418
Birth       JiVitA-3         BANGLADESH                     1                0    14626   22418
Birth       JiVitA-3         BANGLADESH                     1                1     7253   22418
Birth       JiVitA-4         BANGLADESH                     0                0       57    2822
Birth       JiVitA-4         BANGLADESH                     0                1       19    2822
Birth       JiVitA-4         BANGLADESH                     1                0     1908    2822
Birth       JiVitA-4         BANGLADESH                     1                1      838    2822
Birth       NIH-Crypto       BANGLADESH                     0                0      160     477
Birth       NIH-Crypto       BANGLADESH                     0                1       26     477
Birth       NIH-Crypto       BANGLADESH                     1                0      253     477
Birth       NIH-Crypto       BANGLADESH                     1                1       38     477
Birth       PROBIT           BELARUS                        0                0     1595   13893
Birth       PROBIT           BELARUS                        0                1        2   13893
Birth       PROBIT           BELARUS                        1                0    12264   13893
Birth       PROBIT           BELARUS                        1                1       32   13893
Birth       PROVIDE          BANGLADESH                     0                0       98     539
Birth       PROVIDE          BANGLADESH                     0                1       10     539
Birth       PROVIDE          BANGLADESH                     1                0      393     539
Birth       PROVIDE          BANGLADESH                     1                1       38     539
Birth       ZVITAMBO         ZIMBABWE                       0                0     1076   13761
Birth       ZVITAMBO         ZIMBABWE                       0                1       90   13761
Birth       ZVITAMBO         ZIMBABWE                       1                0    11273   13761
Birth       ZVITAMBO         ZIMBABWE                       1                1     1322   13761
6 months    CMC-V-BCS-2002   INDIA                          0                0       17     369
6 months    CMC-V-BCS-2002   INDIA                          0                1        8     369
6 months    CMC-V-BCS-2002   INDIA                          1                0      241     369
6 months    CMC-V-BCS-2002   INDIA                          1                1      103     369
6 months    IRC              INDIA                          0                0       50     407
6 months    IRC              INDIA                          0                1       19     407
6 months    IRC              INDIA                          1                0      257     407
6 months    IRC              INDIA                          1                1       81     407
6 months    JiVitA-3         BANGLADESH                     0                0      909   16732
6 months    JiVitA-3         BANGLADESH                     0                1      168   16732
6 months    JiVitA-3         BANGLADESH                     1                0    11614   16732
6 months    JiVitA-3         BANGLADESH                     1                1     4041   16732
6 months    JiVitA-4         BANGLADESH                     0                0      281    4052
6 months    JiVitA-4         BANGLADESH                     0                1       55    4052
6 months    JiVitA-4         BANGLADESH                     1                0     2758    4052
6 months    JiVitA-4         BANGLADESH                     1                1      958    4052
6 months    NIH-Crypto       BANGLADESH                     0                0      151     457
6 months    NIH-Crypto       BANGLADESH                     0                1       36     457
6 months    NIH-Crypto       BANGLADESH                     1                0      198     457
6 months    NIH-Crypto       BANGLADESH                     1                1       72     457
6 months    PROBIT           BELARUS                        0                0     1725   15760
6 months    PROBIT           BELARUS                        0                1       74   15760
6 months    PROBIT           BELARUS                        1                0    13415   15760
6 months    PROBIT           BELARUS                        1                1      546   15760
6 months    PROVIDE          BANGLADESH                     0                0      117     604
6 months    PROVIDE          BANGLADESH                     0                1       22     604
6 months    PROVIDE          BANGLADESH                     1                0      391     604
6 months    PROVIDE          BANGLADESH                     1                1       74     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      172    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1636    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      180    2005
6 months    ZVITAMBO         ZIMBABWE                       0                0      628    8601
6 months    ZVITAMBO         ZIMBABWE                       0                1      112    8601
6 months    ZVITAMBO         ZIMBABWE                       1                0     6568    8601
6 months    ZVITAMBO         ZIMBABWE                       1                1     1293    8601
24 months   CMC-V-BCS-2002   INDIA                          0                0        8     371
24 months   CMC-V-BCS-2002   INDIA                          0                1       16     371
24 months   CMC-V-BCS-2002   INDIA                          1                0       97     371
24 months   CMC-V-BCS-2002   INDIA                          1                1      250     371
24 months   IRC              INDIA                          0                0       42     409
24 months   IRC              INDIA                          0                1       27     409
24 months   IRC              INDIA                          1                0      195     409
24 months   IRC              INDIA                          1                1      145     409
24 months   JiVitA-3         BANGLADESH                     0                0      324    8584
24 months   JiVitA-3         BANGLADESH                     0                1      156    8584
24 months   JiVitA-3         BANGLADESH                     1                0     4043    8584
24 months   JiVitA-3         BANGLADESH                     1                1     4061    8584
24 months   JiVitA-4         BANGLADESH                     0                0      237    4020
24 months   JiVitA-4         BANGLADESH                     0                1       86    4020
24 months   JiVitA-4         BANGLADESH                     1                0     2177    4020
24 months   JiVitA-4         BANGLADESH                     1                1     1520    4020
24 months   NIH-Crypto       BANGLADESH                     0                0       75     260
24 months   NIH-Crypto       BANGLADESH                     0                1       24     260
24 months   NIH-Crypto       BANGLADESH                     1                0      104     260
24 months   NIH-Crypto       BANGLADESH                     1                1       57     260
24 months   PROBIT           BELARUS                        0                0      439    4035
24 months   PROBIT           BELARUS                        0                1       33    4035
24 months   PROBIT           BELARUS                        1                0     3321    4035
24 months   PROBIT           BELARUS                        1                1      242    4035
24 months   PROVIDE          BANGLADESH                     0                0       99     578
24 months   PROVIDE          BANGLADESH                     0                1       38     578
24 months   PROVIDE          BANGLADESH                     1                0      289     578
24 months   PROVIDE          BANGLADESH                     1                1      152     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1       6
24 months   ZVITAMBO         ZIMBABWE                       0                0       96    1619
24 months   ZVITAMBO         ZIMBABWE                       0                1       37    1619
24 months   ZVITAMBO         ZIMBABWE                       1                0      962    1619
24 months   ZVITAMBO         ZIMBABWE                       1                1      524    1619


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/8c54911a-323a-42ed-882a-7ab08c238e21/2228872c-d2fe-4306-9a94-f44143485995/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c54911a-323a-42ed-882a-7ab08c238e21/2228872c-d2fe-4306-9a94-f44143485995/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c54911a-323a-42ed-882a-7ab08c238e21/2228872c-d2fe-4306-9a94-f44143485995/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c54911a-323a-42ed-882a-7ab08c238e21/2228872c-d2fe-4306-9a94-f44143485995/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          0                    NA                0.1470588   0.0627721   0.2313455
Birth       IRC              INDIA                          1                    NA                0.1093750   0.0751345   0.1436155
Birth       JiVitA-3         BANGLADESH                     0                    NA                0.2244898   0.1862733   0.2627063
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.3315051   0.3240687   0.3389414
Birth       JiVitA-4         BANGLADESH                     0                    NA                0.2500000   0.1393237   0.3606763
Birth       JiVitA-4         BANGLADESH                     1                    NA                0.3051712   0.2846846   0.3256577
Birth       NIH-Crypto       BANGLADESH                     0                    NA                0.1397849   0.0898987   0.1896712
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.1305842   0.0918302   0.1693382
Birth       PROVIDE          BANGLADESH                     0                    NA                0.0925926   0.0378748   0.1473104
Birth       PROVIDE          BANGLADESH                     1                    NA                0.0881671   0.0613739   0.1149602
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.0771870   0.0618675   0.0925064
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1049623   0.0996092   0.1103153
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2994186   0.2509538   0.3478835
6 months    IRC              INDIA                          0                    NA                0.2753623   0.1698337   0.3808910
6 months    IRC              INDIA                          1                    NA                0.2396450   0.1940816   0.2852084
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.1559889   0.1308441   0.1811336
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.2581284   0.2497891   0.2664676
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.1636905   0.1215487   0.2058322
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.2578041   0.2408233   0.2747849
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.1925134   0.1359414   0.2490853
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2666667   0.2138614   0.3194719
6 months    PROBIT           BELARUS                        0                    NA                0.0411340   0.0292129   0.0530550
6 months    PROBIT           BELARUS                        1                    NA                0.0391089   0.0288156   0.0494023
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1582734   0.0975452   0.2190015
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1591398   0.1258637   0.1924159
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0899471   0.0491478   0.1307464
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0991189   0.0853719   0.1128660
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1513514   0.1255279   0.1771748
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1644829   0.1562874   0.1726783
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6666667   0.4778144   0.8555190
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7204611   0.6731791   0.7677431
24 months   IRC              INDIA                          0                    NA                0.3913043   0.2760088   0.5065999
24 months   IRC              INDIA                          1                    NA                0.4264706   0.3738370   0.4791041
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.3250000   0.2773712   0.3726288
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.5011106   0.4878291   0.5143920
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.2662539   0.1948801   0.3376276
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.4111442   0.3919032   0.4303852
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2424242   0.1578441   0.3270044
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3540373   0.2800256   0.4280489
24 months   PROBIT           BELARUS                        0                    NA                0.0699153   0.0172098   0.1226208
24 months   PROBIT           BELARUS                        1                    NA                0.0679203   0.0431814   0.0926592
24 months   PROVIDE          BANGLADESH                     0                    NA                0.2773723   0.2023392   0.3524053
24 months   PROVIDE          BANGLADESH                     1                    NA                0.3446712   0.3002759   0.3890665
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.2781955   0.2020154   0.3543755
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3526245   0.3283244   0.3769245


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3289321   0.3215578   0.3363064
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.3036853   0.2836812   0.3236894
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1341719   0.1035529   0.1647909
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1026088   0.0975387   0.1076790
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2515539   0.2434271   0.2596807
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2500000   0.2338924   0.2661076
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2363239   0.1973320   0.2753157
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0982544   0.0852222   0.1112865
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1633531   0.1555398   0.1711664
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4912628   0.4781447   0.5043809
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3995025   0.3807924   0.4182126
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3115385   0.2551365   0.3679404
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3465102   0.3233236   0.3696967


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       IRC              INDIA                          1                    0                 0.7437500   0.3870802   1.429068
Birth       JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 1.4767045   1.2444934   1.752244
Birth       JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 1.2206846   0.7775872   1.916275
Birth       NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 0.9341792   0.5872885   1.485966
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     1                    0                 0.9522042   0.4899332   1.850646
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 1.3598447   1.1078826   1.669110
6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 0.9356831   0.5162674   1.695832
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA                          1                    0                 0.8702896   0.5673744   1.334928
6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 1.6547874   1.4055850   1.948172
6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 1.5749486   1.2084999   2.052514
6 months    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 1.3851852   0.9718846   1.974245
6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        1                    0                 0.9507702   0.7405803   1.220616
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.0054741   0.6495277   1.556482
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1019694   0.6857632   1.770781
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.0867620   0.9097885   1.298161
24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 1.0806916   0.8080108   1.445395
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   IRC              INDIA                          1                    0                 1.0898693   0.7918447   1.500061
24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 1.5418787   1.3299516   1.787576
24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 1.5441810   1.1773905   2.025237
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.4604037   0.9723728   2.193376
24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        1                    0                 0.9714660   0.5324875   1.772335
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     1                    0                 1.2426304   0.9209188   1.676728
24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2675421   0.9557159   1.681110


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA                          0                    NA                -0.0310794   -0.1061249   0.0439660
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.1044423    0.0666999   0.1421847
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0536853   -0.0567419   0.1641126
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0056130   -0.0441531   0.0329270
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0035388   -0.0522568   0.0451792
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.0254219    0.0105685   0.0402752
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0191870   -0.1957642   0.1573902
6 months    IRC              INDIA                          0                    NA                -0.0296621   -0.1251289   0.0658047
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0955651    0.0710596   0.1200705
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0863095    0.0449763   0.1276427
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0438105   -0.0020329   0.0896539
6 months    PROBIT           BELARUS                        0                    NA                -0.0017939   -0.0107358   0.0071480
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0006670   -0.0526443   0.0539784
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0083073   -0.0306876   0.0473021
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0120017   -0.0127602   0.0367637
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0503145   -0.1317778   0.2324068
24 months   IRC              INDIA                          0                    NA                 0.0292335   -0.0761337   0.1346008
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.1662628    0.1201703   0.2123553
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.1332486    0.0652358   0.2012614
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0691142   -0.0007935   0.1390219
24 months   PROBIT           BELARUS                        0                    NA                -0.0017616   -0.0390041   0.0354809
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0513475   -0.0152121   0.1179071
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0683147   -0.0050851   0.1417145


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       IRC              INDIA                          0                    NA                -0.2679739   -1.1075267   0.2371353
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.3175194    0.1925842   0.4231227
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.1767795   -0.2792815   0.4702557
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0418347   -0.3724397   0.2091314
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0397377   -0.7595215   0.3855975
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.2477551    0.0886523   0.3790818
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637838   -0.8471227   0.3873521
6 months    IRC              INDIA                          0                    NA                -0.1207246   -0.5849288   0.2075204
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.3798989    0.2747464   0.4698056
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.3452381    0.1593679   0.4900110
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.1853832   -0.0321265   0.3570551
6 months    PROBIT           BELARUS                        0                    NA                -0.0455988   -0.3028537   0.1608598
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0041966   -0.3946240   0.2889665
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0845487   -0.4120664   0.4065073
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0734712   -0.0911882   0.2132836
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0701754   -0.2220596   0.2925274
24 months   IRC              INDIA                          0                    NA                 0.0695147   -0.2180729   0.2892027
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.3384396    0.2373766   0.4261098
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.3335364    0.1377152   0.4848874
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.2218481   -0.0368282   0.4159877
24 months   PROBIT           BELARUS                        0                    NA                -0.0258475   -0.7415186   0.3957211
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.1562044   -0.0724560   0.3361116
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1971506   -0.0451685   0.3832888
