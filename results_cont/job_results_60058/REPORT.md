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

agecat      studyid          country                        pers_wast    n_cell      n
----------  ---------------  -----------------------------  ----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                80     92
Birth       CMC-V-BCS-2002   INDIA                          1                12     92
Birth       CMIN             BANGLADESH                     0                16     18
Birth       CMIN             BANGLADESH                     1                 2     18
Birth       CONTENT          PERU                           0                 2      2
Birth       CONTENT          PERU                           1                 0      2
Birth       EE               PAKISTAN                       0               224    240
Birth       EE               PAKISTAN                       1                16    240
Birth       GMS-Nepal        NEPAL                          0               521    585
Birth       GMS-Nepal        NEPAL                          1                64    585
Birth       IRC              INDIA                          0               319    387
Birth       IRC              INDIA                          1                68    387
Birth       Keneba           GAMBIA                         0              1374   1419
Birth       Keneba           GAMBIA                         1                45   1419
Birth       MAL-ED           BANGLADESH                     0               220    229
Birth       MAL-ED           BANGLADESH                     1                 9    229
Birth       MAL-ED           BRAZIL                         0                65     65
Birth       MAL-ED           BRAZIL                         1                 0     65
Birth       MAL-ED           INDIA                          0                43     45
Birth       MAL-ED           INDIA                          1                 2     45
Birth       MAL-ED           NEPAL                          0                26     27
Birth       MAL-ED           NEPAL                          1                 1     27
Birth       MAL-ED           PERU                           0               233    233
Birth       MAL-ED           PERU                           1                 0    233
Birth       MAL-ED           SOUTH AFRICA                   0               111    113
Birth       MAL-ED           SOUTH AFRICA                   1                 2    113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       PROVIDE          BANGLADESH                     0               516    539
Birth       PROVIDE          BANGLADESH                     1                23    539
Birth       ResPak           PAKISTAN                       0                30     34
Birth       ResPak           PAKISTAN                       1                 4     34
6 months    CMC-V-BCS-2002   INDIA                          0               313    365
6 months    CMC-V-BCS-2002   INDIA                          1                52    365
6 months    CMIN             BANGLADESH                     0               232    243
6 months    CMIN             BANGLADESH                     1                11    243
6 months    CONTENT          PERU                           0               215    215
6 months    CONTENT          PERU                           1                 0    215
6 months    EE               PAKISTAN                       0               347    373
6 months    EE               PAKISTAN                       1                26    373
6 months    GMS-Nepal        NEPAL                          0               499    559
6 months    GMS-Nepal        NEPAL                          1                60    559
6 months    Guatemala BSC    GUATEMALA                      0               267    276
6 months    Guatemala BSC    GUATEMALA                      1                 9    276
6 months    IRC              INDIA                          0               337    406
6 months    IRC              INDIA                          1                69    406
6 months    Keneba           GAMBIA                         0              1836   1897
6 months    Keneba           GAMBIA                         1                61   1897
6 months    MAL-ED           BANGLADESH                     0               234    241
6 months    MAL-ED           BANGLADESH                     1                 7    241
6 months    MAL-ED           BRAZIL                         0               208    209
6 months    MAL-ED           BRAZIL                         1                 1    209
6 months    MAL-ED           INDIA                          0               218    236
6 months    MAL-ED           INDIA                          1                18    236
6 months    MAL-ED           NEPAL                          0               230    236
6 months    MAL-ED           NEPAL                          1                 6    236
6 months    MAL-ED           PERU                           0               273    273
6 months    MAL-ED           PERU                           1                 0    273
6 months    MAL-ED           SOUTH AFRICA                   0               252    254
6 months    MAL-ED           SOUTH AFRICA                   1                 2    254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    PROVIDE          BANGLADESH                     0               590    604
6 months    PROVIDE          BANGLADESH                     1                14    604
6 months    ResPak           PAKISTAN                       0               202    227
6 months    ResPak           PAKISTAN                       1                25    227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1968   2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2019
24 months   CMC-V-BCS-2002   INDIA                          0               311    366
24 months   CMC-V-BCS-2002   INDIA                          1                55    366
24 months   CMIN             BANGLADESH                     0               233    242
24 months   CMIN             BANGLADESH                     1                 9    242
24 months   CONTENT          PERU                           0               164    164
24 months   CONTENT          PERU                           1                 0    164
24 months   EE               PAKISTAN                       0               156    167
24 months   EE               PAKISTAN                       1                11    167
24 months   GMS-Nepal        NEPAL                          0               430    479
24 months   GMS-Nepal        NEPAL                          1                49    479
24 months   IRC              INDIA                          0               339    408
24 months   IRC              INDIA                          1                69    408
24 months   Keneba           GAMBIA                         0              1395   1442
24 months   Keneba           GAMBIA                         1                47   1442
24 months   MAL-ED           BANGLADESH                     0               206    212
24 months   MAL-ED           BANGLADESH                     1                 6    212
24 months   MAL-ED           BRAZIL                         0               168    169
24 months   MAL-ED           BRAZIL                         1                 1    169
24 months   MAL-ED           INDIA                          0               209    227
24 months   MAL-ED           INDIA                          1                18    227
24 months   MAL-ED           NEPAL                          0               222    228
24 months   MAL-ED           NEPAL                          1                 6    228
24 months   MAL-ED           PERU                           0               201    201
24 months   MAL-ED           PERU                           1                 0    201
24 months   MAL-ED           SOUTH AFRICA                   0               236    238
24 months   MAL-ED           SOUTH AFRICA                   1                 2    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   PROVIDE          BANGLADESH                     0               565    578
24 months   PROVIDE          BANGLADESH                     1                13    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6


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
![](/tmp/33b26920-1b9b-4282-9029-a0e5a553b333/9e962b0d-b636-45eb-ae7a-724a7ac0fe0b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/33b26920-1b9b-4282-9029-a0e5a553b333/9e962b0d-b636-45eb-ae7a-724a7ac0fe0b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/33b26920-1b9b-4282-9029-a0e5a553b333/9e962b0d-b636-45eb-ae7a-724a7ac0fe0b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8827728   -1.0977753   -0.6677702
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -1.7675512   -2.7411532   -0.7939491
Birth       EE               PAKISTAN                       0                    NA                -1.8857882   -2.0799006   -1.6916758
Birth       EE               PAKISTAN                       1                    NA                -1.1946671   -2.0175867   -0.3717475
Birth       GMS-Nepal        NEPAL                          0                    NA                -1.0554400   -1.1474277   -0.9634523
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0921183   -1.3257113   -0.8585253
Birth       IRC              INDIA                          0                    NA                -0.3899707   -0.5622629   -0.2176786
Birth       IRC              INDIA                          1                    NA                -0.0019088   -0.4411187    0.4373010
Birth       Keneba           GAMBIA                         0                    NA                 0.0376734   -0.0292885    0.1046353
Birth       Keneba           GAMBIA                         1                    NA                 0.1500042   -0.2907392    0.5907475
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.1222727   -1.2564846   -0.9880609
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.6600000   -1.5592093    0.2392093
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8750911   -0.9524250   -0.7977571
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.0495805   -1.3909910   -0.7081701
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.4262740   -1.5800661   -1.2724820
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.4099246   -1.8154459   -1.0044032
6 months    CMIN             BANGLADESH                     0                    NA                -1.7696626   -1.9112513   -1.6280738
6 months    CMIN             BANGLADESH                     1                    NA                -2.0759690   -2.6187122   -1.5332258
6 months    EE               PAKISTAN                       0                    NA                -2.0557243   -2.1777882   -1.9336604
6 months    EE               PAKISTAN                       1                    NA                -2.4727611   -2.9864235   -1.9590987
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.3214183   -1.4033471   -1.2394895
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.6575364   -1.9166046   -1.3984682
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5415418   -1.6567941   -1.4262896
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.5211111   -3.0985428   -1.9436794
6 months    IRC              INDIA                          0                    NA                -1.3359328   -1.4758917   -1.1959739
6 months    IRC              INDIA                          1                    NA                -0.7101635   -1.0390930   -0.3812340
6 months    Keneba           GAMBIA                         0                    NA                -0.9055966   -0.9544806   -0.8567125
6 months    Keneba           GAMBIA                         1                    NA                -1.6262534   -1.9870414   -1.2654654
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.2135826   -1.3270160   -1.1001493
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.9178571   -2.2823123    0.4465980
6 months    MAL-ED           INDIA                          0                    NA                -1.2105608   -1.3345698   -1.0865518
6 months    MAL-ED           INDIA                          1                    NA                -1.1008468   -1.4924247   -0.7092690
6 months    MAL-ED           NEPAL                          0                    NA                -0.5467101   -0.6599035   -0.4335168
6 months    MAL-ED           NEPAL                          1                    NA                -1.1316667   -1.8892005   -0.3741328
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0709708   -1.1456091   -0.9963326
6 months    PROVIDE          BANGLADESH                     1                    NA                -2.1670170   -2.6880570   -1.6459770
6 months    ResPak           PAKISTAN                       0                    NA                -1.4775609   -1.6976979   -1.2574239
6 months    ResPak           PAKISTAN                       1                    NA                -1.2022616   -1.8180451   -0.5864781
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5431209   -0.5930765   -0.4931652
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5987907   -0.8563351   -0.3412463
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4887891   -2.5940034   -2.3835749
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.9116039   -3.1778313   -2.6453765
24 months   CMIN             BANGLADESH                     0                    NA                -2.5005794   -2.6283894   -2.3727694
24 months   CMIN             BANGLADESH                     1                    NA                -2.7794444   -3.3734067   -2.1854822
24 months   EE               PAKISTAN                       0                    NA                -2.6362122   -2.7873365   -2.4850880
24 months   EE               PAKISTAN                       1                    NA                -3.2472785   -3.5318100   -2.9627471
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8735019   -1.9623648   -1.7846389
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.0741155   -2.3944284   -1.7538026
24 months   IRC              INDIA                          0                    NA                -1.8147663   -1.9198492   -1.7096834
24 months   IRC              INDIA                          1                    NA                -1.7389590   -1.9419109   -1.5360071
24 months   Keneba           GAMBIA                         0                    NA                -1.5727277   -1.6269952   -1.5184603
24 months   Keneba           GAMBIA                         1                    NA                -2.0880663   -2.4204639   -1.7556687
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9994417   -2.1279716   -1.8709119
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.2558333   -1.7012482   -0.8104185
24 months   MAL-ED           INDIA                          0                    NA                -1.9121875   -2.0433408   -1.7810342
24 months   MAL-ED           INDIA                          1                    NA                -1.5351236   -1.9718098   -1.0984373
24 months   MAL-ED           NEPAL                          0                    NA                -1.2999550   -1.4209558   -1.1789541
24 months   MAL-ED           NEPAL                          1                    NA                -1.5900000   -2.3102086   -0.8697914
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.6017950   -1.6869036   -1.5166865
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5405176   -1.8459390   -1.2350963


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -0.8847784   -1.8820004    0.1124435
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.6911211   -0.1597459    1.5419882
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 -0.0366783   -0.2877982    0.2144416
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  0.3880619   -0.0853663    0.8614902
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.1123308   -0.3333107    0.5579722
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.4622727   -0.4468973    1.3714428
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1744895   -0.5242831    0.1753042
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0163495   -0.4193109    0.4520098
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.3063064   -0.8666138    0.2540009
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.4170368   -0.9462880    0.1122144
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.3361181   -0.6079145   -0.0643217
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.9795693   -1.5683905   -0.3907481
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                  0.6257693    0.2694947    0.9820438
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.7206568   -1.0849366   -0.3563771
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                  0.2957255   -1.0734367    1.6648877
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.1097140   -0.3008667    0.5202947
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.5849565   -1.3509005    0.1809875
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -1.0960462   -1.6219429   -0.5701494
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                  0.2752993   -0.3821535    0.9327522
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0556698   -0.3178784    0.2065388
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.4228148   -0.7090193   -0.1366102
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.2788650   -0.8864229    0.3286928
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.6110663   -0.9323340   -0.2897986
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.2006136   -0.5329398    0.1317126
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                  0.0758073   -0.1516260    0.3032406
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.5153385   -0.8524114   -0.1782656
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.7436084    0.2800199    1.2071969
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.3770640   -0.0781479    0.8322759
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.2900450   -1.0203475    0.4402574
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                  0.0612774   -0.2557102    0.3782651


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0784229   -0.1944879    0.0376421
Birth       EE               PAKISTAN                       0                    NA                 0.0249132   -0.0279516    0.0777780
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0000130   -0.0274944    0.0274684
Birth       IRC              INDIA                          0                    NA                 0.0782395   -0.0055038    0.1619828
Birth       Keneba           GAMBIA                         0                    NA                 0.0055401   -0.0079428    0.0190230
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0181679   -0.0194178    0.0557537
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0100110   -0.0231007    0.0030787
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0020868   -0.0590442    0.0632179
6 months    CMIN             BANGLADESH                     0                    NA                -0.0147750   -0.0425524    0.0130024
6 months    EE               PAKISTAN                       0                    NA                -0.0278324   -0.0653760    0.0097111
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.0319061   -0.0623381   -0.0014741
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0319425   -0.0600761   -0.0038089
6 months    IRC              INDIA                          0                    NA                 0.0976364    0.0327994    0.1624734
6 months    Keneba           GAMBIA                         0                    NA                -0.0226083   -0.0349460   -0.0102706
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0085895   -0.0316719    0.0488510
6 months    MAL-ED           INDIA                          0                    NA                -0.0009646   -0.0327817    0.0308525
6 months    MAL-ED           NEPAL                          0                    NA                -0.0148718   -0.0376268    0.0078833
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0207207   -0.0383586   -0.0030827
6 months    ResPak           PAKISTAN                       0                    NA                 0.0901086    0.0116940    0.1685233
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019621   -0.0088584    0.0049342
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0601180   -0.1061032   -0.0141328
24 months   CMIN             BANGLADESH                     0                    NA                -0.0103710   -0.0339279    0.0131858
24 months   EE               PAKISTAN                       0                    NA                -0.0337778   -0.0639961   -0.0035594
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0203603   -0.0528770    0.0121563
24 months   IRC              INDIA                          0                    NA                 0.0158325   -0.0221094    0.0537743
24 months   Keneba           GAMBIA                         0                    NA                -0.0196816   -0.0318391   -0.0075242
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0210455   -0.0001441    0.0422351
24 months   MAL-ED           INDIA                          0                    NA                 0.0259981   -0.0081826    0.0601788
24 months   MAL-ED           NEPAL                          0                    NA                -0.0076328   -0.0277780    0.0125124
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0006271   -0.0083529    0.0070987
