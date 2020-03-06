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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mbmi             ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  --------------  --------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight                0     2480    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight                1      282    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                  0      398    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                  1       56    3216
0-24 months   LCNI-5           MALAWI                         Normal weight                0      550     837
0-24 months   LCNI-5           MALAWI                         Normal weight                1      142     837
0-24 months   LCNI-5           MALAWI                         Underweight                  0      110     837
0-24 months   LCNI-5           MALAWI                         Underweight                  1       35     837
0-24 months   MAL-ED           BANGLADESH                     Normal weight                0      176     254
0-24 months   MAL-ED           BANGLADESH                     Normal weight                1       46     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                  0       22     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                  1       10     254
0-24 months   MAL-ED           BRAZIL                         Normal weight                0      192     221
0-24 months   MAL-ED           BRAZIL                         Normal weight                1       19     221
0-24 months   MAL-ED           BRAZIL                         Underweight                  0        8     221
0-24 months   MAL-ED           BRAZIL                         Underweight                  1        2     221
0-24 months   MAL-ED           INDIA                          Normal weight                0      148     242
0-24 months   MAL-ED           INDIA                          Normal weight                1       45     242
0-24 months   MAL-ED           INDIA                          Underweight                  0       36     242
0-24 months   MAL-ED           INDIA                          Underweight                  1       13     242
0-24 months   MAL-ED           NEPAL                          Normal weight                0      217     238
0-24 months   MAL-ED           NEPAL                          Normal weight                1       21     238
0-24 months   MAL-ED           NEPAL                          Underweight                  0        0     238
0-24 months   MAL-ED           NEPAL                          Underweight                  1        0     238
0-24 months   MAL-ED           PERU                           Normal weight                0      225     290
0-24 months   MAL-ED           PERU                           Normal weight                1       60     290
0-24 months   MAL-ED           PERU                           Underweight                  0        2     290
0-24 months   MAL-ED           PERU                           Underweight                  1        3     290
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight                0      195     270
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight                1       67     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                  0        5     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                  1        3     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                0      114     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                1      128     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  0        6     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  1        8     256
0-24 months   NIH-Birth        BANGLADESH                     Normal weight                0      374     629
0-24 months   NIH-Birth        BANGLADESH                     Normal weight                1      149     629
0-24 months   NIH-Birth        BANGLADESH                     Underweight                  0       59     629
0-24 months   NIH-Birth        BANGLADESH                     Underweight                  1       47     629
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight                0      603     755
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight                1       84     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                  0       53     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                  1       15     755
0-24 months   PROBIT           BELARUS                        Normal weight                0    12850   13728
0-24 months   PROBIT           BELARUS                        Normal weight                1      355   13728
0-24 months   PROBIT           BELARUS                        Underweight                  0      506   13728
0-24 months   PROBIT           BELARUS                        Underweight                  1       17   13728
0-24 months   PROVIDE          BANGLADESH                     Normal weight                0      477     669
0-24 months   PROVIDE          BANGLADESH                     Normal weight                1       65     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                  0       98     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                  1       29     669
0-24 months   SAS-CompFeed     INDIA                          Normal weight                0      734    1406
0-24 months   SAS-CompFeed     INDIA                          Normal weight                1      317    1406
0-24 months   SAS-CompFeed     INDIA                          Underweight                  0      208    1406
0-24 months   SAS-CompFeed     INDIA                          Underweight                  1      147    1406
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2078    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1      229    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       34    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        4    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight                0     7629    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight                1     1673    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                  0      394    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                  1      123    9819
0-6 months    LCNI-5           MALAWI                         Normal weight                0      206     271
0-6 months    LCNI-5           MALAWI                         Normal weight                1       18     271
0-6 months    LCNI-5           MALAWI                         Underweight                  0       45     271
0-6 months    LCNI-5           MALAWI                         Underweight                  1        2     271
0-6 months    MAL-ED           BANGLADESH                     Normal weight                0      206     254
0-6 months    MAL-ED           BANGLADESH                     Normal weight                1       16     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                  0       29     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                  1        3     254
0-6 months    MAL-ED           BRAZIL                         Normal weight                0      196     221
0-6 months    MAL-ED           BRAZIL                         Normal weight                1       15     221
0-6 months    MAL-ED           BRAZIL                         Underweight                  0        9     221
0-6 months    MAL-ED           BRAZIL                         Underweight                  1        1     221
0-6 months    MAL-ED           INDIA                          Normal weight                0      179     242
0-6 months    MAL-ED           INDIA                          Normal weight                1       14     242
0-6 months    MAL-ED           INDIA                          Underweight                  0       43     242
0-6 months    MAL-ED           INDIA                          Underweight                  1        6     242
0-6 months    MAL-ED           NEPAL                          Normal weight                0      228     238
0-6 months    MAL-ED           NEPAL                          Normal weight                1       10     238
0-6 months    MAL-ED           NEPAL                          Underweight                  0        0     238
0-6 months    MAL-ED           NEPAL                          Underweight                  1        0     238
0-6 months    MAL-ED           PERU                           Normal weight                0      250     290
0-6 months    MAL-ED           PERU                           Normal weight                1       35     290
0-6 months    MAL-ED           PERU                           Underweight                  0        3     290
0-6 months    MAL-ED           PERU                           Underweight                  1        2     290
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight                0      237     270
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight                1       25     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                  0        6     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                  1        2     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                0      208     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                1       34     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  0       11     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3     256
0-6 months    NIH-Birth        BANGLADESH                     Normal weight                0      478     629
0-6 months    NIH-Birth        BANGLADESH                     Normal weight                1       45     629
0-6 months    NIH-Birth        BANGLADESH                     Underweight                  0       92     629
0-6 months    NIH-Birth        BANGLADESH                     Underweight                  1       14     629
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight                0      649     755
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight                1       38     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                  0       59     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                  1        9     755
0-6 months    PROBIT           BELARUS                        Normal weight                0    13077   13728
0-6 months    PROBIT           BELARUS                        Normal weight                1      128   13728
0-6 months    PROBIT           BELARUS                        Underweight                  0      518   13728
0-6 months    PROBIT           BELARUS                        Underweight                  1        5   13728
0-6 months    PROVIDE          BANGLADESH                     Normal weight                0      515     669
0-6 months    PROVIDE          BANGLADESH                     Normal weight                1       27     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                  0      123     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                  1        4     669
0-6 months    SAS-CompFeed     INDIA                          Normal weight                0      910    1403
0-6 months    SAS-CompFeed     INDIA                          Normal weight                1      139    1403
0-6 months    SAS-CompFeed     INDIA                          Underweight                  0      277    1403
0-6 months    SAS-CompFeed     INDIA                          Underweight                  1       77    1403
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2209    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1       98    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       35    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3    2345
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight                0     8377    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight                1      914    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                  0      443    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                  1       74    9808


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/6c5ebf4f-33ab-4a53-9786-562bec9af081/4dbaa313-91c9-412c-8e60-5f637a77866b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c5ebf4f-33ab-4a53-9786-562bec9af081/4dbaa313-91c9-412c-8e60-5f637a77866b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c5ebf4f-33ab-4a53-9786-562bec9af081/4dbaa313-91c9-412c-8e60-5f637a77866b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c5ebf4f-33ab-4a53-9786-562bec9af081/4dbaa313-91c9-412c-8e60-5f637a77866b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        NA                0.1020999   0.0810032   0.1231967
0-24 months   iLiNS-Zinc     BURKINA FASO                   Underweight          NA                0.1233480   0.0718839   0.1748121
0-24 months   LCNI-5         MALAWI                         Normal weight        NA                0.2052023   0.1750949   0.2353098
0-24 months   LCNI-5         MALAWI                         Underweight          NA                0.2413793   0.1716868   0.3110718
0-24 months   MAL-ED         BANGLADESH                     Normal weight        NA                0.2072072   0.1537864   0.2606280
0-24 months   MAL-ED         BANGLADESH                     Underweight          NA                0.3125000   0.1515870   0.4734130
0-24 months   MAL-ED         INDIA                          Normal weight        NA                0.2331606   0.1733817   0.2929396
0-24 months   MAL-ED         INDIA                          Underweight          NA                0.2653061   0.1414333   0.3891790
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.5289256   0.4659123   0.5919389
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        NA                0.2848948   0.2461807   0.3236090
0-24 months   NIH-Birth      BANGLADESH                     Underweight          NA                0.4433962   0.3487486   0.5380439
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        NA                0.1222707   0.0977576   0.1467839
0-24 months   NIH-Crypto     BANGLADESH                     Underweight          NA                0.2205882   0.1219703   0.3192062
0-24 months   PROBIT         BELARUS                        Normal weight        NA                0.0268838   0.0195612   0.0342064
0-24 months   PROBIT         BELARUS                        Underweight          NA                0.0325048   0.0130342   0.0519753
0-24 months   PROVIDE        BANGLADESH                     Normal weight        NA                0.1199262   0.0925553   0.1472971
0-24 months   PROVIDE        BANGLADESH                     Underweight          NA                0.2283465   0.1552865   0.3014064
0-24 months   SAS-CompFeed   INDIA                          Normal weight        NA                0.3016175   0.2652240   0.3380110
0-24 months   SAS-CompFeed   INDIA                          Underweight          NA                0.4140845   0.3672333   0.4609358
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        NA                0.1798538   0.1720485   0.1876591
0-24 months   ZVITAMBO       ZIMBABWE                       Underweight          NA                0.2379110   0.2012052   0.2746169
0-6 months    MAL-ED         INDIA                          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    MAL-ED         INDIA                          Underweight          NA                0.1224490   0.0304754   0.2144225
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        NA                0.0860421   0.0619895   0.1100946
0-6 months    NIH-Birth      BANGLADESH                     Underweight          NA                0.1320755   0.0675706   0.1965804
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0553130   0.0382083   0.0724176
0-6 months    NIH-Crypto     BANGLADESH                     Underweight          NA                0.1323529   0.0517558   0.2129501
0-6 months    PROBIT         BELARUS                        Normal weight        NA                0.0096933   0.0062538   0.0131328
0-6 months    PROBIT         BELARUS                        Underweight          NA                0.0095602   0.0029071   0.0162134
0-6 months    SAS-CompFeed   INDIA                          Normal weight        NA                0.1325071   0.1119647   0.1530496
0-6 months    SAS-CompFeed   INDIA                          Underweight          NA                0.2175141   0.1793428   0.2556855
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        NA                0.0983748   0.0923187   0.1044309
0-6 months    ZVITAMBO       ZIMBABWE                       Underweight          NA                0.1431335   0.1129442   0.1733227


