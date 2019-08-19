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

agecat      studyid                    country                        mbmi             wasted   n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      173     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1       32     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       21     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        7     233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight         0      162     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        5     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           0        8     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           1        1     176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight         0      134     195
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight         1       23     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           0       29     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           1        9     195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight         0      147     167
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight         1       20     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           1        0     167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight         0      258     269
Birth       ki0047075b-MAL-ED          PERU                           Normal weight         1        6     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight           0        5     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight           1        0     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0      208     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1       13     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        5     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      107     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        2     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0        7     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight         0       73     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight         1        4     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight           0       31     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight           1        2     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0       16      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight           1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0       14      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1        0      23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight         0    10425   13664
Birth       ki1119695-PROBIT           BELARUS                        Normal weight         1     2718   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight           0      386   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight           1      135   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0     7276    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1     1297    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0      360    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1       96    9029
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      206     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1        3     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       27     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        5     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         0      198     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         0      176     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         1       10     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight           0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight           1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight         0      232     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight         1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight         0      267     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight         1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           0        5     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0      235     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      232     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         0      826    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         1       95    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           0      253    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           1       51    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      421     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1       22     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       81     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       12     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      464     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       16     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       93     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           1        8     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      633     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       61     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0     1867    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1       82    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       30    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        3    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight         0    12421   13024
6 months    ki1119695-PROBIT           BELARUS                        Normal weight         1       98   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight           0      500   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight           1        5   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0     6528    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1      198    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0      336    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1       25    7087
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight         0      678     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight         1       13     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight           0      144     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight           1        1     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         0      169     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         1       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           0       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           1        7     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         0      159     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           0        6     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         0      161     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         1       19     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight           0       38     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight           1        8     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight         0      223     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight         1        5     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight         0      195     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight         1        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           0        3     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         0      226     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         1        1     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           0        7     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         0      200     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         1        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           0       10     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           1        1     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         0      316     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         1       32     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           0       59     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           1       21     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         0      437     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         1       40     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           0       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           1       25     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         0      430     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         1       41     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           0       39     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           1        4     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight         0     3762    3941
24 months   ki1119695-PROBIT           BELARUS                        Normal weight         1       38    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight           0      136    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight           1        5    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         0      278     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         1       56     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           0       17     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           1        8     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         0      462     561
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         1        5     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight           0       89     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight           1        5     561


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/d23aa70a-7d83-4bb1-80fa-206ca3ef2aaf/190a6c35-5f9a-4c6e-8ed6-be6a741acb0e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d23aa70a-7d83-4bb1-80fa-206ca3ef2aaf/190a6c35-5f9a-4c6e-8ed6-be6a741acb0e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d23aa70a-7d83-4bb1-80fa-206ca3ef2aaf/190a6c35-5f9a-4c6e-8ed6-be6a741acb0e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d23aa70a-7d83-4bb1-80fa-206ca3ef2aaf/190a6c35-5f9a-4c6e-8ed6-be6a741acb0e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1560976    0.1063067   0.2058884
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2500000    0.0892675   0.4107325
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1464968    0.0910430   0.2019506
Birth       ki0047075b-MAL-ED         INDIA        Underweight          NA                0.2368421    0.1013202   0.3723640
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                0.2069096    0.1416047   0.2722144
Birth       ki1119695-PROBIT          BELARUS      Underweight          NA                0.2575625    0.1719615   0.3431636
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1515914    0.1439923   0.1591905
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.2085588    0.1701308   0.2469867
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.0537634    0.0212801   0.0862468
6 months    ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1632653    0.0595562   0.2669744
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.1030664    0.0776193   0.1285134
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.1659045    0.1014237   0.2303853
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0489213    0.0286632   0.0691794
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.1290967    0.0617443   0.1964491
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0333333    0.0172610   0.0494057
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.0792079    0.0264938   0.1319220
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0231481    0.0115621   0.0347342
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.0895522    0.0211327   0.1579718
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0078281    0.0057317   0.0099246
6 months    ki1119695-PROBIT          BELARUS      Underweight          NA                0.0099010   -0.0006297   0.0204317
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0294322    0.0253879   0.0334765
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.0826509    0.0520751   0.1132268
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.0765027    0.0379011   0.1151044
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.2413793    0.0852666   0.3974920
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1055556    0.0605680   0.1505431
24 months   ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1739130    0.0641361   0.2836900
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0903566    0.0599516   0.1207616
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.2555607    0.1588777   0.3522436
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0847756    0.0593412   0.1102100
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.2701644    0.1778653   0.3624636
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0100000    0.0031380   0.0168620
24 months   ki1119695-PROBIT          BELARUS      Underweight          NA                0.0354610    0.0131895   0.0577325
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1676647    0.1275456   0.2077837
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.3200000    0.1368895   0.5031105
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.0107066    0.0013641   0.0200492
24 months   ki1148112-LCNI-5          MALAWI       Underweight          NA                0.0531915    0.0077844   0.0985986


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1673820   0.1193444   0.2154196
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                0.1641026   0.1119853   0.2162198
Birth       ki1119695-PROBIT          BELARUS      NA                   NA                0.2087968   0.1432289   0.2743648
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1542807   0.1468295   0.1617318
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.0765957   0.0425205   0.1106709
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1191837   0.0947144   0.1436529
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0413081   0.0251127   0.0575035
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0079085   0.0059160   0.0099010
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0314661   0.0274014   0.0355307
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.1194690   0.0770894   0.1618486
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0109109   0.0040853   0.0177366
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1782730   0.1386257   0.2179202
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.0178253   0.0068664   0.0287842


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     1.601562   0.7813543    3.282765
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     1.616705   0.8140867    3.210634
Birth       ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.244807   1.0041949    1.543072
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.375796   1.1366234    1.665295
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     3.036735   1.2637883    7.296916
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.609686   1.0115484    2.561509
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.638863   1.3581069    5.127432
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     2.376238   1.0446605    5.405110
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     3.868657   1.5519898    9.643430
6 months    ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.264801   0.4065976    3.934409
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     2.808180   1.8924568    4.167005
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     3.155172   1.3892244    7.165950
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     1.647597   0.7692713    3.528764
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     2.828357   1.7068966    4.686636
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     3.186819   2.0196649    5.028465
24 months   ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ki1119695-PROBIT          BELARUS      Underweight          Normal weight     3.546099   1.5783651    7.966991
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.908571   1.0264640    3.548731
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     4.968085   1.4656789   16.839889


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.0112844   -0.0093148   0.0318836
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.0176057   -0.0113700   0.0465815
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0018873   -0.0002965   0.0040710
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0026893    0.0007380   0.0046406
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.0228323   -0.0005339   0.0461985
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.0161173    0.0011912   0.0310434
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0145115    0.0018851   0.0271380
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0079748   -0.0017094   0.0176589
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.0062225   -0.0004333   0.0128782
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0000804   -0.0003444   0.0005052
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0020339    0.0006639   0.0034038
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.0225539   -0.0007348   0.0458425
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.0139135   -0.0105003   0.0383272
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.0334752    0.0134978   0.0534526
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.0278761    0.0113368   0.0444154
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0009109    0.0001789   0.0016430
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0106083   -0.0030495   0.0242662
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.0071187   -0.0007594   0.0149967


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.0674171   -0.0630509   0.1818728
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1072850   -0.0853434   0.2657255
Birth       ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0090387   -0.0014721   0.0194393
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0174311    0.0047194   0.0299804
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.2980884   -0.0436507   0.5279265
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.1352309    0.0046096   0.2487113
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.2287698    0.0164125   0.3952790
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.1930556   -0.0635099   0.3877261
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.2118607   -0.0276962   0.3955766
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0101632   -0.0454865   0.0628507
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0646370    0.0208422   0.1064730
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.2276867   -0.0260841   0.4186950
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1164609   -0.1094308   0.2963587
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.2703279    0.1028477   0.4065430
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.2474536    0.0959507   0.3735673
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0834884   -0.0054348   0.1645470
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0595060   -0.0195759   0.1324540
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.3993576   -0.1107537   0.6752014
