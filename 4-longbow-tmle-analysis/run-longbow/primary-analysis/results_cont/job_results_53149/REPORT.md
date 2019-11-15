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
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     13720   22355
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        8635   22355
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10311   16760
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6449   16760
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5289    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3310    8599


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
![](/tmp/f18ea5fb-1588-40d1-a4b9-b5aeba78e887/ad78e5a4-44a1-445f-8380-d2400ecc7b29/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f18ea5fb-1588-40d1-a4b9-b5aeba78e887/ad78e5a4-44a1-445f-8380-d2400ecc7b29/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f18ea5fb-1588-40d1-a4b9-b5aeba78e887/ad78e5a4-44a1-445f-8380-d2400ecc7b29/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.0577930   -1.2044438   -0.9111422
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1964176   -1.5284595   -0.8643757
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
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8599911   -0.9557584   -0.7642237
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.2567035   -1.4770903   -1.0363167
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.8415759   -0.9267979   -0.7563540
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.1441818   -1.3177031   -0.9706606
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.8862922   -0.9629763   -0.8096082
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.2172497   -1.4495084   -0.9849910
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                 1.3385468    1.1787384    1.4983551
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.9639689    0.7811889    1.1467488
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4604582   -0.4855325   -0.4353839
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7716599   -0.8899524   -0.6533675
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.6183721   -1.6415316   -1.5952126
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.5430319   -1.5711623   -1.5149016
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.1670158   -1.2935694   -1.0404621
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.5368856   -1.8619750   -1.2117961
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.1909910   -1.3241084   -1.0578737
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1798655   -1.4486193   -0.9111117
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3519592   -1.4761814   -1.2277369
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.6652448   -2.2858427   -1.0446470
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3382133   -1.4388103   -1.2376163
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.6009100   -1.7552407   -1.4465793
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3438268   -1.4394720   -1.2481815
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.7274911   -1.9551055   -1.4998766
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.0405551   -1.1241602   -0.9569500
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3552185   -1.5209242   -1.1895127
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.1588116   -1.2330294   -1.0845937
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.7628011   -2.0203385   -1.5052637
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5355642   -0.5861364   -0.4849919
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.7097182   -0.9142936   -0.5051427
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.1203757    0.0279635    0.2127878
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0149359   -0.2412626    0.2113909
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8687953   -0.8969894   -0.8406012
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1078408   -1.2288199   -0.9868617
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.6466221   -1.7248989   -1.5683452
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.6991065   -1.8553156   -1.5428973
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.3597159   -1.3865874   -1.3328443
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.2410750   -1.2717520   -1.2103981
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.9045415   -2.0360642   -1.7730189
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -2.4888246   -2.8938496   -2.0837997
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.8703409   -2.0112235   -1.7294583
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.9004685   -2.1818116   -1.6191253
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6374664   -2.7757292   -2.4992035
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.6474704   -3.2970568   -1.9978839
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1108493   -2.2241279   -1.9975707
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -2.6210466   -2.8508988   -2.3911944
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.5216946   -1.6125874   -1.4308019
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -2.0882792   -2.2979142   -1.8786441
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.4031348   -1.4898367   -1.3164330
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.8828465   -2.2161522   -1.5495409
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.1332742   -0.4365564    0.1700080
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0596294   -0.6664107    0.5471520
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.5974449   -1.6610527   -1.5338370
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.7471789   -2.0693886   -1.4249691
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.8592940   -1.9487215   -1.7698664
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.9600131   -2.1635188   -1.7565075
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -2.0592929   -2.0933465   -2.0252392
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.9398901   -1.9800543   -1.8997258


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5893196   -1.6086080   -1.5700313
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8800508   -0.9074511   -0.8526506
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3140048   -1.3371141   -1.2908955
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5983212   -1.6605141   -1.5361283
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137632   -2.0415122   -1.9860142


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1386246   -0.5029392    0.2256900
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
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3967125   -0.6369488   -0.1564761
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.3026059   -0.4980875   -0.1071244
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3309575   -0.5759204   -0.0859945
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.3745779   -0.5220229   -0.2271329
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3112018   -0.4321368   -0.1902667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.0753401    0.0420986    0.1085817
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.3698698   -0.7195735   -0.0201661
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0111255   -0.2897296    0.3119806
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.3132857   -0.9459900    0.3194186
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2626967   -0.4287118   -0.0966816
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3836643   -0.6309820   -0.1363466
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.3146634   -0.5002038   -0.1291229
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.6039895   -0.8730897   -0.3348894
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1741540   -0.3849018    0.0365938
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1353115   -0.3245023    0.0538793
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2390454   -0.3632631   -0.1148278
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0524844   -0.2272859    0.1223171
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.1186408    0.0848213    0.1524604
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.5842831   -1.0090052   -0.1595610
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0301275   -0.3456759    0.2854208
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0100040   -0.6734499    0.6534419
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5101974   -0.7663867   -0.2540080
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5665845   -0.7958283   -0.3373407
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4797117   -0.8244615   -0.1349619
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0736448   -0.5189489    0.6662386
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1497340   -0.4783656    0.1788976
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.1007192   -0.3239149    0.1224766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.1194028    0.0706648    0.1681408


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0200899   -0.0654188    0.0252390
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0635222   -0.1511062    0.0240617
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0443389   -0.0830905    0.1717683
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0181644   -0.0407101    0.0043812
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0451711   -0.1085427    0.0182006
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0728161   -0.0931183   -0.0525139
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0710287   -0.1136412   -0.0284162
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0509386   -0.0890039   -0.0128732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0226241   -0.0444018   -0.0008464
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0114018   -0.0167373   -0.0060663
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0159831   -0.0220748   -0.0098914
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0290525    0.0161956    0.0419094
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0379773   -0.0849957    0.0090410
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0149664   -0.0769869    0.0470541
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0167858   -0.0517876    0.0182161
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0686760   -0.1123592   -0.0249927
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0635553   -0.1077921   -0.0193184
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0489750   -0.0817249   -0.0162251
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0398668   -0.0663882   -0.0133453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0050069   -0.0115940    0.0015801
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0050026   -0.0118955    0.0018903
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0112555   -0.0174983   -0.0050127
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0111530   -0.0411284    0.0188223
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0457111    0.0326974    0.0587248
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0738547   -0.1315534   -0.0161560
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0141281   -0.0772893    0.0490331
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0080944   -0.0426670    0.0264783
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1082086   -0.1591850   -0.0572323
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0785653   -0.1206460   -0.0364847
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0381297   -0.0657733   -0.0104861
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0010561   -0.0186304    0.0207426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0008763   -0.0149661    0.0132135
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0258880   -0.0634042    0.0116281
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0455297    0.0266223    0.0644370
