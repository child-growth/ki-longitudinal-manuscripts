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
![](/tmp/50943aef-1808-4a76-a3c5-d4663d59cca3/4a1d5a78-8899-4236-b3f6-34cf2ad33534/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/50943aef-1808-4a76-a3c5-d4663d59cca3/4a1d5a78-8899-4236-b3f6-34cf2ad33534/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/50943aef-1808-4a76-a3c5-d4663d59cca3/4a1d5a78-8899-4236-b3f6-34cf2ad33534/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.7632230   -0.7865494   -0.7398967
Birth       JiVitA-3         BANGLADESH                     Underweight          NA                -0.8014229   -0.8290590   -0.7737868
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.9275650   -1.0867908   -0.7683393
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.1551766   -1.4870324   -0.8233207
Birth       MAL-ED           BRAZIL                         Normal weight        NA                 0.4114286    0.0848121    0.7380451
Birth       MAL-ED           BRAZIL                         Underweight          NA                 0.2940000   -1.0086888    1.5966888
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.9245455   -1.2487999   -0.6002910
Birth       MAL-ED           INDIA                          Underweight          NA                -1.1462500   -1.7084286   -0.5840714
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0281944   -0.1526241    0.0962352
Birth       MAL-ED           PERU                           Underweight          NA                -0.6820000   -1.2614133   -0.1025867
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.7576636    0.5539948    0.9613323
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.7700000    0.2691531    1.2708469
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -1.2901484   -1.3949541   -1.1853426
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.6610996   -1.8723347   -1.4498645
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.2392571   -1.3277775   -1.1507366
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.1916758   -1.4710544   -0.9122972
Birth       PROBIT           BELARUS                        Normal weight        NA                -1.1406757   -1.3511730   -0.9301784
Birth       PROBIT           BELARUS                        Underweight          NA                -1.3086906   -1.5796118   -1.0377695
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -1.2516112   -1.3384955   -1.1647269
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.5498247   -1.7317118   -1.3679375
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.5993547   -0.7761424   -0.4225670
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -0.8766507   -1.1045877   -0.6487138
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4729725   -0.5047157   -0.4412294
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.8119567   -0.9536196   -0.6702938
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.5640071   -0.5869296   -0.5410846
6 months    JiVitA-3         BANGLADESH                     Underweight          NA                -0.6391874   -0.6701908   -0.6081839
6 months    LCNI-5           MALAWI                         Normal weight        NA                 0.5304780    0.4523008    0.6086552
6 months    LCNI-5           MALAWI                         Underweight          NA                 0.0556132   -0.1044100    0.2156364
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0531732   -0.1817163    0.0753699
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -0.6482628   -1.0938642   -0.2026614
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    MAL-ED           BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.6177904   -0.7505271   -0.4850536
6 months    MAL-ED           INDIA                          Underweight          NA                -1.0289745   -1.3672087   -0.6907403
6 months    MAL-ED           PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    MAL-ED           PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5219845    0.3868307    0.6571384
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.5621357   -0.0201664    1.1444378
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3792151   -0.4781275   -0.2803026
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -0.7660298   -0.9813064   -0.5507533
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0577795   -0.0247221    0.1402811
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -0.3820710   -0.6807657   -0.0833763
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.5861266    0.5280363    0.6442169
6 months    PROBIT           BELARUS                        Underweight          NA                 0.3884576    0.2558527    0.5210626
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.1086643   -0.1982206   -0.0191080
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -0.6259620   -0.8357199   -0.4162041
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.5743315   -0.7120177   -0.4366453
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -0.8362207   -0.9702569   -0.7021845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0846969    0.0302152    0.1391787
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.3485613   -0.5487277   -0.1483949
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3155983    0.2874645    0.3437321
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0991393   -0.2382043    0.0399257
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -1.2742663   -1.3035832   -1.2449494
24 months   JiVitA-3         BANGLADESH                     Underweight          NA                -1.3338867   -1.3706023   -1.2971711
24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0338249   -0.0551326    0.1227823
24 months   LCNI-5           MALAWI                         Underweight          NA                -0.4243297   -0.6137452   -0.2349142
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.7647271   -0.8948954   -0.6345588
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -1.1400295   -1.4670915   -0.8129675
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   MAL-ED           BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.8991859   -1.0230833   -0.7752885
24 months   MAL-ED           INDIA                          Underweight          NA                -1.1636108   -1.4545210   -0.8727006
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0522566   -0.0751896    0.1797027
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0737586   -0.6262209    0.7737382
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8179022   -0.9212406   -0.7145639
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -1.3402612   -1.5950008   -1.0855217
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.5980661   -0.6971281   -0.4990040
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.7927642   -1.1135659   -0.4719626
24 months   PROBIT           BELARUS                        Normal weight        NA                 0.7101142    0.5975529    0.8226755
24 months   PROBIT           BELARUS                        Underweight          NA                 0.4330895    0.0135369    0.8526421
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.8007053   -0.8902571   -0.7111534
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.3425446   -1.5555914   -1.1294978
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1609795   -1.2743644   -1.0475946
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.2241368   -1.6425066   -0.8057670


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
Birth       JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0381998   -0.0715197   -0.0048799
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.2276115   -0.5962503    0.1410272
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.1174286   -1.4604388    1.2255816
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight     -0.2217045   -0.8706928    0.4272837
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.6538056   -1.2464290   -0.0611821
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0123364   -0.5283378    0.5530107
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3709512   -0.6068273   -0.1350751
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight      0.0475813   -0.2462173    0.3413799
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.1680149   -0.3243426   -0.0116872
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2982135   -0.5000602   -0.0963668
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2772960   -0.4591349   -0.0954572
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3389842   -0.4841668   -0.1938016
6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0751802   -0.1112801   -0.0390803
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.4748648   -0.6530070   -0.2967226
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.5950896   -1.0588335   -0.1313457
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.4111841   -0.7758749   -0.0464933
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0401512   -0.5587201    0.6390224
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3868148   -0.6234694   -0.1501601
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4398504   -0.7496617   -0.1300392
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1976689   -0.3138188   -0.0815191
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5172976   -0.7453003   -0.2892950
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2618892   -0.3644431   -0.1593353
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.4332582   -0.6402152   -0.2263013
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4147376   -0.5565652   -0.2729100
24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight     -0.0596204   -0.1058492   -0.0133916
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.4581546   -0.6661281   -0.2501811
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.3753024   -0.7274380   -0.0231668
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.2644249   -0.5813074    0.0524576
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0215021   -0.6909198    0.7339239
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5223590   -0.7972614   -0.2474565
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.1946982   -0.5307526    0.1413563
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.2770248   -0.6497940    0.0957445
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.5418393   -0.7728417   -0.3108370
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0631573   -0.4969125    0.3705980


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0149353   -0.0279278   -0.0019428
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0257842   -0.0720282    0.0204597
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0096253   -0.1200094    0.1007588
Birth       MAL-ED           INDIA                          Normal weight        NA                -0.0432594   -0.1727854    0.0862665
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0147920   -0.0344019    0.0048180
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0006550   -0.0280579    0.0293680
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0597734   -0.0981379   -0.0214088
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0042160   -0.0339487    0.0255168
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0065827   -0.0126445   -0.0005209
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0544869   -0.0927560   -0.0162177
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0758670   -0.1220849   -0.0296492
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0175612   -0.0247097   -0.0104128
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0291474   -0.0429805   -0.0153144
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0789230   -0.1122440   -0.0456019
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0845032   -0.1515545   -0.0174518
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0856245   -0.1634635   -0.0077856
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0142368   -0.0186803    0.0471539
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0681887   -0.1101584   -0.0262191
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0280172   -0.0572675    0.0012330
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0076116   -0.0119758   -0.0032475
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0900428   -0.1308282   -0.0492573
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0682990   -0.0930723   -0.0435257
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0071797   -0.0132664   -0.0010930
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0207651   -0.0278496   -0.0136806
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -0.0227979   -0.0405569   -0.0050389
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0806965   -0.1185528   -0.0428403
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0545654   -0.1063143   -0.0028165
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0527389   -0.1193708    0.0138930
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0025410   -0.0322159    0.0372978
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0936768   -0.1477349   -0.0396187
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0122841   -0.0390146    0.0144463
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0109928   -0.0231050    0.0011194
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0907307   -0.1315918   -0.0498696
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0108784   -0.0419981    0.0202413
