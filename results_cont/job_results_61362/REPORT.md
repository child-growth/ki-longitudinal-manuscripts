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
![](/tmp/1f834830-0f8d-4890-8025-01d8f7aea462/eab6d26f-2f46-4a4a-b8ce-257f0d7d4ce2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1f834830-0f8d-4890-8025-01d8f7aea462/eab6d26f-2f46-4a4a-b8ce-257f0d7d4ce2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1f834830-0f8d-4890-8025-01d8f7aea462/eab6d26f-2f46-4a4a-b8ce-257f0d7d4ce2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -1.6165577   -1.6397412   -1.5933743
Birth       JiVitA-3         BANGLADESH                     Underweight          NA                -1.5462821   -1.5744324   -1.5181317
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -1.0540900   -1.2009445   -0.9072355
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.1297619   -1.4674788   -0.7920450
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.6249153   -0.9137560   -0.3360745
Birth       MAL-ED           BRAZIL                         Underweight          NA                -1.4380000   -2.2732876   -0.6027124
Birth       MAL-ED           INDIA                          Normal weight        NA                -1.2745714   -1.6299983   -0.9191446
Birth       MAL-ED           INDIA                          Underweight          NA                -1.0362500   -1.6020040   -0.4704960
Birth       MAL-ED           PERU                           Normal weight        NA                -0.8869683   -1.0065725   -0.7673641
Birth       MAL-ED           PERU                           Underweight          NA                -1.7080000   -2.3409322   -1.0750678
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.0913043   -1.3056634   -0.8769453
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.8785714   -2.8008825   -0.9562603
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8668952   -0.9624106   -0.7713799
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.2239141   -1.4535291   -0.9942991
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.8878172   -0.9640065   -0.8116279
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.1375005   -1.3644115   -0.9105894
Birth       PROBIT           BELARUS                        Normal weight        NA                 1.3234336    1.1631651    1.4837020
Birth       PROBIT           BELARUS                        Underweight          NA                 0.9642530    0.7796850    1.1488210
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.8380201   -0.9228375   -0.7532028
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.1216399   -1.2996459   -0.9436339
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -1.3733276   -1.4687330   -1.2779222
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -1.6367608   -1.7433420   -1.5301795
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4611058   -0.4861630   -0.4360486
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7690033   -0.8891744   -0.6488321
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -1.3581076   -1.3849181   -1.3312971
6 months    JiVitA-3         BANGLADESH                     Underweight          NA                -1.2446252   -1.2750569   -1.2141935
6 months    LCNI-5           MALAWI                         Normal weight        NA                -1.6436094   -1.7218132   -1.5654057
6 months    LCNI-5           MALAWI                         Underweight          NA                -1.7163335   -1.8799536   -1.5527133
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -1.1719501   -1.2972021   -1.0466981
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -1.5048156   -1.8090389   -1.2005924
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    MAL-ED           BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    MAL-ED           INDIA                          Normal weight        NA                -1.1981162   -1.3313812   -1.0648513
6 months    MAL-ED           INDIA                          Underweight          NA                -1.2346416   -1.5020608   -0.9672224
6 months    MAL-ED           PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    MAL-ED           PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3531579   -1.4771546   -1.2291613
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.3667431   -2.0188833   -0.7146029
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3508188   -1.4458468   -1.2557909
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -1.6698829   -1.9052513   -1.4345145
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.1601375   -1.2341475   -1.0861274
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -1.5600562   -1.8047912   -1.3153211
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.1131695    0.0233627    0.2029763
6 months    PROBIT           BELARUS                        Underweight          NA                -0.0299780   -0.2172531    0.1572970
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -1.0446814   -1.1284024   -0.9609604
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -1.3283823   -1.4982320   -1.1585325
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -1.3505682   -1.4534104   -1.2477259
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -1.5790690   -1.7226816   -1.4354564
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5378475   -0.5881229   -0.4875721
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.6943795   -0.9431587   -0.4456003
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8683495   -0.8965329   -0.8401662
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1048089   -1.2302174   -0.9794003
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -2.0587683   -2.0925517   -2.0249849
24 months   JiVitA-3         BANGLADESH                     Underweight          NA                -1.9426860   -1.9824625   -1.9029096
24 months   LCNI-5           MALAWI                         Normal weight        NA                -1.8559157   -1.9448791   -1.7669523
24 months   LCNI-5           MALAWI                         Underweight          NA                -1.9577452   -2.1663947   -1.7490956
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -1.9143154   -2.0449468   -1.7836841
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -2.4071992   -2.7890328   -2.0253656
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   MAL-ED           BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   MAL-ED           INDIA                          Normal weight        NA                -1.8709576   -2.0114052   -1.7305100
24 months   MAL-ED           INDIA                          Underweight          NA                -1.9372204   -2.2195346   -1.6549062
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6439336   -2.7826574   -2.5052098
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.7035981   -3.3922910   -2.0149053
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1387662   -2.2520904   -2.0254420
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -2.5382239   -2.7604392   -2.3160087
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.4028731   -1.4894930   -1.3162533
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -1.8582326   -2.1600807   -1.5563845
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.1427916   -0.4282054    0.1426221
24 months   PROBIT           BELARUS                        Underweight          NA                -0.2051698   -0.6880845    0.2777448
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -1.5281002   -1.6175309   -1.4386695
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.9600101   -2.1744486   -1.7455715
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.5989426   -1.6625397   -1.5353456
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.6861555   -2.0018086   -1.3705023


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
Birth       JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.0702757    0.0371080    0.1034433
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.0756718   -0.4449957    0.2936521
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.8130847   -1.6969028    0.0707333
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight      0.2383214   -0.4298147    0.9064576
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.8210317   -1.4651655   -0.1768979
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.7872671   -1.7341607    0.1596266
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3570188   -0.6055180   -0.1085197
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.2496833   -0.4883320   -0.0110346
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.3591806   -0.4920158   -0.2263454
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2836198   -0.4808485   -0.0863910
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2634332   -0.3385645   -0.1883018
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3078974   -0.4306085   -0.1851863
6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.1134825    0.0802882    0.1466767
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.0727241   -0.2550670    0.1096189
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.3328655   -0.6625229   -0.0032082
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.0365254   -0.3359214    0.2628707
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0135852   -0.6784274    0.6512570
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3190640   -0.5728145   -0.0653136
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.3999187   -0.6556726   -0.1441648
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1431476   -0.2877355    0.0014404
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2837009   -0.4732826   -0.0941191
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2285009   -0.3848254   -0.0721763
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1565320   -0.4101550    0.0970910
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2364593   -0.3650061   -0.1079126
24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.1160823    0.0682226    0.1639419
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.1018295   -0.3287211    0.1250621
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.4928838   -0.8965366   -0.0892309
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.0662628   -0.3820159    0.2494903
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0596645   -0.7617914    0.6424624
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3994577   -0.6474710   -0.1514444
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4553595   -0.7695861   -0.1411330
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.0623782   -0.5351430    0.4103866
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.4319099   -0.6636524   -0.2001673
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0872129   -0.4093787    0.2349529


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0272381    0.0144583    0.0400180
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0237928   -0.0695269    0.0219412
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0635222   -0.1511062    0.0240617
Birth       MAL-ED           INDIA                          Normal weight        NA                 0.0443389   -0.0830905    0.1717683
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0181644   -0.0407101    0.0043812
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0451711   -0.1085427    0.0182006
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0641245   -0.1062780   -0.0219710
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0210991   -0.0419963   -0.0002019
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0115751   -0.0163787   -0.0067715
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0544944   -0.0915914   -0.0173974
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0704874   -0.0930202   -0.0479546
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0153355   -0.0213949   -0.0092760
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0441028    0.0312782    0.0569275
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0141657   -0.0446397    0.0163083
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0330430   -0.0779545    0.0118684
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0078412   -0.0695859    0.0539034
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0155870   -0.0509694    0.0197954
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0565632   -0.1000417   -0.0130848
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0385409   -0.0649869   -0.0120948
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0055471   -0.0109193   -0.0001750
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0448487   -0.0776947   -0.0120028
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0563211   -0.0974013   -0.0152409
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0027236   -0.0090018    0.0035546
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0117013   -0.0179981   -0.0054046
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0450051    0.0264452    0.0635650
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0292663   -0.0660205    0.0074879
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0640808   -0.1208379   -0.0073237
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0135114   -0.0767224    0.0496996
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0016271   -0.0349706    0.0317163
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0802917   -0.1290353   -0.0315481
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0383915   -0.0659541   -0.0108288
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0016233   -0.0178388    0.0145923
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0721598   -0.1124772   -0.0318423
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0006214   -0.0134044    0.0146472
