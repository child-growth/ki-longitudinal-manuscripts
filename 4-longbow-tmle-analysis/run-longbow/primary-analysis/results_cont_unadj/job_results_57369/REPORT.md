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
Birth       MAL-ED           BANGLADESH                     Normal weight       194     222
Birth       MAL-ED           BANGLADESH                     Underweight          28     222
Birth       MAL-ED           BRAZIL                         Normal weight        59      64
Birth       MAL-ED           BRAZIL                         Underweight           5      64
Birth       MAL-ED           INDIA                          Normal weight        35      43
Birth       MAL-ED           INDIA                          Underweight           8      43
Birth       MAL-ED           NEPAL                          Normal weight        27      27
Birth       MAL-ED           NEPAL                          Underweight           0      27
Birth       MAL-ED           PERU                           Normal weight       221     226
Birth       MAL-ED           PERU                           Underweight           5     226
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        98     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       115     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           7     122
Birth       NIH-Birth        BANGLADESH                     Normal weight       506     608
Birth       NIH-Birth        BANGLADESH                     Underweight         102     608
Birth       NIH-Crypto       BANGLADESH                     Normal weight       663     729
Birth       NIH-Crypto       BANGLADESH                     Underweight          66     729
Birth       PROBIT           BELARUS                        Normal weight     13203   13726
Birth       PROBIT           BELARUS                        Underweight         523   13726
Birth       PROVIDE          BANGLADESH                     Normal weight       418     517
Birth       PROVIDE          BANGLADESH                     Underweight          99     517
Birth       SAS-CompFeed     INDIA                          Normal weight       856    1134
Birth       SAS-CompFeed     INDIA                          Underweight         278    1134
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      9162    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight         510    9672
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
6 months    PROBIT           BELARUS                        Normal weight     12520   13025
6 months    PROBIT           BELARUS                        Underweight         505   13025
6 months    PROVIDE          BANGLADESH                     Normal weight       498     603
6 months    PROVIDE          BANGLADESH                     Underweight         105     603
6 months    SAS-CompFeed     INDIA                          Normal weight       922    1227
6 months    SAS-CompFeed     INDIA                          Underweight         305    1227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight         376    7375
24 months   LCNI-5           MALAWI                         Normal weight       482     577
24 months   LCNI-5           MALAWI                         Underweight          95     577
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
24 months   NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3863    4005
24 months   PROBIT           BELARUS                        Underweight         142    4005
24 months   PROVIDE          BANGLADESH                     Normal weight       477     577
24 months   PROVIDE          BANGLADESH                     Underweight         100     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight          61    1373


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




# Results Detail

