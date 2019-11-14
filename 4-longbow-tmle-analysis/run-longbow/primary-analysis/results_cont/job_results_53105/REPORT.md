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
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          26     209
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        56      61
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           5      61
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        33      41
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           8      41
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight        26      26
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0      26
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       216     221
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        97     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           3     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       107     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           6     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight       735     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight         257     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight       483     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          92     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight       411     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          99     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       639     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          65     704
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13143   13664
Birth       ki1119695-PROBIT           BELARUS                        Underweight         521   13664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      8574    9030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         456    9030
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     13482   21985
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        8503   21985
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       902    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1226
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       497     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         372    7253
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10265   16675
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6410   16675
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       478     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3801    3942
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       339     366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          27     366
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5230    8505
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3275    8505


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
![](/tmp/3212dd48-7b63-4366-a329-4e75addee28c/4c825d27-c836-4e16-828f-649e23a68906/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3212dd48-7b63-4366-a329-4e75addee28c/4c825d27-c836-4e16-828f-649e23a68906/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3212dd48-7b63-4366-a329-4e75addee28c/4c825d27-c836-4e16-828f-649e23a68906/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.9323103   -1.0917849   -0.7728357
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1007451   -1.4302972   -0.7711929
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
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.2927063   -1.3975031   -1.1879094
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.6777343   -1.8857254   -1.4697431
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.2517696   -1.3387545   -1.1647848
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.5276957   -1.7260267   -1.3293647
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.2358313   -1.3246427   -1.1470198
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.2825520   -1.6212170   -0.9438870
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -1.1361525   -1.3460870   -0.9262180
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                -1.3185810   -1.5749593   -1.0622026
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4726297   -0.5043903   -0.4408690
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.8350278   -0.9739748   -0.6960809
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.7362917   -0.7580781   -0.7145052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -0.7728779   -0.7981116   -0.7476442
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0541261   -0.1834143    0.0751622
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -0.7310663   -1.2119375   -0.2501952
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.9775209    0.8091090    1.1459329
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.6764815   -0.0674862    1.4204491
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.6168069   -0.7491775   -0.4844363
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.0340314   -1.3805081   -0.6875546
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                 1.0597503    0.9353314    1.1841693
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                 1.0130000    0.5008674    1.5251326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.5340771    0.3764293    0.6917250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.3785714   -0.1478585    0.9050014
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5210139    0.3857888    0.6562390
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.4703328   -0.2172105    1.1578761
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5735856   -0.7078940   -0.4392772
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.8349899   -0.9678920   -0.7020879
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3819912   -0.4813557   -0.2826266
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7696346   -0.9813285   -0.5579407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.1093973   -0.1997076   -0.0190869
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -0.6686471   -0.8943008   -0.4429934
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0599172   -0.0219173    0.1417518
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.3856470   -0.7327009   -0.0385932
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0850182    0.0305256    0.1395108
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3646496   -0.5928291   -0.1364701
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.5904541    0.5327971    0.6481112
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.3941993    0.2694252    0.5189734
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3155612    0.2873986    0.3437238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1322979   -0.2709509    0.0063551
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.5321670    0.4538377    0.6104964
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                 0.0794100   -0.0897009    0.2485209
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.5646792   -0.5877728   -0.5415857
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -0.6375620   -0.6684144   -0.6067095
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.7667869   -0.8981571   -0.6354166
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1498949   -1.4757901   -0.8239997
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4425926    0.2340990    0.6510862
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.8997817   -1.0237568   -0.7758067
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1902769   -1.4803568   -0.9001970
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.3922467    0.2694589    0.5150345
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0559141   -0.0714136    0.1832417
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0491608   -0.7771985    0.8755201
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8144601   -0.9178239   -0.7110963
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.3161859   -1.5703009   -1.0620709
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.7970457   -0.8874391   -0.7066522
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3961397   -1.6296443   -1.1626350
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.5928558   -0.6919871   -0.4937244
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.9370528   -1.2645242   -0.6095814
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.6977058    0.5873128    0.8080988
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4037207   -0.0010227    0.8084641
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1631118   -1.2765248   -1.0496988
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.2130462   -1.6668468   -0.7592456
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0250704   -0.0650486    0.1151895
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -0.3935970   -0.5851024   -0.2020917
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.2756432   -1.3053188   -1.2459676
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.3369929   -1.3740581   -1.2999277


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9526794   -1.0978709   -0.8074880
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7505381   -0.7684193   -0.7326569
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7036879   -0.8303672   -0.5770087
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0588909    0.9369064    1.1808755
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5297055    0.3757432    0.6836678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948332    0.2672524    0.3224139
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5926564   -0.6122365   -0.5730762
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4409524    0.2364865    0.6454182
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3975641    0.2766504    0.5184778
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1718579   -1.2809898   -1.0627260
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2986831   -1.3220580   -1.2753083


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1684347   -0.5349431    0.1980736
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
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3850280   -0.6170053   -0.1530507
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.2759261   -0.4927640   -0.0590881
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0467207   -0.3974955    0.3040540
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1824284   -0.3261647   -0.0386922
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3623982   -0.5049581   -0.2198383
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0365862   -0.0667762   -0.0063963
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.6769402   -1.1751382   -0.1787422
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3010395   -1.0638307    0.4617517
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.4172245   -0.7886941   -0.0457549
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0467503   -0.5737796    0.4802790
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1555057   -0.7050340    0.3940226
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0506811   -0.7550549    0.6536927
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2614043   -0.3637852   -0.1590234
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3876435   -0.6218235   -0.1534634
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5592498   -0.8022008   -0.3162988
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4455643   -0.8021854   -0.0889432
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.4496678   -0.6841663   -0.2151693
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1962548   -0.3061193   -0.0863904
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4478591   -0.5893173   -0.3064008
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4527571   -0.6392998   -0.2662143
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0728827   -0.1090390   -0.0367265
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.3831081   -0.7346712   -0.0315450
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0459259   -1.1084475    1.0165957
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.2904951   -0.6067166    0.0257264
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1777533   -0.5155915    0.8710981
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0067533   -0.8424444    0.8289379
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5017258   -0.7760336   -0.2274179
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5990940   -0.8489912   -0.3491968
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3441970   -0.6861336   -0.0022604
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.2939851   -0.6490749    0.0611047
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0499344   -0.5190451    0.4191763
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4186674   -0.6303459   -0.2069890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0613497   -0.1084890   -0.0142105


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0203691   -0.0665280    0.0257898
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0096253   -0.1200094    0.1007588
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0432594   -0.1727854    0.0862665
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0147920   -0.0344019    0.0048180
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0006550   -0.0280579    0.0293680
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0845127   -0.1317662   -0.0372593
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0572155   -0.0947895   -0.0196415
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0543284   -0.0935416   -0.0151153
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0076418   -0.0371877    0.0219042
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0067734   -0.0124871   -0.0010598
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0179041   -0.0250529   -0.0107553
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0142464   -0.0259325   -0.0025603
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0842695   -0.1528448   -0.0156942
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0130257   -0.0470695    0.0210180
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0868811   -0.1646155   -0.0091467
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0008594   -0.0140563    0.0123375
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0043716   -0.0201480    0.0114047
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0152074   -0.0193012    0.0497161
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0690449   -0.0944764   -0.0436133
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0654126   -0.1075117   -0.0233136
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0893098   -0.1307234   -0.0478962
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0301550   -0.0586768   -0.0016332
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0075010   -0.0137955   -0.0012064
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0074585   -0.0118265   -0.0030905
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0207280   -0.0278571   -0.0135989
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0806120   -0.1140693   -0.0471547
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0279771   -0.0418481   -0.0141062
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0534018   -0.1054238   -0.0013798
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0016402   -0.0396094    0.0363290
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0527846   -0.1198525    0.0142833
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0053174   -0.0157850    0.0264198
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0019655   -0.0353869    0.0314560
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0971189   -0.1513121   -0.0429257
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0943903   -0.1361443   -0.0526362
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0174944   -0.0453991    0.0104102
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0096363   -0.0204007    0.0011281
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0087461   -0.0407865    0.0232943
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0719421   -0.1103921   -0.0334920
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0230400   -0.0411979   -0.0048820