### Parameter: E(Y)


agecat        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
0-24 months   LCNI-5         MALAWI                         NA                   NA                0.2114695   0.1837888   0.2391503
0-24 months   MAL-ED         BANGLADESH                     NA                   NA                0.2204724   0.1693889   0.2715560
0-24 months   MAL-ED         INDIA                          NA                   NA                0.2396694   0.1857746   0.2935643
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5312500   0.4700011   0.5924989
0-24 months   NIH-Birth      BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   PROBIT         BELARUS                        NA                   NA                0.0270979   0.0199447   0.0342511
0-24 months   PROVIDE        BANGLADESH                     NA                   NA                0.1405082   0.1141551   0.1668613
0-24 months   SAS-CompFeed   INDIA                          NA                   NA                0.3300142   0.2990187   0.3610098
0-24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.1829107   0.1752637   0.1905577
0-6 months    MAL-ED         INDIA                          NA                   NA                0.0826446   0.0478818   0.1174075
0-6 months    NIH-Birth      BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto     BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    PROBIT         BELARUS                        NA                   NA                0.0096882   0.0063350   0.0130414
0-6 months    SAS-CompFeed   INDIA                          NA                   NA                0.1539558   0.1347651   0.1731465
0-6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                0.1007341   0.0947773   0.1066909


