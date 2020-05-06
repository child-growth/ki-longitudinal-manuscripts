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

agecat      studyid          country                        mbmi             n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     Normal weight     13720   22355  haz              
Birth       JiVitA-3         BANGLADESH                     Underweight        8635   22355  haz              
Birth       MAL-ED           BANGLADESH                     Normal weight       194     222  haz              
Birth       MAL-ED           BANGLADESH                     Underweight          28     222  haz              
Birth       MAL-ED           BRAZIL                         Normal weight        59      64  haz              
Birth       MAL-ED           BRAZIL                         Underweight           5      64  haz              
Birth       MAL-ED           INDIA                          Normal weight        35      43  haz              
Birth       MAL-ED           INDIA                          Underweight           8      43  haz              
Birth       MAL-ED           NEPAL                          Normal weight        27      27  haz              
Birth       MAL-ED           NEPAL                          Underweight           0      27  haz              
Birth       MAL-ED           PERU                           Normal weight       221     226  haz              
Birth       MAL-ED           PERU                           Underweight           5     226  haz              
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        98     101  haz              
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     101  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       115     122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           7     122  haz              
Birth       NIH-Birth        BANGLADESH                     Normal weight       506     608  haz              
Birth       NIH-Birth        BANGLADESH                     Underweight         102     608  haz              
Birth       NIH-Crypto       BANGLADESH                     Normal weight       663     729  haz              
Birth       NIH-Crypto       BANGLADESH                     Underweight          66     729  haz              
Birth       PROBIT           BELARUS                        Normal weight     13203   13726  haz              
Birth       PROBIT           BELARUS                        Underweight         523   13726  haz              
Birth       PROVIDE          BANGLADESH                     Normal weight       418     517  haz              
Birth       PROVIDE          BANGLADESH                     Underweight          99     517  haz              
Birth       SAS-CompFeed     INDIA                          Normal weight       830    1135  haz              
Birth       SAS-CompFeed     INDIA                          Underweight         305    1135  haz              
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      9162    9672  haz              
Birth       ZVITAMBO         ZIMBABWE                       Underweight         510    9672  haz              
6 months    JiVitA-3         BANGLADESH                     Normal weight     10311   16760  haz              
6 months    JiVitA-3         BANGLADESH                     Underweight        6449   16760  haz              
6 months    LCNI-5           MALAWI                         Normal weight       691     836  haz              
6 months    LCNI-5           MALAWI                         Underweight         145     836  haz              
6 months    MAL-ED           BANGLADESH                     Normal weight       209     241  haz              
6 months    MAL-ED           BANGLADESH                     Underweight          32     241  haz              
6 months    MAL-ED           BRAZIL                         Normal weight       199     208  haz              
6 months    MAL-ED           BRAZIL                         Underweight           9     208  haz              
6 months    MAL-ED           INDIA                          Normal weight       186     235  haz              
6 months    MAL-ED           INDIA                          Underweight          49     235  haz              
6 months    MAL-ED           NEPAL                          Normal weight       236     236  haz              
6 months    MAL-ED           NEPAL                          Underweight           0     236  haz              
6 months    MAL-ED           PERU                           Normal weight       267     272  haz              
6 months    MAL-ED           PERU                           Underweight           5     272  haz              
6 months    MAL-ED           SOUTH AFRICA                   Normal weight       242     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   Underweight           7     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          14     247  haz              
6 months    NIH-Birth        BANGLADESH                     Normal weight       444     537  haz              
6 months    NIH-Birth        BANGLADESH                     Underweight          93     537  haz              
6 months    NIH-Crypto       BANGLADESH                     Normal weight       648     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Underweight          67     715  haz              
6 months    PROBIT           BELARUS                        Normal weight     12520   13025  haz              
6 months    PROBIT           BELARUS                        Underweight         505   13025  haz              
6 months    PROVIDE          BANGLADESH                     Normal weight       498     603  haz              
6 months    PROVIDE          BANGLADESH                     Underweight         105     603  haz              
6 months    SAS-CompFeed     INDIA                          Normal weight       904    1228  haz              
6 months    SAS-CompFeed     INDIA                          Underweight         324    1228  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983  haz              
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375  haz              
6 months    ZVITAMBO         ZIMBABWE                       Underweight         376    7375  haz              
24 months   JiVitA-3         BANGLADESH                     Normal weight      5289    8599  haz              
24 months   JiVitA-3         BANGLADESH                     Underweight        3310    8599  haz              
24 months   LCNI-5           MALAWI                         Normal weight       482     577  haz              
24 months   LCNI-5           MALAWI                         Underweight          95     577  haz              
24 months   MAL-ED           BANGLADESH                     Normal weight       183     212  haz              
24 months   MAL-ED           BANGLADESH                     Underweight          29     212  haz              
24 months   MAL-ED           BRAZIL                         Normal weight       162     168  haz              
24 months   MAL-ED           BRAZIL                         Underweight           6     168  haz              
24 months   MAL-ED           INDIA                          Normal weight       180     226  haz              
24 months   MAL-ED           INDIA                          Underweight          46     226  haz              
24 months   MAL-ED           NEPAL                          Normal weight       228     228  haz              
24 months   MAL-ED           NEPAL                          Underweight           0     228  haz              
24 months   MAL-ED           PERU                           Normal weight       197     201  haz              
24 months   MAL-ED           PERU                           Underweight           4     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   Normal weight       227     234  haz              
24 months   MAL-ED           SOUTH AFRICA                   Underweight           7     234  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          11     214  haz              
24 months   NIH-Birth        BANGLADESH                     Normal weight       349     429  haz              
24 months   NIH-Birth        BANGLADESH                     Underweight          80     429  haz              
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514  haz              
24 months   PROBIT           BELARUS                        Normal weight      3863    4005  haz              
24 months   PROBIT           BELARUS                        Underweight         142    4005  haz              
24 months   PROVIDE          BANGLADESH                     Normal weight       477     577  haz              
24 months   PROVIDE          BANGLADESH                     Underweight         100     577  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373  haz              
24 months   ZVITAMBO         ZIMBABWE                       Underweight          61    1373  haz              


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
![](/tmp/3c22fbb4-ec0f-4a67-ba08-9ad5e1ef2191/21ee1171-99d1-4941-a22b-9a1f658d16e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3c22fbb4-ec0f-4a67-ba08-9ad5e1ef2191/21ee1171-99d1-4941-a22b-9a1f658d16e9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3c22fbb4-ec0f-4a67-ba08-9ad5e1ef2191/21ee1171-99d1-4941-a22b-9a1f658d16e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -1.6165624   -1.6397188   -1.5934060
Birth       JiVitA-3         BANGLADESH                     Underweight          NA                -1.5460985   -1.5743973   -1.5177998
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -1.0560733   -1.2028232   -0.9093234
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.1933572   -1.5209343   -0.8657801
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.6249153   -0.9137560   -0.3360745
Birth       MAL-ED           BRAZIL                         Underweight          NA                -1.4380000   -2.2732876   -0.6027124
Birth       MAL-ED           INDIA                          Normal weight        NA                -1.2745714   -1.6299983   -0.9191446
Birth       MAL-ED           INDIA                          Underweight          NA                -1.0362500   -1.6020040   -0.4704960
Birth       MAL-ED           PERU                           Normal weight        NA                -0.8869683   -1.0065725   -0.7673641
Birth       MAL-ED           PERU                           Underweight          NA                -1.7080000   -2.3409322   -1.0750678
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.0913043   -1.3056634   -0.8769453
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.8785714   -2.8008825   -0.9562603
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8669099   -0.9623766   -0.7714431
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.2092137   -1.4398780   -0.9785495
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.8902288   -0.9664433   -0.8140143
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.1073059   -1.3255840   -0.8890278
Birth       PROBIT           BELARUS                        Normal weight        NA                 1.3232747    1.1631267    1.4834228
Birth       PROBIT           BELARUS                        Underweight          NA                 0.9690618    0.7745284    1.1635953
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.8413859   -0.9266412   -0.7561307
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.1288386   -1.3017096   -0.9559676
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -1.3733276   -1.4687330   -1.2779222
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -1.6367608   -1.7433420   -1.5301795
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4608098   -0.4858737   -0.4357459
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7775873   -0.8974500   -0.6577245
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -1.3576537   -1.3845029   -1.3308045
6 months    JiVitA-3         BANGLADESH                     Underweight          NA                -1.2454361   -1.2760266   -1.2148455
6 months    LCNI-5           MALAWI                         Normal weight        NA                -1.6438897   -1.7219978   -1.5657817
6 months    LCNI-5           MALAWI                         Underweight          NA                -1.7182564   -1.8785336   -1.5579793
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -1.1712660   -1.2961242   -1.0464078
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -1.4296244   -1.7278456   -1.1314033
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    MAL-ED           BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    MAL-ED           INDIA                          Normal weight        NA                -1.1960102   -1.3306032   -1.0614172
6 months    MAL-ED           INDIA                          Underweight          NA                -1.2156122   -1.4987278   -0.9324967
6 months    MAL-ED           PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    MAL-ED           PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3528774   -1.4769494   -1.2288053
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.5939309   -2.2378404   -0.9500214
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3517878   -1.4469199   -1.2566556
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -1.6331896   -1.8718904   -1.3944889
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.1605198   -1.2345263   -1.0865133
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -1.5982207   -1.8536252   -1.3428162
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.1132753    0.0234172    0.2031333
6 months    PROBIT           BELARUS                        Underweight          NA                -0.0233026   -0.2045491    0.1579439
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -1.0501244   -1.1325533   -0.9676956
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -1.3136082   -1.4926921   -1.1345243
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -1.3505682   -1.4534104   -1.2477259
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -1.5790690   -1.7226816   -1.4354564
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5380893   -0.5883836   -0.4877950
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.7098291   -0.9728848   -0.4467735
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8682481   -0.8964307   -0.8400655
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1112050   -1.2357514   -0.9866586
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -2.0587574   -2.0925692   -2.0249455
24 months   JiVitA-3         BANGLADESH                     Underweight          NA                -1.9420547   -1.9818163   -1.9022931
24 months   LCNI-5           MALAWI                         Normal weight        NA                -1.8556076   -1.9442329   -1.7669823
24 months   LCNI-5           MALAWI                         Underweight          NA                -1.9444000   -2.1517833   -1.7370167
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -1.9073099   -2.0387174   -1.7759025
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -2.4211607   -2.7927166   -2.0496048
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   MAL-ED           BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   MAL-ED           INDIA                          Normal weight        NA                -1.8658809   -2.0068279   -1.7249338
24 months   MAL-ED           INDIA                          Underweight          NA                -1.8578180   -2.1321364   -1.5834995
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6416623   -2.7803408   -2.5029838
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.7391023   -3.4056583   -2.0725464
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1304295   -2.2432625   -2.0175966
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -2.5924949   -2.8187580   -2.3662319
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.4063556   -1.4929716   -1.3197397
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -1.8311480   -2.1442009   -1.5180950
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.1433200   -0.4293742    0.1427341
24 months   PROBIT           BELARUS                        Underweight          NA                -0.1952021   -0.6769714    0.2865673
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -1.5313492   -1.6208810   -1.4418174
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -2.0046954   -2.2320896   -1.7773013
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.5991465   -1.6627238   -1.5355692
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.6726438   -1.9874541   -1.3578334


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5893196   -1.6086080   -1.5700313
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        NA                   NA                 1.3118585    1.1523374    1.4713797
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4438150   -1.5337502   -1.3538797
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4764413   -0.5009156   -0.4519670
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3140048   -1.3371141   -1.2908955
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1076224    0.0168411    0.1984037
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8800508   -0.9074511   -0.8526506
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0137632   -2.0415122   -1.9860142
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1444149   -0.4258602    0.1370304
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5983212   -1.6605141   -1.5361283


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.0704638    0.0372563    0.1036714
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.1372839   -0.4968358    0.2222680
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.8130847   -1.6969028    0.0707333
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight      0.2383214   -0.4298147    0.9064576
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.8210317   -1.4651655   -0.1768979
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.7872671   -1.7341607    0.1596266
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3423039   -0.5922006   -0.0924072
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.2170771   -0.4474053    0.0132510
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.3542129   -0.4925365   -0.2158893
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2874527   -0.4804928   -0.0944125
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2634332   -0.3385645   -0.1883018
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3167774   -0.4391873   -0.1943676
6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.1122176    0.0787576    0.1456777
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.0743667   -0.2528064    0.1040730
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.2583584   -0.5811148    0.0643979
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.0196020   -0.3342579    0.2950540
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.2410535   -0.8970403    0.4149332
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.2814019   -0.5362122   -0.0265915
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4377009   -0.7038202   -0.1715815
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1365779   -0.2744492    0.0012934
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2634838   -0.4608433   -0.0661242
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2285009   -0.3848254   -0.0721763
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1717398   -0.4395308    0.0960511
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2429569   -0.3706585   -0.1152552
24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.1167027    0.0689143    0.1644911
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.0887924   -0.3147772    0.1371925
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.5138508   -0.9089965   -0.1187050
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight      0.0080629   -0.3019775    0.3181033
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0974400   -0.7774931    0.5826130
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4620654   -0.7137730   -0.2103578
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4247924   -0.7501574   -0.0994274
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.0518820   -0.5368271    0.4330630
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.4733463   -0.7175430   -0.2291496
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0734973   -0.3946429    0.2476483


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0272427    0.0144820    0.0400035
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0218096   -0.0664012    0.0227821
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0635222   -0.1511062    0.0240617
Birth       MAL-ED           INDIA                          Normal weight        NA                 0.0443389   -0.0830905    0.1717683
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0181644   -0.0407101    0.0043812
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0451711   -0.1085427    0.0182006
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0641099   -0.1066432   -0.0215765
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0186875   -0.0396546    0.0022795
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0114162   -0.0162601   -0.0065723
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0511286   -0.0879377   -0.0143195
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0704874   -0.0930202   -0.0479546
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0156315   -0.0216934   -0.0095695
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0436489    0.0308349    0.0564629
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0138854   -0.0437239    0.0159531
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0337271   -0.0781603    0.0107061
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0099472   -0.0730013    0.0531069
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0158676   -0.0514927    0.0197575
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0555943   -0.0976389   -0.0135497
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0381585   -0.0646183   -0.0116987
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0056529   -0.0109969   -0.0003089
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0394057   -0.0723486   -0.0064628
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0563211   -0.0974013   -0.0152409
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0024818   -0.0086944    0.0037308
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0118027   -0.0180782   -0.0055273
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0449941    0.0264362    0.0635520
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0295744   -0.0665395    0.0073907
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0710863   -0.1282230   -0.0139496
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0185882   -0.0827546    0.0455782
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0038985   -0.0368474    0.0290505
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0886284   -0.1377015   -0.0395552
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0349090   -0.0628006   -0.0070174
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0010949   -0.0178304    0.0156407
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0689108   -0.1096644   -0.0281572
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0008253   -0.0129864    0.0146371
