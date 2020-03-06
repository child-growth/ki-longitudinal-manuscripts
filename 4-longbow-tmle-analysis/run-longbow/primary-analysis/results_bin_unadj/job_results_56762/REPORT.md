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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        mbmi             sstunted   n_cell       n
----------  ---------------  -----------------------------  --------------  ---------  -------  ------
Birth       MAL-ED           BANGLADESH                     Normal weight           0      188     222
Birth       MAL-ED           BANGLADESH                     Normal weight           1        6     222
Birth       MAL-ED           BANGLADESH                     Underweight             0       27     222
Birth       MAL-ED           BANGLADESH                     Underweight             1        1     222
Birth       MAL-ED           BRAZIL                         Normal weight           0       56      64
Birth       MAL-ED           BRAZIL                         Normal weight           1        3      64
Birth       MAL-ED           BRAZIL                         Underweight             0        5      64
Birth       MAL-ED           BRAZIL                         Underweight             1        0      64
Birth       MAL-ED           INDIA                          Normal weight           0       33      43
Birth       MAL-ED           INDIA                          Normal weight           1        2      43
Birth       MAL-ED           INDIA                          Underweight             0        8      43
Birth       MAL-ED           INDIA                          Underweight             1        0      43
Birth       MAL-ED           NEPAL                          Normal weight           0       26      27
Birth       MAL-ED           NEPAL                          Normal weight           1        1      27
Birth       MAL-ED           NEPAL                          Underweight             0        0      27
Birth       MAL-ED           NEPAL                          Underweight             1        0      27
Birth       MAL-ED           PERU                           Normal weight           0      218     226
Birth       MAL-ED           PERU                           Normal weight           1        3     226
Birth       MAL-ED           PERU                           Underweight             0        4     226
Birth       MAL-ED           PERU                           Underweight             1        1     226
Birth       MAL-ED           SOUTH AFRICA                   Normal weight           0       97     101
Birth       MAL-ED           SOUTH AFRICA                   Normal weight           1        1     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight             0        3     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight             1        0     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           0      107     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           1        8     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             0        6     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             1        1     122
Birth       NIH-Birth        BANGLADESH                     Normal weight           0      494     608
Birth       NIH-Birth        BANGLADESH                     Normal weight           1       12     608
Birth       NIH-Birth        BANGLADESH                     Underweight             0       95     608
Birth       NIH-Birth        BANGLADESH                     Underweight             1        7     608
Birth       NIH-Crypto       BANGLADESH                     Normal weight           0      654     729
Birth       NIH-Crypto       BANGLADESH                     Normal weight           1        9     729
Birth       NIH-Crypto       BANGLADESH                     Underweight             0       65     729
Birth       NIH-Crypto       BANGLADESH                     Underweight             1        1     729
Birth       PROBIT           BELARUS                        Normal weight           0    13198   13726
Birth       PROBIT           BELARUS                        Normal weight           1        5   13726
Birth       PROBIT           BELARUS                        Underweight             0      523   13726
Birth       PROBIT           BELARUS                        Underweight             1        0   13726
Birth       PROVIDE          BANGLADESH                     Normal weight           0      414     517
Birth       PROVIDE          BANGLADESH                     Normal weight           1        4     517
Birth       PROVIDE          BANGLADESH                     Underweight             0       99     517
Birth       PROVIDE          BANGLADESH                     Underweight             1        0     517
Birth       SAS-CompFeed     INDIA                          Normal weight           0      799    1134
Birth       SAS-CompFeed     INDIA                          Normal weight           1       57    1134
Birth       SAS-CompFeed     INDIA                          Underweight             0      248    1134
Birth       SAS-CompFeed     INDIA                          Underweight             1       30    1134
Birth       ZVITAMBO         ZIMBABWE                       Normal weight           0     8905    9672
Birth       ZVITAMBO         ZIMBABWE                       Normal weight           1      257    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight             0      484    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight             1       26    9672
6 months    LCNI-5           MALAWI                         Normal weight           0      630     836
6 months    LCNI-5           MALAWI                         Normal weight           1       61     836
6 months    LCNI-5           MALAWI                         Underweight             0      135     836
6 months    LCNI-5           MALAWI                         Underweight             1       10     836
6 months    MAL-ED           BANGLADESH                     Normal weight           0      203     241
6 months    MAL-ED           BANGLADESH                     Normal weight           1        6     241
6 months    MAL-ED           BANGLADESH                     Underweight             0       30     241
6 months    MAL-ED           BANGLADESH                     Underweight             1        2     241
6 months    MAL-ED           BRAZIL                         Normal weight           0      199     208
6 months    MAL-ED           BRAZIL                         Normal weight           1        0     208
6 months    MAL-ED           BRAZIL                         Underweight             0        9     208
6 months    MAL-ED           BRAZIL                         Underweight             1        0     208
6 months    MAL-ED           INDIA                          Normal weight           0      180     235
6 months    MAL-ED           INDIA                          Normal weight           1        6     235
6 months    MAL-ED           INDIA                          Underweight             0       46     235
6 months    MAL-ED           INDIA                          Underweight             1        3     235
6 months    MAL-ED           NEPAL                          Normal weight           0      235     236
6 months    MAL-ED           NEPAL                          Normal weight           1        1     236
6 months    MAL-ED           NEPAL                          Underweight             0        0     236
6 months    MAL-ED           NEPAL                          Underweight             1        0     236
6 months    MAL-ED           PERU                           Normal weight           0      259     272
6 months    MAL-ED           PERU                           Normal weight           1        8     272
6 months    MAL-ED           PERU                           Underweight             0        3     272
6 months    MAL-ED           PERU                           Underweight             1        2     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight           0      237     249
6 months    MAL-ED           SOUTH AFRICA                   Normal weight           1        5     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight             0        6     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight             1        1     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           0      221     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           1       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             0       12     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             1        2     247
6 months    NIH-Birth        BANGLADESH                     Normal weight           0      419     537
6 months    NIH-Birth        BANGLADESH                     Normal weight           1       25     537
6 months    NIH-Birth        BANGLADESH                     Underweight             0       83     537
6 months    NIH-Birth        BANGLADESH                     Underweight             1       10     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight           0      631     715
6 months    NIH-Crypto       BANGLADESH                     Normal weight           1       17     715
6 months    NIH-Crypto       BANGLADESH                     Underweight             0       61     715
6 months    NIH-Crypto       BANGLADESH                     Underweight             1        6     715
6 months    PROBIT           BELARUS                        Normal weight           0    12393   13025
6 months    PROBIT           BELARUS                        Normal weight           1      127   13025
6 months    PROBIT           BELARUS                        Underweight             0      498   13025
6 months    PROBIT           BELARUS                        Underweight             1        7   13025
6 months    PROVIDE          BANGLADESH                     Normal weight           0      486     603
6 months    PROVIDE          BANGLADESH                     Normal weight           1       12     603
6 months    PROVIDE          BANGLADESH                     Underweight             0      103     603
6 months    PROVIDE          BANGLADESH                     Underweight             1        2     603
6 months    SAS-CompFeed     INDIA                          Normal weight           0      843    1227
6 months    SAS-CompFeed     INDIA                          Normal weight           1       79    1227
6 months    SAS-CompFeed     INDIA                          Underweight             0      265    1227
6 months    SAS-CompFeed     INDIA                          Underweight             1       40    1227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0     1930    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1       19    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0       34    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0    1983
6 months    ZVITAMBO         ZIMBABWE                       Normal weight           0     6728    7375
6 months    ZVITAMBO         ZIMBABWE                       Normal weight           1      271    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight             0      359    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight             1       17    7375
24 months   LCNI-5           MALAWI                         Normal weight           0      427     577
24 months   LCNI-5           MALAWI                         Normal weight           1       55     577
24 months   LCNI-5           MALAWI                         Underweight             0       80     577
24 months   LCNI-5           MALAWI                         Underweight             1       15     577
24 months   MAL-ED           BANGLADESH                     Normal weight           0      163     212
24 months   MAL-ED           BANGLADESH                     Normal weight           1       20     212
24 months   MAL-ED           BANGLADESH                     Underweight             0       21     212
24 months   MAL-ED           BANGLADESH                     Underweight             1        8     212
24 months   MAL-ED           BRAZIL                         Normal weight           0      162     168
24 months   MAL-ED           BRAZIL                         Normal weight           1        0     168
24 months   MAL-ED           BRAZIL                         Underweight             0        5     168
24 months   MAL-ED           BRAZIL                         Underweight             1        1     168
24 months   MAL-ED           INDIA                          Normal weight           0      154     226
24 months   MAL-ED           INDIA                          Normal weight           1       26     226
24 months   MAL-ED           INDIA                          Underweight             0       42     226
24 months   MAL-ED           INDIA                          Underweight             1        4     226
24 months   MAL-ED           NEPAL                          Normal weight           0      221     228
24 months   MAL-ED           NEPAL                          Normal weight           1        7     228
24 months   MAL-ED           NEPAL                          Underweight             0        0     228
24 months   MAL-ED           NEPAL                          Underweight             1        0     228
24 months   MAL-ED           PERU                           Normal weight           0      184     201
24 months   MAL-ED           PERU                           Normal weight           1       13     201
24 months   MAL-ED           PERU                           Underweight             0        2     201
24 months   MAL-ED           PERU                           Underweight             1        2     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight           0      202     234
24 months   MAL-ED           SOUTH AFRICA                   Normal weight           1       25     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight             0        5     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight             1        2     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           0      137     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight           1       66     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             0        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight             1        4     214
24 months   NIH-Birth        BANGLADESH                     Normal weight           0      280     429
24 months   NIH-Birth        BANGLADESH                     Normal weight           1       69     429
24 months   NIH-Birth        BANGLADESH                     Underweight             0       54     429
24 months   NIH-Birth        BANGLADESH                     Underweight             1       26     429
24 months   NIH-Crypto       BANGLADESH                     Normal weight           0      442     514
24 months   NIH-Crypto       BANGLADESH                     Normal weight           1       29     514
24 months   NIH-Crypto       BANGLADESH                     Underweight             0       36     514
24 months   NIH-Crypto       BANGLADESH                     Underweight             1        7     514
24 months   PROBIT           BELARUS                        Normal weight           0     3802    4005
24 months   PROBIT           BELARUS                        Normal weight           1       61    4005
24 months   PROBIT           BELARUS                        Underweight             0      138    4005
24 months   PROBIT           BELARUS                        Underweight             1        4    4005
24 months   PROVIDE          BANGLADESH                     Normal weight           0      440     577
24 months   PROVIDE          BANGLADESH                     Normal weight           1       37     577
24 months   PROVIDE          BANGLADESH                     Underweight             0       85     577
24 months   PROVIDE          BANGLADESH                     Underweight             1       15     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight           0     1167    1373
24 months   ZVITAMBO         ZIMBABWE                       Normal weight           1      145    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight             0       56    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight             1        5    1373


