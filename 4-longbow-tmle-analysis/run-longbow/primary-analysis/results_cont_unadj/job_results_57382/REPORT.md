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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        trth2o    n_cell     n
----------  ---------------  -----------------------------  -------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1             26    26
Birth       CMC-V-BCS-2002   INDIA                          0              0    26
Birth       GMS-Nepal        NEPAL                          1              1     4
Birth       GMS-Nepal        NEPAL                          0              3     4
Birth       IRC              INDIA                          1            120   120
Birth       IRC              INDIA                          0              0   120
Birth       MAL-ED           BANGLADESH                     1            117   119
Birth       MAL-ED           BANGLADESH                     0              2   119
Birth       MAL-ED           BRAZIL                         1              4    22
Birth       MAL-ED           BRAZIL                         0             18    22
Birth       MAL-ED           INDIA                          1              0     2
Birth       MAL-ED           INDIA                          0              2     2
Birth       MAL-ED           NEPAL                          1              7     9
Birth       MAL-ED           NEPAL                          0              2     9
Birth       MAL-ED           PERU                           1             28    36
Birth       MAL-ED           PERU                           0              8    36
Birth       MAL-ED           SOUTH AFRICA                   1              1     5
Birth       MAL-ED           SOUTH AFRICA                   0              4     5
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              4    22
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             18    22
Birth       NIH-Crypto       BANGLADESH                     1            409   732
Birth       NIH-Crypto       BANGLADESH                     0            323   732
Birth       PROVIDE          BANGLADESH                     1             12   539
Birth       PROVIDE          BANGLADESH                     0            527   539
6 months    CMC-V-BCS-2002   INDIA                          1            120   120
6 months    CMC-V-BCS-2002   INDIA                          0              0   120
6 months    GMS-Nepal        NEPAL                          1              1     4
6 months    GMS-Nepal        NEPAL                          0              3     4
6 months    IRC              INDIA                          1            121   121
6 months    IRC              INDIA                          0              0   121
6 months    MAL-ED           BANGLADESH                     1            132   134
6 months    MAL-ED           BANGLADESH                     0              2   134
6 months    MAL-ED           BRAZIL                         1             13   103
6 months    MAL-ED           BRAZIL                         0             90   103
6 months    MAL-ED           INDIA                          1              4     9
6 months    MAL-ED           INDIA                          0              5     9
6 months    MAL-ED           NEPAL                          1             69    83
6 months    MAL-ED           NEPAL                          0             14    83
6 months    MAL-ED           PERU                           1             39    49
6 months    MAL-ED           PERU                           0             10    49
6 months    MAL-ED           SOUTH AFRICA                   1              2    12
6 months    MAL-ED           SOUTH AFRICA                   0             10    12
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    NIH-Crypto       BANGLADESH                     1            396   715
6 months    NIH-Crypto       BANGLADESH                     0            319   715
6 months    PROVIDE          BANGLADESH                     1             14   604
6 months    PROVIDE          BANGLADESH                     0            590   604
24 months   CMC-V-BCS-2002   INDIA                          1            119   119
24 months   CMC-V-BCS-2002   INDIA                          0              0   119
24 months   GMS-Nepal        NEPAL                          1              1     4
24 months   GMS-Nepal        NEPAL                          0              3     4
24 months   IRC              INDIA                          1            121   121
24 months   IRC              INDIA                          0              0   121
24 months   MAL-ED           BANGLADESH                     1            133   135
24 months   MAL-ED           BANGLADESH                     0              2   135
24 months   MAL-ED           BRAZIL                         1             13   103
24 months   MAL-ED           BRAZIL                         0             90   103
24 months   MAL-ED           INDIA                          1              4     9
24 months   MAL-ED           INDIA                          0              5     9
24 months   MAL-ED           NEPAL                          1             69    83
24 months   MAL-ED           NEPAL                          0             14    83
24 months   MAL-ED           PERU                           1             39    49
24 months   MAL-ED           PERU                           0             10    49
24 months   MAL-ED           SOUTH AFRICA                   1              2    11
24 months   MAL-ED           SOUTH AFRICA                   0              9    11
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   NIH-Crypto       BANGLADESH                     1            242   514
24 months   NIH-Crypto       BANGLADESH                     0            272   514
24 months   PROVIDE          BANGLADESH                     1             14   578
24 months   PROVIDE          BANGLADESH                     0            564   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/4fb769ad-c69c-4541-8327-6a094f6e8825/55291ecf-4d66-4d50-8f1a-96221aaf6201/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4fb769ad-c69c-4541-8327-6a094f6e8825/55291ecf-4d66-4d50-8f1a-96221aaf6201/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4fb769ad-c69c-4541-8327-6a094f6e8825/55291ecf-4d66-4d50-8f1a-96221aaf6201/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           1                    NA                -1.1403571   -1.4705172   -0.8101971
Birth       MAL-ED       PERU                           0                    NA                -0.9150000   -1.3733730   -0.4566270
Birth       NIH-Crypto   BANGLADESH                     1                    NA                -0.9803178   -1.0722983   -0.8883374
Birth       NIH-Crypto   BANGLADESH                     0                    NA                -0.8198142   -0.9315147   -0.7081138
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.7158333   -1.2763090   -0.1553576
Birth       PROVIDE      BANGLADESH                     0                    NA                -0.8889564   -0.9645252   -0.8133876
6 months    MAL-ED       BRAZIL                         1                    NA                -0.1088462   -0.6218821    0.4041898
6 months    MAL-ED       BRAZIL                         0                    NA                 0.1941296   -0.0206703    0.4089295
6 months    MAL-ED       NEPAL                          1                    NA                -0.4790097   -0.6937550   -0.2642643
6 months    MAL-ED       NEPAL                          0                    NA                -0.8505952   -1.2303181   -0.4708724
6 months    MAL-ED       PERU                           1                    NA                -1.4565812   -1.7655115   -1.1476509
6 months    MAL-ED       PERU                           0                    NA                -1.3435000   -1.8287382   -0.8582618
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3394444   -2.3247416   -0.3541473
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5815278   -1.8930135   -1.2700421
6 months    NIH-Crypto   BANGLADESH                     1                    NA                -1.2831566   -1.3827027   -1.1836104
6 months    NIH-Crypto   BANGLADESH                     0                    NA                -1.0938088   -1.1943669   -0.9932507
6 months    PROVIDE      BANGLADESH                     1                    NA                -1.2042857   -1.6307303   -0.7778411
6 months    PROVIDE      BANGLADESH                     0                    NA                -1.0890198   -1.1645537   -1.0134858
24 months   MAL-ED       BRAZIL                         1                    NA                -0.8421795   -1.2371857   -0.4471732
24 months   MAL-ED       BRAZIL                         0                    NA                 0.2170000    0.0027562    0.4312438
24 months   MAL-ED       NEPAL                          1                    NA                -1.2129710   -1.4458083   -0.9801337
24 months   MAL-ED       NEPAL                          0                    NA                -1.5303571   -2.0243183   -1.0363960
24 months   MAL-ED       PERU                           1                    NA                -1.8055128   -2.0848487   -1.5261769
24 months   MAL-ED       PERU                           0                    NA                -2.3145000   -2.7677418   -1.8612582
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.7600000   -3.4536768   -2.0663232
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.8620270   -3.2058314   -2.5182226
24 months   NIH-Crypto   BANGLADESH                     1                    NA                -1.4874380   -1.6141509   -1.3607251
24 months   NIH-Crypto   BANGLADESH                     0                    NA                -1.4001838   -1.5107623   -1.2896054
24 months   PROVIDE      BANGLADESH                     1                    NA                -1.6900000   -2.2249295   -1.1550705
24 months   PROVIDE      BANGLADESH                     0                    NA                -1.6002482   -1.6845887   -1.5159078


