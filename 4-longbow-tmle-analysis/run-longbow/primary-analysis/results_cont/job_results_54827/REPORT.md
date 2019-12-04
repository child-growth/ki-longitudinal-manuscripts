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
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     209  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          26     209  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        56      61  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           5      61  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        33      41  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           8      41  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight        26      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       216     221  whz              
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     221  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        97     100  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           3     100  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       107     113  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           6     113  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight       735     992  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight         257     992  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight       483     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          92     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight       411     510  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          99     510  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       639     704  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          65     704  whz              
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13143   13664  whz              
Birth       ki1119695-PROBIT           BELARUS                        Underweight         521   13664  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      8574    9030  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         456    9030  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10934   17935  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        7001   17935  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       902    1226  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1226  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       497     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     602  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982  whz              
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024  whz              
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         372    7253  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10303   16733  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6430   16733  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       348     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       478     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     578  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6  whz              
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3801    3942  whz              
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3942  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       339     366  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          27     366  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5272    8570  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3298    8570  whz              


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
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/a917af89-a3af-4055-836c-d5c22d78d5a8/95d9448a-cd0e-4206-88a6-b7ebdcfe3c1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a917af89-a3af-4055-836c-d5c22d78d5a8/95d9448a-cd0e-4206-88a6-b7ebdcfe3c1e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a917af89-a3af-4055-836c-d5c22d78d5a8/95d9448a-cd0e-4206-88a6-b7ebdcfe3c1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.9298396   -1.0895013   -0.7701780
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1192684   -1.4550016   -0.7835353
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4114286    0.0848121    0.7380451
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.2940000   -1.0086888    1.5966888
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.9245455   -1.2487999   -0.6002910
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1462500   -1.7084286   -0.5840714
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0281944   -0.1526241    0.0962352
Birth       ki0047075b-MAL-ED          PERU                           Underweight          NA                -0.6820000   -1.2614133   -0.1025867
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.7576636    0.5539948    0.9613323
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.7700000    0.2691531    1.2708469
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5907090   -0.7636544   -0.4177637
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.9136040   -1.1342989   -0.6929090
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.2912069   -1.3963749   -1.1860389
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.6595902   -1.8734259   -1.4457544
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.2496219   -1.3359356   -1.1633081
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.5107333   -1.6974423   -1.3240244
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.2355892   -1.3238736   -1.1473049
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.3156148   -1.6548984   -0.9763313
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -1.1365167   -1.3466725   -0.9263608
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                -1.2988455   -1.5523594   -1.0453316
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4727163   -0.5044778   -0.4409549
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.8388830   -0.9761397   -0.7016262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.7658229   -0.7891247   -0.7425210
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -0.7971985   -0.8247451   -0.7696520
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0557543   -0.1841064    0.0725978
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -0.6576672   -1.1108208   -0.2045136
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.6157891   -0.7480838   -0.4834943
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -0.9585080   -1.2878155   -0.6292005
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5235838    0.3886212    0.6585465
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.8222884    0.1890944    1.4554824
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5735856   -0.7078940   -0.4392772
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.8349899   -0.9678920   -0.7020879
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3808821   -0.4803574   -0.2814068
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7391785   -0.9486901   -0.5296669
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.1091240   -0.1992111   -0.0190368
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -0.6848258   -0.8996235   -0.4700282
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0586293   -0.0233409    0.1405994
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.5857424   -0.8513003   -0.3201845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0849786    0.0303985    0.1395587
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3133028   -0.5274926   -0.0991131
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.5904098    0.5326821    0.6481375
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4162935    0.2741163    0.5584706
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3153808    0.2872164    0.3435452
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1266965   -0.2612171    0.0078241
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.5320305    0.4536380    0.6104229
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                 0.0659502   -0.1059804    0.2378808
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.5648819   -0.5879407   -0.5418231
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -0.6385802   -0.6694008   -0.6077596
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.7644314   -0.8954384   -0.6334245
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.0965236   -1.4400084   -0.7530387
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.8995442   -1.0244551   -0.7746333
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1105386   -1.4020763   -0.8190010
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0542937   -0.0729763    0.1815636
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0275505   -0.7096124    0.7647134
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8141589   -0.9172467   -0.7110710
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.3272311   -1.5890350   -1.0654272
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.7997576   -0.8910860   -0.7084292
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3892827   -1.6229015   -1.1556638
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.5889678   -0.6884679   -0.4894677
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.0489258   -1.3240377   -0.7738138
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.6976958    0.5872862    0.8081054
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4308102    0.0356146    0.8260058
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1632418   -1.2765611   -1.0499225
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.2937830   -1.7423781   -0.8451879
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0191830   -0.0704320    0.1087980
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -0.3856476   -0.5722579   -0.1990373
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.2740401   -1.3035941   -1.2444861
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.3340483   -1.3709864   -1.2971102


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6752218   -0.8548888   -0.4955547
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1429259   -1.3532676   -0.9325843
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4905338   -0.5214551   -0.4596125
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7781583   -0.7971779   -0.7591388
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948332    0.2672524    0.3224139
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5931545   -0.6127055   -0.5736036
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1718579   -1.2809898   -1.0627260
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1894288   -0.5617323    0.1828747
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.1174286   -1.4604388    1.2255816
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.2217045   -0.8706928    0.4272837
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.6538056   -1.2464290   -0.0611821
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0123364   -0.5283378    0.5530107
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.3228949   -0.4941872   -0.1516026
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3683833   -0.6056428   -0.1311238
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.2611114   -0.4667694   -0.0554535
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0800256   -0.4304734    0.2704222
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1623288   -0.3111276   -0.0135300
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3661666   -0.5070770   -0.2252562
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0313757   -0.0646959    0.0019445
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.6019129   -1.0727394   -0.1310864
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.3427189   -0.6977375    0.0122997
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.2987046   -0.3518193    0.9492284
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2614043   -0.3637852   -0.1590234
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3582964   -0.5904258   -0.1261671
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5757019   -0.8079630   -0.3434407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.6443716   -0.9228408   -0.3659025
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.3982814   -0.6192508   -0.1773120
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1741163   -0.3013314   -0.0469013
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4420773   -0.5795026   -0.3046520
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4660803   -0.6551908   -0.2769697
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0736983   -0.1097789   -0.0376176
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.3320921   -0.6988898    0.0347055
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.2109944   -0.5279566    0.1059677
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0267432   -0.7749005    0.7214141
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5130722   -0.7945886   -0.2315559
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5895251   -0.8404388   -0.3386114
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4599580   -0.7529343   -0.1669816
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.2668856   -0.6114589    0.0776877
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1305412   -0.5937179    0.3326354
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4048306   -0.6120495   -0.1976117
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0600082   -0.1069452   -0.0130712


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0235096   -0.0697987    0.0227794
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0096253   -0.1200094    0.1007588
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0432594   -0.1727854    0.0862665
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0147920   -0.0344019    0.0048180
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0006550   -0.0280579    0.0293680
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0845127   -0.1317662   -0.0372593
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0587149   -0.0965762   -0.0208535
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0564762   -0.0948614   -0.0180910
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0078838   -0.0368501    0.0210825
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0064093   -0.0121109   -0.0007077
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0178174   -0.0249730   -0.0106619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0123355   -0.0253371    0.0006662
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0819220   -0.1492408   -0.0146032
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0876258   -0.1644110   -0.0108407
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0126375   -0.0212410    0.0465160
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0690449   -0.0944764   -0.0436133
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0665217   -0.1086357   -0.0244077
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0895831   -0.1304033   -0.0487629
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0288670   -0.0578598    0.0001257
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0074613   -0.0138213   -0.0011013
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0074142   -0.0117121   -0.0031162
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0205476   -0.0276848   -0.0134105
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0804754   -0.1139759   -0.0469749
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0282726   -0.0421580   -0.0143873
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0548610   -0.1065495   -0.0031726
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0523806   -0.1176077    0.0128466
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0005039   -0.0338085    0.0348162
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0974202   -0.1516431   -0.0431972
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0916784   -0.1343417   -0.0490152
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0213824   -0.0495794    0.0068146
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0096263   -0.0203548    0.0011022
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0086161   -0.0403613    0.0231290
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0660547   -0.1040515   -0.0280578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0230241   -0.0410891   -0.0049590
