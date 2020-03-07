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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        impfloor    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                0       59      68
Birth       CMC-V-BCS-2002   INDIA                          1                1        9      68
Birth       CMC-V-BCS-2002   INDIA                          0                0        0      68
Birth       CMC-V-BCS-2002   INDIA                          0                1        0      68
Birth       CONTENT          PERU                           1                0        2       2
Birth       CONTENT          PERU                           1                1        0       2
Birth       CONTENT          PERU                           0                0        0       2
Birth       CONTENT          PERU                           0                1        0       2
Birth       GMS-Nepal        NEPAL                          1                0       79     503
Birth       GMS-Nepal        NEPAL                          1                1       18     503
Birth       GMS-Nepal        NEPAL                          0                0      329     503
Birth       GMS-Nepal        NEPAL                          0                1       77     503
Birth       IRC              INDIA                          1                0      190     253
Birth       IRC              INDIA                          1                1       63     253
Birth       IRC              INDIA                          0                0        0     253
Birth       IRC              INDIA                          0                1        0     253
Birth       JiVitA-3         BANGLADESH                     1                0     1083   17966
Birth       JiVitA-3         BANGLADESH                     1                1      132   17966
Birth       JiVitA-3         BANGLADESH                     0                0    14915   17966
Birth       JiVitA-3         BANGLADESH                     0                1     1836   17966
Birth       JiVitA-4         BANGLADESH                     1                0      246    2394
Birth       JiVitA-4         BANGLADESH                     1                1       25    2394
Birth       JiVitA-4         BANGLADESH                     0                0     1910    2394
Birth       JiVitA-4         BANGLADESH                     0                1      213    2394
Birth       MAL-ED           BANGLADESH                     1                0      150     201
Birth       MAL-ED           BANGLADESH                     1                1       35     201
Birth       MAL-ED           BANGLADESH                     0                0       16     201
Birth       MAL-ED           BANGLADESH                     0                1        0     201
Birth       MAL-ED           BRAZIL                         1                0       53      57
Birth       MAL-ED           BRAZIL                         1                1        2      57
Birth       MAL-ED           BRAZIL                         0                0        2      57
Birth       MAL-ED           BRAZIL                         0                1        0      57
Birth       MAL-ED           INDIA                          1                0       29      39
Birth       MAL-ED           INDIA                          1                1        4      39
Birth       MAL-ED           INDIA                          0                0        5      39
Birth       MAL-ED           INDIA                          0                1        1      39
Birth       MAL-ED           NEPAL                          1                0        7      24
Birth       MAL-ED           NEPAL                          1                1        1      24
Birth       MAL-ED           NEPAL                          0                0       15      24
Birth       MAL-ED           NEPAL                          0                1        1      24
Birth       MAL-ED           PERU                           1                0       36     210
Birth       MAL-ED           PERU                           1                1        1     210
Birth       MAL-ED           PERU                           0                0      169     210
Birth       MAL-ED           PERU                           0                1        4     210
Birth       MAL-ED           SOUTH AFRICA                   1                0       76      95
Birth       MAL-ED           SOUTH AFRICA                   1                1       10      95
Birth       MAL-ED           SOUTH AFRICA                   0                0        9      95
Birth       MAL-ED           SOUTH AFRICA                   0                1        0      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        5     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      105     111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        1     111
Birth       NIH-Birth        BANGLADESH                     1                0      361     572
Birth       NIH-Birth        BANGLADESH                     1                1      144     572
Birth       NIH-Birth        BANGLADESH                     0                0       45     572
Birth       NIH-Birth        BANGLADESH                     0                1       22     572
Birth       NIH-Crypto       BANGLADESH                     1                0      421     707
Birth       NIH-Crypto       BANGLADESH                     1                1      121     707
Birth       NIH-Crypto       BANGLADESH                     0                0      114     707
Birth       NIH-Crypto       BANGLADESH                     0                1       51     707
Birth       PROVIDE          BANGLADESH                     1                0      380     532
Birth       PROVIDE          BANGLADESH                     1                1      105     532
Birth       PROVIDE          BANGLADESH                     0                0       35     532
Birth       PROVIDE          BANGLADESH                     0                1       12     532
6 months    CMC-V-BCS-2002   INDIA                          1                0      230     257
6 months    CMC-V-BCS-2002   INDIA                          1                1       27     257
6 months    CMC-V-BCS-2002   INDIA                          0                0        0     257
6 months    CMC-V-BCS-2002   INDIA                          0                1        0     257
6 months    CONTENT          PERU                           1                0      201     215
6 months    CONTENT          PERU                           1                1        0     215
6 months    CONTENT          PERU                           0                0       14     215
6 months    CONTENT          PERU                           0                1        0     215
6 months    GMS-Nepal        NEPAL                          1                0       70     441
6 months    GMS-Nepal        NEPAL                          1                1        8     441
6 months    GMS-Nepal        NEPAL                          0                0      330     441
6 months    GMS-Nepal        NEPAL                          0                1       33     441
6 months    IRC              INDIA                          1                0      260     304
6 months    IRC              INDIA                          1                1       44     304
6 months    IRC              INDIA                          0                0        0     304
6 months    IRC              INDIA                          0                1        0     304
6 months    JiVitA-3         BANGLADESH                     1                0     1361   16746
6 months    JiVitA-3         BANGLADESH                     1                1      102   16746
6 months    JiVitA-3         BANGLADESH                     0                0    13972   16746
6 months    JiVitA-3         BANGLADESH                     0                1     1311   16746
6 months    JiVitA-4         BANGLADESH                     1                0      575    4826
6 months    JiVitA-4         BANGLADESH                     1                1       15    4826
6 months    JiVitA-4         BANGLADESH                     0                0     3976    4826
6 months    JiVitA-4         BANGLADESH                     0                1      260    4826
6 months    MAL-ED           BANGLADESH                     1                0      214     240
6 months    MAL-ED           BANGLADESH                     1                1        7     240
6 months    MAL-ED           BANGLADESH                     0                0       18     240
6 months    MAL-ED           BANGLADESH                     0                1        1     240
6 months    MAL-ED           BRAZIL                         1                0      206     209
6 months    MAL-ED           BRAZIL                         1                1        1     209
6 months    MAL-ED           BRAZIL                         0                0        2     209
6 months    MAL-ED           BRAZIL                         0                1        0     209
6 months    MAL-ED           INDIA                          1                0      201     235
6 months    MAL-ED           INDIA                          1                1       19     235
6 months    MAL-ED           INDIA                          0                0       15     235
6 months    MAL-ED           INDIA                          0                1        0     235
6 months    MAL-ED           NEPAL                          1                0      101     229
6 months    MAL-ED           NEPAL                          1                1        2     229
6 months    MAL-ED           NEPAL                          0                0      124     229
6 months    MAL-ED           NEPAL                          0                1        2     229
6 months    MAL-ED           PERU                           1                0       58     270
6 months    MAL-ED           PERU                           1                1        0     270
6 months    MAL-ED           PERU                           0                0      212     270
6 months    MAL-ED           PERU                           0                1        0     270
6 months    MAL-ED           SOUTH AFRICA                   1                0      222     249
6 months    MAL-ED           SOUTH AFRICA                   1                1        7     249
6 months    MAL-ED           SOUTH AFRICA                   0                0       20     249
6 months    MAL-ED           SOUTH AFRICA                   0                1        0     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       14     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      230     245
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        1     245
6 months    NIH-Birth        BANGLADESH                     1                0      448     535
6 months    NIH-Birth        BANGLADESH                     1                1       29     535
6 months    NIH-Birth        BANGLADESH                     0                0       52     535
6 months    NIH-Birth        BANGLADESH                     0                1        6     535
6 months    NIH-Crypto       BANGLADESH                     1                0      523     715
6 months    NIH-Crypto       BANGLADESH                     1                1       14     715
6 months    NIH-Crypto       BANGLADESH                     0                0      171     715
6 months    NIH-Crypto       BANGLADESH                     0                1        7     715
6 months    PROVIDE          BANGLADESH                     1                0      535     603
6 months    PROVIDE          BANGLADESH                     1                1       22     603
6 months    PROVIDE          BANGLADESH                     0                0       43     603
6 months    PROVIDE          BANGLADESH                     0                1        3     603
24 months   CMC-V-BCS-2002   INDIA                          1                0      247     260
24 months   CMC-V-BCS-2002   INDIA                          1                1       13     260
24 months   CMC-V-BCS-2002   INDIA                          0                0        0     260
24 months   CMC-V-BCS-2002   INDIA                          0                1        0     260
24 months   CONTENT          PERU                           1                0      153     164
24 months   CONTENT          PERU                           1                1        1     164
24 months   CONTENT          PERU                           0                0       10     164
24 months   CONTENT          PERU                           0                1        0     164
24 months   GMS-Nepal        NEPAL                          1                0       54     373
24 months   GMS-Nepal        NEPAL                          1                1       18     373
24 months   GMS-Nepal        NEPAL                          0                0      241     373
24 months   GMS-Nepal        NEPAL                          0                1       60     373
24 months   IRC              INDIA                          1                0      282     305
24 months   IRC              INDIA                          1                1       23     305
24 months   IRC              INDIA                          0                0        0     305
24 months   IRC              INDIA                          0                1        0     305
24 months   JiVitA-3         BANGLADESH                     1                0      547    8580
24 months   JiVitA-3         BANGLADESH                     1                1      125    8580
24 months   JiVitA-3         BANGLADESH                     0                0     6163    8580
24 months   JiVitA-3         BANGLADESH                     0                1     1745    8580
24 months   JiVitA-4         BANGLADESH                     1                0      480    4729
24 months   JiVitA-4         BANGLADESH                     1                1       85    4729
24 months   JiVitA-4         BANGLADESH                     0                0     3329    4729
24 months   JiVitA-4         BANGLADESH                     0                1      835    4729
24 months   MAL-ED           BANGLADESH                     1                0      177     212
24 months   MAL-ED           BANGLADESH                     1                1       18     212
24 months   MAL-ED           BANGLADESH                     0                0       14     212
24 months   MAL-ED           BANGLADESH                     0                1        3     212
24 months   MAL-ED           BRAZIL                         1                0      164     169
24 months   MAL-ED           BRAZIL                         1                1        3     169
24 months   MAL-ED           BRAZIL                         0                0        2     169
24 months   MAL-ED           BRAZIL                         0                1        0     169
24 months   MAL-ED           INDIA                          1                0      188     227
24 months   MAL-ED           INDIA                          1                1       24     227
24 months   MAL-ED           INDIA                          0                0       12     227
24 months   MAL-ED           INDIA                          0                1        3     227
24 months   MAL-ED           NEPAL                          1                0       97     221
24 months   MAL-ED           NEPAL                          1                1        1     221
24 months   MAL-ED           NEPAL                          0                0      119     221
24 months   MAL-ED           NEPAL                          0                1        4     221
24 months   MAL-ED           PERU                           1                0       48     201
24 months   MAL-ED           PERU                           1                1        1     201
24 months   MAL-ED           PERU                           0                0      149     201
24 months   MAL-ED           PERU                           0                1        3     201
24 months   MAL-ED           SOUTH AFRICA                   1                0      219     238
24 months   MAL-ED           SOUTH AFRICA                   1                1        1     238
24 months   MAL-ED           SOUTH AFRICA                   0                0       18     238
24 months   MAL-ED           SOUTH AFRICA                   0                1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       12     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      196     212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        4     212
24 months   NIH-Birth        BANGLADESH                     1                0      329     426
24 months   NIH-Birth        BANGLADESH                     1                1       47     426
24 months   NIH-Birth        BANGLADESH                     0                0       44     426
24 months   NIH-Birth        BANGLADESH                     0                1        6     426
24 months   NIH-Crypto       BANGLADESH                     1                0      314     514
24 months   NIH-Crypto       BANGLADESH                     1                1       32     514
24 months   NIH-Crypto       BANGLADESH                     0                0      155     514
24 months   NIH-Crypto       BANGLADESH                     0                1       13     514
24 months   PROVIDE          BANGLADESH                     1                0      478     579
24 months   PROVIDE          BANGLADESH                     1                1       55     579
24 months   PROVIDE          BANGLADESH                     0                0       39     579
24 months   PROVIDE          BANGLADESH                     0                1        7     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
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
![](/tmp/46dff5a1-6fe0-45d9-81c0-92f8f3fff153/cf8eb0f8-6a01-4a76-9e83-7fe8d1888c69/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/46dff5a1-6fe0-45d9-81c0-92f8f3fff153/cf8eb0f8-6a01-4a76-9e83-7fe8d1888c69/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/46dff5a1-6fe0-45d9-81c0-92f8f3fff153/cf8eb0f8-6a01-4a76-9e83-7fe8d1888c69/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/46dff5a1-6fe0-45d9-81c0-92f8f3fff153/cf8eb0f8-6a01-4a76-9e83-7fe8d1888c69/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        1                    NA                0.1942322   0.1172564   0.2712080
Birth       GMS-Nepal    NEPAL        0                    NA                0.1895173   0.1513491   0.2276856
Birth       JiVitA-3     BANGLADESH   1                    NA                0.0977987   0.0813001   0.1142972
Birth       JiVitA-3     BANGLADESH   0                    NA                0.1095526   0.1041782   0.1149270
Birth       JiVitA-4     BANGLADESH   1                    NA                0.1189959   0.0525975   0.1853943
Birth       JiVitA-4     BANGLADESH   0                    NA                0.0999554   0.0838479   0.1160629
Birth       NIH-Birth    BANGLADESH   1                    NA                0.2872431   0.2477140   0.3267722
Birth       NIH-Birth    BANGLADESH   0                    NA                0.3044437   0.1905147   0.4183727
Birth       NIH-Crypto   BANGLADESH   1                    NA                0.2283744   0.1929209   0.2638279
Birth       NIH-Crypto   BANGLADESH   0                    NA                0.2686938   0.1985554   0.3388322
Birth       PROVIDE      BANGLADESH   1                    NA                0.2175936   0.1808659   0.2543213
Birth       PROVIDE      BANGLADESH   0                    NA                0.2452778   0.1247764   0.3657793
6 months    GMS-Nepal    NEPAL        1                    NA                0.1025641   0.0351589   0.1699693
6 months    GMS-Nepal    NEPAL        0                    NA                0.0909091   0.0613020   0.1205161
6 months    JiVitA-3     BANGLADESH   1                    NA                0.0964048   0.0745657   0.1182439
6 months    JiVitA-3     BANGLADESH   0                    NA                0.0841396   0.0790102   0.0892689
6 months    JiVitA-4     BANGLADESH   1                    NA                0.0348731   0.0175359   0.0522103
6 months    JiVitA-4     BANGLADESH   0                    NA                0.0596697   0.0493349   0.0700045
6 months    NIH-Birth    BANGLADESH   1                    NA                0.0607966   0.0393324   0.0822608
6 months    NIH-Birth    BANGLADESH   0                    NA                0.1034483   0.0249989   0.1818977
6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0260708   0.0125841   0.0395575
6 months    NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
24 months   GMS-Nepal    NEPAL        1                    NA                0.2343164   0.1313574   0.3372754
24 months   GMS-Nepal    NEPAL        0                    NA                0.1989102   0.1536102   0.2442102
24 months   JiVitA-3     BANGLADESH   1                    NA                0.2499322   0.2047321   0.2951322
24 months   JiVitA-3     BANGLADESH   0                    NA                0.2183810   0.2080468   0.2287153
24 months   JiVitA-4     BANGLADESH   1                    NA                0.1527576   0.1043931   0.2011221
24 months   JiVitA-4     BANGLADESH   0                    NA                0.2019392   0.1855942   0.2182841
24 months   NIH-Birth    BANGLADESH   1                    NA                0.1250000   0.0915325   0.1584675
24 months   NIH-Birth    BANGLADESH   0                    NA                0.1200000   0.0298210   0.2101790
24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0928068   0.0622260   0.1233876
24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0773541   0.0372513   0.1174569
24 months   PROVIDE      BANGLADESH   1                    NA                0.1031895   0.0773414   0.1290376
24 months   PROVIDE      BANGLADESH   0                    NA                0.1521739   0.0482853   0.2560625


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal    NEPAL        NA                   NA                0.1888668   0.1546279   0.2231057
Birth       JiVitA-3     BANGLADESH   NA                   NA                0.1095402   0.1044185   0.1146620
Birth       JiVitA-4     BANGLADESH   NA                   NA                0.0994152   0.0840401   0.1147903
Birth       NIH-Birth    BANGLADESH   NA                   NA                0.2902098   0.2529834   0.3274362
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE      BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    GMS-Nepal    NEPAL        NA                   NA                0.0929705   0.0658371   0.1201040
6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0843784   0.0795716   0.0891851
6 months    JiVitA-4     BANGLADESH   NA                   NA                0.0569830   0.0481380   0.0658280
6 months    NIH-Birth    BANGLADESH   NA                   NA                0.0654206   0.0444484   0.0863927
6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
24 months   GMS-Nepal    NEPAL        NA                   NA                0.2091153   0.1677890   0.2504415
24 months   JiVitA-3     BANGLADESH   NA                   NA                0.2179487   0.2080959   0.2278016
24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1945443   0.1813282   0.2077604
24 months   NIH-Birth    BANGLADESH   NA                   NA                0.1244131   0.0930343   0.1557919
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE      BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL        0                    1                 0.9757253   0.6256549   1.521669
Birth       JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH   0                    1                 1.1201855   0.9390159   1.336309
Birth       JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH   0                    1                 0.8399901   0.4699517   1.501395
Birth       NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH   0                    1                 1.0598819   0.7116201   1.578580
Birth       NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   0                    1                 1.1765494   0.8695261   1.591980
Birth       PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       PROVIDE      BANGLADESH   0                    1                 1.1272292   0.6711039   1.893367
6 months    GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal    NEPAL        0                    1                 0.8863636   0.4256670   1.845669
6 months    JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH   0                    1                 0.8727734   0.6910618   1.102265
6 months    JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH   0                    1                 1.7110515   1.0090570   2.901419
6 months    NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH   0                    1                 1.7015458   0.7371519   3.927628
6 months    NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH   0                    1                 1.5084270   0.6182469   3.680329
24 months   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal    NEPAL        0                    1                 0.8488959   0.5170878   1.393621
24 months   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH   0                    1                 0.8737611   0.7275978   1.049286
24 months   JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH   0                    1                 1.3219585   0.9556246   1.828725
24 months   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH   0                    1                 0.9600000   0.4323222   2.131743
24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   0                    1                 0.8334963   0.4504417   1.542300
24 months   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   PROVIDE      BANGLADESH   0                    1                 1.4747036   0.7126652   3.051574


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        1                    NA                -0.0053654   -0.0748630   0.0641321
Birth       JiVitA-3     BANGLADESH   1                    NA                 0.0117416   -0.0045997   0.0280828
Birth       JiVitA-4     BANGLADESH   1                    NA                -0.0195807   -0.0850069   0.0458455
Birth       NIH-Birth    BANGLADESH   1                    NA                 0.0029667   -0.0111588   0.0170923
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.0149070   -0.0042661   0.0340802
Birth       PROVIDE      BANGLADESH   1                    NA                 0.0023312   -0.0091239   0.0137864
6 months    GMS-Nepal    NEPAL        1                    NA                -0.0095936   -0.0701945   0.0510073
6 months    JiVitA-3     BANGLADESH   1                    NA                -0.0120265   -0.0333115   0.0092586
6 months    JiVitA-4     BANGLADESH   1                    NA                 0.0221099    0.0033584   0.0408614
6 months    NIH-Birth    BANGLADESH   1                    NA                 0.0046239   -0.0042649   0.0135127
6 months    NIH-Crypto   BANGLADESH   1                    NA                 0.0032999   -0.0045774   0.0111771
24 months   GMS-Nepal    NEPAL        1                    NA                -0.0252011   -0.1166465   0.0662442
24 months   JiVitA-3     BANGLADESH   1                    NA                -0.0319835   -0.0757457   0.0117788
24 months   JiVitA-4     BANGLADESH   1                    NA                 0.0417867   -0.0050607   0.0886342
24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0005869   -0.0118777   0.0107040
24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0052582   -0.0219423   0.0114260
24 months   PROVIDE      BANGLADESH   1                    NA                 0.0038917   -0.0046819   0.0124653


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL        1                    NA                -0.0284085   -0.4709891   0.2810116
Birth       JiVitA-3     BANGLADESH   1                    NA                 0.1071897   -0.0545312   0.2441093
Birth       JiVitA-4     BANGLADESH   1                    NA                -0.1969590   -1.0783150   0.3106383
Birth       NIH-Birth    BANGLADESH   1                    NA                 0.0102227   -0.0396562   0.0577085
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.0612749   -0.0205737   0.1365593
Birth       PROVIDE      BANGLADESH   1                    NA                 0.0106001   -0.0428591   0.0613190
6 months    GMS-Nepal    NEPAL        1                    NA                -0.1031895   -0.9908790   0.3886986
6 months    JiVitA-3     BANGLADESH   1                    NA                -0.1425301   -0.4249273   0.0839006
6 months    JiVitA-4     BANGLADESH   1                    NA                 0.3880089   -0.0166111   0.6315866
6 months    NIH-Birth    BANGLADESH   1                    NA                 0.0706798   -0.0737150   0.1956563
6 months    NIH-Crypto   BANGLADESH   1                    NA                 0.1123526   -0.1953934   0.3408714
24 months   GMS-Nepal    NEPAL        1                    NA                -0.1205131   -0.6539015   0.2408559
24 months   JiVitA-3     BANGLADESH   1                    NA                -0.1467476   -0.3660387   0.0373405
24 months   JiVitA-4     BANGLADESH   1                    NA                 0.2147929   -0.0671378   0.4222393
24 months   NIH-Birth    BANGLADESH   1                    NA                -0.0047170   -0.0996885   0.0820526
24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0600598   -0.2682746   0.1139720
24 months   PROVIDE      BANGLADESH   1                    NA                 0.0363433   -0.0467606   0.1128494
