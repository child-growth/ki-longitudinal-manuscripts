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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    sstunted   n_cell     n
----------  ---------------  -----------------------------  ---------  ---------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1                  0       68    72
Birth       CMC-V-BCS-2002   INDIA                          1                  1        4    72
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0    72
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0    72
Birth       CONTENT          PERU                           1                  0        2     2
Birth       CONTENT          PERU                           1                  1        0     2
Birth       CONTENT          PERU                           0                  0        0     2
Birth       CONTENT          PERU                           0                  1        0     2
Birth       GMS-Nepal        NEPAL                          1                  0       98   544
Birth       GMS-Nepal        NEPAL                          1                  1        2   544
Birth       GMS-Nepal        NEPAL                          0                  0      420   544
Birth       GMS-Nepal        NEPAL                          0                  1       24   544
Birth       IRC              INDIA                          1                  0      274   287
Birth       IRC              INDIA                          1                  1       13   287
Birth       IRC              INDIA                          0                  0        0   287
Birth       IRC              INDIA                          0                  1        0   287
Birth       MAL-ED           BANGLADESH                     1                  0      190   213
Birth       MAL-ED           BANGLADESH                     1                  1        6   213
Birth       MAL-ED           BANGLADESH                     0                  0       17   213
Birth       MAL-ED           BANGLADESH                     0                  1        0   213
Birth       MAL-ED           BRAZIL                         1                  0       55    60
Birth       MAL-ED           BRAZIL                         1                  1        3    60
Birth       MAL-ED           BRAZIL                         0                  0        2    60
Birth       MAL-ED           BRAZIL                         0                  1        0    60
Birth       MAL-ED           INDIA                          1                  0       33    41
Birth       MAL-ED           INDIA                          1                  1        2    41
Birth       MAL-ED           INDIA                          0                  0        6    41
Birth       MAL-ED           INDIA                          0                  1        0    41
Birth       MAL-ED           NEPAL                          1                  0        8    25
Birth       MAL-ED           NEPAL                          1                  1        1    25
Birth       MAL-ED           NEPAL                          0                  0       16    25
Birth       MAL-ED           NEPAL                          0                  1        0    25
Birth       MAL-ED           PERU                           1                  0       37   215
Birth       MAL-ED           PERU                           1                  1        2   215
Birth       MAL-ED           PERU                           0                  0      174   215
Birth       MAL-ED           PERU                           0                  1        2   215
Birth       MAL-ED           SOUTH AFRICA                   1                  0       86    96
Birth       MAL-ED           SOUTH AFRICA                   1                  1        1    96
Birth       MAL-ED           SOUTH AFRICA                   0                  0        9    96
Birth       MAL-ED           SOUTH AFRICA                   0                  1        0    96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        5   119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        2   119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      106   119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        6   119
Birth       NIH-Birth        BANGLADESH                     1                  0      517   605
Birth       NIH-Birth        BANGLADESH                     1                  1       16   605
Birth       NIH-Birth        BANGLADESH                     0                  0       69   605
Birth       NIH-Birth        BANGLADESH                     0                  1        3   605
Birth       NIH-Crypto       BANGLADESH                     1                  0      555   732
Birth       NIH-Crypto       BANGLADESH                     1                  1        3   732
Birth       NIH-Crypto       BANGLADESH                     0                  0      167   732
Birth       NIH-Crypto       BANGLADESH                     0                  1        7   732
Birth       PROVIDE          BANGLADESH                     1                  0      488   539
Birth       PROVIDE          BANGLADESH                     1                  1        3   539
Birth       PROVIDE          BANGLADESH                     0                  0       47   539
Birth       PROVIDE          BANGLADESH                     0                  1        1   539
6 months    CMC-V-BCS-2002   INDIA                          1                  0      221   257
6 months    CMC-V-BCS-2002   INDIA                          1                  1       36   257
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0   257
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0   257
6 months    CONTENT          PERU                           1                  0      200   215
6 months    CONTENT          PERU                           1                  1        1   215
6 months    CONTENT          PERU                           0                  0       14   215
6 months    CONTENT          PERU                           0                  1        0   215
6 months    GMS-Nepal        NEPAL                          1                  0       78   441
6 months    GMS-Nepal        NEPAL                          1                  1        0   441
6 months    GMS-Nepal        NEPAL                          0                  0      346   441
6 months    GMS-Nepal        NEPAL                          0                  1       17   441
6 months    IRC              INDIA                          1                  0      285   303
6 months    IRC              INDIA                          1                  1       18   303
6 months    IRC              INDIA                          0                  0        0   303
6 months    IRC              INDIA                          0                  1        0   303
6 months    MAL-ED           BANGLADESH                     1                  0      214   240
6 months    MAL-ED           BANGLADESH                     1                  1        7   240
6 months    MAL-ED           BANGLADESH                     0                  0       18   240
6 months    MAL-ED           BANGLADESH                     0                  1        1   240
6 months    MAL-ED           BRAZIL                         1                  0      207   209
6 months    MAL-ED           BRAZIL                         1                  1        0   209
6 months    MAL-ED           BRAZIL                         0                  0        2   209
6 months    MAL-ED           BRAZIL                         0                  1        0   209
6 months    MAL-ED           INDIA                          1                  0      212   235
6 months    MAL-ED           INDIA                          1                  1        8   235
6 months    MAL-ED           INDIA                          0                  0       14   235
6 months    MAL-ED           INDIA                          0                  1        1   235
6 months    MAL-ED           NEPAL                          1                  0      102   229
6 months    MAL-ED           NEPAL                          1                  1        1   229
6 months    MAL-ED           NEPAL                          0                  0      126   229
6 months    MAL-ED           NEPAL                          0                  1        0   229
6 months    MAL-ED           PERU                           1                  0       55   270
6 months    MAL-ED           PERU                           1                  1        3   270
6 months    MAL-ED           PERU                           0                  0      205   270
6 months    MAL-ED           PERU                           0                  1        7   270
6 months    MAL-ED           SOUTH AFRICA                   1                  0      223   249
6 months    MAL-ED           SOUTH AFRICA                   1                  1        6   249
6 months    MAL-ED           SOUTH AFRICA                   0                  0       20   249
6 months    MAL-ED           SOUTH AFRICA                   0                  1        0   249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       13   245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        1   245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      218   245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       13   245
6 months    NIH-Birth        BANGLADESH                     1                  0      446   535
6 months    NIH-Birth        BANGLADESH                     1                  1       31   535
6 months    NIH-Birth        BANGLADESH                     0                  0       54   535
6 months    NIH-Birth        BANGLADESH                     0                  1        4   535
6 months    NIH-Crypto       BANGLADESH                     1                  0      521   715
6 months    NIH-Crypto       BANGLADESH                     1                  1       16   715
6 months    NIH-Crypto       BANGLADESH                     0                  0      171   715
6 months    NIH-Crypto       BANGLADESH                     0                  1        7   715
6 months    PROVIDE          BANGLADESH                     1                  0      549   604
6 months    PROVIDE          BANGLADESH                     1                  1        8   604
6 months    PROVIDE          BANGLADESH                     0                  0       41   604
6 months    PROVIDE          BANGLADESH                     0                  1        6   604
24 months   CMC-V-BCS-2002   INDIA                          1                  0      165   259
24 months   CMC-V-BCS-2002   INDIA                          1                  1       94   259
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0   259
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0   259
24 months   CONTENT          PERU                           1                  0      153   164
24 months   CONTENT          PERU                           1                  1        1   164
24 months   CONTENT          PERU                           0                  0       10   164
24 months   CONTENT          PERU                           0                  1        0   164
24 months   GMS-Nepal        NEPAL                          1                  0       69   374
24 months   GMS-Nepal        NEPAL                          1                  1        3   374
24 months   GMS-Nepal        NEPAL                          0                  0      268   374
24 months   GMS-Nepal        NEPAL                          0                  1       34   374
24 months   IRC              INDIA                          1                  0      282   305
24 months   IRC              INDIA                          1                  1       23   305
24 months   IRC              INDIA                          0                  0        0   305
24 months   IRC              INDIA                          0                  1        0   305
24 months   MAL-ED           BANGLADESH                     1                  0      168   212
24 months   MAL-ED           BANGLADESH                     1                  1       27   212
24 months   MAL-ED           BANGLADESH                     0                  0       16   212
24 months   MAL-ED           BANGLADESH                     0                  1        1   212
24 months   MAL-ED           BRAZIL                         1                  0      166   169
24 months   MAL-ED           BRAZIL                         1                  1        1   169
24 months   MAL-ED           BRAZIL                         0                  0        2   169
24 months   MAL-ED           BRAZIL                         0                  1        0   169
24 months   MAL-ED           INDIA                          1                  0      184   227
24 months   MAL-ED           INDIA                          1                  1       28   227
24 months   MAL-ED           INDIA                          0                  0       13   227
24 months   MAL-ED           INDIA                          0                  1        2   227
24 months   MAL-ED           NEPAL                          1                  0       95   221
24 months   MAL-ED           NEPAL                          1                  1        3   221
24 months   MAL-ED           NEPAL                          0                  0      119   221
24 months   MAL-ED           NEPAL                          0                  1        4   221
24 months   MAL-ED           PERU                           1                  0       46   201
24 months   MAL-ED           PERU                           1                  1        3   201
24 months   MAL-ED           PERU                           0                  0      140   201
24 months   MAL-ED           PERU                           0                  1       12   201
24 months   MAL-ED           SOUTH AFRICA                   1                  0      195   238
24 months   MAL-ED           SOUTH AFRICA                   1                  1       25   238
24 months   MAL-ED           SOUTH AFRICA                   0                  0       16   238
24 months   MAL-ED           SOUTH AFRICA                   0                  1        2   238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        9   212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        3   212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      134   212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       66   212
24 months   NIH-Birth        BANGLADESH                     1                  0      304   427
24 months   NIH-Birth        BANGLADESH                     1                  1       73   427
24 months   NIH-Birth        BANGLADESH                     0                  0       28   427
24 months   NIH-Birth        BANGLADESH                     0                  1       22   427
24 months   NIH-Crypto       BANGLADESH                     1                  0      323   514
24 months   NIH-Crypto       BANGLADESH                     1                  1       23   514
24 months   NIH-Crypto       BANGLADESH                     0                  0      155   514
24 months   NIH-Crypto       BANGLADESH                     0                  1       13   514
24 months   PROVIDE          BANGLADESH                     1                  0      492   578
24 months   PROVIDE          BANGLADESH                     1                  1       41   578
24 months   PROVIDE          BANGLADESH                     0                  0       34   578
24 months   PROVIDE          BANGLADESH                     0                  1       11   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/1cab4419-3ae6-48af-9666-7f061da8f850/a7a61d27-fe0a-4396-84d0-2f50bf4ab9c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1cab4419-3ae6-48af-9666-7f061da8f850/a7a61d27-fe0a-4396-84d0-2f50bf4ab9c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1cab4419-3ae6-48af-9666-7f061da8f850/a7a61d27-fe0a-4396-84d0-2f50bf4ab9c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1cab4419-3ae6-48af-9666-7f061da8f850/a7a61d27-fe0a-4396-84d0-2f50bf4ab9c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0297952   0.0154049   0.0441854
6 months    NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    PROVIDE      BANGLADESH   1                    NA                0.0143627   0.0044736   0.0242517
6 months    PROVIDE      BANGLADESH   0                    NA                0.1276596   0.0321760   0.2231431
24 months   NIH-Birth    BANGLADESH   1                    NA                0.1936340   0.1536999   0.2335680
24 months   NIH-Birth    BANGLADESH   0                    NA                0.4400000   0.3022497   0.5777503
24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0664740   0.0402002   0.0927477
24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0773810   0.0369378   0.1178241
24 months   PROVIDE      BANGLADESH   1                    NA                0.0769231   0.0542814   0.0995647
24 months   PROVIDE      BANGLADESH   0                    NA                0.2444444   0.1187717   0.3701172


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    PROVIDE      BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2224824   0.1829871   0.2619778
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE      BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ---------  ----------  ----------
6 months    NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    NIH-Crypto   BANGLADESH   0                    1                 1.319874   0.5515999    3.158206
6 months    PROVIDE      BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    PROVIDE      BANGLADESH   0                    1                 8.888298   3.2159417   24.565693
24 months   NIH-Birth    BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   NIH-Birth    BANGLADESH   0                    1                 2.272329   1.5619140    3.305866
24 months   NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   NIH-Crypto   BANGLADESH   0                    1                 1.164079   0.6045058    2.241631
24 months   PROVIDE      BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   PROVIDE      BANGLADESH   0                    1                 3.177778   1.7572854    5.746518


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0023727   -0.0055977   0.0103431
6 months    PROVIDE      BANGLADESH   1                    NA                0.0088162    0.0009634   0.0166689
24 months   NIH-Birth    BANGLADESH   1                    NA                0.0288485    0.0104466   0.0472504
24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0035649   -0.0122046   0.0193344
24 months   PROVIDE      BANGLADESH   1                    NA                0.0130423    0.0024474   0.0236372


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0737592   -0.2081364   0.2898798
6 months    PROVIDE      BANGLADESH   1                    NA                0.3803539    0.0300934   0.6041256
24 months   NIH-Birth    BANGLADESH   1                    NA                0.1296663    0.0446808   0.2070915
24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0508992   -0.2025819   0.2509513
24 months   PROVIDE      BANGLADESH   1                    NA                0.1449704    0.0245485   0.2505259
