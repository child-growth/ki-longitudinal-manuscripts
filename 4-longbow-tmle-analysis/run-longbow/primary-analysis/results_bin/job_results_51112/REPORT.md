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

agecat      studyid                    country                        mbmi             sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight           0      210     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight           1        6     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight             0       29     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight             1        1     246
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight           0      167     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight           1        8     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight             0        9     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight             1        0     184
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight           0      154     198
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight           1        5     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight             0       37     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight             1        2     198
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight           0      166     172
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight           1        6     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight             0        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight             1        0     172
Birth       ki0047075b-MAL-ED          PERU                           Normal weight           0      265     276
Birth       ki0047075b-MAL-ED          PERU                           Normal weight           1        6     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight             0        4     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight             1        1     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           0      222     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           1        1     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             0        5     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             1        0     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           0      108     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           1        6     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             0        7     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             1        0     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight           0       84     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight           1        7     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight             0       36     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight             1        3     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight           0       23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight           1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight             0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight             1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           0       20      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             1        0      27
Birth       ki1119695-PROBIT           BELARUS                        Normal weight           0    13195   13723
Birth       ki1119695-PROBIT           BELARUS                        Normal weight           1        5   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight             0      523   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight             1        0   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           0     8867    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           1      257    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             0      484    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             1       26    9634
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight           0      203     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight           1        6     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight             0       30     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight             1        2     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight           0      199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight           1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight             0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight             1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight           0      180     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight           1        6     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight             0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight             1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight           0      235     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight           1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight             0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight             1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight           0      257     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight           1       10     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight             0        3     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight             1        2     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           0      237     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           1        5     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             0        6     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             1        1     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           0      221     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           1       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             1        2     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight           0      843    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight           1       79    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight             0      265    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight             1       40    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight           0      419     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight           1       25     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight             0       83     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight             1       10     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight           0      469     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight           1       12     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight             0       99     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight             1        2     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           0      631     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           1       17     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             0       61     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0     1930    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1       19    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0       34    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight           0    12351   13027
6 months    ki1119695-PROBIT           BELARUS                        Normal weight           1      171   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight             0      494   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight             1       11   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           0     6479    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           1      268    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             0      345    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             1       17    7109
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight           0      630     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight           1       61     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight             0      135     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight             1       10     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight           0      165     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight           1       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight             0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight             1        8     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight           0      162     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight           1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight             0        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight             1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight           0      156     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight           1       24     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight             0       42     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight             1        4     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight           0      221     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight           1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight             0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight             1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight           0      184     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight           1       13     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight             0        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight             1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           0      203     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight           1       24     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             0        5     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight             1        2     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           0      138     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight           1       65     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             0        7     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight             1        4     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight           0      282     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight           1       67     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight             0       54     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight             1       26     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight           0      442     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight           1       34     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight             0       85     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight             1       15     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           0      443     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight           1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             0       36     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight             1        7     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight             1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight           0     3801    4005
24 months   ki1119695-PROBIT           BELARUS                        Normal weight           1       62    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight             0      139    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight             1        3    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           0      245     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight           1      107     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             0       22     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight             1        3     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight           0      429     577
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight           1       53     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight             0       81     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight             1       14     577


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/ace0b7fa-6ba8-4f5a-9d78-ac8b9349779c/30b5a0f6-fa3a-4d30-8ada-b0b4b50bbcf2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ace0b7fa-6ba8-4f5a-9d78-ac8b9349779c/30b5a0f6-fa3a-4d30-8ada-b0b4b50bbcf2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ace0b7fa-6ba8-4f5a-9d78-ac8b9349779c/30b5a0f6-fa3a-4d30-8ada-b0b4b50bbcf2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ace0b7fa-6ba8-4f5a-9d78-ac8b9349779c/30b5a0f6-fa3a-4d30-8ada-b0b4b50bbcf2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0281758   0.0247778   0.0315737
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0555804   0.0341587   0.0770021
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0858963   0.0627841   0.1090086
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.1306381   0.0882775   0.1729986
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0559865   0.0345200   0.0774530
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.1136051   0.0503306   0.1768795
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0262346   0.0139197   0.0385494
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522   0.0211327   0.1579718
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0136274   0.0088689   0.0183858
6 months    ki1119695-PROBIT          BELARUS      Underweight          NA                0.0229517   0.0118564   0.0340469
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0397712   0.0351047   0.0444378
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0494551   0.0267591   0.0721511
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.0879877   0.0668516   0.1091238
6 months    ki1148112-LCNI-5          MALAWI       Underweight          NA                0.0682484   0.0269080   0.1095889
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.0983607   0.0551116   0.1416097
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2758621   0.1128077   0.4389164
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.1917172   0.1502691   0.2331654
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.3292026   0.2255536   0.4328517
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0720438   0.0484737   0.0956140
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.1530557   0.0783799   0.2277315
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0594480   0.0380723   0.0808237
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.1627907   0.0523400   0.2732414
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.1084405   0.0808065   0.1360745
24 months   ki1148112-LCNI-5          MALAWI       Underweight          NA                0.1338995   0.0671101   0.2006889


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0293751   0.0260032   0.0327471
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0969845   0.0738527   0.1201163
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0139710   0.0092040   0.0187379
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0400900   0.0355296   0.0446505
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.0849282   0.0660197   0.1038368
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.1161179   0.0899551   0.1422806


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.9726317   1.3171951   2.954213
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.5208811   1.0638696   2.174213
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.0291515   1.0317809   3.990630
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.4135206   1.3924201   8.368253
6 months    ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.6842315   1.0746443   2.639604
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.2434891   0.7743341   1.996897
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     0.7756587   0.4044496   1.487568
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     2.8045976   1.3425593   5.858786
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.7171259   1.1718836   2.516053
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     2.1244797   1.1799881   3.824966
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     2.7383721   1.2706011   5.901680
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     1.2347744   0.7046465   2.163734


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0011994    0.0001653   0.0022335
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0110882    0.0006771   0.0214993
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0091904   -0.0024694   0.0208502
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0059333   -0.0007202   0.0125867
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0003436   -0.0000798   0.0007670
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0003188   -0.0008193   0.0014569
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                -0.0030595   -0.0111079   0.0049890
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0242809   -0.0002187   0.0487804
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0250660    0.0037857   0.0463463
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0130256   -0.0003080   0.0263592
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0086454   -0.0010863   0.0183771
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0076774   -0.0049926   0.0203473


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0408292    0.0052720   0.0751154
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.1143296    0.0033156   0.2129785
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.1410073   -0.0520784   0.2986563
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.1844471   -0.0343640   0.3569706
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0245935   -0.0068197   0.0550265
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0079521   -0.0208342   0.0359268
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                -0.0360241   -0.1349275   0.0542604
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.1979823   -0.0158966   0.3668329
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.1156269    0.0129701   0.2076069
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.1531174   -0.0139209   0.2926369
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.1269639   -0.0222870   0.2544246
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0661171   -0.0487103   0.1683715