### Parameter: RR


agecat        studyid        country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc     BURKINA FASO                   Underweight          Normal weight     1.2081107   0.7608260   1.918351
0-24 months   LCNI-5         MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   LCNI-5         MALAWI                         Underweight          Normal weight     1.1762992   0.8508719   1.626190
0-24 months   MAL-ED         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH                     Underweight          Normal weight     1.5081522   0.8479171   2.682483
0-24 months   MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         INDIA                          Underweight          Normal weight     1.1378685   0.6679713   1.938324
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.0803571   0.6753029   1.728368
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth      BANGLADESH                     Underweight          Normal weight     1.5563505   1.2084028   2.004486
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto     BANGLADESH                     Underweight          Normal weight     1.8040966   1.1052787   2.944746
0-24 months   PROBIT         BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   PROBIT         BELARUS                        Underweight          Normal weight     1.2090863   0.6437350   2.270949
0-24 months   PROVIDE        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH                     Underweight          Normal weight     1.9040581   1.2852775   2.820743
0-24 months   SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA                          Underweight          Normal weight     1.3728795   1.1689575   1.612375
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO       ZIMBABWE                       Underweight          Normal weight     1.3228024   1.1269121   1.552744
0-6 months    MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    MAL-ED         INDIA                          Underweight          Normal weight     1.6880466   0.6826237   4.174337
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth      BANGLADESH                     Underweight          Normal weight     1.5350105   0.8744146   2.694668
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto     BANGLADESH                     Underweight          Normal weight     2.3928019   1.2086339   4.737167
0-6 months    PROBIT         BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    PROBIT         BELARUS                        Underweight          Normal weight     0.9862721   0.4723955   2.059149
0-6 months    SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed   INDIA                          Underweight          Normal weight     1.6415275   1.3314689   2.023789
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO       ZIMBABWE                       Underweight          Normal weight     1.4549814   1.1679801   1.812506


