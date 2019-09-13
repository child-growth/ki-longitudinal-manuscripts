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

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       216     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          30     246
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight       175     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           9     184
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight       159     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          39     198
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight       172     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0     172
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       271     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       223     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           5     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       114     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        91     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          39     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           5      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           6      27
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13200   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight         523   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      9124    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         510    9634
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       922    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         305    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       481     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6747    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         362    7109
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       476     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       352     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/b79fe6be-a23b-41b8-9334-624d054507f7/1a13102d-3147-4ee1-b7d7-525fb8b10077/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b79fe6be-a23b-41b8-9334-624d054507f7/1a13102d-3147-4ee1-b7d7-525fb8b10077/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b79fe6be-a23b-41b8-9334-624d054507f7/1a13102d-3147-4ee1-b7d7-525fb8b10077/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.0330002   -1.1700099   -0.8959905
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1903856   -1.5149899   -0.8657813
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.7214286   -0.8860242   -0.5568330
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -1.0955556   -1.7166511   -0.4744600
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.9942546   -1.1527093   -0.8357999
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.2987230   -1.6370157   -0.9604303
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.9244280   -1.0379186   -0.8109375
Birth       ki0047075b-MAL-ED          PERU                           Underweight          NA                -1.7080000   -2.2260621   -1.1899379
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.6865919   -0.8189375   -0.5542463
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -0.9420000   -1.4131562   -0.4708438
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.8884211   -1.1126576   -0.6641845
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.5514286   -2.1432057   -0.9596514
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3833881   -1.6036486   -1.1631275
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.7160384   -2.1065522   -1.3255245
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.5460870   -0.9370628   -0.1551112
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.4520000   -1.2667579    0.3627579
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.0366667   -1.5281526   -0.5451807
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.3666667   -1.8176632   -0.9156702
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                 1.3372549    1.1774321    1.4970778
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.9821510    0.7763377    1.1879643
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4612212   -0.4863552   -0.4360872
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7615624   -0.8781851   -0.6449396
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.1599332   -1.2864717   -1.0333947
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.4303914   -1.7370040   -1.1237788
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0748995   -0.0742030    0.2240020
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.4262963   -0.8810079    0.0284153
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.2062935   -1.3403160   -1.0722711
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.2634034   -1.5543523   -0.9724545
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -1.3131149   -1.4218494   -1.2043803
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                -2.0820000   -2.9100519   -1.2539481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.0469731   -1.1780219   -0.9159244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -1.9657143   -2.5717876   -1.3596410
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3421466   -1.4662385   -1.2180547
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.4372829   -2.0442777   -0.8302880
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3287323   -1.4242629   -1.2332017
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.6494554   -1.7687834   -1.5301275
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3433642   -1.4389009   -1.2478275
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.6978898   -1.9283770   -1.4674027
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.0283416   -1.1140136   -0.9426697
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3777080   -1.5473532   -1.2080629
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.1608188   -1.2347606   -1.0868769
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.7349522   -1.9875495   -1.4823549
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5365276   -0.5870572   -0.4859980
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.6718113   -0.9131817   -0.4304410
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.1202004    0.0276864    0.2127144
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0093074   -0.2253648    0.2067499
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8905878   -0.9190837   -0.8620919
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1251261   -1.2439526   -1.0062997
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.6456878   -1.7239100   -1.5674656
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.6867135   -1.8406644   -1.5327626
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.8671806   -1.9983091   -1.7360521
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -2.4330981   -2.8288153   -2.0373810
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0633642   -0.1049962    0.2317246
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.8304158   -1.9728822   -1.6879493
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.8992426   -2.1701827   -1.6283025
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.5912775   -1.7294629   -1.4530921
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6009757   -2.7386910   -2.4632604
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.6872199   -3.6184534   -1.7559863
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -2.0762334   -2.1897765   -1.9626902
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -2.5724238   -2.7969811   -2.3478664
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.5054904   -1.5969268   -1.4140540
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -2.0851294   -2.2944232   -1.8758355
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.3900208   -1.4762173   -1.3038243
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.8935088   -2.2130055   -1.5740120
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.1328929   -0.4362385    0.1704527
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.1287721   -0.7484555    0.4909114
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -2.4302086   -2.5598507   -2.3005665
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -2.2142496   -2.5665288   -1.8619704
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.8410323   -1.9305849   -1.7514798
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.9516562   -2.1576510   -1.7456613


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4803846   -1.6742160   -1.2865532
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3263412    1.1672322    1.4854501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4772566   -0.5017796   -0.4527336
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4072209   -1.4983514   -1.3160903
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.9008757   -0.9285733   -0.8731780
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4135279   -2.5366872   -2.2903685
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8744367   -1.9556750   -1.7931984


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1573854   -0.5116844    0.1969136
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3741270   -1.0166621    0.2684082
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.3044684   -0.6785472    0.0696105
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.7835720   -1.3139194   -0.2532245
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.2554081   -0.7447990    0.2339829
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.6630075   -1.2958441   -0.0301709
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.3326503   -0.7799828    0.1146822
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.0940870   -0.8096235    0.9977974
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3300000   -0.9970504    0.3370504
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.3551039   -0.5232466   -0.1869613
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3003412   -0.4196637   -0.1810187
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.2704582   -0.6032043    0.0622879
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.5011958   -0.9797291   -0.0226625
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0571099   -0.3812557    0.2670359
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.7688851   -1.6040457    0.0662754
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.9187411   -1.5388207   -0.2986616
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0951363   -0.7147160    0.5244435
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.3207231   -0.4481507   -0.1932956
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3545256   -0.6043748   -0.1046764
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.3493664   -0.5391242   -0.1596085
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.5741335   -0.8378672   -0.3103997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1352837   -0.3819274    0.1113599
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1295078   -0.3135498    0.0545341
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2345383   -0.3567294   -0.1123473
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0410257   -0.2137613    0.1317099
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.5659176   -0.9842862   -0.1475489
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.6025309   -1.7530800    0.5480183
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0688268   -0.3756575    0.2380038
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -1.0280082   -1.6247594   -0.4312569
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0862442   -1.0278954    0.8554071
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4961904   -0.7484799   -0.2439009
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5796390   -0.8083617   -0.3509163
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.5034880   -0.8345964   -0.1723795
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0041208   -0.6085598    0.6168014
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.2159590   -0.1603946    0.5923125
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.1106238   -0.3360554    0.1148078


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0125282   -0.0546780    0.0296215
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0182997   -0.0518322    0.0152328
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0257959   -0.0978994    0.0463076
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0141951   -0.0323157    0.0039254
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0056011   -0.0187680    0.0075659
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0383558   -0.0842611    0.0075495
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0969966   -0.2369592    0.0429660
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0168012   -0.1451470    0.1787495
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0733333   -0.2306677    0.0840010
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0109138   -0.0165801   -0.0052474
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0160354   -0.0221617   -0.0099092
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0457445   -0.0920460    0.0005570
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0216864   -0.0466204    0.0032477
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0085433   -0.0749689    0.0578822
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0141339   -0.0383650    0.0100972
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0258281   -0.0515400   -0.0001162
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0179749   -0.0536293    0.0176796
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0784886   -0.1179838   -0.0389933
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0640178   -0.1084592   -0.0195765
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0565152   -0.0905523   -0.0224781
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0378596   -0.0638330   -0.0118861
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0040435   -0.0105280    0.0024410
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0048274   -0.0116794    0.0020247
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0102878   -0.0166254   -0.0039503
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0120873   -0.0421931    0.0180185
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0759326   -0.1354491   -0.0164161
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0215190   -0.0659720    0.0229341
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0135002   -0.0778662    0.0508659
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0307524   -0.0594630   -0.0020418
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0049122   -0.0385622    0.0287379
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1045611   -0.1549995   -0.0541227
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0784332   -0.1212151   -0.0356514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0395123   -0.0671266   -0.0118979
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0006748   -0.0186401    0.0199898
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0166807   -0.0082814    0.0416429
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0334044   -0.0707076    0.0038988
