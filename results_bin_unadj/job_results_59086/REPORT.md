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

**Outcome Variable:** swasted

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

agecat      studyid          country                        mbmi             swasted   n_cell       n
----------  ---------------  -----------------------------  --------------  --------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight          0    10715   17935
Birth       JiVitA-3         BANGLADESH                     Normal weight          1      219   17935
Birth       JiVitA-3         BANGLADESH                     Underweight            0     6873   17935
Birth       JiVitA-3         BANGLADESH                     Underweight            1      128   17935
Birth       MAL-ED           BANGLADESH                     Normal weight          0      175     209
Birth       MAL-ED           BANGLADESH                     Normal weight          1        8     209
Birth       MAL-ED           BANGLADESH                     Underweight            0       26     209
Birth       MAL-ED           BANGLADESH                     Underweight            1        0     209
Birth       MAL-ED           BRAZIL                         Normal weight          0       56      61
Birth       MAL-ED           BRAZIL                         Normal weight          1        0      61
Birth       MAL-ED           BRAZIL                         Underweight            0        5      61
Birth       MAL-ED           BRAZIL                         Underweight            1        0      61
Birth       MAL-ED           INDIA                          Normal weight          0       33      41
Birth       MAL-ED           INDIA                          Normal weight          1        0      41
Birth       MAL-ED           INDIA                          Underweight            0        8      41
Birth       MAL-ED           INDIA                          Underweight            1        0      41
Birth       MAL-ED           NEPAL                          Normal weight          0       25      26
Birth       MAL-ED           NEPAL                          Normal weight          1        1      26
Birth       MAL-ED           NEPAL                          Underweight            0        0      26
Birth       MAL-ED           NEPAL                          Underweight            1        0      26
Birth       MAL-ED           PERU                           Normal weight          0      216     221
Birth       MAL-ED           PERU                           Normal weight          1        0     221
Birth       MAL-ED           PERU                           Underweight            0        5     221
Birth       MAL-ED           PERU                           Underweight            1        0     221
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          0       97     100
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          1        0     100
Birth       MAL-ED           SOUTH AFRICA                   Underweight            0        3     100
Birth       MAL-ED           SOUTH AFRICA                   Underweight            1        0     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      107     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0        6     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     113
Birth       NIH-Birth        BANGLADESH                     Normal weight          0      453     575
Birth       NIH-Birth        BANGLADESH                     Normal weight          1       30     575
Birth       NIH-Birth        BANGLADESH                     Underweight            0       84     575
Birth       NIH-Birth        BANGLADESH                     Underweight            1        8     575
Birth       NIH-Crypto       BANGLADESH                     Normal weight          0      598     704
Birth       NIH-Crypto       BANGLADESH                     Normal weight          1       41     704
Birth       NIH-Crypto       BANGLADESH                     Underweight            0       59     704
Birth       NIH-Crypto       BANGLADESH                     Underweight            1        6     704
Birth       PROBIT           BELARUS                        Normal weight          0    12266   13651
Birth       PROBIT           BELARUS                        Normal weight          1      864   13651
Birth       PROBIT           BELARUS                        Underweight            0      479   13651
Birth       PROBIT           BELARUS                        Underweight            1       42   13651
Birth       PROVIDE          BANGLADESH                     Normal weight          0      400     510
Birth       PROVIDE          BANGLADESH                     Normal weight          1       11     510
Birth       PROVIDE          BANGLADESH                     Underweight            0       98     510
Birth       PROVIDE          BANGLADESH                     Underweight            1        1     510
Birth       SAS-CompFeed     INDIA                          Normal weight          0      722     992
Birth       SAS-CompFeed     INDIA                          Normal weight          1       13     992
Birth       SAS-CompFeed     INDIA                          Underweight            0      245     992
Birth       SAS-CompFeed     INDIA                          Underweight            1       12     992
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          0     8087    9030
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          1      487    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight            0      415    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight            1       41    9030
6 months    JiVitA-3         BANGLADESH                     Normal weight          0    10169   16733
6 months    JiVitA-3         BANGLADESH                     Normal weight          1      134   16733
6 months    JiVitA-3         BANGLADESH                     Underweight            0     6335   16733
6 months    JiVitA-3         BANGLADESH                     Underweight            1       95   16733
6 months    LCNI-5           MALAWI                         Normal weight          0      691     836
6 months    LCNI-5           MALAWI                         Normal weight          1        0     836
6 months    LCNI-5           MALAWI                         Underweight            0      145     836
6 months    LCNI-5           MALAWI                         Underweight            1        0     836
6 months    MAL-ED           BANGLADESH                     Normal weight          0      208     241
6 months    MAL-ED           BANGLADESH                     Normal weight          1        1     241
6 months    MAL-ED           BANGLADESH                     Underweight            0       31     241
6 months    MAL-ED           BANGLADESH                     Underweight            1        1     241
6 months    MAL-ED           BRAZIL                         Normal weight          0      199     208
6 months    MAL-ED           BRAZIL                         Normal weight          1        0     208
6 months    MAL-ED           BRAZIL                         Underweight            0        9     208
6 months    MAL-ED           BRAZIL                         Underweight            1        0     208
6 months    MAL-ED           INDIA                          Normal weight          0      183     235
6 months    MAL-ED           INDIA                          Normal weight          1        3     235
6 months    MAL-ED           INDIA                          Underweight            0       46     235
6 months    MAL-ED           INDIA                          Underweight            1        3     235
6 months    MAL-ED           NEPAL                          Normal weight          0      236     236
6 months    MAL-ED           NEPAL                          Normal weight          1        0     236
6 months    MAL-ED           NEPAL                          Underweight            0        0     236
6 months    MAL-ED           NEPAL                          Underweight            1        0     236
6 months    MAL-ED           PERU                           Normal weight          0      267     272
6 months    MAL-ED           PERU                           Normal weight          1        0     272
6 months    MAL-ED           PERU                           Underweight            0        5     272
6 months    MAL-ED           PERU                           Underweight            1        0     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          0      239     249
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          1        3     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight            0        7     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight            1        0     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      233     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       14     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     247
6 months    NIH-Birth        BANGLADESH                     Normal weight          0      440     537
6 months    NIH-Birth        BANGLADESH                     Normal weight          1        4     537
6 months    NIH-Birth        BANGLADESH                     Underweight            0       91     537
6 months    NIH-Birth        BANGLADESH                     Underweight            1        2     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight          0      648     715
6 months    NIH-Crypto       BANGLADESH                     Normal weight          1        0     715
6 months    NIH-Crypto       BANGLADESH                     Underweight            0       67     715
6 months    NIH-Crypto       BANGLADESH                     Underweight            1        0     715
6 months    PROBIT           BELARUS                        Normal weight          0    12513   13023
6 months    PROBIT           BELARUS                        Normal weight          1        5   13023
6 months    PROBIT           BELARUS                        Underweight            0      505   13023
6 months    PROBIT           BELARUS                        Underweight            1        0   13023
6 months    PROVIDE          BANGLADESH                     Normal weight          0      495     602
6 months    PROVIDE          BANGLADESH                     Normal weight          1        2     602
6 months    PROVIDE          BANGLADESH                     Underweight            0      102     602
6 months    PROVIDE          BANGLADESH                     Underweight            1        3     602
6 months    SAS-CompFeed     INDIA                          Normal weight          0      872    1226
6 months    SAS-CompFeed     INDIA                          Normal weight          1       30    1226
6 months    SAS-CompFeed     INDIA                          Underweight            0      314    1226
6 months    SAS-CompFeed     INDIA                          Underweight            1       10    1226
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1937    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1       12    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       33    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0    1982
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          0     6820    7253
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          1       61    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight            0      365    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight            1        7    7253
24 months   JiVitA-3         BANGLADESH                     Normal weight          0     5084    8570
24 months   JiVitA-3         BANGLADESH                     Normal weight          1      188    8570
24 months   JiVitA-3         BANGLADESH                     Underweight            0     3154    8570
24 months   JiVitA-3         BANGLADESH                     Underweight            1      144    8570
24 months   LCNI-5           MALAWI                         Normal weight          0      467     561
24 months   LCNI-5           MALAWI                         Normal weight          1        0     561
24 months   LCNI-5           MALAWI                         Underweight            0       93     561
24 months   LCNI-5           MALAWI                         Underweight            1        1     561
24 months   MAL-ED           BANGLADESH                     Normal weight          0      183     212
24 months   MAL-ED           BANGLADESH                     Normal weight          1        0     212
24 months   MAL-ED           BANGLADESH                     Underweight            0       29     212
24 months   MAL-ED           BANGLADESH                     Underweight            1        0     212
24 months   MAL-ED           BRAZIL                         Normal weight          0      161     168
24 months   MAL-ED           BRAZIL                         Normal weight          1        1     168
24 months   MAL-ED           BRAZIL                         Underweight            0        6     168
24 months   MAL-ED           BRAZIL                         Underweight            1        0     168
24 months   MAL-ED           INDIA                          Normal weight          0      180     226
24 months   MAL-ED           INDIA                          Normal weight          1        0     226
24 months   MAL-ED           INDIA                          Underweight            0       44     226
24 months   MAL-ED           INDIA                          Underweight            1        2     226
24 months   MAL-ED           NEPAL                          Normal weight          0      228     228
24 months   MAL-ED           NEPAL                          Normal weight          1        0     228
24 months   MAL-ED           NEPAL                          Underweight            0        0     228
24 months   MAL-ED           NEPAL                          Underweight            1        0     228
24 months   MAL-ED           PERU                           Normal weight          0      196     201
24 months   MAL-ED           PERU                           Normal weight          1        1     201
24 months   MAL-ED           PERU                           Underweight            0        3     201
24 months   MAL-ED           PERU                           Underweight            1        1     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          0      227     234
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          1        0     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight            0        7     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight            1        0     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      203     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     214
24 months   NIH-Birth        BANGLADESH                     Normal weight          0      345     428
24 months   NIH-Birth        BANGLADESH                     Normal weight          1        3     428
24 months   NIH-Birth        BANGLADESH                     Underweight            0       73     428
24 months   NIH-Birth        BANGLADESH                     Underweight            1        7     428
24 months   NIH-Crypto       BANGLADESH                     Normal weight          0      468     514
24 months   NIH-Crypto       BANGLADESH                     Normal weight          1        3     514
24 months   NIH-Crypto       BANGLADESH                     Underweight            0       42     514
24 months   NIH-Crypto       BANGLADESH                     Underweight            1        1     514
24 months   PROBIT           BELARUS                        Normal weight          0     3794    3940
24 months   PROBIT           BELARUS                        Normal weight          1        5    3940
24 months   PROBIT           BELARUS                        Underweight            0      139    3940
24 months   PROBIT           BELARUS                        Underweight            1        2    3940
24 months   PROVIDE          BANGLADESH                     Normal weight          0      473     578
24 months   PROVIDE          BANGLADESH                     Normal weight          1        5     578
24 months   PROVIDE          BANGLADESH                     Underweight            0       96     578
24 months   PROVIDE          BANGLADESH                     Underweight            1        4     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          0      314     366
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          1       25     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight            0       24     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight            1        3     366


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

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/baa2c3f5-11d3-43b4-8bcd-0064fdb4b64d/33b620ce-66df-4117-ae07-4e3b2259b330/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/baa2c3f5-11d3-43b4-8bcd-0064fdb4b64d/33b620ce-66df-4117-ae07-4e3b2259b330/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/baa2c3f5-11d3-43b4-8bcd-0064fdb4b64d/33b620ce-66df-4117-ae07-4e3b2259b330/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/baa2c3f5-11d3-43b4-8bcd-0064fdb4b64d/33b620ce-66df-4117-ae07-4e3b2259b330/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                0.0200293   0.0169075   0.0231510
Birth       JiVitA-3       BANGLADESH   Underweight          NA                0.0182831   0.0147911   0.0217751
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.0621118   0.0405684   0.0836552
Birth       NIH-Birth      BANGLADESH   Underweight          NA                0.0869565   0.0293291   0.1445839
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                0.0641628   0.0451499   0.0831756
Birth       NIH-Crypto     BANGLADESH   Underweight          NA                0.0923077   0.0218889   0.1627264
Birth       PROBIT         BELARUS      Normal weight        NA                0.0658035   0.0328743   0.0987328
Birth       PROBIT         BELARUS      Underweight          NA                0.0806142   0.0305728   0.1306556
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.0176871   0.0097268   0.0256474
Birth       SAS-CompFeed   INDIA        Underweight          NA                0.0466926   0.0080265   0.0853587
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0567996   0.0519001   0.0616992
Birth       ZVITAMBO       ZIMBABWE     Underweight          NA                0.0899123   0.0636555   0.1161690
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                0.0130059   0.0105192   0.0154927
6 months    JiVitA-3       BANGLADESH   Underweight          NA                0.0147745   0.0117132   0.0178357
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.0332594   0.0247526   0.0417662
6 months    SAS-CompFeed   INDIA        Underweight          NA                0.0308642   0.0102057   0.0515227
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0088650   0.0066501   0.0110799
6 months    ZVITAMBO       ZIMBABWE     Underweight          NA                0.0188172   0.0050083   0.0326261
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                0.0356601   0.0303295   0.0409907
24 months   JiVitA-3       BANGLADESH   Underweight          NA                0.0436628   0.0361540   0.0511716


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   NA                   NA                0.0193476   0.0169081   0.0217872
Birth       NIH-Birth      BANGLADESH   NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto     BANGLADESH   NA                   NA                0.0667614   0.0483100   0.0852128
Birth       PROBIT         BELARUS      NA                   NA                0.0663688   0.0334988   0.0992388
Birth       SAS-CompFeed   INDIA        NA                   NA                0.0252016   0.0126376   0.0377656
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.0584718   0.0536321   0.0633115
6 months    JiVitA-3       BANGLADESH   NA                   NA                0.0136855   0.0116048   0.0157663
6 months    SAS-CompFeed   INDIA        NA                   NA                0.0326264   0.0237765   0.0414763
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0093754   0.0071574   0.0115935
24 months   JiVitA-3       BANGLADESH   NA                   NA                0.0387398   0.0343960   0.0430836


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       JiVitA-3       BANGLADESH   Underweight          Normal weight     0.9128194   0.7214378   1.154970
Birth       NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       NIH-Birth      BANGLADESH   Underweight          Normal weight     1.4000000   0.6626408   2.957862
Birth       NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.4386492   0.6346416   3.261229
Birth       PROBIT         BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       PROBIT         BELARUS      Underweight          Normal weight     1.2250746   0.7400338   2.028026
Birth       SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed   INDIA        Underweight          Normal weight     2.6399282   1.1135833   6.258374
Birth       ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.5829731   1.1674303   2.146427
6 months    JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    JiVitA-3       BANGLADESH   Underweight          Normal weight     1.1359822   0.8782074   1.469420
6 months    SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed   INDIA        Underweight          Normal weight     0.9279835   0.4692110   1.835322
6 months    ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ZVITAMBO       ZIMBABWE     Underweight          Normal weight     2.1226423   0.9777027   4.608365
24 months   JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   JiVitA-3       BANGLADESH   Underweight          Normal weight     1.2244171   0.9732057   1.540473


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0006816   -0.0024257   0.0010625
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.0039752   -0.0058966   0.0138469
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0025986   -0.0041628   0.0093600
Birth       PROBIT         BELARUS      Normal weight        NA                 0.0005653   -0.0009507   0.0020812
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.0075145   -0.0024895   0.0175185
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0016721    0.0003151   0.0030292
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                 0.0006796   -0.0007060   0.0020652
6 months    SAS-CompFeed   INDIA        Normal weight        NA                -0.0006330   -0.0062611   0.0049951
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0005104   -0.0002086   0.0012295
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                 0.0030797   -0.0004932   0.0066526


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0352302   -0.1291069   0.0508413
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.0601504   -0.1005832   0.1974098
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0389239   -0.0673337   0.1346030
Birth       PROBIT         BELARUS      Normal weight        NA                 0.0085170   -0.0150535   0.0315401
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.2981769   -0.0718585   0.5404657
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0285973    0.0052177   0.0514274
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                 0.0496591   -0.0573938   0.1458737
6 months    SAS-CompFeed   INDIA        Normal weight        NA                -0.0194013   -0.2097935   0.1410277
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0544445   -0.0242906   0.1271273
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                 0.0794970   -0.0169622   0.1668071
