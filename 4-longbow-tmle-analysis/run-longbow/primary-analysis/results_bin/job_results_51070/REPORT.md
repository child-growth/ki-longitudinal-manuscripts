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

agecat      studyid                    country                        mbmi             stunted   n_cell       n
----------  -------------------------  -----------------------------  --------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      179     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       37     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       25     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        5     246
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      158     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          1       17     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            0        7     184
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            1        2     184
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          0      134     198
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          1       25     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            0       32     198
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            1        7     198
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          0      154     172
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          1       18     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     172
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     172
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          0      240     276
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          1       31     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight            0        3     276
Birth       ki0047075b-MAL-ED          PERU                           Underweight            1        2     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      200     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        5     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0       98     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       16     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0        5     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        2     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0       69     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1       22     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            0       26     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            1       13     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0       22      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        1      27
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          0    13168   13723
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          1       32   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight            0      522   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight            1        1   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     8246    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      878    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      432    9634
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       78    9634
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      174     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       35     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            1       10     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      193     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        6     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          0      149     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          1       37     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            0       41     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            1        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          0      224     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          1       12     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          0      209     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          1       58     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            0        3     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            1        2     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      195     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       47     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        4     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        3     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      178     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1       55     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      679    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1      243    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      194    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            1      111    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      335     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1      109     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       58     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       35     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      408     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1       73     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       81     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       20     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      523     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1      125     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       42     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       25     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1764    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      185    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       30    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        4    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          0    11789   13027
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          1      733   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight            0      458   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight            1       47   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     5648    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1     1099    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      285    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       77    7109
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          0      446     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          1      245     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            0       83     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            1       62     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      104     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1       79     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1       19     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      157     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0        5     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      104     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1       76     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       28     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1       18     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      179     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1       49     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      125     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1       72     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        2     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      150     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1       77     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        2     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        5     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0       58     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1      145     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        8     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      168     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1      181     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       23     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1       57     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      329     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1      147     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       58     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1       42     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      355     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1      116     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0     3535    4005
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1      328    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      128    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight            1       14    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0      120     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      232     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0        8     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       17     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      274     577
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1      208     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0       49     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1       46     577


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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/f0a1a448-12a1-4536-9372-f64bedb6dbc3/67c8d0ba-8e71-4d82-a690-c835fe8eab3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f0a1a448-12a1-4536-9372-f64bedb6dbc3/67c8d0ba-8e71-4d82-a690-c835fe8eab3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f0a1a448-12a1-4536-9372-f64bedb6dbc3/67c8d0ba-8e71-4d82-a690-c835fe8eab3d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f0a1a448-12a1-4536-9372-f64bedb6dbc3/67c8d0ba-8e71-4d82-a690-c835fe8eab3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1712963   0.1209486   0.2216440
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.1666667   0.0330361   0.3002972
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1572327   0.1005077   0.2139577
Birth       ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1794872   0.0587407   0.3002337
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.2387012   0.1404216   0.3369807
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.3206604   0.1405802   0.5007406
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.0961754   0.0901219   0.1022290
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.1548126   0.1218921   0.1877331
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.1679250   0.1170921   0.2187579
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.3054604   0.1410990   0.4698218
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.1989247   0.1414339   0.2564156
6 months    ki0047075b-MAL-ED         INDIA        Underweight          NA                0.1632653   0.0595562   0.2669744
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                0.2634954   0.2381412   0.2888497
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          NA                0.3643366   0.3272546   0.4014185
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.2452491   0.2051691   0.2853290
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.3762780   0.2769621   0.4755939
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.1526655   0.1202545   0.1850764
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.2043779   0.1236738   0.2850821
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.1944075   0.1636828   0.2251322
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.4083286   0.2606083   0.5560490
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0586473   0.0457921   0.0715025
6 months    ki1119695-PROBIT          BELARUS      Underweight          NA                0.0934770   0.0671885   0.1197655
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.1631248   0.1542978   0.1719519
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.2136677   0.1697472   0.2575883
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.3547971   0.3190459   0.3905483
6 months    ki1148112-LCNI-5          MALAWI       Underweight          NA                0.4190521   0.3381839   0.4999203
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                0.4339665   0.3611623   0.5067707
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          NA                0.6960361   0.5020944   0.8899778
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                0.4206804   0.3482865   0.4930744
24 months   ki0047075b-MAL-ED         INDIA        Underweight          NA                0.3948571   0.2542295   0.5354846
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                0.5187042   0.4661555   0.5712530
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          NA                0.7278633   0.6244117   0.8313149
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                0.3079554   0.2660099   0.3499009
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          NA                0.4214069   0.3209541   0.5218596
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                0.2451768   0.2061705   0.2841831
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          NA                0.4247633   0.2622544   0.5872722
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                0.0849096   0.0555081   0.1143111
24 months   ki1119695-PROBIT          BELARUS      Underweight          NA                0.1073578   0.0136727   0.2010429
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                0.6590909   0.6095065   0.7086754
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          NA                0.6800000   0.4969017   0.8630983
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                0.4311647   0.3867721   0.4755574
24 months   ki1148112-LCNI-5          MALAWI       Underweight          NA                0.4636117   0.3613051   0.5659183


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1707317   0.1236156   0.2178478
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                0.1616162   0.1102143   0.2130180
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2692308   0.1695525   0.3689090
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0992319   0.0932615   0.1052022
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                0.1914894   0.1410749   0.2419038
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2885086   0.2628530   0.3141641
6 months    ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.1597938   0.1299995   0.1895881
6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0598756   0.0470544   0.0726968
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1654241   0.1567862   0.1740620
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                0.3672249   0.3345288   0.3999210
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                0.4159292   0.3515272   0.4803312
24 months   ki1017093-NIH-Birth       BANGLADESH   NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.3281250   0.2897474   0.3665026
24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1119695-PROBIT          BELARUS      NA                   NA                0.0853933   0.0554084   0.1153781
24 months   ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.6604775   0.6126125   0.7083424
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                0.4402080   0.3996684   0.4807475


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     0.9729730   0.4142200   2.285444
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     1.1415385   0.5320672   2.449146
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.3433551   0.7093581   2.543994
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.6096898   1.2894692   2.009432
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     1.8190285   0.9805149   3.374620
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     0.8207391   0.4084345   1.649255
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA        Underweight          Normal weight     1.3827055   1.2391115   1.542940
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.5342686   1.1246785   2.093025
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.3387307   0.8546907   2.096899
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     2.1003751   1.4137605   3.120455
6 months    ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.5938854   1.2429056   2.043977
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.3098420   1.0590114   1.620083
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     1.1811035   0.9500256   1.468387
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         BANGLADESH   Underweight          Normal weight     1.6038936   1.1570397   2.223324
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         INDIA        Underweight          Normal weight     0.9386153   0.6331886   1.391369
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth       BANGLADESH   Underweight          Normal weight     1.4032337   1.1779926   1.671543
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE        BANGLADESH   Underweight          Normal weight     1.3684023   1.0397154   1.800998
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.7324776   1.1449241   2.621552
24 months   ki1119695-PROBIT          BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT          BELARUS      Underweight          Normal weight     1.2643778   0.5842108   2.736429
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Underweight          Normal weight     1.0317241   0.7800922   1.364524
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5          MALAWI       Underweight          Normal weight     1.0752543   0.8425780   1.372184


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0005646   -0.0179803   0.0168512
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0043835   -0.0219227   0.0306897
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0305296   -0.0305768   0.0916360
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0030564    0.0013474   0.0047655
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0187970   -0.0044796   0.0420736
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0074354   -0.0322297   0.0173590
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0250131    0.0139735   0.0360528
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0229073    0.0039719   0.0418428
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0071283   -0.0077789   0.0220356
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0153827    0.0032947   0.0274708
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0012284    0.0003430   0.0021137
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0022993    0.0000824   0.0045161
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0124278   -0.0030939   0.0279495
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0282976   -0.0006470   0.0572422
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0047512   -0.0364758   0.0269734
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0360743    0.0137340   0.0584147
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0201696    0.0010077   0.0393315
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0116325   -0.0014040   0.0246691
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0004837   -0.0023468   0.0033141
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0013865   -0.0112036   0.0139767
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0090433   -0.0095332   0.0276197


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                -0.0033069   -0.1106765   0.0936833
Birth       ki0047075b-MAL-ED         INDIA        Normal weight        NA                 0.0271227   -0.1498865   0.1768837
Birth       ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.1133957   -0.1322091   0.3057226
Birth       ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0308011    0.0135009   0.0477978
6 months    ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.1006683   -0.0311205   0.2156129
6 months    ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0388292   -0.1764940   0.0827271
6 months    ki1000304b-SAS-CompFeed   INDIA        Normal weight        NA                 0.0866981    0.0487747   0.1231096
6 months    ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0854253    0.0123650   0.1530810
6 months    ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0446097   -0.0531823   0.1333213
6 months    ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0733243    0.0143176   0.1287987
6 months    ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0205155    0.0049509   0.0358365
6 months    ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0138993    0.0004178   0.0271990
6 months    ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0338424   -0.0093769   0.0752112
24 months   ki0047075b-MAL-ED         BANGLADESH   Normal weight        NA                 0.0612153   -0.0040566   0.1222440
24 months   ki0047075b-MAL-ED         INDIA        Normal weight        NA                -0.0114231   -0.0906285   0.0620301
24 months   ki1017093-NIH-Birth       BANGLADESH   Normal weight        NA                 0.0650247    0.0233599   0.1049120
24 months   ki1017093b-PROVIDE        BANGLADESH   Normal weight        NA                 0.0614693    0.0011643   0.1181333
24 months   ki1017093c-NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0452964   -0.0067488   0.0946510
24 months   ki1119695-PROBIT          BELARUS      Normal weight        NA                 0.0056640   -0.0275828   0.0378351
24 months   ki1126311-ZVITAMBO        ZIMBABWE     Normal weight        NA                 0.0020993   -0.0171479   0.0209823
24 months   ki1148112-LCNI-5          MALAWI       Normal weight        NA                 0.0205432   -0.0225992   0.0618654
