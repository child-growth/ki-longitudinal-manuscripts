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

agecat      studyid          country                        mbmi             n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     Normal weight     10934   17935  whz              
Birth       JiVitA-3         BANGLADESH                     Underweight        7001   17935  whz              
Birth       MAL-ED           BANGLADESH                     Normal weight       183     209  whz              
Birth       MAL-ED           BANGLADESH                     Underweight          26     209  whz              
Birth       MAL-ED           BRAZIL                         Normal weight        56      61  whz              
Birth       MAL-ED           BRAZIL                         Underweight           5      61  whz              
Birth       MAL-ED           INDIA                          Normal weight        33      41  whz              
Birth       MAL-ED           INDIA                          Underweight           8      41  whz              
Birth       MAL-ED           NEPAL                          Normal weight        26      26  whz              
Birth       MAL-ED           NEPAL                          Underweight           0      26  whz              
Birth       MAL-ED           PERU                           Normal weight       216     221  whz              
Birth       MAL-ED           PERU                           Underweight           5     221  whz              
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        97     100  whz              
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     100  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       107     113  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           6     113  whz              
Birth       NIH-Birth        BANGLADESH                     Normal weight       483     575  whz              
Birth       NIH-Birth        BANGLADESH                     Underweight          92     575  whz              
Birth       NIH-Crypto       BANGLADESH                     Normal weight       639     704  whz              
Birth       NIH-Crypto       BANGLADESH                     Underweight          65     704  whz              
Birth       PROBIT           BELARUS                        Normal weight     13130   13651  whz              
Birth       PROBIT           BELARUS                        Underweight         521   13651  whz              
Birth       PROVIDE          BANGLADESH                     Normal weight       411     510  whz              
Birth       PROVIDE          BANGLADESH                     Underweight          99     510  whz              
Birth       SAS-CompFeed     INDIA                          Normal weight       735     992  whz              
Birth       SAS-CompFeed     INDIA                          Underweight         257     992  whz              
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      8574    9030  whz              
Birth       ZVITAMBO         ZIMBABWE                       Underweight         456    9030  whz              
6 months    JiVitA-3         BANGLADESH                     Normal weight     10303   16733  whz              
6 months    JiVitA-3         BANGLADESH                     Underweight        6430   16733  whz              
6 months    LCNI-5           MALAWI                         Normal weight       691     836  whz              
6 months    LCNI-5           MALAWI                         Underweight         145     836  whz              
6 months    MAL-ED           BANGLADESH                     Normal weight       209     241  whz              
6 months    MAL-ED           BANGLADESH                     Underweight          32     241  whz              
6 months    MAL-ED           BRAZIL                         Normal weight       199     208  whz              
6 months    MAL-ED           BRAZIL                         Underweight           9     208  whz              
6 months    MAL-ED           INDIA                          Normal weight       186     235  whz              
6 months    MAL-ED           INDIA                          Underweight          49     235  whz              
6 months    MAL-ED           NEPAL                          Normal weight       236     236  whz              
6 months    MAL-ED           NEPAL                          Underweight           0     236  whz              
6 months    MAL-ED           PERU                           Normal weight       267     272  whz              
6 months    MAL-ED           PERU                           Underweight           5     272  whz              
6 months    MAL-ED           SOUTH AFRICA                   Normal weight       242     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   Underweight           7     249  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          14     247  whz              
6 months    NIH-Birth        BANGLADESH                     Normal weight       444     537  whz              
6 months    NIH-Birth        BANGLADESH                     Underweight          93     537  whz              
6 months    NIH-Crypto       BANGLADESH                     Normal weight       648     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Underweight          67     715  whz              
6 months    PROBIT           BELARUS                        Normal weight     12518   13023  whz              
6 months    PROBIT           BELARUS                        Underweight         505   13023  whz              
6 months    PROVIDE          BANGLADESH                     Normal weight       497     602  whz              
6 months    PROVIDE          BANGLADESH                     Underweight         105     602  whz              
6 months    SAS-CompFeed     INDIA                          Normal weight       902    1226  whz              
6 months    SAS-CompFeed     INDIA                          Underweight         324    1226  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982  whz              
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253  whz              
6 months    ZVITAMBO         ZIMBABWE                       Underweight         372    7253  whz              
24 months   JiVitA-3         BANGLADESH                     Normal weight      5272    8570  whz              
24 months   JiVitA-3         BANGLADESH                     Underweight        3298    8570  whz              
24 months   LCNI-5           MALAWI                         Normal weight       467     561  whz              
24 months   LCNI-5           MALAWI                         Underweight          94     561  whz              
24 months   MAL-ED           BANGLADESH                     Normal weight       183     212  whz              
24 months   MAL-ED           BANGLADESH                     Underweight          29     212  whz              
24 months   MAL-ED           BRAZIL                         Normal weight       162     168  whz              
24 months   MAL-ED           BRAZIL                         Underweight           6     168  whz              
24 months   MAL-ED           INDIA                          Normal weight       180     226  whz              
24 months   MAL-ED           INDIA                          Underweight          46     226  whz              
24 months   MAL-ED           NEPAL                          Normal weight       228     228  whz              
24 months   MAL-ED           NEPAL                          Underweight           0     228  whz              
24 months   MAL-ED           PERU                           Normal weight       197     201  whz              
24 months   MAL-ED           PERU                           Underweight           4     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   Normal weight       227     234  whz              
24 months   MAL-ED           SOUTH AFRICA                   Underweight           7     234  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          11     214  whz              
24 months   NIH-Birth        BANGLADESH                     Normal weight       348     428  whz              
24 months   NIH-Birth        BANGLADESH                     Underweight          80     428  whz              
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514  whz              
24 months   PROBIT           BELARUS                        Normal weight      3799    3940  whz              
24 months   PROBIT           BELARUS                        Underweight         141    3940  whz              
24 months   PROVIDE          BANGLADESH                     Normal weight       478     578  whz              
24 months   PROVIDE          BANGLADESH                     Underweight         100     578  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       Normal weight       339     366  whz              
24 months   ZVITAMBO         ZIMBABWE                       Underweight          27     366  whz              


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
![](/tmp/db9ac3a2-c6c3-47d4-9a15-d9df2497dbc3/74733080-ea7e-4396-a90c-f123bad6bad0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/db9ac3a2-c6c3-47d4-9a15-d9df2497dbc3/74733080-ea7e-4396-a90c-f123bad6bad0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/db9ac3a2-c6c3-47d4-9a15-d9df2497dbc3/74733080-ea7e-4396-a90c-f123bad6bad0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.7629802   -0.7863216   -0.7396389
Birth       JiVitA-3         BANGLADESH                     Underweight          NA                -0.8022244   -0.8299453   -0.7745035
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.9255935   -1.0848314   -0.7663556
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.1990249   -1.5494582   -0.8485916
Birth       MAL-ED           BRAZIL                         Normal weight        NA                 0.4114286    0.0848121    0.7380451
Birth       MAL-ED           BRAZIL                         Underweight          NA                 0.2940000   -1.0086888    1.5966888
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.9245455   -1.2487999   -0.6002910
Birth       MAL-ED           INDIA                          Underweight          NA                -1.1462500   -1.7084286   -0.5840714
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0281944   -0.1526241    0.0962352
Birth       MAL-ED           PERU                           Underweight          NA                -0.6820000   -1.2614133   -0.1025867
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.7576636    0.5539948    0.9613323
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.7700000    0.2691531    1.2708469
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -1.2897297   -1.3947054   -1.1847540
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.6633768   -1.8733234   -1.4534301
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.2378858   -1.3260362   -1.1497355
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.1837478   -1.4648306   -0.9026650
Birth       PROBIT           BELARUS                        Normal weight        NA                -1.1404080   -1.3509654   -0.9298506
Birth       PROBIT           BELARUS                        Underweight          NA                -1.3240868   -1.6011215   -1.0470521
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -1.2496100   -1.3363372   -1.1628828
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.5561004   -1.7385256   -1.3736751
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.5993547   -0.7761424   -0.4225670
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -0.8766507   -1.1045877   -0.6487138
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4732225   -0.5049678   -0.4414772
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7997365   -0.9393393   -0.6601338
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.5638627   -0.5867827   -0.5409427
6 months    JiVitA-3         BANGLADESH                     Underweight          NA                -0.6388953   -0.6699920   -0.6077987
6 months    LCNI-5           MALAWI                         Normal weight        NA                 0.5316998    0.4534856    0.6099139
6 months    LCNI-5           MALAWI                         Underweight          NA                 0.0954228   -0.0656678    0.2565133
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0571128   -0.1856320    0.0714065
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -0.7685690   -1.2191142   -0.3180239
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    MAL-ED           BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.6104364   -0.7425062   -0.4783666
6 months    MAL-ED           INDIA                          Underweight          NA                -1.1194784   -1.4661125   -0.7728443
6 months    MAL-ED           PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    MAL-ED           PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5241571    0.3888471    0.6594671
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.4771457   -0.1251829    1.0794743
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3825146   -0.4814008   -0.2836285
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -0.7685854   -0.9876310   -0.5495398
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0586381   -0.0239219    0.1411982
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -0.3815821   -0.6929144   -0.0702497
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.5861343    0.5280254    0.6442432
6 months    PROBIT           BELARUS                        Underweight          NA                 0.3886683    0.2523586    0.5249780
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.1093440   -0.1987284   -0.0199596
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -0.6247985   -0.8394266   -0.4101705
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.5743315   -0.7120177   -0.4366453
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -0.8362207   -0.9702569   -0.7021845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0846287    0.0302335    0.1390239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3099541   -0.5233783   -0.0965300
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3154412    0.2873046    0.3435778
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.1003452   -0.2309787    0.0302882
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -1.2745444   -1.3038033   -1.2452855
24 months   JiVitA-3         BANGLADESH                     Underweight          NA                -1.3349706   -1.3715666   -1.2983747
24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0269221   -0.0619656    0.1158098
24 months   LCNI-5           MALAWI                         Underweight          NA                -0.4185937   -0.6103829   -0.2268045
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.7664441   -0.8968988   -0.6359894
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -1.1510822   -1.4805488   -0.8216155
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   MAL-ED           BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.8997476   -1.0237331   -0.7757621
24 months   MAL-ED           INDIA                          Underweight          NA                -1.1775476   -1.4672681   -0.8878271
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0543956   -0.0730055    0.1817968
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3195659   -1.0963456    0.4572138
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8167708   -0.9202488   -0.7132928
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -1.3388234   -1.5960493   -1.0815975
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.5974558   -0.6968936   -0.4980180
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.7805190   -1.0709736   -0.4900643
24 months   PROBIT           BELARUS                        Normal weight        NA                 0.7104599    0.5980914    0.8228284
24 months   PROBIT           BELARUS                        Underweight          NA                 0.3988495   -0.0266546    0.8243536
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.8025156   -0.8918940   -0.7131371
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.3307725   -1.5475641   -1.1139809
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1584918   -1.2717950   -1.0451887
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1710308   -1.6322838   -0.7097779


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
Birth       JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0392441   -0.0726791   -0.0058092
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.2734315   -0.6589554    0.1120925
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.1174286   -1.4604388    1.2255816
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight     -0.2217045   -0.8706928    0.4272837
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.6538056   -1.2464290   -0.0611821
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0123364   -0.5283378    0.5530107
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3736470   -0.6085118   -0.1387823
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight      0.0541380   -0.2406173    0.3488934
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.1836788   -0.3468235   -0.0205341
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.3064903   -0.5085156   -0.1044651
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2772960   -0.4591349   -0.0954572
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3265141   -0.4696521   -0.1833760
6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0750326   -0.1111991   -0.0388662
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.4362770   -0.6154709   -0.2570830
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.7114562   -1.1800867   -0.2428257
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.5090420   -0.8818430   -0.1362410
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0470114   -0.6660062    0.5719834
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3860708   -0.6267136   -0.1454280
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4402202   -0.7622034   -0.1182370
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1974660   -0.3172696   -0.0776623
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5154546   -0.7479701   -0.2829390
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2618892   -0.3644431   -0.1593353
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.3945828   -0.6144005   -0.1747652
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4157864   -0.5493480   -0.2822249
24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0604262   -0.1064884   -0.0143640
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.4455158   -0.6557028   -0.2353287
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.3846381   -0.7392813   -0.0299948
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.2778000   -0.5917896    0.0361896
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.3739616   -1.1627327    0.4148095
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5220526   -0.7994512   -0.2446541
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.1830631   -0.4902697    0.1241434
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.3116104   -0.6910781    0.0678573
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5282570   -0.7626424   -0.2938716
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0125390   -0.4873552    0.4622771


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0151781   -0.0282110   -0.0021452
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0277558   -0.0740166    0.0185050
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0096253   -0.1200094    0.1007588
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.0432594   -0.1727854    0.0862665
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0147920   -0.0344019    0.0048180
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0006550   -0.0280579    0.0293680
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0601920   -0.0986462   -0.0217378
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0055872   -0.0348006    0.0236262
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0068504   -0.0129598   -0.0007410
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0564880   -0.0952036   -0.0177725
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0758670   -0.1220849   -0.0296492
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0173113   -0.0244369   -0.0101857
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0292918   -0.0430844   -0.0154992
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0801447   -0.1133121   -0.0469773
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0805636   -0.1473274   -0.0137997
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0929785   -0.1729951   -0.0129619
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0120642   -0.0206997    0.0448282
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0648892   -0.1072479   -0.0225304
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0288759   -0.0583100    0.0005582
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0076194   -0.0119488   -0.0032899
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0893631   -0.1299593   -0.0487669
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0682990   -0.0930723   -0.0435257
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0071115   -0.0132250   -0.0009979
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0206080   -0.0276866   -0.0135295
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0225198   -0.0402497   -0.0047898
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0737937   -0.1112913   -0.0362961
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0528484   -0.1044079   -0.0012888
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0521772   -0.1176106    0.0132562
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0004019   -0.0346197    0.0354235
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0948083   -0.1489572   -0.0406593
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0128944   -0.0399039    0.0141151
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0113385   -0.0234999    0.0008229
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0889204   -0.1299746   -0.0478663
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0133661   -0.0447266    0.0179944