### Parameter: E(Y)


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED       PERU                           NA                   NA                -1.0902778   -1.3682718   -0.8122837
Birth       NIH-Crypto   BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE      BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    MAL-ED       BRAZIL                         NA                   NA                 0.1558900   -0.0436128    0.3553927
6 months    MAL-ED       NEPAL                          NA                   NA                -0.5416867   -0.7337282   -0.3496452
6 months    MAL-ED       PERU                           NA                   NA                -1.4335034   -1.6988926   -1.1681142
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.5469444   -1.8498756   -1.2440133
6 months    NIH-Crypto   BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE      BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   MAL-ED       BRAZIL                         NA                   NA                 0.0833172   -0.1220854    0.2887197
24 months   MAL-ED       NEPAL                          NA                   NA                -1.2665060   -1.4788044   -1.0542077
24 months   MAL-ED       PERU                           NA                   NA                -1.9093878   -2.1570845   -1.6616910
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.8477907   -3.1592380   -2.5363434
24 months   NIH-Crypto   BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE      BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED       PERU                           0                    1                  0.2253571   -0.3395424   0.7902567
Birth       NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
Birth       NIH-Crypto   BANGLADESH                     0                    1                  0.1605036    0.0158060   0.3052012
Birth       PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
Birth       PROVIDE      BANGLADESH                     0                    1                 -0.1731230   -0.7386703   0.3924242
6 months    MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       BRAZIL                         0                    1                  0.3029758   -0.2532120   0.8591636
6 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       NEPAL                          0                    1                 -0.3715856   -0.8078252   0.0646540
6 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       PERU                           0                    1                  0.1130812   -0.4621527   0.6883151
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2420833   -1.2754438   0.7912771
6 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
6 months    NIH-Crypto   BANGLADESH                     0                    1                  0.1893478    0.0478509   0.3308447
6 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
6 months    PROVIDE      BANGLADESH                     0                    1                  0.1152659   -0.3178165   0.5483484
24 months   MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       BRAZIL                         0                    1                  1.0591795    0.6098129   1.5085461
24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       NEPAL                          0                    1                 -0.3173861   -0.8634730   0.2287007
24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       PERU                           0                    1                 -0.5089872   -1.0413937   0.0234193
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1020270   -0.8762292   0.6721752
24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0872542   -0.0809235   0.2554319
24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000   0.0000000
24 months   PROVIDE      BANGLADESH                     0                    1                  0.0897518   -0.4517857   0.6312893