The following strata were considered:

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
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/98ab8f30-b7d9-4d56-8fa5-935b1a09721d/a36cd978-b34e-42d9-a004-1f086b23113e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98ab8f30-b7d9-4d56-8fa5-935b1a09721d/a36cd978-b34e-42d9-a004-1f086b23113e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/98ab8f30-b7d9-4d56-8fa5-935b1a09721d/a36cd978-b34e-42d9-a004-1f086b23113e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98ab8f30-b7d9-4d56-8fa5-935b1a09721d/a36cd978-b34e-42d9-a004-1f086b23113e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.0237154   0.0104465   0.0369843
Birth       NIH-Birth      BANGLADESH   Underweight          NA                0.0686275   0.0195235   0.1177314
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.0665888   0.0520733   0.0811043
Birth       SAS-CompFeed   INDIA        Underweight          NA                0.1079137   0.0703715   0.1454558
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0280506   0.0246695   0.0314318
Birth       ZVITAMBO       ZIMBABWE     Underweight          NA                0.0509804   0.0318896   0.0700712
6 months    LCNI-5         MALAWI       Normal weight        NA                0.0882779   0.0671125   0.1094432
6 months    LCNI-5         MALAWI       Underweight          NA                0.0689655   0.0276966   0.1102344
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                0.0563063   0.0348450   0.0777676
6 months    NIH-Birth      BANGLADESH   Underweight          NA                0.1075269   0.0445085   0.1705453
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                0.0262346   0.0139197   0.0385494
6 months    NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522   0.0211327   0.1579718
6 months    PROBIT         BELARUS      Normal weight        NA                0.0101438   0.0048430   0.0154445
6 months    PROBIT         BELARUS      Underweight          NA                0.0138614   0.0024257   0.0252970
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.0856833   0.0623852   0.1089814
6 months    SAS-CompFeed   INDIA        Underweight          NA                0.1311475   0.0912570   0.1710381
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0387198   0.0341997   0.0432399
6 months    ZVITAMBO       ZIMBABWE     Underweight          NA                0.0452128   0.0242104   0.0662151
24 months   LCNI-5         MALAWI       Normal weight        NA                0.1141079   0.0856993   0.1425165
24 months   LCNI-5         MALAWI       Underweight          NA                0.1578947   0.0845059   0.2312836
24 months   MAL-ED         BANGLADESH   Normal weight        NA                0.1092896   0.0639783   0.1546010
24 months   MAL-ED         BANGLADESH   Underweight          NA                0.2758621   0.1128077   0.4389164
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                0.1977077   0.1558746   0.2395409
24 months   NIH-Birth      BANGLADESH   Underweight          NA                0.3250000   0.2222449   0.4277551
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                0.0615711   0.0398416   0.0833006
24 months   NIH-Crypto     BANGLADESH   Underweight          NA                0.1627907   0.0523400   0.2732414
24 months   PROVIDE        BANGLADESH   Normal weight        NA                0.0775681   0.0535425   0.1015937
24 months   PROVIDE        BANGLADESH   Underweight          NA                0.1500000   0.0799546   0.2200454
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                0.1105183   0.0935466   0.1274900
24 months   ZVITAMBO       ZIMBABWE     Underweight          NA                0.0819672   0.0131035   0.1508309


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Birth      BANGLADESH   NA                   NA                0.0312500   0.0174085   0.0450915
Birth       SAS-CompFeed   INDIA        NA                   NA                0.0767196   0.0592439   0.0941952
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.0292597   0.0259008   0.0326186
6 months    LCNI-5         MALAWI       NA                   NA                0.0849282   0.0660197   0.1038368
6 months    NIH-Birth      BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto     BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    PROBIT         BELARUS      NA                   NA                0.0102879   0.0050246   0.0155512
6 months    SAS-CompFeed   INDIA        NA                   NA                0.0969845   0.0738527   0.1201163
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0390508   0.0346294   0.0434723
24 months   LCNI-5         MALAWI       NA                   NA                0.1213172   0.0946538   0.1479805
24 months   MAL-ED         BANGLADESH   NA                   NA                0.1320755   0.0863920   0.1777589
24 months   NIH-Birth      BANGLADESH   NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto     BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE        BANGLADESH   NA                   NA                0.0901213   0.0667360   0.1135066
24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.1092498   0.0927432   0.1257565


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       NIH-Birth      BANGLADESH   Underweight          Normal weight     2.8937908   1.1668052   7.176884
Birth       SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed   INDIA        Underweight          Normal weight     1.6205983   1.2446351   2.110127
Birth       ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.8174411   1.2263396   2.693456
6 months    LCNI-5         MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    LCNI-5         MALAWI       Underweight          Normal weight     0.7812323   0.4100294   1.488488
6 months    NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    NIH-Birth      BANGLADESH   Underweight          Normal weight     1.9096774   0.9491610   3.842202
6 months    NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.4135206   1.3924201   8.368253
6 months    PROBIT         BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    PROBIT         BELARUS      Underweight          Normal weight     1.3664926   0.6117741   3.052274
6 months    SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed   INDIA        Underweight          Normal weight     1.5306080   1.0851395   2.158949
6 months    ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.1676906   0.7232947   1.885126
24 months   LCNI-5         MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   LCNI-5         MALAWI       Underweight          Normal weight     1.3837321   0.8166951   2.344467
24 months   MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   MAL-ED         BANGLADESH   Underweight          Normal weight     2.5241379   1.2261968   5.195962
24 months   NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   NIH-Birth      BANGLADESH   Underweight          Normal weight     1.6438406   1.1236657   2.404818
24 months   NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   NIH-Crypto     BANGLADESH   Underweight          Normal weight     2.6439455   1.2305873   5.680579
24 months   PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   PROVIDE        BANGLADESH   Underweight          Normal weight     1.9337838   1.1042038   3.386621
24 months   ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ZVITAMBO       ZIMBABWE     Underweight          Normal weight     0.7416620   0.3157140   1.742281


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.0075346   -0.0011025   0.0161717
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.0101308    0.0040766   0.0161850
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0012091    0.0001817   0.0022365
6 months    LCNI-5         MALAWI       Normal weight        NA                -0.0033496   -0.0114093   0.0047100
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.0088706   -0.0027749   0.0205161
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0059333   -0.0007202   0.0125867
6 months    PROBIT         BELARUS      Normal weight        NA                 0.0001441   -0.0002744   0.0005626
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.0113012    0.0008703   0.0217321
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0003310   -0.0007647   0.0014268
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.0072093   -0.0058152   0.0202337
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.0227859   -0.0016183   0.0471900
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.0237375    0.0025221   0.0449529
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0084678   -0.0012566   0.0181922
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.0125532   -0.0004745   0.0255809
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                -0.0012685   -0.0044349   0.0018979


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.2411067   -0.0633857   0.4584100
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.1320496    0.0648841   0.1943909
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0413222    0.0058724   0.0755079
6 months    LCNI-5         MALAWI       Normal weight        NA                -0.0394407   -0.1384473   0.0509556
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.1361004   -0.0565698   0.2936363
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.1844471   -0.0343640   0.3569706
6 months    PROBIT         BELARUS      Normal weight        NA                 0.0140104   -0.0285400   0.0548005
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.1165260    0.0046963   0.2157908
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0084769   -0.0199684   0.0361289
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.0594250   -0.0536400   0.1603572
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.1725215   -0.0253527   0.3322096
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.1071935    0.0071013   0.1971955
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                 0.1209012   -0.0241135   0.2453817
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.1392920   -0.0136307   0.2691439
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                -0.0116108   -0.0409718   0.0169221
