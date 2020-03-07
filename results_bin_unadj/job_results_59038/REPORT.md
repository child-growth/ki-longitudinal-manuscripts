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

**Outcome Variable:** wasted

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

agecat      studyid          country                        vagbrth    wasted   n_cell       n
----------  ---------------  -----------------------------  --------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0               0        8      86
Birth       CMC-V-BCS-2002   INDIA                          0               1        2      86
Birth       CMC-V-BCS-2002   INDIA                          1               0       67      86
Birth       CMC-V-BCS-2002   INDIA                          1               1        9      86
Birth       IRC              INDIA                          0               0       45     343
Birth       IRC              INDIA                          0               1       21     343
Birth       IRC              INDIA                          1               0      206     343
Birth       IRC              INDIA                          1               1       71     343
Birth       JiVitA-3         BANGLADESH                     0               0      398   17985
Birth       JiVitA-3         BANGLADESH                     0               1      102   17985
Birth       JiVitA-3         BANGLADESH                     1               0    15618   17985
Birth       JiVitA-3         BANGLADESH                     1               1     1867   17985
Birth       JiVitA-4         BANGLADESH                     0               0       57    2395
Birth       JiVitA-4         BANGLADESH                     0               1       14    2395
Birth       JiVitA-4         BANGLADESH                     1               0     2099    2395
Birth       JiVitA-4         BANGLADESH                     1               1      225    2395
Birth       NIH-Crypto       BANGLADESH                     0               0      150     465
Birth       NIH-Crypto       BANGLADESH                     0               1       34     465
Birth       NIH-Crypto       BANGLADESH                     1               0      220     465
Birth       NIH-Crypto       BANGLADESH                     1               1       61     465
Birth       PROBIT           BELARUS                        0               0     1298   13817
Birth       PROBIT           BELARUS                        0               1      293   13817
Birth       PROBIT           BELARUS                        1               0     9613   13817
Birth       PROBIT           BELARUS                        1               1     2613   13817
Birth       PROVIDE          BANGLADESH                     0               0       85     532
Birth       PROVIDE          BANGLADESH                     0               1       23     532
Birth       PROVIDE          BANGLADESH                     1               0      330     532
Birth       PROVIDE          BANGLADESH                     1               1       94     532
Birth       ZVITAMBO         ZIMBABWE                       0               0      906   12814
Birth       ZVITAMBO         ZIMBABWE                       0               1      194   12814
Birth       ZVITAMBO         ZIMBABWE                       1               0     9861   12814
Birth       ZVITAMBO         ZIMBABWE                       1               1     1853   12814
6 months    CMC-V-BCS-2002   INDIA                          0               0       21     368
6 months    CMC-V-BCS-2002   INDIA                          0               1        4     368
6 months    CMC-V-BCS-2002   INDIA                          1               0      301     368
6 months    CMC-V-BCS-2002   INDIA                          1               1       42     368
6 months    IRC              INDIA                          0               0       61     408
6 months    IRC              INDIA                          0               1        7     408
6 months    IRC              INDIA                          1               0      293     408
6 months    IRC              INDIA                          1               1       47     408
6 months    JiVitA-3         BANGLADESH                     0               0     1001   16705
6 months    JiVitA-3         BANGLADESH                     0               1       74   16705
6 months    JiVitA-3         BANGLADESH                     1               0    14288   16705
6 months    JiVitA-3         BANGLADESH                     1               1     1342   16705
6 months    JiVitA-4         BANGLADESH                     0               0      323    4056
6 months    JiVitA-4         BANGLADESH                     0               1       14    4056
6 months    JiVitA-4         BANGLADESH                     1               0     3516    4056
6 months    JiVitA-4         BANGLADESH                     1               1      203    4056
6 months    NIH-Crypto       BANGLADESH                     0               0      185     457
6 months    NIH-Crypto       BANGLADESH                     0               1        2     457
6 months    NIH-Crypto       BANGLADESH                     1               0      257     457
6 months    NIH-Crypto       BANGLADESH                     1               1       13     457
6 months    PROBIT           BELARUS                        0               0     1787   15757
6 months    PROBIT           BELARUS                        0               1       10   15757
6 months    PROBIT           BELARUS                        1               0    13862   15757
6 months    PROBIT           BELARUS                        1               1       98   15757
6 months    PROVIDE          BANGLADESH                     0               0      134     603
6 months    PROVIDE          BANGLADESH                     0               1        5     603
6 months    PROVIDE          BANGLADESH                     1               0      444     603
6 months    PROVIDE          BANGLADESH                     1               1       20     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0      181    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        8    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0     1737    2004
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       78    2004
6 months    ZVITAMBO         ZIMBABWE                       0               0      697    8437
6 months    ZVITAMBO         ZIMBABWE                       0               1       24    8437
6 months    ZVITAMBO         ZIMBABWE                       1               0     7478    8437
6 months    ZVITAMBO         ZIMBABWE                       1               1      238    8437
24 months   CMC-V-BCS-2002   INDIA                          0               0       23     372
24 months   CMC-V-BCS-2002   INDIA                          0               1        2     372
24 months   CMC-V-BCS-2002   INDIA                          1               0      326     372
24 months   CMC-V-BCS-2002   INDIA                          1               1       21     372
24 months   IRC              INDIA                          0               0       64     409
24 months   IRC              INDIA                          0               1        5     409
24 months   IRC              INDIA                          1               0      314     409
24 months   IRC              INDIA                          1               1       26     409
24 months   JiVitA-3         BANGLADESH                     0               0      396    8555
24 months   JiVitA-3         BANGLADESH                     0               1       79    8555
24 months   JiVitA-3         BANGLADESH                     1               0     6292    8555
24 months   JiVitA-3         BANGLADESH                     1               1     1788    8555
24 months   JiVitA-4         BANGLADESH                     0               0      263    4008
24 months   JiVitA-4         BANGLADESH                     0               1       60    4008
24 months   JiVitA-4         BANGLADESH                     1               0     2934    4008
24 months   JiVitA-4         BANGLADESH                     1               1      751    4008
24 months   NIH-Crypto       BANGLADESH                     0               0       90     260
24 months   NIH-Crypto       BANGLADESH                     0               1        9     260
24 months   NIH-Crypto       BANGLADESH                     1               0      143     260
24 months   NIH-Crypto       BANGLADESH                     1               1       18     260
24 months   PROBIT           BELARUS                        0               0      461    3970
24 months   PROBIT           BELARUS                        0               1        2    3970
24 months   PROBIT           BELARUS                        1               0     3477    3970
24 months   PROBIT           BELARUS                        1               1       30    3970
24 months   PROVIDE          BANGLADESH                     0               0      126     579
24 months   PROVIDE          BANGLADESH                     0               1       11     579
24 months   PROVIDE          BANGLADESH                     1               0      391     579
24 months   PROVIDE          BANGLADESH                     1               1       51     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0               0       27     426
24 months   ZVITAMBO         ZIMBABWE                       0               1        1     426
24 months   ZVITAMBO         ZIMBABWE                       1               0      321     426
24 months   ZVITAMBO         ZIMBABWE                       1               1       77     426


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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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
![](/tmp/40f8eb45-901b-43fd-8d7e-0d6758a330f8/1d9d0e83-d22d-4ed3-8349-51e5492e4b16/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40f8eb45-901b-43fd-8d7e-0d6758a330f8/1d9d0e83-d22d-4ed3-8349-51e5492e4b16/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40f8eb45-901b-43fd-8d7e-0d6758a330f8/1d9d0e83-d22d-4ed3-8349-51e5492e4b16/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40f8eb45-901b-43fd-8d7e-0d6758a330f8/1d9d0e83-d22d-4ed3-8349-51e5492e4b16/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          0                    NA                0.3181818   0.2056482   0.4307154
Birth       IRC              INDIA                          1                    NA                0.2563177   0.2048274   0.3078080
Birth       JiVitA-3         BANGLADESH                     0                    NA                0.2040000   0.1640282   0.2439718
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.1067772   0.1015989   0.1119556
Birth       JiVitA-4         BANGLADESH                     0                    NA                0.1971831   0.0636674   0.3306988
Birth       JiVitA-4         BANGLADESH                     1                    NA                0.0968158   0.0814679   0.1121638
Birth       NIH-Crypto       BANGLADESH                     0                    NA                0.1847826   0.1286424   0.2409228
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.2170819   0.1688280   0.2653357
Birth       PROBIT           BELARUS                        0                    NA                0.1841609   0.1194795   0.2488423
Birth       PROBIT           BELARUS                        1                    NA                0.2137248   0.1474161   0.2800336
Birth       PROVIDE          BANGLADESH                     0                    NA                0.2129630   0.1356781   0.2902478
Birth       PROVIDE          BANGLADESH                     1                    NA                0.2216981   0.1821224   0.2612738
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.1763636   0.1538399   0.1988874
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.1581868   0.1515782   0.1647953
6 months    IRC              INDIA                          0                    NA                0.1029412   0.0306257   0.1752567
6 months    IRC              INDIA                          1                    NA                0.1382353   0.1015032   0.1749674
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0688372   0.0528779   0.0847966
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.0858605   0.0809536   0.0907675
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0415430   0.0162674   0.0668187
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.0545846   0.0443127   0.0648564
6 months    PROBIT           BELARUS                        0                    NA                0.0055648   0.0000980   0.0110317
6 months    PROBIT           BELARUS                        1                    NA                0.0070201   0.0054246   0.0086155
6 months    PROVIDE          BANGLADESH                     0                    NA                0.0359712   0.0049882   0.0669542
6 months    PROVIDE          BANGLADESH                     1                    NA                0.0431034   0.0246091   0.0615978
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0423280   0.0136171   0.0710390
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0429752   0.0336429   0.0523075
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0332871   0.0201925   0.0463817
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0308450   0.0269870   0.0347030
24 months   IRC              INDIA                          0                    NA                0.0724638   0.0112173   0.1337102
24 months   IRC              INDIA                          1                    NA                0.0764706   0.0481884   0.1047528
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.1663158   0.1293301   0.2033015
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2212871   0.2109180   0.2316563
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.1857585   0.1399721   0.2315449
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.2037992   0.1884254   0.2191730
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0909091   0.0341710   0.1476472
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1118012   0.0630315   0.1605710
24 months   PROVIDE          BANGLADESH                     0                    NA                0.0802920   0.0347487   0.1258352
24 months   PROVIDE          BANGLADESH                     1                    NA                0.1153846   0.0855745   0.1451947


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1094801   0.1043667   0.1145935
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.0997912   0.0844161   0.1151664
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2043011   0.1676152   0.2409869
Birth       PROBIT           BELARUS                        NA                   NA                0.2103206   0.1450833   0.2755580
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1597472   0.1534034   0.1660909
6 months    IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0847650   0.0799741   0.0895560
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0535010   0.0438560   0.0631459
6 months    PROBIT           BELARUS                        NA                   NA                0.0068541   0.0051915   0.0085167
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429142   0.0340389   0.0517895
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0310537   0.0273521   0.0347553
24 months   IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2182350   0.2083008   0.2281691
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2023453   0.1877652   0.2169254
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1038462   0.0666939   0.1409984
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          1                    0                 0.8055699   0.5363593   1.2099031
Birth       JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 0.5234178   0.4267340   0.6420070
Birth       JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 0.4909946   0.2442689   0.9869275
Birth       NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 1.1747959   0.8062538   1.7118001
Birth       PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        1                    0                 1.1605332   0.9625131   1.3992924
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 1.0410172   0.6947292   1.5599127
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 0.8969354   0.7841595   1.0259304
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          1                    0                 1.3428571   0.6336429   2.8458702
6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 1.2472982   0.9868803   1.5764351
6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 1.3139285   0.6945078   2.4858008
6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        1                    0                 1.2615043   0.4811864   3.3072282
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.1982759   0.4577659   3.1366798
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0152893   0.4980591   2.0696586
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 0.9266351   0.6132482   1.4001716
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          1                    0                 1.0552941   0.4194722   2.6548739
24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 1.3305239   1.0581946   1.6729379
24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 1.0971190   0.8469998   1.4210983
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.2298137   0.5743075   2.6335048
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 1.4370629   0.7705234   2.6801911


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          0                    NA                -0.0499602   -0.1499349    0.0500144
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.0945199   -0.1339318   -0.0551079
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.0973919   -0.2280160    0.0332323
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0195185   -0.0252399    0.0642768
Birth       PROBIT           BELARUS                        0                    NA                 0.0261597   -0.0058621    0.0581815
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0069618   -0.0622404    0.0761641
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0166165   -0.0380749    0.0048419
6 months    IRC              INDIA                          0                    NA                 0.0294118   -0.0381917    0.0970152
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0159278    0.0006818    0.0311739
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0119580   -0.0130854    0.0370014
6 months    PROBIT           BELARUS                        0                    NA                 0.0012893   -0.0034851    0.0060636
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0054881   -0.0222783    0.0332546
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005861   -0.0267563    0.0279285
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0022334   -0.0147180    0.0102512
24 months   IRC              INDIA                          0                    NA                 0.0033309   -0.0527495    0.0594112
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0519192    0.0152515    0.0885868
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0165868   -0.0279658    0.0611394
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0129371   -0.0334089    0.0592830
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0267892   -0.0147811    0.0683595


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          0                    NA                -0.1862648   -0.6239459    0.1334538
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.8633520   -1.2609893   -0.5356466
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.9759562   -2.8108765   -0.0245419
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0955378   -0.1518955    0.2898210
Birth       PROBIT           BELARUS                        0                    NA                 0.1243802   -0.0355747    0.2596284
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0316556   -0.3401255    0.3002962
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.1040174   -0.2468166    0.0224269
6 months    IRC              INDIA                          0                    NA                 0.2222222   -0.4955071    0.5954962
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.1879057   -0.0137584    0.3494533
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.2235091   -0.4096208    0.5722693
6 months    PROBIT           BELARUS                        0                    NA                 0.1881016   -0.9475215    0.6615293
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.1323741   -0.8735818    0.5982163
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0136582   -0.8817567    0.4829989
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0719209   -0.5596008    0.2632638
24 months   IRC              INDIA                          0                    NA                 0.0439458   -1.0726677    0.5590033
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.2379049    0.0508859    0.3880726
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0819727   -0.1663725    0.2774400
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.1245791   -0.4545902    0.4731425
24 months   PROVIDE          BANGLADESH                     0                    NA                 0.2501766   -0.2522122    0.5510065
