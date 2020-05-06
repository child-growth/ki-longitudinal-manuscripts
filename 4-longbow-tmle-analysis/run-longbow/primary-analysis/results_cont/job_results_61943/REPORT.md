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
![](/tmp/8ce4c662-d5bd-41b6-bc96-7a83eb226cea/d48918f2-4651-4879-a0e8-8c38bcb726a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8ce4c662-d5bd-41b6-bc96-7a83eb226cea/d48918f2-4651-4879-a0e8-8c38bcb726a8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8ce4c662-d5bd-41b6-bc96-7a83eb226cea/d48918f2-4651-4879-a0e8-8c38bcb726a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8628411   -1.0776602   -0.6480221
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -1.1448455   -1.9823180   -0.3073729
Birth       EE               PAKISTAN                       0                    NA                -1.8922119   -2.0861146   -1.6983092
Birth       EE               PAKISTAN                       1                    NA                -1.8434470   -2.6463055   -1.0405885
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.0545118   -1.1464664   -0.9625572
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0487608   -1.2851335   -0.8123881
Birth       IRC              INDIA                          0                    NA                -0.3809484   -0.5529847   -0.2089122
Birth       IRC              INDIA                          1                    NA                 0.1561628   -0.2772840    0.5896096
Birth       Keneba           GAMBIA                         0                    NA                 0.0399916   -0.0269564    0.1069396
Birth       Keneba           GAMBIA                         1                    NA                 0.1177420   -0.3107624    0.5462465
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.1222727   -1.2564846   -0.9880609
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.6600000   -1.5592093    0.2392093
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8757006   -0.9532178   -0.7981834
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.1343554   -1.4662930   -0.8024177
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4177873   -1.5714959   -1.2640786
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4724435   -1.8934822   -1.0514047
6 months    CMIN             BANGLADESH                     0                    NA                -1.7719977   -1.9138754   -1.6301199
6 months    CMIN             BANGLADESH                     1                    NA                -1.8565895   -2.4487934   -1.2643857
6 months    EE               PAKISTAN                       0                    NA                -2.0536968   -2.1760220   -1.9313716
6 months    EE               PAKISTAN                       1                    NA                -2.4790898   -2.9739821   -1.9841976
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.3212567   -1.4032048   -1.2393086
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.6876384   -1.9539401   -1.4213367
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5415418   -1.6567941   -1.4262896
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.5211111   -3.0985428   -1.9436794
6 months    IRC              INDIA                          0                    NA                -1.3449794   -1.4850744   -1.2048844
6 months    IRC              INDIA                          1                    NA                -0.7336860   -1.0786126   -0.3887594
6 months    Keneba           GAMBIA                         0                    NA                -0.9048815   -0.9537661   -0.8559968
6 months    Keneba           GAMBIA                         1                    NA                -1.7140999   -2.0641169   -1.3640828
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.2135826   -1.3270160   -1.1001493
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.9178571   -2.2823123    0.4465980
6 months    MAL-ED           INDIA                          0                    NA                -1.2125069   -1.3366172   -1.0883967
6 months    MAL-ED           INDIA                          1                    NA                -1.2820360   -1.7275519   -0.8365200
6 months    MAL-ED           NEPAL                          0                    NA                -0.5467101   -0.6599035   -0.4335168
6 months    MAL-ED           NEPAL                          1                    NA                -1.1316667   -1.8892005   -0.3741328
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0711707   -1.1456972   -0.9966441
6 months    PROVIDE          BANGLADESH                     1                    NA                -2.1264542   -2.6605980   -1.5923104
6 months    ResPak           PAKISTAN                       0                    NA                -1.4770253   -1.6966266   -1.2574239
6 months    ResPak           PAKISTAN                       1                    NA                -0.8440881   -1.4259920   -0.2621842
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5430927   -0.5930357   -0.4931497
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6023628   -0.8629292   -0.3417965
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4913769   -2.5952974   -2.3874564
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.8895067   -3.1826840   -2.5963295
24 months   CMIN             BANGLADESH                     0                    NA                -2.5005794   -2.6283894   -2.3727694
24 months   CMIN             BANGLADESH                     1                    NA                -2.7794444   -3.3734067   -2.1854822
24 months   EE               PAKISTAN                       0                    NA                -2.6351256   -2.7860371   -2.4842142
24 months   EE               PAKISTAN                       1                    NA                -3.3922991   -3.7296801   -3.0549181
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8705520   -1.9593552   -1.7817487
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.0674590   -2.3844082   -1.7505098
24 months   IRC              INDIA                          0                    NA                -1.8121407   -1.9172128   -1.7070685
24 months   IRC              INDIA                          1                    NA                -1.6489460   -1.8490881   -1.4488040
24 months   Keneba           GAMBIA                         0                    NA                -1.5739333   -1.6281397   -1.5197269
24 months   Keneba           GAMBIA                         1                    NA                -2.1251160   -2.4757189   -1.7745131
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9994417   -2.1279716   -1.8709119
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.2558333   -1.7012482   -0.8104185
24 months   MAL-ED           INDIA                          0                    NA                -1.9118123   -2.0428057   -1.7808189
24 months   MAL-ED           INDIA                          1                    NA                -1.5774174   -2.0142073   -1.1406276
24 months   MAL-ED           NEPAL                          0                    NA                -1.2999550   -1.4209558   -1.1789541
24 months   MAL-ED           NEPAL                          1                    NA                -1.5900000   -2.3102086   -0.8697914
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.6018229   -1.6869392   -1.5167067
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5368850   -1.8563183   -1.2174517


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.2820043   -1.1503554    0.5863468
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.0487649   -0.7814395    0.8789694
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.0057510   -0.2481782    0.2596803
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.5371112    0.0690973    1.0051251
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.0777504   -0.3560745    0.5115753
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.4622727   -0.4468973    1.3714428
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.2586548   -0.5991436    0.0818341
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.0546562   -0.5039897    0.3946772
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.0845919   -0.6936890    0.5245053
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.4253930   -0.9353933    0.0846072
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.3663817   -0.6449006   -0.0878627
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.9795693   -1.5683905   -0.3907481
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.6112934    0.2388434    0.9837433
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.8092184   -1.1628136   -0.4556232
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                  0.2957255   -1.0734367    1.6648877
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -0.0695290   -0.5325628    0.3935048
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.5849565   -1.3509005    0.1809875
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -1.0552835   -1.5944208   -0.5161462
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                  0.6329372    0.0118448    1.2540295
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0592702   -0.3245113    0.2059710
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.3981299   -0.7088788   -0.0873809
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2788650   -0.8864229    0.3286928
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.7571734   -1.1284585   -0.3858883
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.1969070   -0.5264279    0.1326138
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                  0.1631947   -0.0624743    0.3888636
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.5511827   -0.9061331   -0.1962323
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.7436084    0.2800199    1.2071969
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.3343949   -0.1197570    0.7885467
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.2900450   -1.0203475    0.4402574
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                  0.0649379   -0.2657023    0.3955781


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0983545   -0.2180729    0.0213639
Birth       EE               PAKISTAN                       0                    NA                 0.0313369   -0.0217194    0.0843931
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0009412   -0.0284223    0.0265400
Birth       IRC              INDIA                          0                    NA                 0.0692172   -0.0135728    0.1520071
Birth       Keneba           GAMBIA                         0                    NA                 0.0032219   -0.0104313    0.0168751
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0181679   -0.0194178    0.0557537
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0094014   -0.0229141    0.0041113
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0063999   -0.0674159    0.0546160
6 months    CMIN             BANGLADESH                     0                    NA                -0.0124399   -0.0398552    0.0149754
6 months    EE               PAKISTAN                       0                    NA                -0.0298600   -0.0671825    0.0074625
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0320677   -0.0623850   -0.0017504
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0319425   -0.0600761   -0.0038089
6 months    IRC              INDIA                          0                    NA                 0.1066830    0.0404526    0.1729134
6 months    Keneba           GAMBIA                         0                    NA                -0.0233234   -0.0356438   -0.0110030
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0085895   -0.0316719    0.0488510
6 months    MAL-ED           INDIA                          0                    NA                 0.0009815   -0.0310485    0.0330115
6 months    MAL-ED           NEPAL                          0                    NA                -0.0148718   -0.0376268    0.0078833
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0205208   -0.0382058   -0.0028358
6 months    ResPak           PAKISTAN                       0                    NA                 0.0895730    0.0122631    0.1668829
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019903   -0.0088043    0.0048237
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0575302   -0.1025452   -0.0125152
24 months   CMIN             BANGLADESH                     0                    NA                -0.0103710   -0.0339279    0.0131858
24 months   EE               PAKISTAN                       0                    NA                -0.0348644   -0.0652676   -0.0044611
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0233103   -0.0562297    0.0096092
24 months   IRC              INDIA                          0                    NA                 0.0132069   -0.0251601    0.0515739
24 months   Keneba           GAMBIA                         0                    NA                -0.0184761   -0.0305251   -0.0064271
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0210455   -0.0001441    0.0422351
24 months   MAL-ED           INDIA                          0                    NA                 0.0256229   -0.0083009    0.0595466
24 months   MAL-ED           NEPAL                          0                    NA                -0.0076328   -0.0277780    0.0125124
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0005992   -0.0083532    0.0071548
