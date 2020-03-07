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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mbmi             stunted   n_cell       n
----------  ---------------  -----------------------------  --------------  --------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight          0     9101   22355
Birth       JiVitA-3         BANGLADESH                     Normal weight          1     4619   22355
Birth       JiVitA-3         BANGLADESH                     Underweight            0     5903   22355
Birth       JiVitA-3         BANGLADESH                     Underweight            1     2732   22355
Birth       MAL-ED           BANGLADESH                     Normal weight          0      159     222
Birth       MAL-ED           BANGLADESH                     Normal weight          1       35     222
Birth       MAL-ED           BANGLADESH                     Underweight            0       23     222
Birth       MAL-ED           BANGLADESH                     Underweight            1        5     222
Birth       MAL-ED           BRAZIL                         Normal weight          0       52      64
Birth       MAL-ED           BRAZIL                         Normal weight          1        7      64
Birth       MAL-ED           BRAZIL                         Underweight            0        3      64
Birth       MAL-ED           BRAZIL                         Underweight            1        2      64
Birth       MAL-ED           INDIA                          Normal weight          0       27      43
Birth       MAL-ED           INDIA                          Normal weight          1        8      43
Birth       MAL-ED           INDIA                          Underweight            0        7      43
Birth       MAL-ED           INDIA                          Underweight            1        1      43
Birth       MAL-ED           NEPAL                          Normal weight          0       25      27
Birth       MAL-ED           NEPAL                          Normal weight          1        2      27
Birth       MAL-ED           NEPAL                          Underweight            0        0      27
Birth       MAL-ED           NEPAL                          Underweight            1        0      27
Birth       MAL-ED           PERU                           Normal weight          0      197     226
Birth       MAL-ED           PERU                           Normal weight          1       24     226
Birth       MAL-ED           PERU                           Underweight            0        3     226
Birth       MAL-ED           PERU                           Underweight            1        2     226
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          0       89     101
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          1        9     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight            0        3     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight            1        0     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0       96     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       19     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0        4     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     122
Birth       NIH-Birth        BANGLADESH                     Normal weight          0      437     608
Birth       NIH-Birth        BANGLADESH                     Normal weight          1       69     608
Birth       NIH-Birth        BANGLADESH                     Underweight            0       74     608
Birth       NIH-Birth        BANGLADESH                     Underweight            1       28     608
Birth       NIH-Crypto       BANGLADESH                     Normal weight          0      575     729
Birth       NIH-Crypto       BANGLADESH                     Normal weight          1       88     729
Birth       NIH-Crypto       BANGLADESH                     Underweight            0       53     729
Birth       NIH-Crypto       BANGLADESH                     Underweight            1       13     729
Birth       PROBIT           BELARUS                        Normal weight          0    13173   13726
Birth       PROBIT           BELARUS                        Normal weight          1       30   13726
Birth       PROBIT           BELARUS                        Underweight            0      519   13726
Birth       PROBIT           BELARUS                        Underweight            1        4   13726
Birth       PROVIDE          BANGLADESH                     Normal weight          0      381     517
Birth       PROVIDE          BANGLADESH                     Normal weight          1       37     517
Birth       PROVIDE          BANGLADESH                     Underweight            0       89     517
Birth       PROVIDE          BANGLADESH                     Underweight            1       10     517
Birth       SAS-CompFeed     INDIA                          Normal weight          0      615    1135
Birth       SAS-CompFeed     INDIA                          Normal weight          1      215    1135
Birth       SAS-CompFeed     INDIA                          Underweight            0      200    1135
Birth       SAS-CompFeed     INDIA                          Underweight            1      105    1135
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          0     8283    9672
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          1      879    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight            0      432    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight            1       78    9672
6 months    JiVitA-3         BANGLADESH                     Normal weight          0     7574   16760
6 months    JiVitA-3         BANGLADESH                     Normal weight          1     2737   16760
6 months    JiVitA-3         BANGLADESH                     Underweight            0     4970   16760
6 months    JiVitA-3         BANGLADESH                     Underweight            1     1479   16760
6 months    LCNI-5           MALAWI                         Normal weight          0      446     836
6 months    LCNI-5           MALAWI                         Normal weight          1      245     836
6 months    LCNI-5           MALAWI                         Underweight            0       83     836
6 months    LCNI-5           MALAWI                         Underweight            1       62     836
6 months    MAL-ED           BANGLADESH                     Normal weight          0      174     241
6 months    MAL-ED           BANGLADESH                     Normal weight          1       35     241
6 months    MAL-ED           BANGLADESH                     Underweight            0       23     241
6 months    MAL-ED           BANGLADESH                     Underweight            1        9     241
6 months    MAL-ED           BRAZIL                         Normal weight          0      193     208
6 months    MAL-ED           BRAZIL                         Normal weight          1        6     208
6 months    MAL-ED           BRAZIL                         Underweight            0        9     208
6 months    MAL-ED           BRAZIL                         Underweight            1        0     208
6 months    MAL-ED           INDIA                          Normal weight          0      150     235
6 months    MAL-ED           INDIA                          Normal weight          1       36     235
6 months    MAL-ED           INDIA                          Underweight            0       41     235
6 months    MAL-ED           INDIA                          Underweight            1        8     235
6 months    MAL-ED           NEPAL                          Normal weight          0      224     236
6 months    MAL-ED           NEPAL                          Normal weight          1       12     236
6 months    MAL-ED           NEPAL                          Underweight            0        0     236
6 months    MAL-ED           NEPAL                          Underweight            1        0     236
6 months    MAL-ED           PERU                           Normal weight          0      209     272
6 months    MAL-ED           PERU                           Normal weight          1       58     272
6 months    MAL-ED           PERU                           Underweight            0        3     272
6 months    MAL-ED           PERU                           Underweight            1        2     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          0      195     249
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          1       47     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight            0        4     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight            1        3     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      177     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       56     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     247
6 months    NIH-Birth        BANGLADESH                     Normal weight          0      335     537
6 months    NIH-Birth        BANGLADESH                     Normal weight          1      109     537
6 months    NIH-Birth        BANGLADESH                     Underweight            0       58     537
6 months    NIH-Birth        BANGLADESH                     Underweight            1       35     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight          0      523     715
6 months    NIH-Crypto       BANGLADESH                     Normal weight          1      125     715
6 months    NIH-Crypto       BANGLADESH                     Underweight            0       42     715
6 months    NIH-Crypto       BANGLADESH                     Underweight            1       25     715
6 months    PROBIT           BELARUS                        Normal weight          0    12069   13025
6 months    PROBIT           BELARUS                        Normal weight          1      451   13025
6 months    PROBIT           BELARUS                        Underweight            0      476   13025
6 months    PROBIT           BELARUS                        Underweight            1       29   13025
6 months    PROVIDE          BANGLADESH                     Normal weight          0      423     603
6 months    PROVIDE          BANGLADESH                     Normal weight          1       75     603
6 months    PROVIDE          BANGLADESH                     Underweight            0       85     603
6 months    PROVIDE          BANGLADESH                     Underweight            1       20     603
6 months    SAS-CompFeed     INDIA                          Normal weight          0      658    1228
6 months    SAS-CompFeed     INDIA                          Normal weight          1      246    1228
6 months    SAS-CompFeed     INDIA                          Underweight            0      216    1228
6 months    SAS-CompFeed     INDIA                          Underweight            1      108    1228
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1764    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      185    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       30    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        4    1983
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          0     5875    7375
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          1     1124    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight            0      297    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight            1       79    7375
24 months   JiVitA-3         BANGLADESH                     Normal weight          0     2606    8599
24 months   JiVitA-3         BANGLADESH                     Normal weight          1     2683    8599
24 months   JiVitA-3         BANGLADESH                     Underweight            0     1767    8599
24 months   JiVitA-3         BANGLADESH                     Underweight            1     1543    8599
24 months   LCNI-5           MALAWI                         Normal weight          0      272     577
24 months   LCNI-5           MALAWI                         Normal weight          1      210     577
24 months   LCNI-5           MALAWI                         Underweight            0       49     577
24 months   LCNI-5           MALAWI                         Underweight            1       46     577
24 months   MAL-ED           BANGLADESH                     Normal weight          0      101     212
24 months   MAL-ED           BANGLADESH                     Normal weight          1       82     212
24 months   MAL-ED           BANGLADESH                     Underweight            0       10     212
24 months   MAL-ED           BANGLADESH                     Underweight            1       19     212
24 months   MAL-ED           BRAZIL                         Normal weight          0      156     168
24 months   MAL-ED           BRAZIL                         Normal weight          1        6     168
24 months   MAL-ED           BRAZIL                         Underweight            0        5     168
24 months   MAL-ED           BRAZIL                         Underweight            1        1     168
24 months   MAL-ED           INDIA                          Normal weight          0      104     226
24 months   MAL-ED           INDIA                          Normal weight          1       76     226
24 months   MAL-ED           INDIA                          Underweight            0       26     226
24 months   MAL-ED           INDIA                          Underweight            1       20     226
24 months   MAL-ED           NEPAL                          Normal weight          0      178     228
24 months   MAL-ED           NEPAL                          Normal weight          1       50     228
24 months   MAL-ED           NEPAL                          Underweight            0        0     228
24 months   MAL-ED           NEPAL                          Underweight            1        0     228
24 months   MAL-ED           PERU                           Normal weight          0      125     201
24 months   MAL-ED           PERU                           Normal weight          1       72     201
24 months   MAL-ED           PERU                           Underweight            0        2     201
24 months   MAL-ED           PERU                           Underweight            1        2     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          0      150     234
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          1       77     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight            0        2     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight            1        5     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0       56     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1      147     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        8     214
24 months   NIH-Birth        BANGLADESH                     Normal weight          0      162     429
24 months   NIH-Birth        BANGLADESH                     Normal weight          1      187     429
24 months   NIH-Birth        BANGLADESH                     Underweight            0       23     429
24 months   NIH-Birth        BANGLADESH                     Underweight            1       57     429
24 months   NIH-Crypto       BANGLADESH                     Normal weight          0      355     514
24 months   NIH-Crypto       BANGLADESH                     Normal weight          1      116     514
24 months   NIH-Crypto       BANGLADESH                     Underweight            0       27     514
24 months   NIH-Crypto       BANGLADESH                     Underweight            1       16     514
24 months   PROBIT           BELARUS                        Normal weight          0     3605    4005
24 months   PROBIT           BELARUS                        Normal weight          1      258    4005
24 months   PROBIT           BELARUS                        Underweight            0      128    4005
24 months   PROBIT           BELARUS                        Underweight            1       14    4005
24 months   PROVIDE          BANGLADESH                     Normal weight          0      330     577
24 months   PROVIDE          BANGLADESH                     Normal weight          1      147     577
24 months   PROVIDE          BANGLADESH                     Underweight            0       58     577
24 months   PROVIDE          BANGLADESH                     Underweight            1       42     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          0      861    1373
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          1      451    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight            0       36    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight            1       25    1373


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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/2c149db0-04a7-4c64-910a-50faab631738/f654f489-7495-4f83-9f15-357e6f2f06de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2c149db0-04a7-4c64-910a-50faab631738/f654f489-7495-4f83-9f15-357e6f2f06de/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2c149db0-04a7-4c64-910a-50faab631738/f654f489-7495-4f83-9f15-357e6f2f06de/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2c149db0-04a7-4c64-910a-50faab631738/f654f489-7495-4f83-9f15-357e6f2f06de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                0.3366618   0.3276095   0.3457142
Birth       JiVitA-3       BANGLADESH   Underweight          NA                0.3163868   0.3055832   0.3271904
Birth       MAL-ED         BANGLADESH   Normal weight        NA                0.1804124   0.1261800   0.2346447
Birth       MAL-ED         BANGLADESH   Underweight          NA                0.1785714   0.0363908   0.3207520
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.1363636   0.1064379   0.1662894
Birth       NIH-Birth      BANGLADESH   Underweight          NA                0.2745098   0.1878335   0.3611861
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                0.1327300   0.1068865   0.1585735
Birth       NIH-Crypto     BANGLADESH   Underweight          NA                0.1969697   0.1009545   0.2929849
Birth       PROVIDE        BANGLADESH   Normal weight        NA                0.0885167   0.0612604   0.1157731
Birth       PROVIDE        BANGLADESH   Underweight          NA                0.1010101   0.0415931   0.1604271
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.2590361   0.2219477   0.2961246
Birth       SAS-CompFeed   INDIA        Underweight          NA                0.3442623   0.2970613   0.3914633
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0959398   0.0899090   0.1019705
Birth       ZVITAMBO       ZIMBABWE     Underweight          NA                0.1529412   0.1217016   0.1841807
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                0.2654447   0.2552639   0.2756255
6 months    JiVitA-3       BANGLADESH   Underweight          NA                0.2293379   0.2185183   0.2401574
6 months    LCNI-5         MALAWI       Normal weight        NA                0.3545586   0.3188690   0.3902482
6 months    LCNI-5         MALAWI       Underweight          NA                0.4275862   0.3470130   0.5081595
6 months    MAL-ED         BANGLADESH   Normal weight        NA                0.1674641   0.1167370   0.2181912
6 months    MAL-ED         BANGLADESH   Underweight          NA                0.2812500   0.1251470   0.4373530
6 months    MAL-ED         INDIA        Normal weight        NA                0.1935484   0.1366498   0.2504470
6 months    MAL-ED         INDIA        Underweight          NA                0.1632653   0.0595562   0.2669744
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                0.2454955   0.2054260   0.2855650
6 months    NIH-Birth      BANGLADESH   Underweight          NA                0.3763441   0.2777896   0.4748986
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                0.1929012   0.1624997   0.2233028
6 months    NIH-Crypto     BANGLADESH   Underweight          NA                0.3731343   0.2572474   0.4890213
6 months    PROBIT         BELARUS      Normal weight        NA                0.0360224   0.0267808   0.0452639
6 months    PROBIT         BELARUS      Underweight          NA                0.0574257   0.0355151   0.0793364
6 months    PROVIDE        BANGLADESH   Normal weight        NA                0.1506024   0.1191637   0.1820412
6 months    PROVIDE        BANGLADESH   Underweight          NA                0.1904762   0.1153054   0.2656470
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.2721239   0.2420905   0.3021573
6 months    SAS-CompFeed   INDIA        Underweight          NA                0.3333333   0.2829434   0.3837232
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.1605944   0.1519921   0.1691966
6 months    ZVITAMBO       ZIMBABWE     Underweight          NA                0.2101064   0.1689263   0.2512865
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                0.5072793   0.4907056   0.5238529
24 months   JiVitA-3       BANGLADESH   Underweight          NA                0.4661631   0.4469801   0.4853462
24 months   LCNI-5         MALAWI       Normal weight        NA                0.4356846   0.3913801   0.4799892
24 months   LCNI-5         MALAWI       Underweight          NA                0.4842105   0.3836294   0.5847916
24 months   MAL-ED         BANGLADESH   Normal weight        NA                0.4480874   0.3758661   0.5203088
24 months   MAL-ED         BANGLADESH   Underweight          NA                0.6551724   0.4817702   0.8285746
24 months   MAL-ED         INDIA        Normal weight        NA                0.4222222   0.3499077   0.4945368
24 months   MAL-ED         INDIA        Underweight          NA                0.4347826   0.2912086   0.5783567
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                0.5358166   0.4834331   0.5882002
24 months   NIH-Birth      BANGLADESH   Underweight          NA                0.7125000   0.6132064   0.8117936
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                0.2462845   0.2073367   0.2852323
24 months   NIH-Crypto     BANGLADESH   Underweight          NA                0.3720930   0.2274791   0.5167070
24 months   PROBIT         BELARUS      Normal weight        NA                0.0667875   0.0405503   0.0930246
24 months   PROBIT         BELARUS      Underweight          NA                0.0985915   0.0031890   0.1939941
24 months   PROVIDE        BANGLADESH   Normal weight        NA                0.3081761   0.2667034   0.3496488
24 months   PROVIDE        BANGLADESH   Underweight          NA                0.4200000   0.3231804   0.5168196
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                0.3437500   0.3180404   0.3694596
24 months   ZVITAMBO       ZIMBABWE     Underweight          NA                0.4098361   0.2863742   0.5332979


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   NA                   NA                0.3288302   0.3214550   0.3362055
Birth       MAL-ED         BANGLADESH   NA                   NA                0.1801802   0.1295086   0.2308518
Birth       NIH-Birth      BANGLADESH   NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto     BANGLADESH   NA                   NA                0.1385460   0.1134505   0.1636414
Birth       PROVIDE        BANGLADESH   NA                   NA                0.0909091   0.0661046   0.1157136
Birth       SAS-CompFeed   INDIA        NA                   NA                0.2819383   0.2495848   0.3142918
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.0989454   0.0929945   0.1048964
6 months    JiVitA-3       BANGLADESH   NA                   NA                0.2515513   0.2434364   0.2596662
6 months    LCNI-5         MALAWI       NA                   NA                0.3672249   0.3345288   0.3999210
6 months    MAL-ED         BANGLADESH   NA                   NA                0.1825726   0.1336978   0.2314474
6 months    MAL-ED         INDIA        NA                   NA                0.1872340   0.1372518   0.2372162
6 months    NIH-Birth      BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto     BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT         BELARUS      NA                   NA                0.0368522   0.0276927   0.0460117
6 months    PROVIDE        BANGLADESH   NA                   NA                0.1575456   0.1284434   0.1866478
6 months    SAS-CompFeed   INDIA        NA                   NA                0.2882736   0.2624662   0.3140810
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.1631186   0.1546857   0.1715516
24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4914525   0.4783104   0.5045946
24 months   LCNI-5         MALAWI       NA                   NA                0.4436742   0.4031015   0.4842468
24 months   MAL-ED         BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED         INDIA        NA                   NA                0.4247788   0.3601902   0.4893673
24 months   NIH-Birth      BANGLADESH   NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto     BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT         BELARUS      NA                   NA                0.0679151   0.0407521   0.0950781
24 months   PROVIDE        BANGLADESH   NA                   NA                0.3275563   0.2892291   0.3658836
24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.3466861   0.3215035   0.3718687


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH   Underweight          Normal weight     0.9397763   0.9023899   0.9787117
Birth       MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       MAL-ED         BANGLADESH   Underweight          Normal weight     0.9897959   0.4226026   2.3182439
Birth       NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       NIH-Birth      BANGLADESH   Underweight          Normal weight     2.0130719   1.3704490   2.9570298
Birth       NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.4839876   0.8779405   2.5083924
Birth       PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       PROVIDE        BANGLADESH   Underweight          Normal weight     1.1411411   0.5874754   2.2166086
Birth       SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA        Underweight          Normal weight     1.3290126   1.1322047   1.5600310
Birth       ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.5941377   1.2873950   1.9739669
6 months    JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH   Underweight          Normal weight     0.8639762   0.8176464   0.9129311
6 months    LCNI-5         MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    LCNI-5         MALAWI       Underweight          Normal weight     1.2059676   0.9739891   1.4931973
6 months    MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    MAL-ED         BANGLADESH   Underweight          Normal weight     1.6794643   0.8924037   3.1606777
6 months    MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    MAL-ED         INDIA        Underweight          Normal weight     0.8435374   0.4189110   1.6985838
6 months    NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    NIH-Birth      BANGLADESH   Underweight          Normal weight     1.5329979   1.1259769   2.0871500
6 months    NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.9343284   1.3654499   2.7402148
6 months    PROBIT         BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    PROBIT         BELARUS      Underweight          Normal weight     1.5941692   1.0871309   2.3376904
6 months    PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    PROVIDE        BANGLADESH   Underweight          Normal weight     1.2647619   0.8093101   1.9765262
6 months    SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA        Underweight          Normal weight     1.2249322   1.0091302   1.4868834
6 months    ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.3083048   1.0677440   1.6030634
24 months   JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH   Underweight          Normal weight     0.9189478   0.8740361   0.9661672
24 months   LCNI-5         MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   LCNI-5         MALAWI       Underweight          Normal weight     1.1113784   0.8819005   1.4005684
24 months   MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   MAL-ED         BANGLADESH   Underweight          Normal weight     1.4621531   1.0725391   1.9932995
24 months   MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   MAL-ED         INDIA        Underweight          Normal weight     1.0297483   0.7098658   1.4937775
24 months   NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   NIH-Birth      BANGLADESH   Underweight          Normal weight     1.3297460   1.1216000   1.5765197
24 months   NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.5108260   0.9930884   2.2984813
24 months   PROBIT         BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   PROBIT         BELARUS      Underweight          Normal weight     1.4761983   0.6332285   3.4413504
24 months   PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   PROVIDE        BANGLADESH   Underweight          Normal weight     1.3628571   1.0435769   1.7798206
24 months   ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.1922504   0.8741093   1.6261822


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0078316   -0.0129211   -0.0027420
Birth       MAL-ED         BANGLADESH   Normal weight        NA                -0.0002322   -0.0194253    0.0189609
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.0231758    0.0072538    0.0390979
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0058159   -0.0032852    0.0149171
Birth       PROVIDE        BANGLADESH   Normal weight        NA                 0.0023923   -0.0101326    0.0149173
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.0229022    0.0099147    0.0358896
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0030057    0.0013089    0.0047024
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                -0.0138934   -0.0190765   -0.0087103
6 months    LCNI-5         MALAWI       Normal weight        NA                 0.0126663   -0.0027330    0.0280655
6 months    MAL-ED         BANGLADESH   Normal weight        NA                 0.0151085   -0.0072265    0.0374435
6 months    MAL-ED         INDIA        Normal weight        NA                -0.0063143   -0.0310298    0.0184011
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.0226609    0.0037653    0.0415566
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0168890    0.0050195    0.0287584
6 months    PROBIT         BELARUS      Normal weight        NA                 0.0008298   -0.0000089    0.0016686
6 months    PROVIDE        BANGLADESH   Normal weight        NA                 0.0069432   -0.0072962    0.0211826
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.0161497    0.0002132    0.0320862
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0025243    0.0003651    0.0046834
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                -0.0158268   -0.0251517   -0.0065018
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.0079895   -0.0101656    0.0261446
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.0283277    0.0008971    0.0557582
24 months   MAL-ED         INDIA        Normal weight        NA                 0.0025565   -0.0301706    0.0352837
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.0329479    0.0110212    0.0548747
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0105248   -0.0023618    0.0234115
24 months   PROBIT         BELARUS      Normal weight        NA                 0.0011276   -0.0020525    0.0043077
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.0193802    0.0008014    0.0379591
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0029361   -0.0027129    0.0085851


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0238164   -0.0394093   -0.0084575
Birth       MAL-ED         BANGLADESH   Normal weight        NA                -0.0012887   -0.1136825    0.0997623
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.1452671    0.0421121    0.2373134
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0419784   -0.0256898    0.1051823
Birth       PROVIDE        BANGLADESH   Normal weight        NA                 0.0263158   -0.1215085    0.1546556
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.0812312    0.0312085    0.1286709
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0303769    0.0131540    0.0472992
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                -0.0552307   -0.0758796   -0.0349782
6 months    LCNI-5         MALAWI       Normal weight        NA                 0.0344919   -0.0083804    0.0755414
6 months    MAL-ED         BANGLADESH   Normal weight        NA                 0.0827534   -0.0467563    0.1962395
6 months    MAL-ED         INDIA        Normal weight        NA                -0.0337243   -0.1743434    0.0900566
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.0845064    0.0116116    0.1520251
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0805041    0.0227845    0.1348145
6 months    PROBIT         BELARUS      Normal weight        NA                 0.0225181   -0.0014932    0.0459538
6 months    PROVIDE        BANGLADESH   Normal weight        NA                 0.0440710   -0.0504635    0.1300981
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.0560222   -0.0010359    0.1098280
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0154751    0.0021640    0.0286085
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                -0.0322041   -0.0513199   -0.0134358
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.0180077   -0.0237964    0.0581047
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.0594600   -0.0003790    0.1157197
24 months   MAL-ED         INDIA        Normal weight        NA                 0.0060185   -0.0740941    0.0801558
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.0579290    0.0181221    0.0961221
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0409831   -0.0104036    0.0897564
24 months   PROBIT         BELARUS      Normal weight        NA                 0.0166036   -0.0294100    0.0605604
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.0591661    0.0007394    0.1141766
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0084690   -0.0079605    0.0246307
