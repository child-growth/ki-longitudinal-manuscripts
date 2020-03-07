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

agecat      studyid          country                        mbmi             n_cell       n
----------  ---------------  -----------------------------  --------------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight     13720   22355
Birth       JiVitA-3         BANGLADESH                     Underweight        8635   22355
Birth       MAL-ED           BANGLADESH                     Normal weight       194     222
Birth       MAL-ED           BANGLADESH                     Underweight          28     222
Birth       MAL-ED           BRAZIL                         Normal weight        59      64
Birth       MAL-ED           BRAZIL                         Underweight           5      64
Birth       MAL-ED           INDIA                          Normal weight        35      43
Birth       MAL-ED           INDIA                          Underweight           8      43
Birth       MAL-ED           NEPAL                          Normal weight        27      27
Birth       MAL-ED           NEPAL                          Underweight           0      27
Birth       MAL-ED           PERU                           Normal weight       221     226
Birth       MAL-ED           PERU                           Underweight           5     226
Birth       MAL-ED           SOUTH AFRICA                   Normal weight        98     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight           3     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       115     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight           7     122
Birth       NIH-Birth        BANGLADESH                     Normal weight       506     608
Birth       NIH-Birth        BANGLADESH                     Underweight         102     608
Birth       NIH-Crypto       BANGLADESH                     Normal weight       663     729
Birth       NIH-Crypto       BANGLADESH                     Underweight          66     729
Birth       PROBIT           BELARUS                        Normal weight     13203   13726
Birth       PROBIT           BELARUS                        Underweight         523   13726
Birth       PROVIDE          BANGLADESH                     Normal weight       418     517
Birth       PROVIDE          BANGLADESH                     Underweight          99     517
Birth       SAS-CompFeed     INDIA                          Normal weight       830    1135
Birth       SAS-CompFeed     INDIA                          Underweight         305    1135
Birth       ZVITAMBO         ZIMBABWE                       Normal weight      9162    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight         510    9672
6 months    JiVitA-3         BANGLADESH                     Normal weight     10311   16760
6 months    JiVitA-3         BANGLADESH                     Underweight        6449   16760
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
6 months    PROBIT           BELARUS                        Normal weight     12520   13025
6 months    PROBIT           BELARUS                        Underweight         505   13025
6 months    PROVIDE          BANGLADESH                     Normal weight       498     603
6 months    PROVIDE          BANGLADESH                     Underweight         105     603
6 months    SAS-CompFeed     INDIA                          Normal weight       904    1228
6 months    SAS-CompFeed     INDIA                          Underweight         324    1228
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight         376    7375
24 months   JiVitA-3         BANGLADESH                     Normal weight      5289    8599
24 months   JiVitA-3         BANGLADESH                     Underweight        3310    8599
24 months   LCNI-5           MALAWI                         Normal weight       482     577
24 months   LCNI-5           MALAWI                         Underweight          95     577
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
24 months   NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3863    4005
24 months   PROBIT           BELARUS                        Underweight         142    4005
24 months   PROVIDE          BANGLADESH                     Normal weight       477     577
24 months   PROVIDE          BANGLADESH                     Underweight         100     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight          61    1373


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
![](/tmp/9ffcbb7f-ba7e-4902-9c40-d0f36d0b598d/e19a4607-a5c7-4383-aca8-4cf9ba2a1e41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9ffcbb7f-ba7e-4902-9c40-d0f36d0b598d/e19a4607-a5c7-4383-aca8-4cf9ba2a1e41/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9ffcbb7f-ba7e-4902-9c40-d0f36d0b598d/e19a4607-a5c7-4383-aca8-4cf9ba2a1e41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                -1.6172169   -1.6403402   -1.5940936
Birth       JiVitA-3         BANGLADESH                     Underweight          NA                -1.5454260   -1.5734714   -1.5173805
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -1.0567234   -1.2032109   -0.9102359
Birth       MAL-ED           BANGLADESH                     Underweight          NA                -1.1932758   -1.5633616   -0.8231899
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.6249153   -0.9137560   -0.3360745
Birth       MAL-ED           BRAZIL                         Underweight          NA                -1.4380000   -2.2732876   -0.6027124
Birth       MAL-ED           INDIA                          Normal weight        NA                -1.2745714   -1.6299983   -0.9191446
Birth       MAL-ED           INDIA                          Underweight          NA                -1.0362500   -1.6020040   -0.4704960
Birth       MAL-ED           PERU                           Normal weight        NA                -0.8869683   -1.0065725   -0.7673641
Birth       MAL-ED           PERU                           Underweight          NA                -1.7080000   -2.3409322   -1.0750678
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.0913043   -1.3056634   -0.8769453
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.8785714   -2.8008825   -0.9562603
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8643877   -0.9593084   -0.7694670
Birth       NIH-Birth        BANGLADESH                     Underweight          NA                -1.2471283   -1.4799507   -1.0143059
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.8875805   -0.9637552   -0.8114059
Birth       NIH-Crypto       BANGLADESH                     Underweight          NA                -1.1537762   -1.3748865   -0.9326659
Birth       PROBIT           BELARUS                        Normal weight        NA                 1.3231639    1.1630562    1.4832717
Birth       PROBIT           BELARUS                        Underweight          NA                 0.9721589    0.7858457    1.1584721
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.8432235   -0.9279785   -0.7584686
Birth       PROVIDE          BANGLADESH                     Underweight          NA                -1.1224848   -1.2987248   -0.9462448
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -1.3733276   -1.4687330   -1.2779222
Birth       SAS-CompFeed     INDIA                          Underweight          NA                -1.6367608   -1.7433420   -1.5301795
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4610391   -0.4861056   -0.4359727
Birth       ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7670019   -0.8854531   -0.6485506
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                -1.3575322   -1.3843552   -1.3307092
6 months    JiVitA-3         BANGLADESH                     Underweight          NA                -1.2450996   -1.2756419   -1.2145572
6 months    LCNI-5           MALAWI                         Normal weight        NA                -1.6461262   -1.7246144   -1.5676379
6 months    LCNI-5           MALAWI                         Underweight          NA                -1.7037688   -1.8618393   -1.5456983
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -1.1674523   -1.2930335   -1.0418712
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -1.4590591   -1.7638998   -1.1542184
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    MAL-ED           BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    MAL-ED           INDIA                          Normal weight        NA                -1.1938530   -1.3270600   -1.0606459
6 months    MAL-ED           INDIA                          Underweight          NA                -1.2406280   -1.5091220   -0.9721340
6 months    MAL-ED           PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    MAL-ED           PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3525388   -1.4765475   -1.2285300
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.2497368   -1.9382649   -0.5612087
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3480036   -1.4430294   -1.2529778
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -1.6986445   -1.9369742   -1.4603147
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.1605401   -1.2346389   -1.0864414
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -1.5829709   -1.8534767   -1.3124650
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.1134514    0.0235321    0.2033707
6 months    PROBIT           BELARUS                        Underweight          NA                -0.0418949   -0.2250495    0.1412598
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -1.0479668   -1.1308914   -0.9650423
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -1.3067623   -1.4769712   -1.1365533
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -1.3505682   -1.4534104   -1.2477259
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -1.5790690   -1.7226816   -1.4354564
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5381968   -0.5884781   -0.4879156
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.5909946   -0.8431364   -0.3388528
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8683376   -0.8965240   -0.8401513
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1069791   -1.2310489   -0.9829094
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                -2.0589519   -2.0927329   -2.0251708
24 months   JiVitA-3         BANGLADESH                     Underweight          NA                -1.9420381   -1.9819873   -1.9020890
24 months   LCNI-5           MALAWI                         Normal weight        NA                -1.8508586   -1.9399227   -1.7617945
24 months   LCNI-5           MALAWI                         Underweight          NA                -1.9692043   -2.1762108   -1.7621977
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -1.9074646   -2.0385075   -1.7764217
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -2.4194923   -2.8031746   -2.0358100
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   MAL-ED           BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   MAL-ED           INDIA                          Normal weight        NA                -1.8728242   -2.0136469   -1.7320014
24 months   MAL-ED           INDIA                          Underweight          NA                -1.9272759   -2.2179655   -1.6365864
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6434238   -2.7819221   -2.5049255
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.7020739   -3.3572583   -2.0468895
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1256569   -2.2386032   -2.0127107
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -2.6382448   -2.8590509   -2.4174388
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.4037767   -1.4903547   -1.3171987
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -1.8516560   -2.1507068   -1.5526052
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.1439799   -0.4290827    0.1411229
24 months   PROBIT           BELARUS                        Underweight          NA                -0.1608168   -0.6264726    0.3048389
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -1.5264190   -1.6165275   -1.4363105
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.9750831   -2.1842509   -1.7659153
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.5995767   -1.6632609   -1.5358925
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.7354182   -2.0691384   -1.4016980


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
Birth       JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.0717910    0.0386952    0.1048867
Birth       MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.1365523   -0.5349811    0.2618764
Birth       MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Underweight          Normal weight     -0.8130847   -1.6969028    0.0707333
Birth       MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Underweight          Normal weight      0.2383214   -0.4298147    0.9064576
Birth       MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Underweight          Normal weight     -0.8210317   -1.4651655   -0.1768979
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.7872671   -1.7341607    0.1596266
Birth       NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3827406   -0.6341638   -0.1313174
Birth       NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.2661957   -0.4993883   -0.0330031
Birth       PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Underweight          Normal weight     -0.3510051   -0.4797950   -0.2222151
Birth       PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2792612   -0.4752330   -0.0832895
Birth       SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2634332   -0.3385645   -0.1883018
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3059627   -0.4270036   -0.1849219
6 months    JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.1124327    0.0791552    0.1457101
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.0576426   -0.2345820    0.1192968
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.2916068   -0.6214363    0.0382227
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.0467750   -0.3467656    0.2532155
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.1028020   -0.5972991    0.8029031
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3506408   -0.6072903   -0.0939914
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4224307   -0.7029924   -0.1418691
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1553463   -0.2968525   -0.0138401
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2587954   -0.4484314   -0.0691594
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2285009   -0.3848254   -0.0721763
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0527977   -0.3099656    0.2043701
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2386415   -0.3658990   -0.1113840
24 months   JiVitA-3         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Underweight          Normal weight      0.1169137    0.0688519    0.1649756
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.1183457   -0.3442925    0.1076012
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.5120278   -0.9165317   -0.1075238
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.0544517   -0.3788172    0.2699137
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0586501   -0.7274009    0.6101006
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5125879   -0.7599420   -0.2652338
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4478792   -0.7596724   -0.1360861
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.0168369   -0.4801478    0.4464739
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.4486641   -0.6756041   -0.2217240
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1358415   -0.4754926    0.2038096


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0278973    0.0150966    0.0406980
Birth       MAL-ED           BANGLADESH                     Normal weight        NA                -0.0211595   -0.0660100    0.0236910
Birth       MAL-ED           BRAZIL                         Normal weight        NA                -0.0635222   -0.1511062    0.0240617
Birth       MAL-ED           INDIA                          Normal weight        NA                 0.0443389   -0.0830905    0.1717683
Birth       MAL-ED           PERU                           Normal weight        NA                -0.0181644   -0.0407101    0.0043812
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0451711   -0.1085427    0.0182006
Birth       NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0666320   -0.1086650   -0.0245991
Birth       NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0213358   -0.0424669   -0.0002047
Birth       PROBIT           BELARUS                        Normal weight        NA                -0.0113054   -0.0160597   -0.0065512
Birth       PROVIDE          BANGLADESH                     Normal weight        NA                -0.0492910   -0.0862923   -0.0122897
Birth       SAS-CompFeed     INDIA                          Normal weight        NA                -0.0704874   -0.0930202   -0.0479546
Birth       ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0154021   -0.0214868   -0.0093175
6 months    JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0435275    0.0307119    0.0563430
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0116489   -0.0417616    0.0184637
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0375408   -0.0827919    0.0077104
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0121045   -0.0733900    0.0491811
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0162062   -0.0516439    0.0192316
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0593784   -0.1030230   -0.0157339
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0381382   -0.0645060   -0.0117704
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0058290   -0.0111827   -0.0004753
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0415633   -0.0749451   -0.0081814
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0563211   -0.0974013   -0.0152409
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0023743   -0.0086370    0.0038885
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0117132   -0.0179979   -0.0054286
24 months   JiVitA-3         BANGLADESH                     Normal weight        NA                 0.0451887    0.0265757    0.0638016
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0343234   -0.0711968    0.0025500
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0709317   -0.1277322   -0.0141312
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0116448   -0.0754550    0.0521653
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0021369   -0.0352799    0.0310060
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0934010   -0.1428621   -0.0439398
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0374879   -0.0655138   -0.0094619
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0004350   -0.0166114    0.0157414
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0738409   -0.1146661   -0.0330158
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0012555   -0.0125879    0.0150989