## Results Plots
![](/tmp/d32f3ff6-1140-4d70-9f8c-16e6e2e412a1/208ca29a-83cc-4136-8240-ab902dadbb76/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d32f3ff6-1140-4d70-9f8c-16e6e2e412a1/208ca29a-83cc-4136-8240-ab902dadbb76/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d32f3ff6-1140-4d70-9f8c-16e6e2e412a1/208ca29a-83cc-4136-8240-ab902dadbb76/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -1.0563402   -1.2029937   -0.9096867
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.2271429   -1.5419635   -0.9123222
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.6249153   -0.9137560   -0.3360745
Birth       MAL-ED           BRAZIL                         Underweight          NA                -1.4380000   -2.2732876   -0.6027124
Birth       MAL-ED           INDIA                          Normal weight        NA                -1.2745714   -1.6299983   -0.9191446
Birth       MAL-ED           INDIA                          Underweight          NA                -1.0362500   -1.6020040   -0.4704960
Birth       MAL-ED           PERU                           Normal weight        NA                -0.8869683   -1.0065725   -0.7673641
Birth       MAL-ED           PERU                           Underweight          NA                -1.7080000   -2.3409322   -1.0750678
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.0913043   -1.3056634   -0.8769453
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.8785714   -2.8008825   -0.9562603
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8617391   -0.9574222   -0.7660561
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.2747059   -1.4960871   -1.0533247
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.8830015   -0.9587845   -0.8072185
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.1692424   -1.3780475   -0.9604373
Birth       PROBIT           BELARUS                        Normal weight        NA                 1.3249655    1.1649386    1.4849925
Birth       PROBIT           BELARUS                        Underweight          NA                 0.9809751    0.8003150    1.1616352
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.8377273   -0.9230426   -0.7524119
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.1238384   -1.2852147   -0.9624621
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -1.3601636   -1.4546724   -1.2656547
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -1.7030576   -1.8275375   -1.5785776
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4598963   -0.4849627   -0.4348299
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7736667   -0.8829885   -0.6643448
6 months    LCNI-5           MALAWI                         Normal weight        NA                -1.6449928   -1.7230655   -1.5669201
6 months    LCNI-5           MALAWI                         Underweight          NA                -1.7186897   -1.8709913   -1.5663880
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -1.1611563   -1.2872935   -1.0350191
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -1.4913021   -1.7900815   -1.1925227
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    MAL-ED           BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    MAL-ED           INDIA                          Normal weight        NA                -1.1959677   -1.3287755   -1.0631600
6 months    MAL-ED           INDIA                          Underweight          NA                -1.2438776   -1.5043669   -0.9833882
6 months    MAL-ED           PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    MAL-ED           PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3521674   -1.4761528   -1.2281819
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.6446429   -2.2397609   -1.0495248
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3439959   -1.4393323   -1.2486594
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -1.7100000   -1.9345841   -1.4854159
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.1568519   -1.2307776   -1.0829261
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -1.6032090   -1.8466359   -1.3597820
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.1144941    0.0249286    0.2040597
6 months    PROBIT           BELARUS                        Underweight          NA                -0.0627426   -0.2506696    0.1251844
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -1.0417001   -1.1248748   -0.9585254
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -1.3163810   -1.4738524   -1.1589095
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -1.3259056   -1.4254990   -1.2263123
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -1.6530328   -1.7747813   -1.5312843
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5365944   -0.5868803   -0.4863086
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.7685294   -1.0128208   -0.5242380
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8682883   -0.8964470   -0.8401297
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.0990027   -1.2155579   -0.9824474
24 months   LCNI-5           MALAWI                         Normal weight        NA                -1.8583817   -1.9474335   -1.7693299
24 months   LCNI-5           MALAWI                         Underweight          NA                -2.0211579   -2.2181083   -1.8242075
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -1.8977596   -2.0295876   -1.7659316
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -2.4872414   -2.8406819   -2.1338009
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   MAL-ED           BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   MAL-ED           INDIA                          Normal weight        NA                -1.8699444   -2.0106935   -1.7291954
24 months   MAL-ED           INDIA                          Underweight          NA                -1.9413043   -2.2159117   -1.6666970
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6400985   -2.7783602   -2.5018368
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.7463636   -3.3791683   -2.1135590
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1174713   -2.2306922   -2.0042505
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -2.6622292   -2.8805156   -2.4439427
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.4009979   -1.4875969   -1.3143989
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -1.8823256   -2.1670596   -1.5975916
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.1442950   -0.4300018    0.1414117
24 months   PROBIT           BELARUS                        Underweight          NA                -0.1476761   -0.6179677    0.3226156
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -1.5209958   -1.6108678   -1.4311239
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.9783500   -2.1805873   -1.7761127
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.5970922   -1.6606064   -1.5335781
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.6247541   -1.9303196   -1.3191886


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        NA                   NA                 1.3118585    1.1523374    1.4713797
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4442240   -1.5343470   -1.3541010
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4764413   -0.5009156   -0.4519670
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1076224    0.0168411    0.1984037
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4072209   -1.4983514   -1.3160903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8800508   -0.9074511   -0.8526506
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1444149   -0.4258602    0.1370304
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5983212   -1.6605141   -1.5361283


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.1708027   -0.5181055    0.1765002
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.8130847   -1.6969028    0.0707333
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight      0.2383214   -0.4298147    0.9064576
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.8210317   -1.4651655   -0.1768979
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.7872671   -1.7341607    0.1596266
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4129668   -0.6541407   -0.1717928
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.2862409   -0.5083729   -0.0641089
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.3439904   -0.4703953   -0.2175855
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2861111   -0.4686515   -0.1035707
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.3428940   -0.4245868   -0.2612012
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3137704   -0.4259291   -0.2016116
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.0736969   -0.2448434    0.0974496
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.3301458   -0.6544600   -0.0058315
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.0479098   -0.3403010    0.2444814
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.2924755   -0.9003718    0.3154208
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3660041   -0.6099858   -0.1220224
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4463571   -0.7007617   -0.1919525
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1772367   -0.3232782   -0.0311952
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2746808   -0.4527687   -0.0965929
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.3271271   -0.4684775   -0.1857768
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.2319350   -0.4813482    0.0174782
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2307143   -0.3506228   -0.1108059
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.1627762   -0.3789235    0.0533712
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.5894818   -0.9667070   -0.2122567
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.0713599   -0.3799364    0.2372166
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1062651   -0.7539981    0.5414679
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5447578   -0.7906601   -0.2988556
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4813277   -0.7789396   -0.1837158
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.0033810   -0.4675982    0.4608361
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.4573542   -0.6786614   -0.2360470
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0276619   -0.3397585    0.2844348


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0215427   -0.0659800    0.0228947
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0635222   -0.1511062    0.0240617
Birth       MAL-ED           INDIA                          Normal weight        NA                 0.0443389   -0.0830905    0.1717683
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0181644   -0.0407101    0.0043812
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0451711   -0.1085427    0.0182006
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0692806   -0.1115619   -0.0269993
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0259148   -0.0468919   -0.0049377
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0131070   -0.0179115   -0.0083025
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0547872   -0.0910663   -0.0185082
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0840604   -0.1112188   -0.0569021
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0165450   -0.0226219   -0.0104680
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0127824   -0.0425271    0.0169624
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0438368   -0.0891718    0.0014983
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0099897   -0.0710074    0.0510279
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0165776   -0.0520545    0.0188994
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0633862   -0.1072366   -0.0195358
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0418265   -0.0675042   -0.0161487
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0068717   -0.0125226   -0.0012209
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0478300   -0.0799373   -0.0157227
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0813152   -0.1247301   -0.0379003
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0039767   -0.0103514    0.0023980
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0117625   -0.0179846   -0.0055405
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0268002   -0.0627276    0.0091271
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0806367   -0.1390296   -0.0222437
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0145246   -0.0774443    0.0483951
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0054622   -0.0389057    0.0279813
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1015865   -0.1516549   -0.0515182
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0402667   -0.0677053   -0.0128281
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0001199   -0.0165831    0.0163433
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0792642   -0.1201415   -0.0383868
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0012290   -0.0150982    0.0126402
