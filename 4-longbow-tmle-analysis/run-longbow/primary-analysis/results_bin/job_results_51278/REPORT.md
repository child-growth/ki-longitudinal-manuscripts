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

agecat      studyid                    country                        mbmi             swasted   n_cell       n
----------  -------------------------  -----------------------------  --------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      197     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        8     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       28     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        0     233
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      167     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        0     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            0        9     176
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     176
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          0      152     195
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight          1        5     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            0       36     195
Birth       ki0047075b-MAL-ED          INDIA                          Underweight            1        2     195
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          0      163     167
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight          1        4     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     167
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     167
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          0      264     269
Birth       ki0047075b-MAL-ED          PERU                           Normal weight          1        0     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight            0        5     269
Birth       ki0047075b-MAL-ED          PERU                           Underweight            1        0     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      220     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        1     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        5     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      108     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0        7     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0       77     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1        0     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            0       31     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight            1        2     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight            1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0       16      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        0      23
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          0    12289   13664
Birth       ki1119695-PROBIT           BELARUS                        Normal weight          1      854   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight            0      478   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight            1       43   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     8087    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1      486    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      415    9029
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1       41    9029
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      208     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        1     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            0        9     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          0      184     235
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight          1        2     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            0       46     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight            1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          0      236     236
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight          1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          0      267     272
6 months    ki0047075b-MAL-ED          PERU                           Normal weight          1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            0        5     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight            1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      239     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        3     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        7     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      233     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          0      897    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight          1       24    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            0      288    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight            1       16    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      440     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1        3     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       91     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight            1        2     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      478     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1        2     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       98     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight            1        3     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       67     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1937    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1       12    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       33    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          0    12509   13024
6 months    ki1119695-PROBIT           BELARUS                        Normal weight          1       10   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight            0      504   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight            1        1   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0     6665    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1       61    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0      354    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1        7    7087
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          0      691     836
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight          1        0     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            0      145     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight            1        0     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          0      183     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight          1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            0       29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight            1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          0      161     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight          1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            0        6     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight            1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          0      180     226
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight          1        0     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            0       44     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight            1        2     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          0      228     228
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight          1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight            1        0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          0      196     201
24 months   ki0047075b-MAL-ED          PERU                           Normal weight          1        1     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            0        4     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight            1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          0      227     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight          1        0     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            0        7     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight            1        0     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          0      203     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight            1        0     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          0      345     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight          1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            0       73     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight            1        7     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          0      472     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight          1        5     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            0       96     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight            1        4     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          0      468     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight          1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            0       42     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight            1        1     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          0     3797    3941
24 months   ki1119695-PROBIT           BELARUS                        Normal weight          1        3    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight            0      140    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight            1        1    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          0      309     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight          1       25     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            0       22     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight            1        3     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          0      467     561
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight          1        0     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            0       93     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight            1        1     561


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/8be36977-fd44-4cb3-acdf-bd0b75149fb6/e9492b84-e861-4dd1-9e8f-5676f8ceeff0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8be36977-fd44-4cb3-acdf-bd0b75149fb6/e9492b84-e861-4dd1-9e8f-5676f8ceeff0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8be36977-fd44-4cb3-acdf-bd0b75149fb6/e9492b84-e861-4dd1-9e8f-5676f8ceeff0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8be36977-fd44-4cb3-acdf-bd0b75149fb6/e9492b84-e861-4dd1-9e8f-5676f8ceeff0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid                   country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT          BELARUS    Normal weight        NA                0.0649662   0.0322328   0.0976997
Birth      ki1119695-PROBIT          BELARUS    Underweight          NA                0.0841820   0.0328091   0.1355550
Birth      ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        NA                0.0568300   0.0519247   0.0617353
Birth      ki1126311-ZVITAMBO        ZIMBABWE   Underweight          NA                0.0839003   0.0586356   0.1091649
6 months   ki1000304b-SAS-CompFeed   INDIA      Normal weight        NA                0.0255822   0.0150337   0.0361307
6 months   ki1000304b-SAS-CompFeed   INDIA      Underweight          NA                0.0525898   0.0178255   0.0873542
6 months   ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        NA                0.0090693   0.0068036   0.0113350
6 months   ki1126311-ZVITAMBO        ZIMBABWE   Underweight          NA                0.0193906   0.0051650   0.0336161


### Parameter: E(Y)


agecat     studyid                   country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT          BELARUS    NA                   NA                0.0656470   0.0328690   0.0984250
Birth      ki1126311-ZVITAMBO        ZIMBABWE   NA                   NA                0.0583675   0.0535316   0.0632034
6 months   ki1000304b-SAS-CompFeed   INDIA      NA                   NA                0.0326531   0.0238095   0.0414966
6 months   ki1126311-ZVITAMBO        ZIMBABWE   NA                   NA                0.0095950   0.0073253   0.0118648


### Parameter: RR


agecat     studyid                   country    intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------  ------------------------  ---------  -------------------  ---------------  ---------  ----------  ---------
Birth      ki1119695-PROBIT          BELARUS    Normal weight        Normal weight     1.000000   1.0000000   1.000000
Birth      ki1119695-PROBIT          BELARUS    Underweight          Normal weight     1.295781   0.8027579   2.091600
Birth      ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        Normal weight     1.000000   1.0000000   1.000000
Birth      ki1126311-ZVITAMBO        ZIMBABWE   Underweight          Normal weight     1.476337   1.0792998   2.019430
6 months   ki1000304b-SAS-CompFeed   INDIA      Normal weight        Normal weight     1.000000   1.0000000   1.000000
6 months   ki1000304b-SAS-CompFeed   INDIA      Underweight          Normal weight     2.055718   0.8066774   5.238744
6 months   ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        Normal weight     1.000000   1.0000000   1.000000
6 months   ki1126311-ZVITAMBO        ZIMBABWE   Underweight          Normal weight     2.138050   0.9850065   4.640841


### Parameter: PAR


agecat     studyid                   country    intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  ------------------------  ---------  -------------------  ---------------  ----------  -----------  ----------
Birth      ki1119695-PROBIT          BELARUS    Normal weight        NA                0.0006807   -0.0008827   0.0022442
Birth      ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        NA                0.0015374    0.0001775   0.0028974
6 months   ki1000304b-SAS-CompFeed   INDIA      Normal weight        NA                0.0070708   -0.0028202   0.0169619
6 months   ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        NA                0.0005257   -0.0002099   0.0012614


### Parameter: PAF


agecat     studyid                   country    intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  ------------------------  ---------  -------------------  ---------------  ----------  -----------  ----------
Birth      ki1119695-PROBIT          BELARUS    Normal weight        NA                0.0103694   -0.0140326   0.0341841
Birth      ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        NA                0.0263409    0.0028557   0.0492729
6 months   ki1000304b-SAS-CompFeed   INDIA      Normal weight        NA                0.2165447   -0.1292533   0.4564530
6 months   ki1126311-ZVITAMBO        ZIMBABWE   Normal weight        NA                0.0547940   -0.0238981   0.1274381
