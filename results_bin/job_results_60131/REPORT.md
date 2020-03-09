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

**Outcome Variable:** stunted

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

agecat      studyid          country                        mbmi             stunted   n_cell       n
----------  ---------------  -----------------------------  --------------  --------  -------  ------
Birth       JiVitA-3         BANGLADESH                     Normal weight          0     9101   22355
Birth       JiVitA-3         BANGLADESH                     Normal weight          1     4619   22355
Birth       JiVitA-3         BANGLADESH                     Underweight            0     5903   22355
Birth       JiVitA-3         BANGLADESH                     Underweight            1     2732   22355
Birth       MAL-ED           BANGLADESH                     Normal weight          0      159     222
Birth       MAL-ED           BANGLADESH                     Normal weight          1       35     222
Birth       MAL-ED           BANGLADESH                     Underweight            0       23     222
Birth       MAL-ED           BANGLADESH                     Underweight            1        5     222
Birth       MAL-ED           BRAZIL                         Normal weight          0       52      64
Birth       MAL-ED           BRAZIL                         Normal weight          1        7      64
Birth       MAL-ED           BRAZIL                         Underweight            0        3      64
Birth       MAL-ED           BRAZIL                         Underweight            1        2      64
Birth       MAL-ED           INDIA                          Normal weight          0       27      43
Birth       MAL-ED           INDIA                          Normal weight          1        8      43
Birth       MAL-ED           INDIA                          Underweight            0        7      43
Birth       MAL-ED           INDIA                          Underweight            1        1      43
Birth       MAL-ED           NEPAL                          Normal weight          0       25      27
Birth       MAL-ED           NEPAL                          Normal weight          1        2      27
Birth       MAL-ED           NEPAL                          Underweight            0        0      27
Birth       MAL-ED           NEPAL                          Underweight            1        0      27
Birth       MAL-ED           PERU                           Normal weight          0      197     226
Birth       MAL-ED           PERU                           Normal weight          1       24     226
Birth       MAL-ED           PERU                           Underweight            0        3     226
Birth       MAL-ED           PERU                           Underweight            1        2     226
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          0       89     101
Birth       MAL-ED           SOUTH AFRICA                   Normal weight          1        9     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight            0        3     101
Birth       MAL-ED           SOUTH AFRICA                   Underweight            1        0     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0       96     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       19     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0        4     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     122
Birth       NIH-Birth        BANGLADESH                     Normal weight          0      437     608
Birth       NIH-Birth        BANGLADESH                     Normal weight          1       69     608
Birth       NIH-Birth        BANGLADESH                     Underweight            0       74     608
Birth       NIH-Birth        BANGLADESH                     Underweight            1       28     608
Birth       NIH-Crypto       BANGLADESH                     Normal weight          0      575     729
Birth       NIH-Crypto       BANGLADESH                     Normal weight          1       88     729
Birth       NIH-Crypto       BANGLADESH                     Underweight            0       53     729
Birth       NIH-Crypto       BANGLADESH                     Underweight            1       13     729
Birth       PROBIT           BELARUS                        Normal weight          0    13173   13726
Birth       PROBIT           BELARUS                        Normal weight          1       30   13726
Birth       PROBIT           BELARUS                        Underweight            0      519   13726
Birth       PROBIT           BELARUS                        Underweight            1        4   13726
Birth       PROVIDE          BANGLADESH                     Normal weight          0      381     517
Birth       PROVIDE          BANGLADESH                     Normal weight          1       37     517
Birth       PROVIDE          BANGLADESH                     Underweight            0       89     517
Birth       PROVIDE          BANGLADESH                     Underweight            1       10     517
Birth       SAS-CompFeed     INDIA                          Normal weight          0      615    1135
Birth       SAS-CompFeed     INDIA                          Normal weight          1      215    1135
Birth       SAS-CompFeed     INDIA                          Underweight            0      200    1135
Birth       SAS-CompFeed     INDIA                          Underweight            1      105    1135
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          0     8283    9672
Birth       ZVITAMBO         ZIMBABWE                       Normal weight          1      879    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight            0      432    9672
Birth       ZVITAMBO         ZIMBABWE                       Underweight            1       78    9672
6 months    JiVitA-3         BANGLADESH                     Normal weight          0     7574   16760
6 months    JiVitA-3         BANGLADESH                     Normal weight          1     2737   16760
6 months    JiVitA-3         BANGLADESH                     Underweight            0     4970   16760
6 months    JiVitA-3         BANGLADESH                     Underweight            1     1479   16760
6 months    LCNI-5           MALAWI                         Normal weight          0      446     836
6 months    LCNI-5           MALAWI                         Normal weight          1      245     836
6 months    LCNI-5           MALAWI                         Underweight            0       83     836
6 months    LCNI-5           MALAWI                         Underweight            1       62     836
6 months    MAL-ED           BANGLADESH                     Normal weight          0      174     241
6 months    MAL-ED           BANGLADESH                     Normal weight          1       35     241
6 months    MAL-ED           BANGLADESH                     Underweight            0       23     241
6 months    MAL-ED           BANGLADESH                     Underweight            1        9     241
6 months    MAL-ED           BRAZIL                         Normal weight          0      193     208
6 months    MAL-ED           BRAZIL                         Normal weight          1        6     208
6 months    MAL-ED           BRAZIL                         Underweight            0        9     208
6 months    MAL-ED           BRAZIL                         Underweight            1        0     208
6 months    MAL-ED           INDIA                          Normal weight          0      150     235
6 months    MAL-ED           INDIA                          Normal weight          1       36     235
6 months    MAL-ED           INDIA                          Underweight            0       41     235
6 months    MAL-ED           INDIA                          Underweight            1        8     235
6 months    MAL-ED           NEPAL                          Normal weight          0      224     236
6 months    MAL-ED           NEPAL                          Normal weight          1       12     236
6 months    MAL-ED           NEPAL                          Underweight            0        0     236
6 months    MAL-ED           NEPAL                          Underweight            1        0     236
6 months    MAL-ED           PERU                           Normal weight          0      209     272
6 months    MAL-ED           PERU                           Normal weight          1       58     272
6 months    MAL-ED           PERU                           Underweight            0        3     272
6 months    MAL-ED           PERU                           Underweight            1        2     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          0      195     249
6 months    MAL-ED           SOUTH AFRICA                   Normal weight          1       47     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight            0        4     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight            1        3     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0      177     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1       56     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0       11     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        3     247
6 months    NIH-Birth        BANGLADESH                     Normal weight          0      335     537
6 months    NIH-Birth        BANGLADESH                     Normal weight          1      109     537
6 months    NIH-Birth        BANGLADESH                     Underweight            0       58     537
6 months    NIH-Birth        BANGLADESH                     Underweight            1       35     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight          0      523     715
6 months    NIH-Crypto       BANGLADESH                     Normal weight          1      125     715
6 months    NIH-Crypto       BANGLADESH                     Underweight            0       42     715
6 months    NIH-Crypto       BANGLADESH                     Underweight            1       25     715
6 months    PROBIT           BELARUS                        Normal weight          0    12069   13025
6 months    PROBIT           BELARUS                        Normal weight          1      451   13025
6 months    PROBIT           BELARUS                        Underweight            0      476   13025
6 months    PROBIT           BELARUS                        Underweight            1       29   13025
6 months    PROVIDE          BANGLADESH                     Normal weight          0      423     603
6 months    PROVIDE          BANGLADESH                     Normal weight          1       75     603
6 months    PROVIDE          BANGLADESH                     Underweight            0       85     603
6 months    PROVIDE          BANGLADESH                     Underweight            1       20     603
6 months    SAS-CompFeed     INDIA                          Normal weight          0      658    1228
6 months    SAS-CompFeed     INDIA                          Normal weight          1      246    1228
6 months    SAS-CompFeed     INDIA                          Underweight            0      216    1228
6 months    SAS-CompFeed     INDIA                          Underweight            1      108    1228
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0     1764    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1      185    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0       30    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        4    1983
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          0     5875    7375
6 months    ZVITAMBO         ZIMBABWE                       Normal weight          1     1124    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight            0      297    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight            1       79    7375
24 months   JiVitA-3         BANGLADESH                     Normal weight          0     2606    8599
24 months   JiVitA-3         BANGLADESH                     Normal weight          1     2683    8599
24 months   JiVitA-3         BANGLADESH                     Underweight            0     1767    8599
24 months   JiVitA-3         BANGLADESH                     Underweight            1     1543    8599
24 months   LCNI-5           MALAWI                         Normal weight          0      272     577
24 months   LCNI-5           MALAWI                         Normal weight          1      210     577
24 months   LCNI-5           MALAWI                         Underweight            0       49     577
24 months   LCNI-5           MALAWI                         Underweight            1       46     577
24 months   MAL-ED           BANGLADESH                     Normal weight          0      101     212
24 months   MAL-ED           BANGLADESH                     Normal weight          1       82     212
24 months   MAL-ED           BANGLADESH                     Underweight            0       10     212
24 months   MAL-ED           BANGLADESH                     Underweight            1       19     212
24 months   MAL-ED           BRAZIL                         Normal weight          0      156     168
24 months   MAL-ED           BRAZIL                         Normal weight          1        6     168
24 months   MAL-ED           BRAZIL                         Underweight            0        5     168
24 months   MAL-ED           BRAZIL                         Underweight            1        1     168
24 months   MAL-ED           INDIA                          Normal weight          0      104     226
24 months   MAL-ED           INDIA                          Normal weight          1       76     226
24 months   MAL-ED           INDIA                          Underweight            0       26     226
24 months   MAL-ED           INDIA                          Underweight            1       20     226
24 months   MAL-ED           NEPAL                          Normal weight          0      178     228
24 months   MAL-ED           NEPAL                          Normal weight          1       50     228
24 months   MAL-ED           NEPAL                          Underweight            0        0     228
24 months   MAL-ED           NEPAL                          Underweight            1        0     228
24 months   MAL-ED           PERU                           Normal weight          0      125     201
24 months   MAL-ED           PERU                           Normal weight          1       72     201
24 months   MAL-ED           PERU                           Underweight            0        2     201
24 months   MAL-ED           PERU                           Underweight            1        2     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          0      150     234
24 months   MAL-ED           SOUTH AFRICA                   Normal weight          1       77     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight            0        2     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight            1        5     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          0       56     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight          1      147     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight            1        8     214
24 months   NIH-Birth        BANGLADESH                     Normal weight          0      162     429
24 months   NIH-Birth        BANGLADESH                     Normal weight          1      187     429
24 months   NIH-Birth        BANGLADESH                     Underweight            0       23     429
24 months   NIH-Birth        BANGLADESH                     Underweight            1       57     429
24 months   NIH-Crypto       BANGLADESH                     Normal weight          0      355     514
24 months   NIH-Crypto       BANGLADESH                     Normal weight          1      116     514
24 months   NIH-Crypto       BANGLADESH                     Underweight            0       27     514
24 months   NIH-Crypto       BANGLADESH                     Underweight            1       16     514
24 months   PROBIT           BELARUS                        Normal weight          0     3605    4005
24 months   PROBIT           BELARUS                        Normal weight          1      258    4005
24 months   PROBIT           BELARUS                        Underweight            0      128    4005
24 months   PROBIT           BELARUS                        Underweight            1       14    4005
24 months   PROVIDE          BANGLADESH                     Normal weight          0      330     577
24 months   PROVIDE          BANGLADESH                     Normal weight          1      147     577
24 months   PROVIDE          BANGLADESH                     Underweight            0       58     577
24 months   PROVIDE          BANGLADESH                     Underweight            1       42     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight          1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          0      861    1373
24 months   ZVITAMBO         ZIMBABWE                       Normal weight          1      451    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight            0       36    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight            1       25    1373


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

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0aa0266d-9ed4-463c-ae83-ddde21a4a61e/46726c2e-007f-4e82-ae98-46b5d340bfb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0aa0266d-9ed4-463c-ae83-ddde21a4a61e/46726c2e-007f-4e82-ae98-46b5d340bfb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0aa0266d-9ed4-463c-ae83-ddde21a4a61e/46726c2e-007f-4e82-ae98-46b5d340bfb6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0aa0266d-9ed4-463c-ae83-ddde21a4a61e/46726c2e-007f-4e82-ae98-46b5d340bfb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                0.3355732    0.3265727   0.3445736
Birth       JiVitA-3       BANGLADESH   Underweight          NA                0.3180041    0.3071660   0.3288422
Birth       MAL-ED         BANGLADESH   Normal weight        NA                0.1804124    0.1261800   0.2346447
Birth       MAL-ED         BANGLADESH   Underweight          NA                0.1785714    0.0363908   0.3207520
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                0.1365065    0.1065399   0.1664730
Birth       NIH-Birth      BANGLADESH   Underweight          NA                0.2679258    0.1801364   0.3557153
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                0.1340229    0.1079110   0.1601347
Birth       NIH-Crypto     BANGLADESH   Underweight          NA                0.1795649    0.0787212   0.2804086
Birth       PROVIDE        BANGLADESH   Normal weight        NA                0.0885989    0.0613684   0.1158294
Birth       PROVIDE        BANGLADESH   Underweight          NA                0.0940069    0.0363218   0.1516921
Birth       SAS-CompFeed   INDIA        Normal weight        NA                0.2605090    0.2238654   0.2971525
Birth       SAS-CompFeed   INDIA        Underweight          NA                0.3404200    0.2950130   0.3858270
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                0.0959103    0.0898813   0.1019393
Birth       ZVITAMBO       ZIMBABWE     Underweight          NA                0.1502951    0.1173848   0.1832054
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                0.2651637    0.2549735   0.2753540
6 months    JiVitA-3       BANGLADESH   Underweight          NA                0.2301381    0.2193801   0.2408962
6 months    LCNI-5         MALAWI       Normal weight        NA                0.3540375    0.3182252   0.3898498
6 months    LCNI-5         MALAWI       Underweight          NA                0.4385060    0.3556777   0.5213342
6 months    MAL-ED         BANGLADESH   Normal weight        NA                0.1674641    0.1167370   0.2181912
6 months    MAL-ED         BANGLADESH   Underweight          NA                0.2812500    0.1251470   0.4373530
6 months    MAL-ED         INDIA        Normal weight        NA                0.1935484    0.1366498   0.2504470
6 months    MAL-ED         INDIA        Underweight          NA                0.1632653    0.0595562   0.2669744
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                0.2452126    0.2051521   0.2852731
6 months    NIH-Birth      BANGLADESH   Underweight          NA                0.3760115    0.2747425   0.4772805
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                0.1964167    0.1654956   0.2273379
6 months    NIH-Crypto     BANGLADESH   Underweight          NA                0.3623086    0.2376067   0.4870106
6 months    PROBIT         BELARUS      Normal weight        NA                0.0360496    0.0267959   0.0453032
6 months    PROBIT         BELARUS      Underweight          NA                0.0567801    0.0347340   0.0788262
6 months    PROVIDE        BANGLADESH   Normal weight        NA                0.1492402    0.1178391   0.1806413
6 months    PROVIDE        BANGLADESH   Underweight          NA                0.1811461    0.1042295   0.2580626
6 months    SAS-CompFeed   INDIA        Normal weight        NA                0.2745848    0.2444384   0.3047313
6 months    SAS-CompFeed   INDIA        Underweight          NA                0.3261763    0.2798757   0.3724769
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                0.1606699    0.1520586   0.1692813
6 months    ZVITAMBO       ZIMBABWE     Underweight          NA                0.2115096    0.1674434   0.2555759
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                0.5078545    0.4913884   0.5243206
24 months   JiVitA-3       BANGLADESH   Underweight          NA                0.4661063    0.4470756   0.4851370
24 months   LCNI-5         MALAWI       Normal weight        NA                0.4341604    0.3897052   0.4786155
24 months   LCNI-5         MALAWI       Underweight          NA                0.4909262    0.3823757   0.5994766
24 months   MAL-ED         BANGLADESH   Normal weight        NA                0.4481514    0.3758151   0.5204878
24 months   MAL-ED         BANGLADESH   Underweight          NA                0.6489220    0.4684510   0.8293929
24 months   MAL-ED         INDIA        Normal weight        NA                0.4226427    0.3501609   0.4951244
24 months   MAL-ED         INDIA        Underweight          NA                0.4248357    0.2773134   0.5723580
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                0.5416583    0.4894720   0.5938446
24 months   NIH-Birth      BANGLADESH   Underweight          NA                0.6878880    0.5874115   0.7883645
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                0.2488327    0.2097608   0.2879046
24 months   NIH-Crypto     BANGLADESH   Underweight          NA                0.3391996    0.1952583   0.4831409
24 months   PROBIT         BELARUS      Normal weight        NA                0.0668217    0.0406250   0.0930183
24 months   PROBIT         BELARUS      Underweight          NA                0.0979126   -0.0071090   0.2029342
24 months   PROVIDE        BANGLADESH   Normal weight        NA                0.3098553    0.2684715   0.3512391
24 months   PROVIDE        BANGLADESH   Underweight          NA                0.4055746    0.3007843   0.5103649
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                0.3443359    0.3186080   0.3700639
24 months   ZVITAMBO       ZIMBABWE     Underweight          NA                0.4152465    0.2879131   0.5425799


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   NA                   NA                0.3288302   0.3214550   0.3362055
Birth       MAL-ED         BANGLADESH   NA                   NA                0.1801802   0.1295086   0.2308518
Birth       NIH-Birth      BANGLADESH   NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto     BANGLADESH   NA                   NA                0.1385460   0.1134505   0.1636414
Birth       PROVIDE        BANGLADESH   NA                   NA                0.0909091   0.0661046   0.1157136
Birth       SAS-CompFeed   INDIA        NA                   NA                0.2819383   0.2495848   0.3142918
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.0989454   0.0929945   0.1048964
6 months    JiVitA-3       BANGLADESH   NA                   NA                0.2515513   0.2434364   0.2596662
6 months    LCNI-5         MALAWI       NA                   NA                0.3672249   0.3345288   0.3999210
6 months    MAL-ED         BANGLADESH   NA                   NA                0.1825726   0.1336978   0.2314474
6 months    MAL-ED         INDIA        NA                   NA                0.1872340   0.1372518   0.2372162
6 months    NIH-Birth      BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto     BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT         BELARUS      NA                   NA                0.0368522   0.0276927   0.0460117
6 months    PROVIDE        BANGLADESH   NA                   NA                0.1575456   0.1284434   0.1866478
6 months    SAS-CompFeed   INDIA        NA                   NA                0.2882736   0.2624662   0.3140810
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.1631186   0.1546857   0.1715516
24 months   JiVitA-3       BANGLADESH   NA                   NA                0.4914525   0.4783104   0.5045946
24 months   LCNI-5         MALAWI       NA                   NA                0.4436742   0.4031015   0.4842468
24 months   MAL-ED         BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED         INDIA        NA                   NA                0.4247788   0.3601902   0.4893673
24 months   NIH-Birth      BANGLADESH   NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto     BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT         BELARUS      NA                   NA                0.0679151   0.0407521   0.0950781
24 months   PROVIDE        BANGLADESH   NA                   NA                0.3275563   0.2892291   0.3658836
24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.3466861   0.3215035   0.3718687


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH   Underweight          Normal weight     0.9476447   0.9104621   0.9863457
Birth       MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       MAL-ED         BANGLADESH   Underweight          Normal weight     0.9897959   0.4226026   2.3182439
Birth       NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       NIH-Birth      BANGLADESH   Underweight          Normal weight     1.9627339   1.3226502   2.9125797
Birth       NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.3398077   0.7394139   2.4277129
Birth       PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       PROVIDE        BANGLADESH   Underweight          Normal weight     1.0610397   0.5322925   2.1150124
Birth       SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA        Underweight          Normal weight     1.3067497   1.1165758   1.5293137
Birth       ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.5670381   1.2478470   1.9678763
6 months    JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH   Underweight          Normal weight     0.8679095   0.8216435   0.9167807
6 months    LCNI-5         MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    LCNI-5         MALAWI       Underweight          Normal weight     1.2385862   0.9996783   1.5345894
6 months    MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    MAL-ED         BANGLADESH   Underweight          Normal weight     1.6794643   0.8924037   3.1606777
6 months    MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    MAL-ED         INDIA        Underweight          Normal weight     0.8435374   0.4189110   1.6985838
6 months    NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    NIH-Birth      BANGLADESH   Underweight          Normal weight     1.5334104   1.1191055   2.1010953
6 months    NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.8445916   1.2624977   2.6950690
6 months    PROBIT         BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    PROBIT         BELARUS      Underweight          Normal weight     1.5750556   1.0560043   2.3492329
6 months    PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    PROVIDE        BANGLADESH   Underweight          Normal weight     1.2137889   0.7560855   1.9485673
6 months    SAS-CompFeed   INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA        Underweight          Normal weight     1.1878890   0.9987112   1.4129011
6 months    ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.3164231   1.0616535   1.6323308
24 months   JiVitA-3       BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH   Underweight          Normal weight     0.9177949   0.8737158   0.9640978
24 months   LCNI-5         MALAWI       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   LCNI-5         MALAWI       Underweight          Normal weight     1.1307485   0.8862013   1.4427784
24 months   MAL-ED         BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   MAL-ED         BANGLADESH   Underweight          Normal weight     1.4479971   1.0494148   1.9979665
24 months   MAL-ED         INDIA        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   MAL-ED         INDIA        Underweight          Normal weight     1.0051890   0.6826122   1.4802033
24 months   NIH-Birth      BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   NIH-Birth      BANGLADESH   Underweight          Normal weight     1.2699666   1.0678414   1.5103509
24 months   NIH-Crypto     BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto     BANGLADESH   Underweight          Normal weight     1.3631632   0.8680348   2.1407135
24 months   PROBIT         BELARUS      Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   PROBIT         BELARUS      Underweight          Normal weight     1.4652824   0.5725223   3.7501639
24 months   PROVIDE        BANGLADESH   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   PROVIDE        BANGLADESH   Underweight          Normal weight     1.3089162   0.9790862   1.7498578
24 months   ZVITAMBO       ZIMBABWE     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO       ZIMBABWE     Underweight          Normal weight     1.2059343   0.8798134   1.6529386


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0067429   -0.0117481   -0.0017378
Birth       MAL-ED         BANGLADESH   Normal weight        NA                -0.0002322   -0.0194253    0.0189609
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.0230330    0.0071167    0.0389493
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0045231   -0.0047586    0.0138047
Birth       PROVIDE        BANGLADESH   Normal weight        NA                 0.0023102   -0.0105350    0.0151554
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.0214294    0.0093450    0.0335138
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0030351    0.0013405    0.0047298
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                -0.0136124   -0.0187764   -0.0084485
6 months    LCNI-5         MALAWI       Normal weight        NA                 0.0131874   -0.0024439    0.0288186
6 months    MAL-ED         BANGLADESH   Normal weight        NA                 0.0151085   -0.0072265    0.0374435
6 months    MAL-ED         INDIA        Normal weight        NA                -0.0063143   -0.0310298    0.0184011
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.0229439    0.0040047    0.0418830
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0133735    0.0012458    0.0255012
6 months    PROBIT         BELARUS      Normal weight        NA                 0.0008026   -0.0000438    0.0016490
6 months    PROVIDE        BANGLADESH   Normal weight        NA                 0.0083054   -0.0059467    0.0225575
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.0136888   -0.0006876    0.0280652
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0024487    0.0002824    0.0046150
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                -0.0164020   -0.0255676   -0.0072365
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.0095138   -0.0090234    0.0280510
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.0282637    0.0007007    0.0558267
24 months   MAL-ED         INDIA        Normal weight        NA                 0.0021361   -0.0305177    0.0347899
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.0271062    0.0059486    0.0482639
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0079766   -0.0047164    0.0206697
24 months   PROBIT         BELARUS      Normal weight        NA                 0.0010935   -0.0021974    0.0043843
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.0177011   -0.0010381    0.0364402
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0023502   -0.0032345    0.0079348


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3       BANGLADESH   Normal weight        NA                -0.0205058   -0.0358381   -0.0054005
Birth       MAL-ED         BANGLADESH   Normal weight        NA                -0.0012887   -0.1136825    0.0997623
Birth       NIH-Birth      BANGLADESH   Normal weight        NA                 0.1443719    0.0411866    0.2364527
Birth       NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0326467   -0.0365365    0.0972123
Birth       PROVIDE        BANGLADESH   Normal weight        NA                 0.0254122   -0.1263498    0.1567261
Birth       SAS-CompFeed   INDIA        Normal weight        NA                 0.0760073    0.0295261    0.1202622
Birth       ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0306747    0.0134746    0.0475749
6 months    JiVitA-3       BANGLADESH   Normal weight        NA                -0.0541139   -0.0746781   -0.0339433
6 months    LCNI-5         MALAWI       Normal weight        NA                 0.0359109   -0.0076333    0.0775734
6 months    MAL-ED         BANGLADESH   Normal weight        NA                 0.0827534   -0.0467563    0.1962395
6 months    MAL-ED         INDIA        Normal weight        NA                -0.0337243   -0.1743434    0.0900566
6 months    NIH-Birth      BANGLADESH   Normal weight        NA                 0.0855615    0.0125000    0.1532174
6 months    NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0637470    0.0044640    0.1194998
6 months    PROBIT         BELARUS      Normal weight        NA                 0.0217798   -0.0024553    0.0454290
6 months    PROVIDE        BANGLADESH   Normal weight        NA                 0.0527176   -0.0419555    0.1387886
6 months    SAS-CompFeed   INDIA        Normal weight        NA                 0.0474854   -0.0041212    0.0964397
6 months    ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0150118    0.0016538    0.0281911
24 months   JiVitA-3       BANGLADESH   Normal weight        NA                -0.0333746   -0.0521611   -0.0149235
24 months   LCNI-5         MALAWI       Normal weight        NA                 0.0214433   -0.0212723    0.0623722
24 months   MAL-ED         BANGLADESH   Normal weight        NA                 0.0593257   -0.0008263    0.1158624
24 months   MAL-ED         INDIA        Normal weight        NA                 0.0050287   -0.0748985    0.0790128
24 months   NIH-Birth      BANGLADESH   Normal weight        NA                 0.0476581    0.0093552    0.0844800
24 months   NIH-Crypto     BANGLADESH   Normal weight        NA                 0.0310605   -0.0195510    0.0791596
24 months   PROBIT         BELARUS      Normal weight        NA                 0.0161003   -0.0316221    0.0616151
24 months   PROVIDE        BANGLADESH   Normal weight        NA                 0.0540397   -0.0048029    0.1094365
24 months   ZVITAMBO       ZIMBABWE     Normal weight        NA                 0.0067790   -0.0094626    0.0227592
