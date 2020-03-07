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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hdlvry    n_cell      n
----------  ---------------  -----------------------------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0             92     92
Birth       CMC-V-BCS-2002   INDIA                          1              0     92
Birth       COHORTS          INDIA                          0           2938   4694
Birth       COHORTS          INDIA                          1           1756   4694
Birth       EE               PAKISTAN                       0            161    238
Birth       EE               PAKISTAN                       1             77    238
Birth       GMS-Nepal        NEPAL                          0            157    646
Birth       GMS-Nepal        NEPAL                          1            489    646
Birth       IRC              INDIA                          0            381    388
Birth       IRC              INDIA                          1              7    388
Birth       JiVitA-3         BANGLADESH                     0             30    334
Birth       JiVitA-3         BANGLADESH                     1            304    334
Birth       JiVitA-4         BANGLADESH                     0            554   2808
Birth       JiVitA-4         BANGLADESH                     1           2254   2808
Birth       NIH-Crypto       BANGLADESH                     0            567    732
Birth       NIH-Crypto       BANGLADESH                     1            165    732
Birth       PROVIDE          BANGLADESH                     0            391    539
Birth       PROVIDE          BANGLADESH                     1            148    539
Birth       SAS-CompFeed     INDIA                          0            124   1085
Birth       SAS-CompFeed     INDIA                          1            961   1085
6 months    CMC-V-BCS-2002   INDIA                          0            358    366
6 months    CMC-V-BCS-2002   INDIA                          1              8    366
6 months    COHORTS          INDIA                          0           2900   4699
6 months    COHORTS          INDIA                          1           1799   4699
6 months    EE               PAKISTAN                       0            250    371
6 months    EE               PAKISTAN                       1            121    371
6 months    GMS-Nepal        NEPAL                          0            129    528
6 months    GMS-Nepal        NEPAL                          1            399    528
6 months    IRC              INDIA                          0            399    407
6 months    IRC              INDIA                          1              8    407
6 months    JiVitA-3         BANGLADESH                     0             39    332
6 months    JiVitA-3         BANGLADESH                     1            293    332
6 months    JiVitA-4         BANGLADESH                     0           1081   4038
6 months    JiVitA-4         BANGLADESH                     1           2957   4038
6 months    NIH-Crypto       BANGLADESH                     0            554    715
6 months    NIH-Crypto       BANGLADESH                     1            161    715
6 months    PROVIDE          BANGLADESH                     0            450    604
6 months    PROVIDE          BANGLADESH                     1            154    604
6 months    SAS-CompFeed     INDIA                          0            147   1091
6 months    SAS-CompFeed     INDIA                          1            944   1091
6 months    SAS-FoodSuppl    INDIA                          0             76    380
6 months    SAS-FoodSuppl    INDIA                          1            304    380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
24 months   CMC-V-BCS-2002   INDIA                          0            360    368
24 months   CMC-V-BCS-2002   INDIA                          1              8    368
24 months   COHORTS          INDIA                          0           2233   3556
24 months   COHORTS          INDIA                          1           1323   3556
24 months   EE               PAKISTAN                       0            112    166
24 months   EE               PAKISTAN                       1             54    166
24 months   GMS-Nepal        NEPAL                          0            118    456
24 months   GMS-Nepal        NEPAL                          1            338    456
24 months   IRC              INDIA                          0            401    409
24 months   IRC              INDIA                          1              8    409
24 months   JiVitA-3         BANGLADESH                     0             35    291
24 months   JiVitA-3         BANGLADESH                     1            256    291
24 months   JiVitA-4         BANGLADESH                     0           1033   4005
24 months   JiVitA-4         BANGLADESH                     1           2972   4005
24 months   NIH-Crypto       BANGLADESH                     0            391    514
24 months   NIH-Crypto       BANGLADESH                     1            123    514
24 months   PROVIDE          BANGLADESH                     0            433    578
24 months   PROVIDE          BANGLADESH                     1            145    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b889a7f2-663f-4e2e-ab4f-277411b36ca0/c527095e-3764-4484-8bd4-1ae03dd2ad6c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b889a7f2-663f-4e2e-ab4f-277411b36ca0/c527095e-3764-4484-8bd4-1ae03dd2ad6c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b889a7f2-663f-4e2e-ab4f-277411b36ca0/c527095e-3764-4484-8bd4-1ae03dd2ad6c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.6120967   -0.6545560   -0.5696373
Birth       COHORTS          INDIA                          1                    NA                -0.7835649   -0.8357866   -0.7313433
Birth       EE               PAKISTAN                       0                    NA                -1.8709317   -2.1088523   -1.6330111
Birth       EE               PAKISTAN                       1                    NA                -1.8415584   -2.1459255   -1.5371913
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.0936943   -1.2658679   -0.9215207
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0900613   -1.1839811   -0.9961416
Birth       IRC              INDIA                          0                    NA                -0.3138845   -0.4765233   -0.1512457
Birth       IRC              INDIA                          1                    NA                 0.0100000   -1.0310607    1.0510607
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1360000   -1.4582039   -0.8137961
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.3914145   -1.5544894   -1.2283396
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.3752347   -1.4986333   -1.2518360
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5576309   -1.6122446   -1.5030172
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8844797   -0.9640283   -0.8049312
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9954545   -1.1551642   -0.8357449
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8453197   -0.9356104   -0.7550290
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9902027   -1.1220055   -0.8583999
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.4350806   -1.5710316   -1.2991297
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.4408429   -1.5411051   -1.3405807
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4288687   -1.5726614   -1.2850760
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.9754167   -1.7693720   -0.1814613
6 months    COHORTS          INDIA                          0                    NA                -0.8786897   -0.9206224   -0.8367569
6 months    COHORTS          INDIA                          1                    NA                -1.3152029   -1.3685317   -1.2618741
6 months    EE               PAKISTAN                       0                    NA                -2.0512200   -2.1980983   -1.9043417
6 months    EE               PAKISTAN                       1                    NA                -2.1475758   -2.3529895   -1.9421620
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2116150   -1.3567293   -1.0665007
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.3677820   -1.4618996   -1.2736643
6 months    IRC              INDIA                          0                    NA                -1.2276901   -1.3618868   -1.0934933
6 months    IRC              INDIA                          1                    NA                -1.5693750   -2.0379505   -1.1007995
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.1043590   -1.4380294   -0.7706885
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3019454   -1.4524263   -1.1514645
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2194033   -1.2993889   -1.1394178
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3951894   -1.4427840   -1.3475948
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1538899   -1.2366235   -1.0711563
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.3527950   -1.4899409   -1.2156492
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0317815   -1.1173452   -0.9462178
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.2667532   -1.4139568   -1.1195497
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2747619   -1.3533985   -1.1961254
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.5003549   -1.5683575   -1.4323523
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.7059211   -1.9277126   -1.4841295
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -1.9468750   -2.0764992   -1.8172508
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5414554   -0.5927823   -0.4901284
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6976563   -0.9673928   -0.4279197
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640139   -2.6645275   -2.4635003
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.4300000   -3.0592261   -1.8007739
24 months   COHORTS          INDIA                          0                    NA                -1.9611554   -2.0100096   -1.9123012
24 months   COHORTS          INDIA                          1                    NA                -2.6618141   -2.7245275   -2.5991006
24 months   EE               PAKISTAN                       0                    NA                -2.6867708   -2.8710517   -2.5024900
24 months   EE               PAKISTAN                       1                    NA                -2.6568519   -2.8801576   -2.4335461
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.7715395   -1.9569262   -1.5861529
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.9067998   -2.0050549   -1.8085447
24 months   IRC              INDIA                          0                    NA                -1.7871446   -1.8820825   -1.6922068
24 months   IRC              INDIA                          1                    NA                -2.3818750   -2.8405973   -1.9231527
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.7877143   -2.1337599   -1.4416687
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.2076953   -2.3502870   -2.0651036
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.6009874   -1.6738326   -1.5281422
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.8322376   -1.8755896   -1.7888855
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.3988747   -1.4962574   -1.3014920
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.5760163   -1.7360738   -1.4159587
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5611085   -1.6579435   -1.4642736
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.7257931   -1.8875102   -1.5640760


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          NA                   NA                -0.6762420   -0.7093108   -0.6431732
Birth       EE               PAKISTAN                       NA                   NA                -1.8614286   -2.0501173   -1.6727398
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0909443   -1.1734385   -1.0084500
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.3684731   -1.5219775   -1.2149687
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5216453   -1.5715117   -1.4717789
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4401843   -1.5334809   -1.3468878
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4189572   -1.5607165   -1.2771979
6 months    COHORTS          INDIA                          NA                   NA                -1.0458076   -1.0793244   -1.0122908
6 months    EE               PAKISTAN                       NA                   NA                -2.0826460   -2.2022514   -1.9630406
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3296275   -1.4093037   -1.2499514
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.2787349   -1.4248268   -1.1326431
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3481303   -1.3904710   -1.3057895
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4699588   -1.5446559   -1.3952616
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440573   -0.5945614   -0.4935533
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5611005   -2.6603759   -2.4618252
24 months   COHORTS          INDIA                          NA                   NA                -2.2218335   -2.2619519   -2.1817151
24 months   EE               PAKISTAN                       NA                   NA                -2.6770382   -2.8210532   -2.5330231
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8717982   -1.9591776   -1.7844189
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.1571821   -2.2993457   -2.0150186
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7725918   -1.8111207   -1.7340629
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -0.1714683   -0.2387728   -0.1041638
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.0293732   -0.3569499    0.4156964
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.0036329   -0.1924912    0.1997570
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.3238845   -0.7298036    1.3775727
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -0.2554145   -0.6088901    0.0980611
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -0.1823962   -0.3181063   -0.0466861
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -0.1109748   -0.2893989    0.0674493
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1448830   -0.3046466    0.0148806
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0057622   -0.1560203    0.1444958
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.4534520   -0.3534193    1.2603234
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.4365132   -0.5043536   -0.3686729
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0963558   -0.3488791    0.1561675
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.1561670   -0.3291303    0.0167963
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.3416849   -0.8290982    0.1457284
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -0.1975864   -0.5355669    0.1403941
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.1757861   -0.2656783   -0.0858938
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.1989051   -0.3590733   -0.0387370
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.2349718   -0.4052364   -0.0647072
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.2255930   -0.3121919   -0.1389941
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.2409539   -0.4978467    0.0159389
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1562009   -0.4307774    0.1183756
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1340139   -0.5031898    0.7712175
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.7006587   -0.7801553   -0.6211620
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                  0.0299190   -0.2596063    0.3194443
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.1352603   -0.3450752    0.0745546
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.5947304   -1.0631739   -0.1262869
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.4199810   -0.7637016   -0.0762605
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.2312501   -0.3132823   -0.1492180
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.1771416   -0.3644963    0.0102132
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.1646846   -0.3531771    0.0238080


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0641453   -0.0894353   -0.0388554
Birth       EE               PAKISTAN                       0                    NA                 0.0095031   -0.1154960    0.1345022
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0027500   -0.1457093    0.1512093
Birth       IRC              INDIA                          0                    NA                 0.0058433   -0.0208468    0.0325333
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.2324731   -0.5549782    0.0900321
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.1464106   -0.2551425   -0.0376788
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0250148   -0.0653736    0.0153440
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0397823   -0.0839896    0.0044249
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0051037   -0.1384222    0.1282148
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099115   -0.0113762    0.0311993
6 months    COHORTS          INDIA                          0                    NA                -0.1671180   -0.1937897   -0.1404462
6 months    EE               PAKISTAN                       0                    NA                -0.0314260   -0.1139139    0.0510619
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.1180125   -0.2488432    0.0128182
6 months    IRC              INDIA                          0                    NA                -0.0067162   -0.0197457    0.0063134
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.1743760   -0.4727549    0.1240030
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.1287269   -0.1944648   -0.0629891
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0447884   -0.0813655   -0.0082114
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0599100   -0.1040847   -0.0157354
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.1951968   -0.2855828   -0.1048109
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1927632   -0.3985063    0.0129800
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0026020   -0.0095244    0.0043204
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0029133   -0.0131417    0.0189684
24 months   COHORTS          INDIA                          0                    NA                -0.2606781   -0.2922804   -0.2290758
24 months   EE               PAKISTAN                       0                    NA                 0.0097327   -0.0844745    0.1039399
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.1002587   -0.2558746    0.0553572
24 months   IRC              INDIA                          0                    NA                -0.0116329   -0.0258108    0.0025451
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.3694678   -0.6755430   -0.0633927
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.1716043   -0.2327325   -0.1104762
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0423899   -0.0876983    0.0029185
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0413136   -0.0889573    0.0063301
