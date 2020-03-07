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

**Outcome Variable:** whz

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

agecat      studyid          country                        mbmi             n_cell       n
----------  ---------------  -----------------------------  --------------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight     10934   17935
Birth       JiVitA-3         BANGLADESH                     Underweight        7001   17935
Birth       MAL-ED           BANGLADESH                     Normal weight       183     209
Birth       MAL-ED           BANGLADESH                     Underweight          26     209
Birth       MAL-ED           BRAZIL                         Normal weight        56      61
Birth       MAL-ED           BRAZIL                         Underweight           5      61
Birth       MAL-ED           INDIA                          Normal weight        33      41
Birth       MAL-ED           INDIA                          Underweight           8      41
Birth       MAL-ED           NEPAL                          Normal weight        26      26
Birth       MAL-ED           NEPAL                          Underweight           0      26
Birth       MAL-ED           PERU                           Normal weight       216     221
Birth       MAL-ED           PERU                           Underweight           5     221
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        97     100
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       107     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           6     113
Birth       NIH-Birth        BANGLADESH                     Normal weight       483     575
Birth       NIH-Birth        BANGLADESH                     Underweight          92     575
Birth       NIH-Crypto       BANGLADESH                     Normal weight       639     704
Birth       NIH-Crypto       BANGLADESH                     Underweight          65     704
Birth       PROBIT           BELARUS                        Normal weight     13130   13651
Birth       PROBIT           BELARUS                        Underweight         521   13651
Birth       PROVIDE          BANGLADESH                     Normal weight       411     510
Birth       PROVIDE          BANGLADESH                     Underweight          99     510
Birth       SAS-CompFeed     INDIA                          Normal weight       735     992
Birth       SAS-CompFeed     INDIA                          Underweight         257     992
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      8574    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight         456    9030
6 months    JiVitA-3         BANGLADESH                     Normal weight     10303   16733
6 months    JiVitA-3         BANGLADESH                     Underweight        6430   16733
6 months    LCNI-5           MALAWI                         Normal weight       691     836
6 months    LCNI-5           MALAWI                         Underweight         145     836
6 months    MAL-ED           BANGLADESH                     Normal weight       209     241
6 months    MAL-ED           BANGLADESH                     Underweight          32     241
6 months    MAL-ED           BRAZIL                         Normal weight       199     208
6 months    MAL-ED           BRAZIL                         Underweight           9     208
6 months    MAL-ED           INDIA                          Normal weight       186     235
6 months    MAL-ED           INDIA                          Underweight          49     235
6 months    MAL-ED           NEPAL                          Normal weight       236     236
6 months    MAL-ED           NEPAL                          Underweight           0     236
6 months    MAL-ED           PERU                           Normal weight       267     272
6 months    MAL-ED           PERU                           Underweight           5     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight       242     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight           7     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight       648     715
6 months    NIH-Crypto       BANGLADESH                     Underweight          67     715
6 months    PROBIT           BELARUS                        Normal weight     12518   13023
6 months    PROBIT           BELARUS                        Underweight         505   13023
6 months    PROVIDE          BANGLADESH                     Normal weight       497     602
6 months    PROVIDE          BANGLADESH                     Underweight         105     602
6 months    SAS-CompFeed     INDIA                          Normal weight       902    1226
6 months    SAS-CompFeed     INDIA                          Underweight         324    1226
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight         372    7253
24 months   JiVitA-3         BANGLADESH                     Normal weight      5272    8570
24 months   JiVitA-3         BANGLADESH                     Underweight        3298    8570
24 months   LCNI-5           MALAWI                         Normal weight       467     561
24 months   LCNI-5           MALAWI                         Underweight          94     561
24 months   MAL-ED           BANGLADESH                     Normal weight       183     212
24 months   MAL-ED           BANGLADESH                     Underweight          29     212
24 months   MAL-ED           BRAZIL                         Normal weight       162     168
24 months   MAL-ED           BRAZIL                         Underweight           6     168
24 months   MAL-ED           INDIA                          Normal weight       180     226
24 months   MAL-ED           INDIA                          Underweight          46     226
24 months   MAL-ED           NEPAL                          Normal weight       228     228
24 months   MAL-ED           NEPAL                          Underweight           0     228
24 months   MAL-ED           PERU                           Normal weight       197     201
24 months   MAL-ED           PERU                           Underweight           4     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight       227     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight           7     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3799    3940
24 months   PROBIT           BELARUS                        Underweight         141    3940
24 months   PROVIDE          BANGLADESH                     Normal weight       478     578
24 months   PROVIDE          BANGLADESH                     Underweight         100     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight       339     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight          27     366


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

* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/44aae133-922b-421b-be4a-5cd7d58c86ad/8be42313-eb51-420a-bccc-bc9af6c2dc08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/44aae133-922b-421b-be4a-5cd7d58c86ad/8be42313-eb51-420a-bccc-bc9af6c2dc08/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/44aae133-922b-421b-be4a-5cd7d58c86ad/8be42313-eb51-420a-bccc-bc9af6c2dc08/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.7658853   -0.7892325   -0.7425381
Birth       JiVitA-3         BANGLADESH                     Underweight          NA                -0.7973261   -0.8248574   -0.7697948
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.9254645   -1.0842545   -0.7666745
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.1496154   -1.4729446   -0.8262862
Birth       MAL-ED           BRAZIL                         Normal weight        NA                 0.4114286    0.0848121    0.7380451
Birth       MAL-ED           BRAZIL                         Underweight          NA                 0.2940000   -1.0086888    1.5966888
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.9245455   -1.2487999   -0.6002910
Birth       MAL-ED           INDIA                          Underweight          NA                -1.1462500   -1.7084286   -0.5840714
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0281944   -0.1526241    0.0962352
Birth       MAL-ED           PERU                           Underweight          NA                -0.6820000   -1.2614133   -0.1025867
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.7576636    0.5539948    0.9613323
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.7700000    0.2691531    1.2708469
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -1.2903830   -1.3952122   -1.1855538
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.6625000   -1.8659492   -1.4590508
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.2341236   -1.3220079   -1.1462394
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.3353846   -1.6269297   -1.0438395
Birth       PROBIT           BELARUS                        Normal weight        NA                -1.1400506   -1.3505820   -0.9295193
Birth       PROBIT           BELARUS                        Underweight          NA                -1.3289060   -1.6013389   -1.0564731
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -1.2475426   -1.3349472   -1.1601379
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.5491919   -1.7161583   -1.3822256
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.5932653   -0.7699848   -0.4165458
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -0.9096109   -1.1425928   -0.6766289
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4708642   -0.5025987   -0.4391298
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.8603728   -0.9933594   -0.7273862
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.5649185   -0.5879112   -0.5419257
6 months    JiVitA-3         BANGLADESH                     Underweight          NA                -0.6383981   -0.6691543   -0.6076419
6 months    LCNI-5           MALAWI                         Normal weight        NA                 0.5309841    0.4528265    0.6091417
6 months    LCNI-5           MALAWI                         Underweight          NA                 0.0730345   -0.0870311    0.2331001
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0541388   -0.1825870    0.0743095
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -0.6832812   -1.1255393   -0.2410232
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    MAL-ED           BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.6194176   -0.7515606   -0.4872746
6 months    MAL-ED           INDIA                          Underweight          NA                -1.0222619   -1.3495967   -0.6949271
6 months    MAL-ED           PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    MAL-ED           PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5233619    0.3882002    0.6585236
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.7502381    0.2105756    1.2899006
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3857676   -0.4850715   -0.2864638
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -0.7416667   -0.9501074   -0.5332259
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0611188   -0.0205751    0.1428127
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -0.2735075   -0.5552836    0.0082687
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.5858156    0.5277670    0.6438643
6 months    PROBIT           BELARUS                        Underweight          NA                 0.3975446    0.2682500    0.5268391
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.1107277   -0.2003099   -0.0211455
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -0.6151429   -0.8102973   -0.4199884
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.5783592   -0.7169223   -0.4397961
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -0.8215586   -0.9382729   -0.7048444
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0842385    0.0298906    0.1385864
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3194444   -0.5469897   -0.0918991
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3150952    0.2869672    0.3432232
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0799597   -0.2101186    0.0501992
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -1.2736969   -1.3032409   -1.2441529
24 months   JiVitA-3         BANGLADESH                     Underweight          NA                -1.3344178   -1.3712853   -1.2975504
24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0237580   -0.0655402    0.1130563
24 months   LCNI-5           MALAWI                         Underweight          NA                -0.3977660   -0.5912901   -0.2042418
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.7624863   -0.8925038   -0.6324688
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -1.1777586   -1.4973254   -0.8581919
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   MAL-ED           BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.8978056   -1.0217229   -0.7738882
24 months   MAL-ED           INDIA                          Underweight          NA                -1.1636957   -1.4544365   -0.8729548
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0563383   -0.0709168    0.1835933
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0263636   -0.6148109    0.6675382
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8161207   -0.9193416   -0.7128997
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -1.3268229   -1.5771056   -1.0765402
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.5912739   -0.6905730   -0.4919748
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.8193023   -1.1245646   -0.5140400
24 months   PROBIT           BELARUS                        Normal weight        NA                 0.7103523    0.5980191    0.8226855
24 months   PROBIT           BELARUS                        Underweight          NA                 0.3965248   -0.0164666    0.8095162
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.7958054   -0.8847238   -0.7068871
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.3485500   -1.5444018   -1.1526982
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1605900   -1.2738933   -1.0472866
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.3133333   -1.7153552   -0.9113114


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7781583   -0.7971779   -0.7591388
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        NA                   NA                -1.1472584   -1.3582745   -0.9362424
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6752218   -0.8548888   -0.4955547
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4905338   -0.5214551   -0.4596125
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5931545   -0.6127055   -0.5736036
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5785149    0.5197782    0.6372516
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948332    0.2672524    0.3224139
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6991214    0.5821715    0.8160713
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1718579   -1.2809898   -1.0627260


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0314408   -0.0648574    0.0019759
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.2241509   -0.5843675    0.1360657
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.1174286   -1.4604388    1.2255816
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight     -0.2217045   -0.8706928    0.4272837
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.6538056   -1.2464290   -0.0611821
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0123364   -0.5283378    0.5530107
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3721170   -0.6009854   -0.1432486
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.1012610   -0.4057641    0.2032422
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.1888553   -0.3427310   -0.0349796
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.3016493   -0.4901098   -0.1131889
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.3163456   -0.4835789   -0.1491122
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3895086   -0.5262291   -0.2527880
6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0734797   -0.1094961   -0.0374632
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.4579496   -0.6360777   -0.2798215
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.6291425   -1.0896760   -0.1686090
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.4028443   -0.7558456   -0.0498431
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.2268761   -0.3294549    0.7832072
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3558990   -0.5867860   -0.1250120
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.3346263   -0.6280061   -0.0412465
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1882711   -0.2995237   -0.0770184
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5044152   -0.7191481   -0.2896823
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2431994   -0.3322064   -0.1541925
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.4036829   -0.6376286   -0.1697373
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3950549   -0.5282184   -0.2618913
24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0607209   -0.1074865   -0.0139554
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.4215240   -0.6346573   -0.2083907
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.4152723   -0.7602759   -0.0702687
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.2658901   -0.5819372    0.0501570
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0299746   -0.6836555    0.6237062
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5107022   -0.7814346   -0.2399699
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.2280284   -0.5490353    0.0929784
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.3138275   -0.6801267    0.0524718
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5527446   -0.7678362   -0.3376530
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1527434   -0.5704266    0.2649399


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0122730   -0.0253242    0.0007781
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0278848   -0.0738104    0.0180408
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0096253   -0.1200094    0.1007588
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.0432594   -0.1727854    0.0862665
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0147920   -0.0344019    0.0048180
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0006550   -0.0280579    0.0293680
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0595387   -0.0978205   -0.0212569
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0093494   -0.0375474    0.0188486
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0072078   -0.0130787   -0.0013369
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0585555   -0.0965789   -0.0205320
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0819565   -0.1279013   -0.0360116
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0196695   -0.0267943   -0.0125448
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0282361   -0.0420734   -0.0143987
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0794291   -0.1124873   -0.0463708
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0835376   -0.1503868   -0.0166884
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0839973   -0.1605303   -0.0074644
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0128594   -0.0193478    0.0450666
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0616361   -0.1032158   -0.0200565
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0313566   -0.0597634   -0.0029498
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0073007   -0.0116102   -0.0029911
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0879794   -0.1284385   -0.0475203
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0642713   -0.0887730   -0.0397697
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0067213   -0.0129966   -0.0004459
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0202620   -0.0273803   -0.0131438
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0233673   -0.0413593   -0.0053753
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0706297   -0.1086477   -0.0326117
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0568061   -0.1077766   -0.0058356
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0541192   -0.1199507    0.0117123
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0015408   -0.0351529    0.0320714
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0954584   -0.1494712   -0.0414455
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0190763   -0.0464811    0.0083285
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0112309   -0.0233792    0.0009174
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0956305   -0.1365676   -0.0546935
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0112680   -0.0423517    0.0198158
