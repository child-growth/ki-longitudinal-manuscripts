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

**Outcome Variable:** haz

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

agecat      studyid          country                        vagbrth    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              11      92
Birth       CMC-V-BCS-2002   INDIA                          1              81      92
Birth       IRC              INDIA                          0              68     388
Birth       IRC              INDIA                          1             320     388
Birth       JiVitA-3         BANGLADESH                     0             539   22418
Birth       JiVitA-3         BANGLADESH                     1           21879   22418
Birth       JiVitA-4         BANGLADESH                     0              76    2822
Birth       JiVitA-4         BANGLADESH                     1            2746    2822
Birth       NIH-Crypto       BANGLADESH                     0             186     477
Birth       NIH-Crypto       BANGLADESH                     1             291     477
Birth       PROBIT           BELARUS                        0            1597   13893
Birth       PROBIT           BELARUS                        1           12296   13893
Birth       PROVIDE          BANGLADESH                     0             108     539
Birth       PROVIDE          BANGLADESH                     1             431     539
Birth       ZVITAMBO         ZIMBABWE                       0            1166   13761
Birth       ZVITAMBO         ZIMBABWE                       1           12595   13761
6 months    CMC-V-BCS-2002   INDIA                          0              25     369
6 months    CMC-V-BCS-2002   INDIA                          1             344     369
6 months    IRC              INDIA                          0              69     407
6 months    IRC              INDIA                          1             338     407
6 months    JiVitA-3         BANGLADESH                     0            1077   16732
6 months    JiVitA-3         BANGLADESH                     1           15655   16732
6 months    JiVitA-4         BANGLADESH                     0             336    4052
6 months    JiVitA-4         BANGLADESH                     1            3716    4052
6 months    NIH-Crypto       BANGLADESH                     0             187     457
6 months    NIH-Crypto       BANGLADESH                     1             270     457
6 months    PROBIT           BELARUS                        0            1799   15760
6 months    PROBIT           BELARUS                        1           13961   15760
6 months    PROVIDE          BANGLADESH                     0             139     604
6 months    PROVIDE          BANGLADESH                     1             465     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005
6 months    ZVITAMBO         ZIMBABWE                       0             740    8601
6 months    ZVITAMBO         ZIMBABWE                       1            7861    8601
24 months   CMC-V-BCS-2002   INDIA                          0              24     371
24 months   CMC-V-BCS-2002   INDIA                          1             347     371
24 months   IRC              INDIA                          0              69     409
24 months   IRC              INDIA                          1             340     409
24 months   JiVitA-3         BANGLADESH                     0             480    8584
24 months   JiVitA-3         BANGLADESH                     1            8104    8584
24 months   JiVitA-4         BANGLADESH                     0             323    4020
24 months   JiVitA-4         BANGLADESH                     1            3697    4020
24 months   NIH-Crypto       BANGLADESH                     0              99     260
24 months   NIH-Crypto       BANGLADESH                     1             161     260
24 months   PROBIT           BELARUS                        0             472    4035
24 months   PROBIT           BELARUS                        1            3563    4035
24 months   PROVIDE          BANGLADESH                     0             137     578
24 months   PROVIDE          BANGLADESH                     1             441     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ZVITAMBO         ZIMBABWE                       0             133    1619
24 months   ZVITAMBO         ZIMBABWE                       1            1486    1619


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/384440d5-4d51-4d7c-a29c-d7717e9683d3/47b6b60a-4b6d-4581-ae62-d248e2ee6cf1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/384440d5-4d51-4d7c-a29c-d7717e9683d3/47b6b60a-4b6d-4581-ae62-d248e2ee6cf1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/384440d5-4d51-4d7c-a29c-d7717e9683d3/47b6b60a-4b6d-4581-ae62-d248e2ee6cf1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -1.1418182   -1.7488113   -0.5348251
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.9366667   -1.1678199   -0.7055134
Birth       IRC              INDIA                          0                    NA                -0.1467647   -0.5389056    0.2453762
Birth       IRC              INDIA                          1                    NA                -0.3423125   -0.5182841   -0.1663409
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1935065   -1.2973967   -1.0896163
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.5989908   -1.6183497   -1.5796319
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.1663158   -1.4501885   -0.8824430
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5330444   -1.5829937   -1.4830951
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.9353763   -1.0634434   -0.8073093
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9560825   -1.0629549   -0.8492101
Birth       PROBIT           BELARUS                        0                    NA                 1.3411991    1.1661922    1.5162060
Birth       PROBIT           BELARUS                        1                    NA                 1.3075769    1.1462012    1.4689525
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.7319444   -0.9144312   -0.5494576
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9234803   -1.0050148   -0.8419457
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.1914666   -0.2614539   -0.1214792
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5253696   -0.5468855   -0.5038537
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4450667   -1.9438291   -0.9463042
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4218798   -1.5688799   -1.2748798
6 months    IRC              INDIA                          0                    NA                -1.1483575   -1.5281894   -0.7685255
6 months    IRC              INDIA                          1                    NA                -1.2519724   -1.3898832   -1.1140616
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.9595172   -1.0399826   -0.8790517
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3377470   -1.3608043   -1.3146898
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.0916071   -1.2218760   -0.9613383
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3734607   -1.4172067   -1.3297148
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1741176   -1.3139124   -1.0343229
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3417593   -1.4576359   -1.2258826
6 months    PROBIT           BELARUS                        0                    NA                 0.1538633    0.0501350    0.2575915
6 months    PROBIT           BELARUS                        1                    NA                 0.0908099   -0.0019885    0.1836082
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.9716667   -1.1320520   -0.8112813
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1275699   -1.2112420   -1.0438978
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4889109   -0.6482470   -0.3295749
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5514519   -0.6033028   -0.4996010
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.9157095   -1.0000355   -0.8313834
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.8641560   -0.8911340   -0.8371780
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4136111   -2.8062260   -2.0209962
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5689145   -2.6716936   -2.4661354
24 months   IRC              INDIA                          0                    NA                -1.6522222   -1.8715963   -1.4328481
24 months   IRC              INDIA                          1                    NA                -1.8285196   -1.9316702   -1.7253691
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.6076458   -1.7248026   -1.4904891
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.0385180   -2.0658568   -2.0111793
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.4771517   -1.6038486   -1.3504549
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7993400   -1.8385916   -1.7600884
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4916162   -1.6808675   -1.3023648
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.6305590   -1.7873542   -1.4737638
24 months   PROBIT           BELARUS                        0                    NA                -0.1545021   -0.3768459    0.0678417
24 months   PROBIT           BELARUS                        1                    NA                -0.1429362   -0.4447200    0.1588476
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.3868613   -1.5544929   -1.2192297
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6693878   -1.7645112   -1.5742643
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5032707   -1.6823779   -1.3241635
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.6133849   -1.6737282   -1.5530416


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5892417   -1.6084834   -1.5700000
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5231680   -1.5722488   -1.4740872
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9480084   -1.0301396   -0.8658772
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4970772   -0.5177022   -0.4764523
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3134013   -1.3366073   -1.2901952
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3500888   -1.3921730   -1.3080047
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.2731619   -1.3626957   -1.1836282
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5455565   -0.5948696   -0.4962435
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8685914   -0.8942954   -0.8428875
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0144245   -2.0420946   -1.9867544
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7734527   -1.8119258   -1.7349797
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.5776538   -1.6988448   -1.4564629
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6043391   -1.6616652   -1.5470130


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.2051515   -0.4443656    0.8546686
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -0.1955478   -0.6253622    0.2342667
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.4054843   -0.5107270   -0.3002417
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.3667286   -0.6558537   -0.0776036
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.0207061   -0.1875080    0.1460958
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -0.0336223   -0.1449055    0.0776610
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1915358   -0.3914091    0.0083374
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.3339030   -0.4071230   -0.2606831
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0231868   -0.4967872    0.5431608
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.1036149   -0.5077086    0.3004788
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.3782299   -0.4596973   -0.2967624
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.2818536   -0.4179268   -0.1457804
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1676416   -0.3492180    0.0139348
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0630534   -0.1332606    0.0071539
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1559032   -0.3368023    0.0249959
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0625410   -0.2301014    0.1050194
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0515535   -0.0369829    0.1400899
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1553034   -0.5611482    0.2505414
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1762974   -0.4187124    0.0661176
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.4308722   -0.5495660   -0.3121784
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.3221883   -0.4512938   -0.1930828
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1389428   -0.3847086    0.1068229
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                  0.0115659   -0.2528656    0.2759974
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.2825264   -0.4752668   -0.0897861
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.1101142   -0.2991135    0.0788850


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                 0.1806225   -0.3913984    0.7526435
Birth       IRC              INDIA                          0                    NA                -0.1612765   -0.5158401    0.1932870
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.3957352   -0.4982182   -0.2932521
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.3568522   -0.6380828   -0.0756215
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0126320   -0.1143957    0.0891316
Birth       PROBIT           BELARUS                        0                    NA                -0.0297574   -0.1280509    0.0685361
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.1531576   -0.3131133    0.0067981
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.3056107   -0.3726446   -0.2385768
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0216159   -0.4631299    0.5063617
6 months    IRC              INDIA                          0                    NA                -0.0860487   -0.4216564    0.2495590
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.3538841   -0.4298891   -0.2778791
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.2584817   -0.3833448   -0.1336186
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0990443   -0.2065878    0.0084992
6 months    PROBIT           BELARUS                        0                    NA                -0.0558559   -0.1178810    0.0061693
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.1200248   -0.2593916    0.0193420
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0566456   -0.2084131    0.0951220
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0471180   -0.0338016    0.1280376
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.1452568   -0.5248674    0.2343538
24 months   IRC              INDIA                          0                    NA                -0.1465553   -0.3481757    0.0550651
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.4067787   -0.5183961   -0.2951613
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.2963010   -0.4156907   -0.1769113
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0860377   -0.2384450    0.0663697
24 months   PROBIT           BELARUS                        0                    NA                 0.0102130   -0.2234243    0.2438502
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.2155608   -0.3629434   -0.0681782
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.1010684   -0.2745477    0.0724109
