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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10934   17935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        7001   17935
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10303   16733
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6430   16733
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5272    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3298    8570


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
![](/tmp/dc1009f4-2539-4cc8-9de5-68aa7ea0a76c/b7c975cc-9d20-4e42-a124-8d00047392b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dc1009f4-2539-4cc8-9de5-68aa7ea0a76c/b7c975cc-9d20-4e42-a124-8d00047392b8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dc1009f4-2539-4cc8-9de5-68aa7ea0a76c/b7c975cc-9d20-4e42-a124-8d00047392b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.9320855   -1.0925597   -0.7716113
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1545970   -1.4755240   -0.8336700
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
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.2908069   -1.3958264   -1.1857873
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.6558801   -1.8654219   -1.4463382
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.2475412   -1.3333733   -1.1617091
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.5209165   -1.7168695   -1.3249635
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.2351367   -1.3235183   -1.1467552
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.2769994   -1.6023776   -0.9516212
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -1.1359555   -1.3457443   -0.9261666
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                -1.3216025   -1.5828967   -1.0603082
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4727532   -0.5045119   -0.4409944
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.8120329   -0.9487411   -0.6753247
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.7659627   -0.7893084   -0.7426169
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -0.7972513   -0.8248928   -0.7696099
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0512928   -0.1810546    0.0784690
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -0.7601707   -1.1747416   -0.3455999
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.6215507   -0.7539760   -0.4891254
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.0000634   -1.3385577   -0.6615692
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5225206    0.3875529    0.6574883
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.9763291    0.3149635    1.6376948
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5735856   -0.7078940   -0.4392772
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.8349899   -0.9678920   -0.7020879
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3816843   -0.4811235   -0.2822451
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7535198   -0.9656629   -0.5413766
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.1067453   -0.1968570   -0.0166335
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -0.6734764   -0.8903645   -0.4565884
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0598729   -0.0218742    0.1416201
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.5916472   -0.8731941   -0.3101004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0850567    0.0304732    0.1396402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3153619   -0.5339401   -0.0967836
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.5904036    0.5326956    0.6481116
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4119872    0.2849064    0.5390679
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3152039    0.2870295    0.3433783
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1278831   -0.2655653    0.0097991
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.5315501    0.4533412    0.6097590
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                 0.0829209   -0.0857977    0.2516395
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.5653516   -0.5884080   -0.5422951
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -0.6377854   -0.6685350   -0.6070358
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.7596673   -0.8903885   -0.6289461
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1178029   -1.4548421   -0.7807637
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.9140228   -1.0390618   -0.7889839
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.2296468   -1.5180631   -0.9412305
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0535474   -0.0736795    0.1807743
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.1131864   -0.6769730    0.9033457
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8152166   -0.9183595   -0.7120736
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.3154961   -1.5744173   -1.0565749
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.7982251   -0.8884319   -0.7080184
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3719035   -1.6015490   -1.1422581
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.5896632   -0.6890382   -0.4902882
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.0491630   -1.3207250   -0.7776010
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.6976793    0.5873495    0.8080091
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4297538    0.0405465    0.8189611
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1598990   -1.2731809   -1.0466171
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.3618852   -1.8054577   -0.9183126
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0237001   -0.0664890    0.1138892
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -0.3781050   -0.5648475   -0.1913626
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.2739302   -1.3035199   -1.2443405
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.3340599   -1.3708616   -1.2972582


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.2225115   -0.5820991    0.1370762
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
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3650732   -0.5984141   -0.1317323
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.2733753   -0.4876854   -0.0590652
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.0418627   -0.3788117    0.2950863
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1856470   -0.3328714   -0.0384225
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3392797   -0.4796360   -0.1989233
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0312886   -0.0647225    0.0021453
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.7088779   -1.1435106   -0.2742453
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.3785127   -0.7431095   -0.0139160
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.4538085   -0.2244291    1.1320461
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2614043   -0.3637852   -0.1590234
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3718354   -0.6068243   -0.1368465
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5667312   -0.8011594   -0.3323030
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.6515202   -0.9450069   -0.3580334
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.4004186   -0.6256027   -0.1752344
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1784164   -0.2905704   -0.0662624
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4430870   -0.5835614   -0.3026126
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4486292   -0.6350351   -0.2622233
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0724338   -0.1083990   -0.0364686
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.3581356   -0.7194620    0.0031908
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.3156240   -0.6310977   -0.0001503
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0596390   -0.7408930    0.8601709
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5002795   -0.7791660   -0.2213931
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5736784   -0.8204873   -0.3268694
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4594998   -0.7492132   -0.1697865
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.2679255   -0.6087583    0.0729074
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2019862   -0.6597976    0.2558252
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4018051   -0.6091081   -0.1945021
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0601297   -0.1070084   -0.0132511


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0212638   -0.0687643    0.0262368
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0096253   -0.1200094    0.1007588
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0432594   -0.1727854    0.0862665
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0147920   -0.0344019    0.0048180
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0006550   -0.0280579    0.0293680
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0845127   -0.1317662   -0.0372593
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0591149   -0.0968107   -0.0214190
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0585568   -0.0969632   -0.0201505
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0083363   -0.0373270    0.0206544
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0069704   -0.0127250   -0.0012159
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0177806   -0.0249212   -0.0106399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0121957   -0.0252310    0.0008396
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0863835   -0.1546889   -0.0180781
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0818642   -0.1588337   -0.0048947
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0137007   -0.0202174    0.0476189
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0690449   -0.0944764   -0.0436133
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0657194   -0.1078784   -0.0235605
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0919618   -0.1329063   -0.0510173
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0301107   -0.0589464   -0.0012750
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0075395   -0.0138994   -0.0011795
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0074079   -0.0117512   -0.0030647
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0203707   -0.0274836   -0.0132579
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0799951   -0.1134742   -0.0465159
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0278030   -0.0416411   -0.0139649
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0596251   -0.1117231   -0.0075272
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0379020   -0.1037960    0.0279921
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0012501   -0.0330547    0.0355550
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0963625   -0.1507054   -0.0420196
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0932108   -0.1351403   -0.0512814
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0206870   -0.0489778    0.0076038
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0096098   -0.0205450    0.0013254
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0119590   -0.0428083    0.0188904
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0705717   -0.1097060   -0.0314375
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0231340   -0.0411891   -0.0050788
