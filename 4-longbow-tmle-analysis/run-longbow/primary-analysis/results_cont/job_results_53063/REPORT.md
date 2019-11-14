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
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
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
* delta_W_nchldlt5
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       194     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          28     222
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        59      64
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           5      64
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        35      43
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           8      43
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight        27      27
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0      27
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       221     226
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        98     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       115     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight       830    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight         305    1135
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight       506     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight         102     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight       418     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          99     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       663     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          66     729
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13200   13723
Birth       ki1119695-PROBIT           BELARUS                        Underweight         523   13723
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      9162    9672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         510    9672
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     16381   26546
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight       10165   26546
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       904    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1228
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       498     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         376    7375
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10273   16702
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6429   16702
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          61    1373
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5245    8532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3287    8532


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
![](/tmp/14884bc0-aa40-4c24-88bd-a50b0b309730/13962814-e8f2-45fd-bbd0-28601c2af948/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/14884bc0-aa40-4c24-88bd-a50b0b309730/13962814-e8f2-45fd-bbd0-28601c2af948/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/14884bc0-aa40-4c24-88bd-a50b0b309730/13962814-e8f2-45fd-bbd0-28601c2af948/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.0548210   -1.2016903   -0.9079518
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.2139499   -1.5420983   -0.8858015
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.6249153   -0.9137560   -0.3360745
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -1.4380000   -2.2732876   -0.6027124
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.2745714   -1.6299983   -0.9191446
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.0362500   -1.6020040   -0.4704960
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.8869683   -1.0065725   -0.7673641
Birth       ki0047075b-MAL-ED          PERU                           Underweight          NA                -1.7080000   -2.3409322   -1.0750678
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.0913043   -1.3056634   -0.8769453
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.8785714   -2.8008825   -0.9562603
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3709989   -1.4640712   -1.2779266
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.6461229   -1.7561055   -1.5361403
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8622510   -0.9581961   -0.7663060
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.2761330   -1.4973684   -1.0548976
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.8414490   -0.9264833   -0.7564147
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.1390367   -1.3148744   -0.9631989
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.8845803   -0.9614151   -0.8077456
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.2304974   -1.4636811   -0.9973138
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                 1.3379230    1.1782239    1.4976221
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.9842869    0.7992650    1.1693088
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4606155   -0.4856868   -0.4355442
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7781683   -0.8969527   -0.6593839
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.2047445   -1.2368873   -1.1726017
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.1204879   -1.1588558   -1.0821199
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.1613156   -1.2878181   -1.0348131
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.4583078   -1.7747449   -1.1418707
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0748995   -0.0742030    0.2240020
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.4262963   -0.8810079    0.0284153
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.1929840   -1.3264375   -1.0595305
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.2630631   -1.5164280   -1.0096982
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -1.3144382   -1.4230912   -1.2057852
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                -2.0820000   -2.9100519   -1.2539481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.0475413   -1.1785458   -0.9165369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -1.9657143   -2.5717876   -1.3596410
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3523716   -1.4763722   -1.2283711
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.4926604   -2.1334583   -0.8518626
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3382133   -1.4388103   -1.2376163
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.6009100   -1.7552407   -1.4465793
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3416743   -1.4373406   -1.2460080
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.7071382   -1.9399370   -1.4743394
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.0515729   -1.1351441   -0.9680016
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3330039   -1.4927811   -1.1732267
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.1586263   -1.2330096   -1.0842431
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.6716489   -1.9362502   -1.4070477
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5368395   -0.5872733   -0.4864057
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.6291722   -0.8580343   -0.4003101
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.1201547    0.0275991    0.2127102
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0133879   -0.2400827    0.2133070
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8685602   -0.8967526   -0.8403677
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1146826   -1.2356679   -0.9936972
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.6467752   -1.7251160   -1.5684344
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.7101293   -1.8670003   -1.5532583
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.3826889   -1.4095138   -1.3558640
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.2627546   -1.2934010   -1.2321082
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.9037771   -2.0353575   -1.7721967
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -2.4887552   -2.8667184   -2.1107919
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0271296   -0.1429190    0.1971783
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.8549644   -1.9965080   -1.7134207
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.9703422   -2.2389905   -1.7016939
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.6174449   -1.7555025   -1.4793874
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6398526   -2.7782268   -2.5014784
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.7000470   -3.2082543   -2.1918396
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1164475   -2.2296638   -2.0032311
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -2.6453155   -2.8690065   -2.4216244
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.5401312   -1.6303373   -1.4499251
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -2.0239159   -2.2435621   -1.8042698
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.4020916   -1.4888996   -1.3152836
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.8916011   -2.1770038   -1.6061985
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.1331187   -0.4368164    0.1705789
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0575653   -0.6703325    0.5552019
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.5978030   -1.6613646   -1.5342414
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.6775288   -1.9876129   -1.3674447
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.8564217   -1.9458019   -1.7670415
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.9970118   -2.2031122   -1.7909114
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -2.0671481   -2.1010659   -2.0332303
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.9442671   -1.9845003   -1.9040338


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4438150   -1.5337502   -1.3538797
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3271449    1.1680455    1.4862444
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4764413   -0.5009156   -0.4519670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1727085   -1.2008532   -1.1445639
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2058014   -1.3242792   -1.0873236
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3285478   -1.4371840   -1.2199116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0733534   -1.2031913   -0.9435155
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8800508   -0.9074511   -0.8526506
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3365058   -1.3595555   -1.3134561
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0069048   -0.1627841    0.1765936
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8831195   -2.0084753   -1.7577636
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6474145   -1.7842298   -1.5105993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5983212   -1.6605141   -1.5361283
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0196953   -2.0474028   -1.9919877


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1591289   -0.5190759    0.2008180
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.8130847   -1.6969028    0.0707333
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.2383214   -0.4298147    0.9064576
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.8210317   -1.4651655   -0.1768979
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.7872671   -1.7341607    0.1596266
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2751241   -0.3552893   -0.1949588
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4138820   -0.6549997   -0.1727643
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.2975876   -0.4932178   -0.1019575
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3459171   -0.5923678   -0.0994663
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.3536361   -0.4990494   -0.2082228
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3175528   -0.4389617   -0.1961439
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.0842566    0.0429824    0.1255308
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.2969922   -0.6380862    0.0441018
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.5011958   -0.9797291   -0.0226625
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0700791   -0.3564991    0.2163409
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.7675618   -1.6027117    0.0675882
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.9181730   -1.5382432   -0.2981028
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1402888   -0.7927852    0.5122076
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2626967   -0.4287118   -0.0966816
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3654639   -0.6176826   -0.1132452
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.2814311   -0.4623877   -0.1004744
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.5130226   -0.7882581   -0.2377872
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0923327   -0.3268420    0.1421767
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1335425   -0.3214280    0.0543429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2461224   -0.3703598   -0.1218849
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0633541   -0.2390889    0.1123807
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.1199343    0.0862413    0.1536274
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.5849781   -0.9860063   -0.1839498
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.5662963   -1.7170937    0.5845011
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.1153778   -0.4206383    0.1898827
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -1.0018408   -1.5985625   -0.4051191
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0601943   -0.5866296    0.4662410
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5288680   -0.7795013   -0.2782347
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.4837847   -0.7211755   -0.2463940
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4895095   -0.7879739   -0.1910452
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0755534   -0.5245773    0.6756842
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0797258   -0.3965170    0.2370655
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.1405901   -0.3655964    0.0844162
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.1228810    0.0742042    0.1715578


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0230619   -0.0681220    0.0219982
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0635222   -0.1511062    0.0240617
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0443389   -0.0830905    0.1717683
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0181644   -0.0407101    0.0043812
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0451711   -0.1085427    0.0182006
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0728161   -0.0931183   -0.0525139
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0687687   -0.1111833   -0.0263541
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0510655   -0.0880349   -0.0140961
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0243360   -0.0467021   -0.0019699
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0107781   -0.0160828   -0.0054734
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0158258   -0.0219093   -0.0097422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0320360    0.0162049    0.0478670
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0441754   -0.0897064    0.0013555
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0216864   -0.0466204    0.0032477
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0128174   -0.0747665    0.0491317
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0141096   -0.0383298    0.0101106
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0258121   -0.0515152   -0.0001090
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0163733   -0.0517960    0.0190494
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0686760   -0.1123592   -0.0249927
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0657078   -0.1100509   -0.0213647
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0379573   -0.0710373   -0.0048772
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0400520   -0.0663421   -0.0137618
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0037316   -0.0102914    0.0028282
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0047816   -0.0116133    0.0020501
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0114907   -0.0177460   -0.0052354
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0109999   -0.0410366    0.0190368
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0461831    0.0332174    0.0591488
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0751380   -0.1338448   -0.0164312
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0202249   -0.0643072    0.0238574
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0281551   -0.0919021    0.0355919
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0299696   -0.0582336   -0.0017056
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0053109   -0.0389634    0.0283416
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1026104   -0.1527996   -0.0524212
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0601288   -0.1008851   -0.0193724
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0391730   -0.0668732   -0.0114728
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0009007   -0.0191731    0.0209745
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0005182   -0.0146174    0.0135811
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0287603   -0.0654025    0.0078819
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0474528    0.0285295    0.0663762
