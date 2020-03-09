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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        pers_wast    n_cell      n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  -----  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                80     92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1                12     92  haz              
Birth       CMIN             BANGLADESH                     0                16     18  haz              
Birth       CMIN             BANGLADESH                     1                 2     18  haz              
Birth       CONTENT          PERU                           0                 2      2  haz              
Birth       CONTENT          PERU                           1                 0      2  haz              
Birth       EE               PAKISTAN                       0               224    240  haz              
Birth       EE               PAKISTAN                       1                16    240  haz              
Birth       GMS-Nepal        NEPAL                          0               521    585  haz              
Birth       GMS-Nepal        NEPAL                          1                64    585  haz              
Birth       IRC              INDIA                          0               319    387  haz              
Birth       IRC              INDIA                          1                68    387  haz              
Birth       Keneba           GAMBIA                         0              1374   1419  haz              
Birth       Keneba           GAMBIA                         1                45   1419  haz              
Birth       MAL-ED           BANGLADESH                     0               220    229  haz              
Birth       MAL-ED           BANGLADESH                     1                 9    229  haz              
Birth       MAL-ED           BRAZIL                         0                65     65  haz              
Birth       MAL-ED           BRAZIL                         1                 0     65  haz              
Birth       MAL-ED           INDIA                          0                43     45  haz              
Birth       MAL-ED           INDIA                          1                 2     45  haz              
Birth       MAL-ED           NEPAL                          0                26     27  haz              
Birth       MAL-ED           NEPAL                          1                 1     27  haz              
Birth       MAL-ED           PERU                           0               233    233  haz              
Birth       MAL-ED           PERU                           1                 0    233  haz              
Birth       MAL-ED           SOUTH AFRICA                   0               111    113  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                 2    113  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               123    123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    123  haz              
Birth       PROVIDE          BANGLADESH                     0               516    539  haz              
Birth       PROVIDE          BANGLADESH                     1                23    539  haz              
Birth       ResPak           PAKISTAN                       0                30     34  haz              
Birth       ResPak           PAKISTAN                       1                 4     34  haz              
6 months    CMC-V-BCS-2002   INDIA                          0               313    365  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                52    365  haz              
6 months    CMIN             BANGLADESH                     0               232    243  haz              
6 months    CMIN             BANGLADESH                     1                11    243  haz              
6 months    CONTENT          PERU                           0               215    215  haz              
6 months    CONTENT          PERU                           1                 0    215  haz              
6 months    EE               PAKISTAN                       0               347    373  haz              
6 months    EE               PAKISTAN                       1                26    373  haz              
6 months    GMS-Nepal        NEPAL                          0               499    559  haz              
6 months    GMS-Nepal        NEPAL                          1                60    559  haz              
6 months    Guatemala BSC    GUATEMALA                      0               267    276  haz              
6 months    Guatemala BSC    GUATEMALA                      1                 9    276  haz              
6 months    IRC              INDIA                          0               337    406  haz              
6 months    IRC              INDIA                          1                69    406  haz              
6 months    Keneba           GAMBIA                         0              1836   1897  haz              
6 months    Keneba           GAMBIA                         1                61   1897  haz              
6 months    MAL-ED           BANGLADESH                     0               234    241  haz              
6 months    MAL-ED           BANGLADESH                     1                 7    241  haz              
6 months    MAL-ED           BRAZIL                         0               208    209  haz              
6 months    MAL-ED           BRAZIL                         1                 1    209  haz              
6 months    MAL-ED           INDIA                          0               218    236  haz              
6 months    MAL-ED           INDIA                          1                18    236  haz              
6 months    MAL-ED           NEPAL                          0               230    236  haz              
6 months    MAL-ED           NEPAL                          1                 6    236  haz              
6 months    MAL-ED           PERU                           0               273    273  haz              
6 months    MAL-ED           PERU                           1                 0    273  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               252    254  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                 2    254  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               247    247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    247  haz              
6 months    PROVIDE          BANGLADESH                     0               590    604  haz              
6 months    PROVIDE          BANGLADESH                     1                14    604  haz              
6 months    ResPak           PAKISTAN                       0               202    227  haz              
6 months    ResPak           PAKISTAN                       1                25    227  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1968   2019  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2019  haz              
24 months   CMC-V-BCS-2002   INDIA                          0               311    366  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                55    366  haz              
24 months   CMIN             BANGLADESH                     0               233    242  haz              
24 months   CMIN             BANGLADESH                     1                 9    242  haz              
24 months   CONTENT          PERU                           0               164    164  haz              
24 months   CONTENT          PERU                           1                 0    164  haz              
24 months   EE               PAKISTAN                       0               156    167  haz              
24 months   EE               PAKISTAN                       1                11    167  haz              
24 months   GMS-Nepal        NEPAL                          0               430    479  haz              
24 months   GMS-Nepal        NEPAL                          1                49    479  haz              
24 months   IRC              INDIA                          0               339    408  haz              
24 months   IRC              INDIA                          1                69    408  haz              
24 months   Keneba           GAMBIA                         0              1395   1442  haz              
24 months   Keneba           GAMBIA                         1                47   1442  haz              
24 months   MAL-ED           BANGLADESH                     0               206    212  haz              
24 months   MAL-ED           BANGLADESH                     1                 6    212  haz              
24 months   MAL-ED           BRAZIL                         0               168    169  haz              
24 months   MAL-ED           BRAZIL                         1                 1    169  haz              
24 months   MAL-ED           INDIA                          0               209    227  haz              
24 months   MAL-ED           INDIA                          1                18    227  haz              
24 months   MAL-ED           NEPAL                          0               222    228  haz              
24 months   MAL-ED           NEPAL                          1                 6    228  haz              
24 months   MAL-ED           PERU                           0               201    201  haz              
24 months   MAL-ED           PERU                           1                 0    201  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               236    238  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                 2    238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               214    214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    214  haz              
24 months   PROVIDE          BANGLADESH                     0               565    578  haz              
24 months   PROVIDE          BANGLADESH                     1                13    578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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
![](/tmp/defe70f8-557b-4b5e-b851-083d6ca7c399/f10d2784-1d4b-4105-82c2-c15573aec2b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/defe70f8-557b-4b5e-b851-083d6ca7c399/f10d2784-1d4b-4105-82c2-c15573aec2b4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/defe70f8-557b-4b5e-b851-083d6ca7c399/f10d2784-1d4b-4105-82c2-c15573aec2b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8962720   -1.1105049   -0.6820392
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -2.2806797   -3.2937036   -1.2676559
Birth       EE               PAKISTAN                       0                    NA                -1.8881803   -2.0824710   -1.6938896
Birth       EE               PAKISTAN                       1                    NA                -1.4585788   -2.3561285   -0.5610291
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.0549033   -1.1468119   -0.9629947
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0776492   -1.3139148   -0.8413837
Birth       IRC              INDIA                          0                    NA                -0.3840310   -0.5558659   -0.2121960
Birth       IRC              INDIA                          1                    NA                 0.0467468   -0.3833117    0.4768053
Birth       Keneba           GAMBIA                         0                    NA                 0.0380485   -0.0288996    0.1049966
Birth       Keneba           GAMBIA                         1                    NA                 0.1039181   -0.3248871    0.5327232
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.1222727   -1.2564846   -0.9880609
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.6600000   -1.5592093    0.2392093
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8740691   -0.9514344   -0.7967039
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.1185346   -1.5073729   -0.7296963
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4219998   -1.5759366   -1.2680631
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4273426   -1.8534305   -1.0012546
6 months    CMIN             BANGLADESH                     0                    NA                -1.7689321   -1.9103576   -1.6275067
6 months    CMIN             BANGLADESH                     1                    NA                -2.1178320   -2.6714619   -1.5642022
6 months    EE               PAKISTAN                       0                    NA                -2.0555424   -2.1775400   -1.9335447
6 months    EE               PAKISTAN                       1                    NA                -2.4737925   -2.9830718   -1.9645132
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.3191111   -1.4008637   -1.2373584
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.6462356   -1.9289660   -1.3635052
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5415418   -1.6567941   -1.4262896
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.5211111   -3.0985428   -1.9436794
6 months    IRC              INDIA                          0                    NA                -1.3376858   -1.4775035   -1.1978682
6 months    IRC              INDIA                          1                    NA                -0.7032689   -1.0345886   -0.3719492
6 months    Keneba           GAMBIA                         0                    NA                -0.9047313   -0.9536042   -0.8558584
6 months    Keneba           GAMBIA                         1                    NA                -1.6497394   -2.0112026   -1.2882762
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.2135826   -1.3270160   -1.1001493
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.9178571   -2.2823123    0.4465980
6 months    MAL-ED           INDIA                          0                    NA                -1.2128992   -1.3370068   -1.0887916
6 months    MAL-ED           INDIA                          1                    NA                -1.2325717   -1.6458182   -0.8193252
6 months    MAL-ED           NEPAL                          0                    NA                -0.5467101   -0.6599035   -0.4335168
6 months    MAL-ED           NEPAL                          1                    NA                -1.1316667   -1.8892005   -0.3741328
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0707341   -1.1450735   -0.9963947
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.9422053   -2.5686049   -1.3158057
6 months    ResPak           PAKISTAN                       0                    NA                -1.4773041   -1.6965255   -1.2580826
6 months    ResPak           PAKISTAN                       1                    NA                -1.1993558   -1.8293412   -0.5693705
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5428378   -0.5927449   -0.4929306
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6663464   -0.9248432   -0.4078496
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4915642   -2.5952284   -2.3879000
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.9386010   -3.2060473   -2.6711546
24 months   CMIN             BANGLADESH                     0                    NA                -2.5005794   -2.6283894   -2.3727694
24 months   CMIN             BANGLADESH                     1                    NA                -2.7794444   -3.3734067   -2.1854822
24 months   EE               PAKISTAN                       0                    NA                -2.6352445   -2.7863284   -2.4841605
24 months   EE               PAKISTAN                       1                    NA                -3.0084908   -3.3524445   -2.6645371
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8722277   -1.9610523   -1.7834030
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.0818587   -2.3878840   -1.7758333
24 months   IRC              INDIA                          0                    NA                -1.8182857   -1.9235374   -1.7130339
24 months   IRC              INDIA                          1                    NA                -1.7008759   -1.9084930   -1.4932589
24 months   Keneba           GAMBIA                         0                    NA                -1.5731890   -1.6274115   -1.5189664
24 months   Keneba           GAMBIA                         1                    NA                -2.0733930   -2.4008104   -1.7459756
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9994417   -2.1279716   -1.8709119
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.2558333   -1.7012482   -0.8104185
24 months   MAL-ED           INDIA                          0                    NA                -1.9120446   -2.0430221   -1.7810671
24 months   MAL-ED           INDIA                          1                    NA                -1.6972664   -2.0702402   -1.3242925
24 months   MAL-ED           NEPAL                          0                    NA                -1.2999550   -1.4209558   -1.1789541
24 months   MAL-ED           NEPAL                          1                    NA                -1.5900000   -2.3102086   -0.8697914
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.6015761   -1.6866932   -1.5164591
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5404181   -1.8437559   -1.2370804


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0554530   -1.1411259   -0.9697801
Birth       IRC              INDIA                          NA                   NA                -0.3117313   -0.4727359   -0.1507267
Birth       Keneba           GAMBIA                         NA                   NA                 0.0432135   -0.0229516    0.1093787
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1041048   -1.2383048   -0.9699048
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4241872   -1.5668135   -1.2815609
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3533244   -1.4319426   -1.2747062
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5734843   -1.6884116   -1.4585570
6 months    IRC              INDIA                          NA                   NA                -1.2382964   -1.3698449   -1.1067479
6 months    Keneba           GAMBIA                         NA                   NA                -0.9282048   -0.9770928   -0.8793169
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.3874523   -1.5959323   -1.1789723
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5450830   -0.5941754   -0.4959906
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5489071   -2.6476125   -2.4502017
24 months   CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8938622   -1.9795205   -1.8082040
24 months   IRC              INDIA                          NA                   NA                -1.7989338   -1.8927769   -1.7050907
24 months   Keneba           GAMBIA                         NA                   NA                -1.5924094   -1.6461889   -1.5386298
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -1.3844077   -2.4294281   -0.3393874
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.4296015   -0.4934558    1.3526589
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 -0.0227459   -0.2765530    0.2310611
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.4307777   -0.0320402    0.8935957
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.0658696   -0.3683410    0.5000802
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.4622727   -0.4468973    1.3714428
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.2444655   -0.6403824    0.1514514
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0053428   -0.4584983    0.4478128
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.3488999   -0.9193731    0.2215733
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.4182502   -0.9427678    0.1062675
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.3271245   -0.6212150   -0.0330341
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.9795693   -1.5683905   -0.3907481
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.6344169    0.2757900    0.9930439
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.7450081   -1.1099900   -0.3800263
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                  0.2957255   -1.0734367    1.6648877
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -0.0196725   -0.4513988    0.4120539
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.5849565   -1.3509005    0.1809875
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.8714712   -1.5020594   -0.2408830
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                  0.2779482   -0.3927241    0.9486206
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1235086   -0.3865772    0.1395599
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.4470368   -0.7336523   -0.1604214
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2788650   -0.8864229    0.3286928
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.3732463   -0.7501394    0.0036467
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.2096310   -0.5274077    0.1081457
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                  0.1174097   -0.1159560    0.3507755
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.5002040   -0.8320916   -0.1683164
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.7436084    0.2800199    1.2071969
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.2147782   -0.1811126    0.6106690
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.2900450   -1.0203475    0.4402574
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                  0.0611580   -0.2539896    0.3763055


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0649236   -0.1833814    0.0535341
Birth       EE               PAKISTAN                       0                    NA                 0.0273053   -0.0254376    0.0800483
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0005497   -0.0279691    0.0268698
Birth       IRC              INDIA                          0                    NA                 0.0722997   -0.0095802    0.1541796
Birth       Keneba           GAMBIA                         0                    NA                 0.0051651   -0.0086471    0.0189772
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0181679   -0.0194178    0.0557537
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0110329   -0.0242654    0.0021996
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0021874   -0.0623513    0.0579765
6 months    CMIN             BANGLADESH                     0                    NA                -0.0155054   -0.0427502    0.0117394
6 months    EE               PAKISTAN                       0                    NA                -0.0280144   -0.0655961    0.0095673
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0342133   -0.0646483   -0.0037783
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0319425   -0.0600761   -0.0038089
6 months    IRC              INDIA                          0                    NA                 0.0993895    0.0343177    0.1644612
6 months    Keneba           GAMBIA                         0                    NA                -0.0234735   -0.0358968   -0.0110502
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0085895   -0.0316719    0.0488510
6 months    MAL-ED           INDIA                          0                    NA                 0.0013738   -0.0302962    0.0330438
6 months    MAL-ED           NEPAL                          0                    NA                -0.0148718   -0.0376268    0.0078833
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0209574   -0.0385880   -0.0033268
6 months    ResPak           PAKISTAN                       0                    NA                 0.0898518    0.0130219    0.1666817
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022452   -0.0089493    0.0044589
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0573429   -0.1024385   -0.0122474
24 months   CMIN             BANGLADESH                     0                    NA                -0.0103710   -0.0339279    0.0131858
24 months   EE               PAKISTAN                       0                    NA                -0.0347455   -0.0649670   -0.0045241
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0216345   -0.0533260    0.0100569
24 months   IRC              INDIA                          0                    NA                 0.0193519   -0.0199009    0.0586046
24 months   Keneba           GAMBIA                         0                    NA                -0.0192204   -0.0311559   -0.0072849
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0210455   -0.0001441    0.0422351
24 months   MAL-ED           INDIA                          0                    NA                 0.0258552   -0.0091249    0.0608352
24 months   MAL-ED           NEPAL                          0                    NA                -0.0076328   -0.0277780    0.0125124
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0008460   -0.0085743    0.0068823
