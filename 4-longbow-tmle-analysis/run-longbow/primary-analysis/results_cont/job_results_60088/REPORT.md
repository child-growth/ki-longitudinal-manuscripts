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

agecat      studyid          country                        mbmi             n_cell       n
----------  ---------------  -----------------------------  --------------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight     10934   17935
Birth       JiVitA-3         BANGLADESH                     Underweight        7001   17935
Birth       MAL-ED           BANGLADESH                     Normal weight       183     209
Birth       MAL-ED           BANGLADESH                     Underweight          26     209
Birth       MAL-ED           BRAZIL                         Normal weight        56      61
Birth       MAL-ED           BRAZIL                         Underweight           5      61
Birth       MAL-ED           INDIA                          Normal weight        33      41
Birth       MAL-ED           INDIA                          Underweight           8      41
Birth       MAL-ED           NEPAL                          Normal weight        26      26
Birth       MAL-ED           NEPAL                          Underweight           0      26
Birth       MAL-ED           PERU                           Normal weight       216     221
Birth       MAL-ED           PERU                           Underweight           5     221
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        97     100
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       107     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           6     113
Birth       NIH-Birth        BANGLADESH                     Normal weight       483     575
Birth       NIH-Birth        BANGLADESH                     Underweight          92     575
Birth       NIH-Crypto       BANGLADESH                     Normal weight       639     704
Birth       NIH-Crypto       BANGLADESH                     Underweight          65     704
Birth       PROBIT           BELARUS                        Normal weight     13130   13651
Birth       PROBIT           BELARUS                        Underweight         521   13651
Birth       PROVIDE          BANGLADESH                     Normal weight       411     510
Birth       PROVIDE          BANGLADESH                     Underweight          99     510
Birth       SAS-CompFeed     INDIA                          Normal weight       735     992
Birth       SAS-CompFeed     INDIA                          Underweight         257     992
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      8574    9030
Birth       ZVITAMBO         ZIMBABWE                       Underweight         456    9030
6 months    JiVitA-3         BANGLADESH                     Normal weight     10303   16733
6 months    JiVitA-3         BANGLADESH                     Underweight        6430   16733
6 months    LCNI-5           MALAWI                         Normal weight       691     836
6 months    LCNI-5           MALAWI                         Underweight         145     836
6 months    MAL-ED           BANGLADESH                     Normal weight       209     241
6 months    MAL-ED           BANGLADESH                     Underweight          32     241
6 months    MAL-ED           BRAZIL                         Normal weight       199     208
6 months    MAL-ED           BRAZIL                         Underweight           9     208
6 months    MAL-ED           INDIA                          Normal weight       186     235
6 months    MAL-ED           INDIA                          Underweight          49     235
6 months    MAL-ED           NEPAL                          Normal weight       236     236
6 months    MAL-ED           NEPAL                          Underweight           0     236
6 months    MAL-ED           PERU                           Normal weight       267     272
6 months    MAL-ED           PERU                           Underweight           5     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight       242     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight           7     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight       648     715
6 months    NIH-Crypto       BANGLADESH                     Underweight          67     715
6 months    PROBIT           BELARUS                        Normal weight     12518   13023
6 months    PROBIT           BELARUS                        Underweight         505   13023
6 months    PROVIDE          BANGLADESH                     Normal weight       497     602
6 months    PROVIDE          BANGLADESH                     Underweight         105     602
6 months    SAS-CompFeed     INDIA                          Normal weight       902    1226
6 months    SAS-CompFeed     INDIA                          Underweight         324    1226
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight         372    7253
24 months   JiVitA-3         BANGLADESH                     Normal weight      5272    8570
24 months   JiVitA-3         BANGLADESH                     Underweight        3298    8570
24 months   LCNI-5           MALAWI                         Normal weight       467     561
24 months   LCNI-5           MALAWI                         Underweight          94     561
24 months   MAL-ED           BANGLADESH                     Normal weight       183     212
24 months   MAL-ED           BANGLADESH                     Underweight          29     212
24 months   MAL-ED           BRAZIL                         Normal weight       162     168
24 months   MAL-ED           BRAZIL                         Underweight           6     168
24 months   MAL-ED           INDIA                          Normal weight       180     226
24 months   MAL-ED           INDIA                          Underweight          46     226
24 months   MAL-ED           NEPAL                          Normal weight       228     228
24 months   MAL-ED           NEPAL                          Underweight           0     228
24 months   MAL-ED           PERU                           Normal weight       197     201
24 months   MAL-ED           PERU                           Underweight           4     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight       227     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight           7     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3799    3940
24 months   PROBIT           BELARUS                        Underweight         141    3940
24 months   PROVIDE          BANGLADESH                     Normal weight       478     578
24 months   PROVIDE          BANGLADESH                     Underweight         100     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight       339     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight          27     366


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1133617d-38ee-44a0-a438-ff88480a712c/c27d9abf-a913-4a7b-999a-060e39d17788/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1133617d-38ee-44a0-a438-ff88480a712c/c27d9abf-a913-4a7b-999a-060e39d17788/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1133617d-38ee-44a0-a438-ff88480a712c/c27d9abf-a913-4a7b-999a-060e39d17788/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.7637940   -0.7871017   -0.7404863
Birth       JiVitA-3         BANGLADESH                     Underweight          NA                -0.7999672   -0.8275443   -0.7723901
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.9266985   -1.0856529   -0.7677441
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.2003438   -1.5284111   -0.8722765
Birth       MAL-ED           BRAZIL                         Normal weight        NA                 0.4114286    0.0848121    0.7380451
Birth       MAL-ED           BRAZIL                         Underweight          NA                 0.2940000   -1.0086888    1.5966888
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.9245455   -1.2487999   -0.6002910
Birth       MAL-ED           INDIA                          Underweight          NA                -1.1462500   -1.7084286   -0.5840714
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0281944   -0.1526241    0.0962352
Birth       MAL-ED           PERU                           Underweight          NA                -0.6820000   -1.2614133   -0.1025867
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.7576636    0.5539948    0.9613323
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.7700000    0.2691531    1.2708469
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -1.2894087   -1.3943411   -1.1844762
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.6754096   -1.8899960   -1.4608233
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.2362652   -1.3247350   -1.1477955
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.3220431   -1.6518612   -0.9922251
Birth       PROBIT           BELARUS                        Normal weight        NA                -1.1403342   -1.3507132   -0.9299553
Birth       PROBIT           BELARUS                        Underweight          NA                -1.3442145   -1.6279100   -1.0605191
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -1.2486336   -1.3352494   -1.1620179
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.5390745   -1.7218270   -1.3563220
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.5993547   -0.7761424   -0.4225670
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -0.8766507   -1.1045877   -0.6487138
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4734457   -0.5051992   -0.4416922
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.8131132   -0.9521392   -0.6740871
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.5645884   -0.5874839   -0.5416930
6 months    JiVitA-3         BANGLADESH                     Underweight          NA                -0.6383265   -0.6693095   -0.6073435
6 months    LCNI-5           MALAWI                         Normal weight        NA                 0.5308626    0.4527721    0.6089531
6 months    LCNI-5           MALAWI                         Underweight          NA                 0.0716869   -0.0906786    0.2340525
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0508364   -0.1794159    0.0777431
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -0.5946098   -1.0452215   -0.1439981
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    MAL-ED           BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.6197989   -0.7521590   -0.4874389
6 months    MAL-ED           INDIA                          Underweight          NA                -1.0828605   -1.4219788   -0.7437421
6 months    MAL-ED           PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    MAL-ED           PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5236588    0.3883911    0.6589266
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.9191681    0.3484693    1.4898669
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3851833   -0.4845807   -0.2857859
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -0.7456313   -0.9556050   -0.5356576
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0571490   -0.0256497    0.1399477
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -0.3798453   -0.6827703   -0.0769202
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.5861550    0.5280660    0.6442439
6 months    PROBIT           BELARUS                        Underweight          NA                 0.3939555    0.2631603    0.5247507
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.1059991   -0.1955991   -0.0163992
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -0.6358770   -0.8604462   -0.4113078
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.5743315   -0.7120177   -0.4366453
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -0.8362207   -0.9702569   -0.7021845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0844545    0.0301002    0.1388088
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3298627   -0.5423111   -0.1174143
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3153530    0.2872119    0.3434940
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0873961   -0.2273675    0.0525752
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -1.2739678   -1.3033323   -1.2446033
24 months   JiVitA-3         BANGLADESH                     Underweight          NA                -1.3349826   -1.3716096   -1.2983556
24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0245923   -0.0645489    0.1137335
24 months   LCNI-5           MALAWI                         Underweight          NA                -0.3980522   -0.5911438   -0.2049605
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.7643956   -0.8949214   -0.6338699
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -1.1736904   -1.5210920   -0.8262888
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   MAL-ED           BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.8997425   -1.0236670   -0.7758180
24 months   MAL-ED           INDIA                          Underweight          NA                -1.1749279   -1.4746344   -0.8752215
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0566387   -0.0707065    0.1839838
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0326068   -0.6232317    0.6884453
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8157095   -0.9189876   -0.7124313
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -1.2972688   -1.5488311   -1.0457066
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.5965652   -0.6956579   -0.4974726
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.8666211   -1.1553017   -0.5779405
24 months   PROBIT           BELARUS                        Normal weight        NA                 0.7100966    0.5977621    0.8224310
24 months   PROBIT           BELARUS                        Underweight          NA                 0.4244530   -0.0033092    0.8522152
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.8047340   -0.8944987   -0.7149692
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.3334740   -1.5620910   -1.1048569
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1598497   -1.2731001   -1.0465993
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.2203090   -1.6394354   -0.8011825


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7781583   -0.7971779   -0.7591388
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        NA                   NA                -1.1472584   -1.3582745   -0.9362424
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6752218   -0.8548888   -0.4955547
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4905338   -0.5214551   -0.4596125
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5931545   -0.6127055   -0.5736036
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5785149    0.5197782    0.6372516
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948332    0.2672524    0.3224139
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6991214    0.5821715    0.8160713
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1718579   -1.2809898   -1.0627260


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0361732   -0.0695636   -0.0027828
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.2736453   -0.6394834    0.0921928
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.1174286   -1.4604388    1.2255816
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight     -0.2217045   -0.8706928    0.4272837
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.6538056   -1.2464290   -0.0611821
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0123364   -0.5283378    0.5530107
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3860010   -0.6248708   -0.1471311
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.0857779   -0.4277147    0.2561588
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.2038803   -0.3698407   -0.0379199
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2904409   -0.4927751   -0.0881067
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2772960   -0.4591349   -0.0954572
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3396675   -0.4822618   -0.1970731
6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0737381   -0.1098545   -0.0376217
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.4591757   -0.6394636   -0.2788877
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.5437734   -1.0128036   -0.0747433
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.4630615   -0.8284948   -0.0976283
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.3955093   -0.1913117    0.9823303
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3604480   -0.5927963   -0.1280997
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4369943   -0.7511902   -0.1227984
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1921994   -0.3054391   -0.0789597
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5298778   -0.7721700   -0.2875857
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2618892   -0.3644431   -0.1593353
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.4143172   -0.6331755   -0.1954590
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4027491   -0.5454520   -0.2600463
24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0610148   -0.1072234   -0.0148062
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.4226445   -0.6347556   -0.2105333
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.4092947   -0.7817419   -0.0368476
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.2751854   -0.6001049    0.0497340
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0240319   -0.6927256    0.6446618
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4815594   -0.7544034   -0.2087154
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.2700559   -0.5753514    0.0352395
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.2856435   -0.6644047    0.0931176
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5287400   -0.7741914   -0.2832886
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0604593   -0.4947855    0.3738670


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0143644   -0.0274166   -0.0013121
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0266508   -0.0735721    0.0202706
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0096253   -0.1200094    0.1007588
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.0432594   -0.1727854    0.0862665
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0147920   -0.0344019    0.0048180
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0006550   -0.0280579    0.0293680
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0605131   -0.0991063   -0.0219199
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0072078   -0.0365611    0.0221455
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0069242   -0.0129794   -0.0008690
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0574644   -0.0960461   -0.0188827
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0758670   -0.1220849   -0.0296492
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0170881   -0.0242180   -0.0099582
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0285661   -0.0423616   -0.0147706
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0793076   -0.1125005   -0.0461147
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0868400   -0.1547160   -0.0189639
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0836160   -0.1603211   -0.0069109
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0125625   -0.0197176    0.0448426
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0622205   -0.1038447   -0.0205963
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0273868   -0.0569369    0.0021634
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0076400   -0.0119540   -0.0033261
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0927079   -0.1340797   -0.0513362
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0682990   -0.0930723   -0.0435257
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0069373   -0.0129918   -0.0008828
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0205198   -0.0276140   -0.0134256
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0230964   -0.0408817   -0.0053110
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0714640   -0.1093374   -0.0335905
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0548968   -0.1066898   -0.0031038
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0521823   -0.1183268    0.0139623
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0018412   -0.0359843    0.0323019
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0958696   -0.1502500   -0.0414892
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0137850   -0.0409490    0.0133790
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0109752   -0.0230023    0.0010520
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0867020   -0.1279681   -0.0454359
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0120082   -0.0432545    0.0192380