### Parameter: PAR


agecat        studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        NA                 0.0029996   -0.0043849   0.0103840
0-24 months   LCNI-5         MALAWI                         Normal weight        NA                 0.0062672   -0.0069173   0.0194517
0-24 months   MAL-ED         BANGLADESH                     Normal weight        NA                 0.0132652   -0.0085248   0.0350553
0-24 months   MAL-ED         INDIA                          Normal weight        NA                 0.0065088   -0.0213885   0.0344061
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0023244   -0.0123398   0.0169886
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0267109    0.0088642   0.0445576
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0088551   -0.0005152   0.0182254
0-24 months   PROBIT         BELARUS                        Normal weight        NA                 0.0002141   -0.0005520   0.0009803
0-24 months   PROVIDE        BANGLADESH                     Normal weight        NA                 0.0205820    0.0054244   0.0357397
0-24 months   SAS-CompFeed   INDIA                          Normal weight        NA                 0.0283967    0.0139669   0.0428265
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0030569    0.0010644   0.0050494
0-6 months    MAL-ED         INDIA                          Normal weight        NA                 0.0101058   -0.0101018   0.0303133
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0077576   -0.0039220   0.0194372
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0069387   -0.0006472   0.0145246
0-6 months    PROBIT         BELARUS                        Normal weight        NA                -0.0000051   -0.0002739   0.0002638
0-6 months    SAS-CompFeed   INDIA                          Normal weight        NA                 0.0214487    0.0125763   0.0303211
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0023593    0.0007243   0.0039944


### Parameter: PAF


agecat        studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        NA                 0.0285403   -0.0447042   0.0966497
0-24 months   LCNI-5         MALAWI                         Normal weight        NA                 0.0296365   -0.0346954   0.0899687
0-24 months   MAL-ED         BANGLADESH                     Normal weight        NA                 0.0601673   -0.0435371   0.1535658
0-24 months   MAL-ED         INDIA                          Normal weight        NA                 0.0271574   -0.0964214   0.1368075
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0043753   -0.0236201   0.0316050
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0857201    0.0267740   0.1410961
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0675312   -0.0058990   0.1356010
0-24 months   PROBIT         BELARUS                        Normal weight        NA                 0.0079027   -0.0212192   0.0361941
0-24 months   PROVIDE        BANGLADESH                     Normal weight        NA                 0.1464827    0.0343833   0.2455683
0-24 months   SAS-CompFeed   INDIA                          Normal weight        NA                 0.0860470    0.0390521   0.1307435
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0167125    0.0057715   0.0275330
0-6 months    MAL-ED         INDIA                          Normal weight        NA                 0.1222798   -0.1536263   0.3321990
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0827041   -0.0491461   0.1979842
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.1114621   -0.0151402   0.2222753
0-6 months    PROBIT         BELARUS                        Normal weight        NA                -0.0005233   -0.0286073   0.0267940
0-6 months    SAS-CompFeed   INDIA                          Normal weight        NA                 0.1393170    0.0782955   0.1962985
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0234213    0.0071011   0.0394732
