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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       205     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          28     233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight       167     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           9     176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight       157     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          38     195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight       167     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0     167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       264     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       221     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           5     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       109     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        77     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          33     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           5      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           6      23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13143   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight         521   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      8573    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         456    9029
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       921    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         304    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       443     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       480     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6726    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         361    7087
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3800    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       334     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561


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
![](/tmp/f322100a-60a6-4b5a-a443-158965556366/7af5fc54-77f2-4acd-ba24-f8f7d3294d36/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f322100a-60a6-4b5a-a443-158965556366/7af5fc54-77f2-4acd-ba24-f8f7d3294d36/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f322100a-60a6-4b5a-a443-158965556366/7af5fc54-77f2-4acd-ba24-f8f7d3294d36/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.9402171   -1.0881356   -0.7922986
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.2012616   -1.5508803   -0.8516430
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.3770060    0.1944840    0.5595280
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.4988889   -0.3650643    1.3628420
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.0501423   -1.2057721   -0.8945125
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.0541515   -1.4168728   -0.6914302
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0544318   -0.1690482    0.0601845
Birth       ki0047075b-MAL-ED          PERU                           Underweight          NA                -0.6820000   -1.1578307   -0.2061693
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0178733   -0.1685692    0.1328226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -0.7740000   -1.4276053   -0.1203947
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.7757798    0.5642184    0.9873412
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 1.0942857    0.7651658    1.4234056
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.1233291   -0.3703545    0.1236964
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.2282736   -0.6784630    0.2219158
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.5682609   -1.9461968   -1.1903249
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7600000   -1.2890983   -0.2309017
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.9705882   -1.5557317   -0.3854448
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.1283333   -0.7259906    0.4693239
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -1.1373538   -1.3476625   -0.9270451
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                -1.3276177   -1.5852196   -1.0700158
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4720194   -0.5037683   -0.4402705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.8432817   -0.9802008   -0.7063626
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0565939   -0.1863889    0.0732011
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -0.6995222   -1.1447756   -0.2542688
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.9775209    0.8091090    1.1459329
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.6764815   -0.0674862    1.4204491
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.6001754   -0.7311889   -0.4691619
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.0838748   -1.4404627   -0.7272868
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                 1.0571910    0.9326684    1.1817136
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                 1.0130000    0.5008674    1.5251326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.5333953    0.3757046    0.6910860
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.3785714   -0.1478585    0.9050014
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5027558    0.3692936    0.6362180
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.6873727   -0.0558766    1.4306221
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5467905   -0.6766870   -0.4168940
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.9297729   -1.0580355   -0.8015103
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3692946   -0.4667858   -0.2718034
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7043867   -0.9118071   -0.4969664
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.1118528   -0.2033924   -0.0203133
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -0.6738422   -0.8811715   -0.4665128
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0609096   -0.0209555    0.1427748
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.5449143   -0.8272968   -0.2625318
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0845608    0.0301118    0.1390099
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3663256   -0.6047968   -0.1278544
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.5904031    0.5326254    0.6481808
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4000200    0.2735538    0.5264862
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3138238    0.2852600    0.3423876
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1525531   -0.2909785   -0.0141276
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.5301533    0.4517641    0.6085426
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                 0.0707443   -0.0938992    0.2353878
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.7687055   -0.8993638   -0.6380472
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1350033   -1.4489478   -0.8210589
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4294444    0.2224555    0.6364334
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.9001636   -1.0245612   -0.7757660
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1644128   -1.4508798   -0.8779458
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.4046696    0.2835400    0.5257992
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0463702   -0.0807160    0.1734564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.2912768   -1.0235277    0.4409740
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8190587   -0.9223082   -0.7158092
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.3604298   -1.6207155   -1.1001440
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.7929181   -0.8843010   -0.7015352
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.4182007   -1.6682844   -1.1681170
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.5922152   -0.6914928   -0.4929376
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.0345017   -1.3133919   -0.7556116
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.6966291    0.5862128    0.8070453
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.3620490   -0.1186636    0.8427616
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1687223   -1.2828153   -1.0546294
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.3104325   -1.7135573   -0.9073078
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0266481   -0.0634386    0.1167348
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -0.3847146   -0.5816258   -0.1878034


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1601818   -0.3763991    0.0560355
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1441269   -1.3547476   -0.9335062
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4900343   -0.5209436   -0.4591251
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6441020   -0.7710827   -0.5171213
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2928094    0.2648167    0.3208020
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515431    0.3802415    0.5228446
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6869754    0.5725638    0.8013869
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1810028   -1.2914599   -1.0705456
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0469519   -0.1290932    0.0351895


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.2610445   -0.6399575    0.1178684
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight      0.1218829   -0.7611399    1.0049057
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0040092   -0.4006688    0.3926503
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.6275682   -1.1170084   -0.1381280
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.7561267   -1.4268793   -0.0853741
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.3185059   -0.0727461    0.7097579
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.1049445   -0.6239766    0.4140876
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight      0.8082609    0.1580450    1.4584767
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight      0.8422549    0.0058417    1.6786681
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1902639   -0.3439228   -0.0366049
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3712624   -0.5118490   -0.2306757
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.6429283   -1.1070345   -0.1788220
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3010395   -1.0638307    0.4617517
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.4836994   -0.8631726   -0.1042262
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0441910   -0.5712448    0.4828628
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1548239   -0.7043645    0.3947167
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.1846169   -0.5743896    0.9436234
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.3829824   -0.4679009   -0.2980639
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3350921   -0.5653203   -0.1048638
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5619893   -0.7884155   -0.3355631
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.6058240   -0.9003196   -0.3113284
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.4508864   -0.6954076   -0.2063652
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1903831   -0.3007109   -0.0800552
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4663769   -0.6076621   -0.3250917
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4594090   -0.6418851   -0.2769330
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.3662978   -0.7060895   -0.0265062
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0327778   -1.0950051    1.0294496
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.2642492   -0.5767289    0.0482306
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1653304   -0.5277226    0.8583834
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.3376470   -1.0805035    0.4052094
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5413711   -0.8211099   -0.2616322
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.6252826   -0.8912595   -0.3593057
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4422865   -0.7391413   -0.1454318
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.3345801   -0.7671552    0.0979951
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1417102   -0.5607518    0.2773314
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4113627   -0.6279490   -0.1947764


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0322293   -0.0772133    0.0127548
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0062326   -0.0390968    0.0515621
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0197551   -0.0964981    0.0569878
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0116648   -0.0275614    0.0042317
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0167285   -0.0389179    0.0054610
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0192202   -0.0081584    0.0465987
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0368528   -0.2022097    0.1285042
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.1443323   -0.0203351    0.3089996
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.2197187   -0.0476628    0.4871001
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0067731   -0.0124825   -0.0010637
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0180150   -0.0251544   -0.0108755
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0832021   -0.1515903   -0.0148139
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0130257   -0.0470695    0.0210180
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0986189   -0.1769558   -0.0202820
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0008123   -0.0140076    0.0123830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0043525   -0.0201263    0.0114214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0142955   -0.0200291    0.0486201
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0973115   -0.1274014   -0.0672217
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0696155   -0.1119150   -0.0273160
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0961363   -0.1373240   -0.0549485
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0311474   -0.0600751   -0.0022197
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0070436   -0.0132881   -0.0007991
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0074075   -0.0116526   -0.0031623
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0210144   -0.0282562   -0.0137726
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0786103   -0.1119079   -0.0453127
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0521200   -0.1044430    0.0002030
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0011706   -0.0391185    0.0367773
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0524028   -0.1179943    0.0131888
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0049458   -0.0160996    0.0259912
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0037233   -0.0313898    0.0388364
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0925204   -0.1469201   -0.0381206
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0935810   -0.1364939   -0.0506682
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0181350   -0.0462083    0.0099383
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0096537   -0.0208007    0.0014933
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0122805   -0.0438881    0.0193271
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0736000   -0.1123991   -0.0348008