### Parameter: PAR


agecat      studyid      country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED       PERU                           1                    NA                 0.0500794   -0.0792342   0.1793930
Birth       NIH-Crypto   BANGLADESH                     1                    NA                 0.0708233    0.0067137   0.1349330
Birth       PROVIDE      BANGLADESH                     1                    NA                -0.1692687   -0.7206815   0.3821441
6 months    MAL-ED       BRAZIL                         1                    NA                 0.2647361   -0.2216453   0.7511176
6 months    MAL-ED       NEPAL                          1                    NA                -0.0626771   -0.1421845   0.0168303
6 months    MAL-ED       PERU                           1                    NA                 0.0230778   -0.0950228   0.1411783
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2075000   -1.0936170   0.6786170
6 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0844782    0.0209725   0.1479840
6 months    PROVIDE      BANGLADESH                     1                    NA                 0.1125942   -0.3096634   0.5348518
24 months   MAL-ED       BRAZIL                         1                    NA                 0.9254966    0.5269569   1.3240364
24 months   MAL-ED       NEPAL                          1                    NA                -0.0535350   -0.1491706   0.0421006
24 months   MAL-ED       PERU                           1                    NA                -0.1038749   -0.2270558   0.0193060
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0877907   -0.7540505   0.5784691
24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0461734   -0.0429031   0.1352500
24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0875779   -0.4404224   0.6155781
