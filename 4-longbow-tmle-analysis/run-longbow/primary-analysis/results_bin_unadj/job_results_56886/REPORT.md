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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mbmi             wasted   n_cell       n
----------  ---------------  -----------------------------  --------------  -------  -------  ------
Birth       MAL-ED           BANGLADESH                     Normal weight         0      154     209
Birth       MAL-ED           BANGLADESH                     Normal weight         1       29     209
Birth       MAL-ED           BANGLADESH                     Underweight           0       20     209
Birth       MAL-ED           BANGLADESH                     Underweight           1        6     209
Birth       MAL-ED           BRAZIL                         Normal weight         0       55      61
Birth       MAL-ED           BRAZIL                         Normal weight         1        1      61
Birth       MAL-ED           BRAZIL                         Underweight           0        4      61
Birth       MAL-ED           BRAZIL                         Underweight           1        1      61
Birth       MAL-ED           INDIA                          Normal weight         0       29      41
Birth       MAL-ED           INDIA                          Normal weight         1        4      41
Birth       MAL-ED           INDIA                          Underweight           0        7      41
Birth       MAL-ED           INDIA                          Underweight           1        1      41
Birth       MAL-ED           NEPAL                          Normal weight         0       24      26
Birth       MAL-ED           NEPAL                          Normal weight         1        2      26
Birth       MAL-ED           NEPAL                          Underweight           0        0      26
Birth       MAL-ED           NEPAL                          Underweight           1        0      26
Birth       MAL-ED           PERU                           Normal weight         0      211     221
Birth       MAL-ED           PERU                           Normal weight         1        5     221
Birth       MAL-ED           PERU                           Underweight           0        5     221
Birth       MAL-ED           PERU                           Underweight           1        0     221
Birth       MAL-ED           SOUTH AFRICA                   Normal weight         0       87     100
Birth       MAL-ED           SOUTH AFRICA                   Normal weight         1       10     100
Birth       MAL-ED           SOUTH AFRICA                   Underweight           0        3     100
Birth       MAL-ED           SOUTH AFRICA                   Underweight           1        0     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight         0      106     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight         1        1     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           0        6     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     113
Birth       NIH-Birth        BANGLADESH                     Normal weight         0      348     575
Birth       NIH-Birth        BANGLADESH                     Normal weight         1      135     575
Birth       NIH-Birth        BANGLADESH                     Underweight           0       59     575
Birth       NIH-Birth        BANGLADESH                     Underweight           1       33     575
Birth       NIH-Crypto       BANGLADESH                     Normal weight         0      486     704
Birth       NIH-Crypto       BANGLADESH                     Normal weight         1      153     704
Birth       NIH-Crypto       BANGLADESH                     Underweight           0       47     704
Birth       NIH-Crypto       BANGLADESH                     Underweight           1       18     704
Birth       PROBIT           BELARUS                        Normal weight         0    10393   13651
Birth       PROBIT           BELARUS                        Normal weight         1     2737   13651
Birth       PROBIT           BELARUS                        Underweight           0      387   13651
Birth       PROBIT           BELARUS                        Underweight           1      134   13651
Birth       PROVIDE          BANGLADESH                     Normal weight         0      331     510
Birth       PROVIDE          BANGLADESH                     Normal weight         1       80     510
Birth       PROVIDE          BANGLADESH                     Underweight           0       66     510
Birth       PROVIDE          BANGLADESH                     Underweight           1       33     510
Birth       SAS-CompFeed     INDIA                          Normal weight         0      690     991
Birth       SAS-CompFeed     INDIA                          Normal weight         1       70     991
Birth       SAS-CompFeed     INDIA                          Underweight           0      194     991
Birth       SAS-CompFeed     INDIA                          Underweight           1       37     991
Birth       ZVITAMBO         ZIMBABWE                       Normal weight         0     7276    9030
Birth       ZVITAMBO         ZIMBABWE                       Normal weight         1     1298    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight           0      360    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight           1       96    9030
6 months    LCNI-5           MALAWI                         Normal weight         0      678     836
6 months    LCNI-5           MALAWI                         Normal weight         1       13     836
6 months    LCNI-5           MALAWI                         Underweight           0      144     836
6 months    LCNI-5           MALAWI                         Underweight           1        1     836
6 months    MAL-ED           BANGLADESH                     Normal weight         0      206     241
6 months    MAL-ED           BANGLADESH                     Normal weight         1        3     241
6 months    MAL-ED           BANGLADESH                     Underweight           0       27     241
6 months    MAL-ED           BANGLADESH                     Underweight           1        5     241
6 months    MAL-ED           BRAZIL                         Normal weight         0      198     208
6 months    MAL-ED           BRAZIL                         Normal weight         1        1     208
6 months    MAL-ED           BRAZIL                         Underweight           0        9     208
6 months    MAL-ED           BRAZIL                         Underweight           1        0     208
6 months    MAL-ED           INDIA                          Normal weight         0      175     235
6 months    MAL-ED           INDIA                          Normal weight         1       11     235
6 months    MAL-ED           INDIA                          Underweight           0       41     235
6 months    MAL-ED           INDIA                          Underweight           1        8     235
6 months    MAL-ED           NEPAL                          Normal weight         0      232     236
6 months    MAL-ED           NEPAL                          Normal weight         1        4     236
6 months    MAL-ED           NEPAL                          Underweight           0        0     236
6 months    MAL-ED           NEPAL                          Underweight           1        0     236
6 months    MAL-ED           PERU                           Normal weight         0      267     272
6 months    MAL-ED           PERU                           Normal weight         1        0     272
6 months    MAL-ED           PERU                           Underweight           0        5     272
6 months    MAL-ED           PERU                           Underweight           1        0     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight         0      235     249
6 months    MAL-ED           SOUTH AFRICA                   Normal weight         1        7     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight           0        7     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight           1        0     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight         0      232     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight         1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           0       14     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     247
6 months    NIH-Birth        BANGLADESH                     Normal weight         0      421     537
6 months    NIH-Birth        BANGLADESH                     Normal weight         1       23     537
6 months    NIH-Birth        BANGLADESH                     Underweight           0       81     537
6 months    NIH-Birth        BANGLADESH                     Underweight           1       12     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight         0      633     715
6 months    NIH-Crypto       BANGLADESH                     Normal weight         1       15     715
6 months    NIH-Crypto       BANGLADESH                     Underweight           0       61     715
6 months    NIH-Crypto       BANGLADESH                     Underweight           1        6     715
6 months    PROBIT           BELARUS                        Normal weight         0    12434   13023
6 months    PROBIT           BELARUS                        Normal weight         1       84   13023
6 months    PROBIT           BELARUS                        Underweight           0      502   13023
6 months    PROBIT           BELARUS                        Underweight           1        3   13023
6 months    PROVIDE          BANGLADESH                     Normal weight         0      480     602
6 months    PROVIDE          BANGLADESH                     Normal weight         1       17     602
6 months    PROVIDE          BANGLADESH                     Underweight           0       97     602
6 months    PROVIDE          BANGLADESH                     Underweight           1        8     602
6 months    SAS-CompFeed     INDIA                          Normal weight         0      826    1225
6 months    SAS-CompFeed     INDIA                          Normal weight         1       95    1225
6 months    SAS-CompFeed     INDIA                          Underweight           0      253    1225
6 months    SAS-CompFeed     INDIA                          Underweight           1       51    1225
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0     1867    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1       82    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       30    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        3    1982
6 months    ZVITAMBO         ZIMBABWE                       Normal weight         0     6683    7253
6 months    ZVITAMBO         ZIMBABWE                       Normal weight         1      198    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight           0      347    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight           1       25    7253
24 months   LCNI-5           MALAWI                         Normal weight         0      462     561
24 months   LCNI-5           MALAWI                         Normal weight         1        5     561
24 months   LCNI-5           MALAWI                         Underweight           0       89     561
24 months   LCNI-5           MALAWI                         Underweight           1        5     561
24 months   MAL-ED           BANGLADESH                     Normal weight         0      169     212
24 months   MAL-ED           BANGLADESH                     Normal weight         1       14     212
24 months   MAL-ED           BANGLADESH                     Underweight           0       22     212
24 months   MAL-ED           BANGLADESH                     Underweight           1        7     212
24 months   MAL-ED           BRAZIL                         Normal weight         0      159     168
24 months   MAL-ED           BRAZIL                         Normal weight         1        3     168
24 months   MAL-ED           BRAZIL                         Underweight           0        6     168
24 months   MAL-ED           BRAZIL                         Underweight           1        0     168
24 months   MAL-ED           INDIA                          Normal weight         0      161     226
24 months   MAL-ED           INDIA                          Normal weight         1       19     226
24 months   MAL-ED           INDIA                          Underweight           0       38     226
24 months   MAL-ED           INDIA                          Underweight           1        8     226
24 months   MAL-ED           NEPAL                          Normal weight         0      223     228
24 months   MAL-ED           NEPAL                          Normal weight         1        5     228
24 months   MAL-ED           NEPAL                          Underweight           0        0     228
24 months   MAL-ED           NEPAL                          Underweight           1        0     228
24 months   MAL-ED           PERU                           Normal weight         0      195     201
24 months   MAL-ED           PERU                           Normal weight         1        2     201
24 months   MAL-ED           PERU                           Underweight           0        2     201
24 months   MAL-ED           PERU                           Underweight           1        2     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight         0      226     234
24 months   MAL-ED           SOUTH AFRICA                   Normal weight         1        1     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight           0        7     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight           1        0     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight         0      200     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight         1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           0       10     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           1        1     214
24 months   NIH-Birth        BANGLADESH                     Normal weight         0      316     428
24 months   NIH-Birth        BANGLADESH                     Normal weight         1       32     428
24 months   NIH-Birth        BANGLADESH                     Underweight           0       59     428
24 months   NIH-Birth        BANGLADESH                     Underweight           1       21     428
24 months   NIH-Crypto       BANGLADESH                     Normal weight         0      430     514
24 months   NIH-Crypto       BANGLADESH                     Normal weight         1       41     514
24 months   NIH-Crypto       BANGLADESH                     Underweight           0       39     514
24 months   NIH-Crypto       BANGLADESH                     Underweight           1        4     514
24 months   PROBIT           BELARUS                        Normal weight         0     3770    3940
24 months   PROBIT           BELARUS                        Normal weight         1       29    3940
24 months   PROBIT           BELARUS                        Underweight           0      138    3940
24 months   PROBIT           BELARUS                        Underweight           1        3    3940
24 months   PROVIDE          BANGLADESH                     Normal weight         0      440     578
24 months   PROVIDE          BANGLADESH                     Normal weight         1       38     578
24 months   PROVIDE          BANGLADESH                     Underweight           0       76     578
24 months   PROVIDE          BANGLADESH                     Underweight           1       24     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0        6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight         0      283     366
24 months   ZVITAMBO         ZIMBABWE                       Normal weight         1       56     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight           0       19     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight           1        8     366


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

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/d52ec3a0-9669-4a2c-9676-12892d9d3464/80856b67-db1b-457e-be2e-dd8ba0815076/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d52ec3a0-9669-4a2c-9676-12892d9d3464/80856b67-db1b-457e-be2e-dd8ba0815076/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d52ec3a0-9669-4a2c-9676-12892d9d3464/80856b67-db1b-457e-be2e-dd8ba0815076/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d52ec3a0-9669-4a2c-9676-12892d9d3464/80856b67-db1b-457e-be2e-dd8ba0815076/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED         BANGLADESH   Normal weight        NA                0.1584699   0.1054338   0.2115061
Birth       MAL-ED         BANGLADESH   Underweight          NA                0.2307692   0.0684312   0.3931072
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.2795031   0.2394476   0.3195586
Birth       NIH-Birth      BANGLADESH   Underweight          NA                0.3586957   0.2606051   0.4567862
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                0.2394366   0.2063258   0.2725474
Birth       NIH-Crypto     BANGLADESH   Underweight          NA                0.2769231   0.1680622   0.3857840
Birth       PROBIT         BELARUS      Normal weight        NA                0.2084539   0.1432142   0.2736937
Birth       PROBIT         BELARUS      Underweight          NA                0.2571977   0.1701464   0.3442490
Birth       PROVIDE        BANGLADESH   Normal weight        NA                0.1946472   0.1563321   0.2329624
Birth       PROVIDE        BANGLADESH   Underweight          NA                0.3333333   0.2403831   0.4262836
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.0921053   0.0601339   0.1240766
Birth       SAS-CompFeed   INDIA        Underweight          NA                0.1601732   0.1150796   0.2052667
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.1513879   0.1438007   0.1589751
Birth       ZVITAMBO       ZIMBABWE     Underweight          NA                0.2105263   0.1731056   0.2479470
6 months    MAL-ED         INDIA        Normal weight        NA                0.0591398   0.0251679   0.0931117
6 months    MAL-ED         INDIA        Underweight          NA                0.1632653   0.0595562   0.2669744
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                0.0518018   0.0311678   0.0724358
6 months    NIH-Birth      BANGLADESH   Underweight          NA                0.1290323   0.0608358   0.1972287
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                0.0231481   0.0115621   0.0347342
6 months    NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522   0.0211327   0.1579718
6 months    PROVIDE        BANGLADESH   Normal weight        NA                0.0342052   0.0182126   0.0501979
6 months    PROVIDE        BANGLADESH   Underweight          NA                0.0761905   0.0254031   0.1269779
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.1031488   0.0775445   0.1287530
6 months    SAS-CompFeed   INDIA        Underweight          NA                0.1677632   0.1105003   0.2250260
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0287749   0.0248247   0.0327251
6 months    ZVITAMBO       ZIMBABWE     Underweight          NA                0.0672043   0.0417595   0.0926491
24 months   LCNI-5         MALAWI       Normal weight        NA                0.0107066   0.0013641   0.0200492
24 months   LCNI-5         MALAWI       Underweight          NA                0.0531915   0.0077844   0.0985986
24 months   MAL-ED         BANGLADESH   Normal weight        NA                0.0765027   0.0379011   0.1151044
24 months   MAL-ED         BANGLADESH   Underweight          NA                0.2413793   0.0852666   0.3974920
24 months   MAL-ED         INDIA        Normal weight        NA                0.1055556   0.0605680   0.1505431
24 months   MAL-ED         INDIA        Underweight          NA                0.1739130   0.0641361   0.2836900
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                0.0919540   0.0615588   0.1223493
24 months   NIH-Birth      BANGLADESH   Underweight          NA                0.2625000   0.1659712   0.3590288
24 months   PROVIDE        BANGLADESH   Normal weight        NA                0.0794979   0.0552262   0.1037696
24 months   PROVIDE        BANGLADESH   Underweight          NA                0.2400000   0.1562207   0.3237793
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                0.1651917   0.1256068   0.2047767
24 months   ZVITAMBO       ZIMBABWE     Underweight          NA                0.2962963   0.1238244   0.4687682


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       MAL-ED         BANGLADESH   NA                   NA                0.1674641   0.1167208   0.2182074
Birth       NIH-Birth      BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto     BANGLADESH   NA                   NA                0.2428977   0.2111977   0.2745977
Birth       PROBIT         BELARUS      NA                   NA                0.2103143   0.1449220   0.2757065
Birth       PROVIDE        BANGLADESH   NA                   NA                0.2215686   0.1854897   0.2576475
Birth       SAS-CompFeed   INDIA        NA                   NA                0.1079717   0.0750459   0.1408976
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.1543743   0.1469218   0.1618269
6 months    MAL-ED         INDIA        NA                   NA                0.0808511   0.0459229   0.1157792
6 months    NIH-Birth      BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto     BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROVIDE        BANGLADESH   NA                   NA                0.0415282   0.0255778   0.0574787
6 months    SAS-CompFeed   INDIA        NA                   NA                0.1191837   0.0947144   0.1436529
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0307459   0.0267728   0.0347190
24 months   LCNI-5         MALAWI       NA                   NA                0.0178253   0.0068664   0.0287842
24 months   MAL-ED         BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   MAL-ED         INDIA        NA                   NA                0.1194690   0.0770894   0.1618486
24 months   NIH-Birth      BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   PROVIDE        BANGLADESH   NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.1748634   0.1358949   0.2138319


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ---------  ----------  ----------
Birth       MAL-ED         BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       MAL-ED         BANGLADESH   Underweight          Normal weight     1.456233   0.6682012    3.173619
Birth       NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       NIH-Birth      BANGLADESH   Underweight          Normal weight     1.283333   0.9424434    1.747526
Birth       NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.156561   0.7624095    1.754482
Birth       PROBIT         BELARUS      Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       PROBIT         BELARUS      Underweight          Normal weight     1.233835   1.0031222    1.517610
Birth       PROVIDE        BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       PROVIDE        BANGLADESH   Underweight          Normal weight     1.712500   1.2172882    2.409172
Birth       SAS-CompFeed   INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       SAS-CompFeed   INDIA        Underweight          Normal weight     1.739023   1.3205083    2.290179
Birth       ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.390642   1.1561395    1.672708
6 months    MAL-ED         INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    MAL-ED         INDIA        Underweight          Normal weight     2.760668   1.1723848    6.500671
6 months    NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    NIH-Birth      BANGLADESH   Underweight          Normal weight     2.490884   1.2850818    4.828098
6 months    NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.868657   1.5519898    9.643430
6 months    PROVIDE        BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    PROVIDE        BANGLADESH   Underweight          Normal weight     2.227451   0.9867371    5.028227
6 months    SAS-CompFeed   INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    SAS-CompFeed   INDIA        Underweight          Normal weight     1.626420   1.0733249    2.464530
6 months    ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ZVITAMBO       ZIMBABWE     Underweight          Normal weight     2.335519   1.5612660    3.493735
24 months   LCNI-5         MALAWI       Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   LCNI-5         MALAWI       Underweight          Normal weight     4.968085   1.4656789   16.839889
24 months   MAL-ED         BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   MAL-ED         BANGLADESH   Underweight          Normal weight     3.155172   1.3892244    7.165950
24 months   MAL-ED         INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   MAL-ED         INDIA        Underweight          Normal weight     1.647597   0.7692713    3.528764
24 months   NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   NIH-Birth      BANGLADESH   Underweight          Normal weight     2.854687   1.7410817    4.680562
24 months   PROVIDE        BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   PROVIDE        BANGLADESH   Underweight          Normal weight     3.018947   1.8986608    4.800248
24 months   ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.793651   0.9557734    3.366052


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       MAL-ED         BANGLADESH   Normal weight        NA                0.0089942   -0.0124975   0.0304858
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.0126708   -0.0044474   0.0297890
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                0.0034611   -0.0070752   0.0139974
Birth       PROBIT         BELARUS      Normal weight        NA                0.0018603   -0.0002071   0.0039278
Birth       PROVIDE        BANGLADESH   Normal weight        NA                0.0269214    0.0068320   0.0470109
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.0158665    0.0073199   0.0244131
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0029864    0.0010398   0.0049329
6 months    MAL-ED         INDIA        Normal weight        NA                0.0217113   -0.0016803   0.0451029
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                0.0133751    0.0007902   0.0259600
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                0.0062225   -0.0004333   0.0128782
6 months    PROVIDE        BANGLADESH   Normal weight        NA                0.0073230   -0.0020510   0.0166970
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.0160349    0.0015640   0.0305059
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0019710    0.0006360   0.0033060
24 months   LCNI-5         MALAWI       Normal weight        NA                0.0071187   -0.0007594   0.0149967
24 months   MAL-ED         BANGLADESH   Normal weight        NA                0.0225539   -0.0007348   0.0458425
24 months   MAL-ED         INDIA        Normal weight        NA                0.0139135   -0.0105003   0.0383272
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                0.0318778    0.0119382   0.0518173
24 months   PROVIDE        BANGLADESH   Normal weight        NA                0.0277685    0.0118856   0.0436515
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0096716   -0.0038477   0.0231909


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       MAL-ED         BANGLADESH   Normal weight        NA                0.0537080   -0.0830039   0.1731623
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.0433673   -0.0169948   0.1001468
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                0.0142492   -0.0300815   0.0566722
Birth       PROBIT         BELARUS      Normal weight        NA                0.0088455   -0.0011729   0.0187637
Birth       PROVIDE        BANGLADESH   Normal weight        NA                0.1215038    0.0271932   0.2066712
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.1469503    0.0619040   0.2242865
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0193451    0.0066770   0.0318517
6 months    MAL-ED         INDIA        Normal weight        NA                0.2685342   -0.0555650   0.4931225
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                0.2052124   -0.0003810   0.3685532
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                0.2118607   -0.0276962   0.3955766
6 months    PROVIDE        BANGLADESH   Normal weight        NA                0.1763380   -0.0707412   0.3664024
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.1345396    0.0074580   0.2453501
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0641065    0.0204479   0.1058191
24 months   LCNI-5         MALAWI       Normal weight        NA                0.3993576   -0.1107537   0.6752014
24 months   MAL-ED         BANGLADESH   Normal weight        NA                0.2276867   -0.0260841   0.4186950
24 months   MAL-ED         INDIA        Normal weight        NA                0.1164609   -0.1094308   0.2963587
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                0.2574279    0.0908166   0.3935071
24 months   PROVIDE        BANGLADESH   Normal weight        NA                0.2588743    0.1079388   0.3842718
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0553097   -0.0246139   0.1289990
