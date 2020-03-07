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

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mbmi             wasted   n_cell       n
----------  ---------------  -----------------------------  --------------  -------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight         0     9723   17935
Birth       JiVitA-3         BANGLADESH                     Normal weight         1     1211   17935
Birth       JiVitA-3         BANGLADESH                     Underweight           0     6244   17935
Birth       JiVitA-3         BANGLADESH                     Underweight           1      757   17935
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
Birth       SAS-CompFeed     INDIA                          Normal weight         0      667     992
Birth       SAS-CompFeed     INDIA                          Normal weight         1       68     992
Birth       SAS-CompFeed     INDIA                          Underweight           0      218     992
Birth       SAS-CompFeed     INDIA                          Underweight           1       39     992
Birth       ZVITAMBO         ZIMBABWE                       Normal weight         0     7276    9030
Birth       ZVITAMBO         ZIMBABWE                       Normal weight         1     1298    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight           0      360    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight           1       96    9030
6 months    JiVitA-3         BANGLADESH                     Normal weight         0     9492   16733
6 months    JiVitA-3         BANGLADESH                     Normal weight         1      811   16733
6 months    JiVitA-3         BANGLADESH                     Underweight           0     5826   16733
6 months    JiVitA-3         BANGLADESH                     Underweight           1      604   16733
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
6 months    SAS-CompFeed     INDIA                          Normal weight         0      801    1226
6 months    SAS-CompFeed     INDIA                          Normal weight         1      101    1226
6 months    SAS-CompFeed     INDIA                          Underweight           0      279    1226
6 months    SAS-CompFeed     INDIA                          Underweight           1       45    1226
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0     1867    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1       82    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       30    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        3    1982
6 months    ZVITAMBO         ZIMBABWE                       Normal weight         0     6683    7253
6 months    ZVITAMBO         ZIMBABWE                       Normal weight         1      198    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight           0      347    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight           1       25    7253
24 months   JiVitA-3         BANGLADESH                     Normal weight         0     4147    8570
24 months   JiVitA-3         BANGLADESH                     Normal weight         1     1125    8570
24 months   JiVitA-3         BANGLADESH                     Underweight           0     2555    8570
24 months   JiVitA-3         BANGLADESH                     Underweight           1      743    8570
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

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/ce0bc9aa-4c90-4714-87cb-bed15efa4a81/27d47667-64c3-49d2-ba99-909d269eeba9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ce0bc9aa-4c90-4714-87cb-bed15efa4a81/27d47667-64c3-49d2-ba99-909d269eeba9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ce0bc9aa-4c90-4714-87cb-bed15efa4a81/27d47667-64c3-49d2-ba99-909d269eeba9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ce0bc9aa-4c90-4714-87cb-bed15efa4a81/27d47667-64c3-49d2-ba99-909d269eeba9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                0.1102478   0.1035292   0.1169664
Birth       JiVitA-3       BANGLADESH   Underweight          NA                0.1088094   0.1007985   0.1168204
Birth       MAL-ED         BANGLADESH   Normal weight        NA                0.1584699   0.1054338   0.2115061
Birth       MAL-ED         BANGLADESH   Underweight          NA                0.2307692   0.0684312   0.3931072
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.2807650   0.2407395   0.3207904
Birth       NIH-Birth      BANGLADESH   Underweight          NA                0.3470021   0.2487590   0.4452451
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                0.2402665   0.2069971   0.2735360
Birth       NIH-Crypto     BANGLADESH   Underweight          NA                0.2870132   0.1615476   0.4124787
Birth       PROBIT         BELARUS      Normal weight        NA                0.2084435   0.1431449   0.2737422
Birth       PROBIT         BELARUS      Underweight          NA                0.2579860   0.1734724   0.3424995
Birth       PROVIDE        BANGLADESH   Normal weight        NA                0.1970502   0.1583596   0.2357408
Birth       PROVIDE        BANGLADESH   Underweight          NA                0.3539019   0.2549266   0.4528772
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.0938311   0.0609286   0.1267336
Birth       SAS-CompFeed   INDIA        Underweight          NA                0.1481610   0.1070817   0.1892403
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.1516916   0.1440966   0.1592866
Birth       ZVITAMBO       ZIMBABWE     Underweight          NA                0.2065796   0.1689969   0.2441622
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                0.0785641   0.0728342   0.0842939
6 months    JiVitA-3       BANGLADESH   Underweight          NA                0.0940546   0.0863051   0.1018041
6 months    MAL-ED         INDIA        Normal weight        NA                0.0591398   0.0251679   0.0931117
6 months    MAL-ED         INDIA        Underweight          NA                0.1632653   0.0595562   0.2669744
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                0.0513178   0.0306451   0.0719906
6 months    NIH-Birth      BANGLADESH   Underweight          NA                0.1246036   0.0550471   0.1941602
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                0.0231481   0.0115621   0.0347342
6 months    NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522   0.0211327   0.1579718
6 months    PROVIDE        BANGLADESH   Normal weight        NA                0.0342052   0.0182126   0.0501979
6 months    PROVIDE        BANGLADESH   Underweight          NA                0.0761905   0.0254031   0.1269779
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.1110032   0.0896351   0.1323714
6 months    SAS-CompFeed   INDIA        Underweight          NA                0.1409582   0.0875581   0.1943584
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0287595   0.0248078   0.0327112
6 months    ZVITAMBO       ZIMBABWE     Underweight          NA                0.0773540   0.0487055   0.1060026
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                0.2135368   0.2018210   0.2252527
24 months   JiVitA-3       BANGLADESH   Underweight          NA                0.2253372   0.2091488   0.2415255
24 months   LCNI-5         MALAWI       Normal weight        NA                0.0107066   0.0013641   0.0200492
24 months   LCNI-5         MALAWI       Underweight          NA                0.0531915   0.0077844   0.0985986
24 months   MAL-ED         BANGLADESH   Normal weight        NA                0.0765027   0.0379011   0.1151044
24 months   MAL-ED         BANGLADESH   Underweight          NA                0.2413793   0.0852666   0.3974920
24 months   MAL-ED         INDIA        Normal weight        NA                0.1055556   0.0605680   0.1505431
24 months   MAL-ED         INDIA        Underweight          NA                0.1739130   0.0641361   0.2836900
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                0.0908680   0.0604792   0.1212569
24 months   NIH-Birth      BANGLADESH   Underweight          NA                0.2596663   0.1615229   0.3578097
24 months   PROVIDE        BANGLADESH   Normal weight        NA                0.0804437   0.0560090   0.1048784
24 months   PROVIDE        BANGLADESH   Underweight          NA                0.2603417   0.1680484   0.3526349
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                0.1651917   0.1256068   0.2047767
24 months   ZVITAMBO       ZIMBABWE     Underweight          NA                0.2962963   0.1238244   0.4687682


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   NA                   NA                0.1097296   0.1045905   0.1148686
Birth       MAL-ED         BANGLADESH   NA                   NA                0.1674641   0.1167208   0.2182074
Birth       NIH-Birth      BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto     BANGLADESH   NA                   NA                0.2428977   0.2111977   0.2745977
Birth       PROBIT         BELARUS      NA                   NA                0.2103143   0.1449220   0.2757065
Birth       PROVIDE        BANGLADESH   NA                   NA                0.2215686   0.1854897   0.2576475
Birth       SAS-CompFeed   INDIA        NA                   NA                0.1078629   0.0749278   0.1407980
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.1543743   0.1469218   0.1618269
6 months    JiVitA-3       BANGLADESH   NA                   NA                0.0845634   0.0797479   0.0893790
6 months    MAL-ED         INDIA        NA                   NA                0.0808511   0.0459229   0.1157792
6 months    NIH-Birth      BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto     BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROVIDE        BANGLADESH   NA                   NA                0.0415282   0.0255778   0.0574787
6 months    SAS-CompFeed   INDIA        NA                   NA                0.1190865   0.0945854   0.1435876
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0307459   0.0267728   0.0347190
24 months   JiVitA-3       BANGLADESH   NA                   NA                0.2179697   0.2080911   0.2278482
24 months   LCNI-5         MALAWI       NA                   NA                0.0178253   0.0068664   0.0287842
24 months   MAL-ED         BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   MAL-ED         INDIA        NA                   NA                0.1194690   0.0770894   0.1618486
24 months   NIH-Birth      BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   PROVIDE        BANGLADESH   NA                   NA                0.1072664   0.0820169   0.1325160
24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.1748634   0.1358949   0.2138319


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       JiVitA-3       BANGLADESH   Underweight          Normal weight     0.9869537   0.8973986    1.085446
Birth       MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       MAL-ED         BANGLADESH   Underweight          Normal weight     1.4562334   0.6682012    3.173619
Birth       NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       NIH-Birth      BANGLADESH   Underweight          Normal weight     1.2359166   0.9007988    1.695706
Birth       NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.1945616   0.7547911    1.890559
Birth       PROBIT         BELARUS      Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       PROBIT         BELARUS      Underweight          Normal weight     1.2376780   1.0032719    1.526851
Birth       PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       PROVIDE        BANGLADESH   Underweight          Normal weight     1.7959984   1.2775728    2.524796
Birth       SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       SAS-CompFeed   INDIA        Underweight          Normal weight     1.5790177   1.1993701    2.078839
Birth       ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
Birth       ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.3618392   1.1276744    1.644629
6 months    JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    JiVitA-3       BANGLADESH   Underweight          Normal weight     1.1971706   1.0783634    1.329067
6 months    MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    MAL-ED         INDIA        Underweight          Normal weight     2.7606679   1.1723848    6.500671
6 months    NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    NIH-Birth      BANGLADESH   Underweight          Normal weight     2.4280770   1.2188415    4.837018
6 months    NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.8686567   1.5519898    9.643430
6 months    PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    PROVIDE        BANGLADESH   Underweight          Normal weight     2.2274510   0.9867371    5.028227
6 months    SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    SAS-CompFeed   INDIA        Underweight          Normal weight     1.2698572   0.8915332    1.808724
6 months    ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
6 months    ZVITAMBO       ZIMBABWE     Underweight          Normal weight     2.6896898   1.8121470    3.992188
24 months   JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   JiVitA-3       BANGLADESH   Underweight          Normal weight     1.0552613   0.9674264    1.151071
24 months   LCNI-5         MALAWI       Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   LCNI-5         MALAWI       Underweight          Normal weight     4.9680851   1.4656789   16.839889
24 months   MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   MAL-ED         BANGLADESH   Underweight          Normal weight     3.1551724   1.3892244    7.165950
24 months   MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   MAL-ED         INDIA        Underweight          Normal weight     1.6475973   0.7692713    3.528764
24 months   NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   NIH-Birth      BANGLADESH   Underweight          Normal weight     2.8576198   1.7262343    4.730523
24 months   PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   PROVIDE        BANGLADESH   Underweight          Normal weight     3.2363227   2.0275894    5.165634
24 months   ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000    1.000000
24 months   ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.7936508   0.9557734    3.366052


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0005182   -0.0045592   0.0035228
Birth       MAL-ED         BANGLADESH   Normal weight        NA                 0.0089942   -0.0124975   0.0304858
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.0114089   -0.0055846   0.0284025
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0026312   -0.0081531   0.0134155
Birth       PROBIT         BELARUS      Normal weight        NA                 0.0018707   -0.0002341   0.0039755
Birth       PROVIDE        BANGLADESH   Normal weight        NA                 0.0245184    0.0041016   0.0449352
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.0140318    0.0061676   0.0218959
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0026827    0.0007351   0.0046303
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                 0.0059994    0.0024564   0.0095423
6 months    MAL-ED         INDIA        Normal weight        NA                 0.0217113   -0.0016803   0.0451029
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.0138591    0.0012605   0.0264577
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0062225   -0.0004333   0.0128782
6 months    PROVIDE        BANGLADESH   Normal weight        NA                 0.0073230   -0.0020510   0.0166970
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.0080832   -0.0044688   0.0206353
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0019864    0.0006537   0.0033192
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                 0.0044328   -0.0029606   0.0118263
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.0071187   -0.0007594   0.0149967
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.0225539   -0.0007348   0.0458425
24 months   MAL-ED         INDIA        Normal weight        NA                 0.0139135   -0.0105003   0.0383272
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.0329637    0.0130006   0.0529269
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.0268228    0.0108166   0.0428290
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0096716   -0.0038477   0.0231909


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0047224   -0.0422197   0.0314258
Birth       MAL-ED         BANGLADESH   Normal weight        NA                 0.0537080   -0.0830039   0.1731623
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.0390485   -0.0208403   0.0954238
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0108325   -0.0345700   0.0542425
Birth       PROBIT         BELARUS      Normal weight        NA                 0.0088949   -0.0013785   0.0190628
Birth       PROVIDE        BANGLADESH   Normal weight        NA                 0.1106582    0.0146253   0.1973319
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.1300891    0.0478285   0.2052429
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0173779    0.0047003   0.0298940
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                 0.0709453    0.0282463   0.1117682
6 months    MAL-ED         INDIA        Normal weight        NA                 0.2685342   -0.0555650   0.4931225
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.2126379    0.0062374   0.3761698
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.2118607   -0.0276962   0.3955766
6 months    PROVIDE        BANGLADESH   Normal weight        NA                 0.1763380   -0.0707412   0.3664024
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.0678771   -0.0369188   0.1620818
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0646081    0.0210123   0.1062624
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                 0.0203369   -0.0140919   0.0535969
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.3993576   -0.1107537   0.6752014
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.2276867   -0.0260841   0.4186950
24 months   MAL-ED         INDIA        Normal weight        NA                 0.1164609   -0.1094308   0.2963587
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.2661977    0.0990787   0.4023165
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.2500574    0.0975049   0.3768233
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0553097   -0.0246139   0.1289990
