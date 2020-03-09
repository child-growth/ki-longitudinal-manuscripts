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

**Intervention Variable:** nrooms

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
* W_nchldlt5
* W_parity
* impfloor
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
* delta_W_nchldlt5
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

agecat      studyid          country                        nrooms    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          4+             5      86
Birth       CMC-V-BCS-2002   INDIA                          1             35      86
Birth       CMC-V-BCS-2002   INDIA                          2             27      86
Birth       CMC-V-BCS-2002   INDIA                          3             19      86
Birth       COHORTS          INDIA                          4+            90    4454
Birth       COHORTS          INDIA                          1           2879    4454
Birth       COHORTS          INDIA                          2           1328    4454
Birth       COHORTS          INDIA                          3            157    4454
Birth       CONTENT          PERU                           4+             1       2
Birth       CONTENT          PERU                           1              0       2
Birth       CONTENT          PERU                           2              1       2
Birth       CONTENT          PERU                           3              0       2
Birth       GMS-Nepal        NEPAL                          4+           297     641
Birth       GMS-Nepal        NEPAL                          1             42     641
Birth       GMS-Nepal        NEPAL                          2            135     641
Birth       GMS-Nepal        NEPAL                          3            167     641
Birth       IRC              INDIA                          4+            14     341
Birth       IRC              INDIA                          1            156     341
Birth       IRC              INDIA                          2            140     341
Birth       IRC              INDIA                          3             31     341
Birth       JiVitA-3         BANGLADESH                     4+           662   17989
Birth       JiVitA-3         BANGLADESH                     1          11170   17989
Birth       JiVitA-3         BANGLADESH                     2           4609   17989
Birth       JiVitA-3         BANGLADESH                     3           1548   17989
Birth       JiVitA-4         BANGLADESH                     4+           111    2394
Birth       JiVitA-4         BANGLADESH                     1           1430    2394
Birth       JiVitA-4         BANGLADESH                     2            610    2394
Birth       JiVitA-4         BANGLADESH                     3            243    2394
Birth       MAL-ED           BANGLADESH                     4+            12     201
Birth       MAL-ED           BANGLADESH                     1            121     201
Birth       MAL-ED           BANGLADESH                     2             43     201
Birth       MAL-ED           BANGLADESH                     3             25     201
Birth       MAL-ED           BRAZIL                         4+            29      57
Birth       MAL-ED           BRAZIL                         1              0      57
Birth       MAL-ED           BRAZIL                         2             10      57
Birth       MAL-ED           BRAZIL                         3             18      57
Birth       MAL-ED           INDIA                          4+             2      39
Birth       MAL-ED           INDIA                          1             17      39
Birth       MAL-ED           INDIA                          2             16      39
Birth       MAL-ED           INDIA                          3              4      39
Birth       MAL-ED           NEPAL                          4+            15      25
Birth       MAL-ED           NEPAL                          1              6      25
Birth       MAL-ED           NEPAL                          2              2      25
Birth       MAL-ED           NEPAL                          3              2      25
Birth       MAL-ED           PERU                           4+           103     210
Birth       MAL-ED           PERU                           1             13     210
Birth       MAL-ED           PERU                           2             45     210
Birth       MAL-ED           PERU                           3             49     210
Birth       MAL-ED           SOUTH AFRICA                   4+            66      95
Birth       MAL-ED           SOUTH AFRICA                   1              5      95
Birth       MAL-ED           SOUTH AFRICA                   2             12      95
Birth       MAL-ED           SOUTH AFRICA                   3             12      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            45     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             28     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             30     112
Birth       NIH-Crypto       BANGLADESH                     4+            90     707
Birth       NIH-Crypto       BANGLADESH                     1            338     707
Birth       NIH-Crypto       BANGLADESH                     2            181     707
Birth       NIH-Crypto       BANGLADESH                     3             98     707
Birth       PROVIDE          BANGLADESH                     4+            18     532
Birth       PROVIDE          BANGLADESH                     1            388     532
Birth       PROVIDE          BANGLADESH                     2             79     532
Birth       PROVIDE          BANGLADESH                     3             47     532
6 months    CMC-V-BCS-2002   INDIA                          4+            14     368
6 months    CMC-V-BCS-2002   INDIA                          1            197     368
6 months    CMC-V-BCS-2002   INDIA                          2            106     368
6 months    CMC-V-BCS-2002   INDIA                          3             51     368
6 months    COHORTS          INDIA                          4+            93    4955
6 months    COHORTS          INDIA                          1           3206    4955
6 months    COHORTS          INDIA                          2           1474    4955
6 months    COHORTS          INDIA                          3            182    4955
6 months    CONTENT          PERU                           4+            78     215
6 months    CONTENT          PERU                           1             44     215
6 months    CONTENT          PERU                           2             54     215
6 months    CONTENT          PERU                           3             39     215
6 months    GMS-Nepal        NEPAL                          4+           268     564
6 months    GMS-Nepal        NEPAL                          1             40     564
6 months    GMS-Nepal        NEPAL                          2            115     564
6 months    GMS-Nepal        NEPAL                          3            141     564
6 months    IRC              INDIA                          4+            17     406
6 months    IRC              INDIA                          1            183     406
6 months    IRC              INDIA                          2            170     406
6 months    IRC              INDIA                          3             36     406
6 months    JiVitA-3         BANGLADESH                     4+           742   16773
6 months    JiVitA-3         BANGLADESH                     1           9611   16773
6 months    JiVitA-3         BANGLADESH                     2           4732   16773
6 months    JiVitA-3         BANGLADESH                     3           1688   16773
6 months    JiVitA-4         BANGLADESH                     4+           262    4827
6 months    JiVitA-4         BANGLADESH                     1           2851    4827
6 months    JiVitA-4         BANGLADESH                     2           1226    4827
6 months    JiVitA-4         BANGLADESH                     3            488    4827
6 months    MAL-ED           BANGLADESH                     4+            12     240
6 months    MAL-ED           BANGLADESH                     1            150     240
6 months    MAL-ED           BANGLADESH                     2             50     240
6 months    MAL-ED           BANGLADESH                     3             28     240
6 months    MAL-ED           BRAZIL                         4+           126     209
6 months    MAL-ED           BRAZIL                         1              4     209
6 months    MAL-ED           BRAZIL                         2             20     209
6 months    MAL-ED           BRAZIL                         3             59     209
6 months    MAL-ED           INDIA                          4+            25     235
6 months    MAL-ED           INDIA                          1             84     235
6 months    MAL-ED           INDIA                          2             78     235
6 months    MAL-ED           INDIA                          3             48     235
6 months    MAL-ED           NEPAL                          4+           131     236
6 months    MAL-ED           NEPAL                          1             52     236
6 months    MAL-ED           NEPAL                          2             31     236
6 months    MAL-ED           NEPAL                          3             22     236
6 months    MAL-ED           PERU                           4+           139     270
6 months    MAL-ED           PERU                           1             19     270
6 months    MAL-ED           PERU                           2             50     270
6 months    MAL-ED           PERU                           3             62     270
6 months    MAL-ED           SOUTH AFRICA                   4+           191     249
6 months    MAL-ED           SOUTH AFRICA                   1             14     249
6 months    MAL-ED           SOUTH AFRICA                   2             21     249
6 months    MAL-ED           SOUTH AFRICA                   3             23     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           108     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             62     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             64     247
6 months    NIH-Crypto       BANGLADESH                     4+            91     715
6 months    NIH-Crypto       BANGLADESH                     1            339     715
6 months    NIH-Crypto       BANGLADESH                     2            184     715
6 months    NIH-Crypto       BANGLADESH                     3            101     715
6 months    PROVIDE          BANGLADESH                     4+            21     603
6 months    PROVIDE          BANGLADESH                     1            430     603
6 months    PROVIDE          BANGLADESH                     2             94     603
6 months    PROVIDE          BANGLADESH                     3             58     603
24 months   CMC-V-BCS-2002   INDIA                          4+            14     372
24 months   CMC-V-BCS-2002   INDIA                          1            201     372
24 months   CMC-V-BCS-2002   INDIA                          2            106     372
24 months   CMC-V-BCS-2002   INDIA                          3             51     372
24 months   COHORTS          INDIA                          4+            75    3719
24 months   COHORTS          INDIA                          1           2287    3719
24 months   COHORTS          INDIA                          2           1207    3719
24 months   COHORTS          INDIA                          3            150    3719
24 months   CONTENT          PERU                           4+            63     164
24 months   CONTENT          PERU                           1             30     164
24 months   CONTENT          PERU                           2             39     164
24 months   CONTENT          PERU                           3             32     164
24 months   GMS-Nepal        NEPAL                          4+           231     487
24 months   GMS-Nepal        NEPAL                          1             35     487
24 months   GMS-Nepal        NEPAL                          2            106     487
24 months   GMS-Nepal        NEPAL                          3            115     487
24 months   IRC              INDIA                          4+            17     407
24 months   IRC              INDIA                          1            184     407
24 months   IRC              INDIA                          2            170     407
24 months   IRC              INDIA                          3             36     407
24 months   JiVitA-3         BANGLADESH                     4+           365    8591
24 months   JiVitA-3         BANGLADESH                     1           5036    8591
24 months   JiVitA-3         BANGLADESH                     2           2394    8591
24 months   JiVitA-3         BANGLADESH                     3            796    8591
24 months   JiVitA-4         BANGLADESH                     4+           251    4730
24 months   JiVitA-4         BANGLADESH                     1           2781    4730
24 months   JiVitA-4         BANGLADESH                     2           1208    4730
24 months   JiVitA-4         BANGLADESH                     3            490    4730
24 months   MAL-ED           BANGLADESH                     4+            11     212
24 months   MAL-ED           BANGLADESH                     1            134     212
24 months   MAL-ED           BANGLADESH                     2             40     212
24 months   MAL-ED           BANGLADESH                     3             27     212
24 months   MAL-ED           BRAZIL                         4+           104     169
24 months   MAL-ED           BRAZIL                         1              0     169
24 months   MAL-ED           BRAZIL                         2             16     169
24 months   MAL-ED           BRAZIL                         3             49     169
24 months   MAL-ED           INDIA                          4+            25     227
24 months   MAL-ED           INDIA                          1             82     227
24 months   MAL-ED           INDIA                          2             74     227
24 months   MAL-ED           INDIA                          3             46     227
24 months   MAL-ED           NEPAL                          4+           127     228
24 months   MAL-ED           NEPAL                          1             48     228
24 months   MAL-ED           NEPAL                          2             31     228
24 months   MAL-ED           NEPAL                          3             22     228
24 months   MAL-ED           PERU                           4+           110     201
24 months   MAL-ED           PERU                           1             16     201
24 months   MAL-ED           PERU                           2             32     201
24 months   MAL-ED           PERU                           3             43     201
24 months   MAL-ED           SOUTH AFRICA                   4+           183     238
24 months   MAL-ED           SOUTH AFRICA                   1             13     238
24 months   MAL-ED           SOUTH AFRICA                   2             19     238
24 months   MAL-ED           SOUTH AFRICA                   3             23     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             57     214
24 months   NIH-Crypto       BANGLADESH                     4+            82     514
24 months   NIH-Crypto       BANGLADESH                     1            217     514
24 months   NIH-Crypto       BANGLADESH                     2            137     514
24 months   NIH-Crypto       BANGLADESH                     3             78     514
24 months   PROVIDE          BANGLADESH                     4+            22     579
24 months   PROVIDE          BANGLADESH                     1            408     579
24 months   PROVIDE          BANGLADESH                     2             92     579
24 months   PROVIDE          BANGLADESH                     3             57     579


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
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
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
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
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/cc979129-037f-4f3e-94a1-f8b3ae75dca4/c699c85e-f84b-4ec0-aa91-055b60d631ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cc979129-037f-4f3e-94a1-f8b3ae75dca4/c699c85e-f84b-4ec0-aa91-055b60d631ef/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cc979129-037f-4f3e-94a1-f8b3ae75dca4/c699c85e-f84b-4ec0-aa91-055b60d631ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4929959    0.6609959
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.5244286   -1.0232807   -0.0255765
Birth       CMC-V-BCS-2002   INDIA                          2                    NA                -0.6155556   -1.1573805   -0.0737306
Birth       CMC-V-BCS-2002   INDIA                          3                    NA                -0.1536842   -0.6942308    0.3868624
Birth       COHORTS          INDIA                          4+                   NA                -0.6770342   -0.8051096   -0.5489587
Birth       COHORTS          INDIA                          1                    NA                -1.0019243   -1.0471106   -0.9567379
Birth       COHORTS          INDIA                          2                    NA                -0.9467846   -1.0253987   -0.8681704
Birth       COHORTS          INDIA                          3                    NA                -0.7310465   -0.8828733   -0.5792197
Birth       GMS-Nepal        NEPAL                          4+                   NA                -1.1553992   -1.2891520   -1.0216464
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0327794   -1.3925935   -0.6729653
Birth       GMS-Nepal        NEPAL                          2                    NA                -0.9932652   -1.2236741   -0.7628564
Birth       GMS-Nepal        NEPAL                          3                    NA                -1.1639713   -1.3720672   -0.9558755
Birth       IRC              INDIA                          4+                   NA                -1.5406663   -2.7779669   -0.3033658
Birth       IRC              INDIA                          1                    NA                -1.1471642   -1.4370762   -0.8572521
Birth       IRC              INDIA                          2                    NA                -0.9033302   -1.1708363   -0.6358242
Birth       IRC              INDIA                          3                    NA                -0.8947570   -1.5342265   -0.2552875
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.7814969   -0.8263739   -0.7366199
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7555404   -0.7885734   -0.7225073
Birth       JiVitA-3         BANGLADESH                     2                    NA                -0.7842286   -0.8311109   -0.7373462
Birth       JiVitA-3         BANGLADESH                     3                    NA                -0.7883310   -0.8386165   -0.7380456
Birth       JiVitA-4         BANGLADESH                     4+                   NA                -0.9789295   -1.2037544   -0.7541045
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6947481   -0.7624329   -0.6270633
Birth       JiVitA-4         BANGLADESH                     2                    NA                -0.6995444   -0.8304708   -0.5686181
Birth       JiVitA-4         BANGLADESH                     3                    NA                -0.7260739   -0.9450845   -0.5070633
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.8835767   -1.3811618   -0.3859915
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.9710765   -1.1867540   -0.7553990
Birth       MAL-ED           BANGLADESH                     2                    NA                -0.9608695   -1.1783301   -0.7434089
Birth       MAL-ED           BANGLADESH                     3                    NA                -1.0836557   -1.5526152   -0.6146963
Birth       MAL-ED           PERU                           4+                   NA                -0.2231794   -0.4164697   -0.0298890
Birth       MAL-ED           PERU                           1                    NA                -0.0282052   -0.5657583    0.5093480
Birth       MAL-ED           PERU                           2                    NA                 0.0000663   -0.2545025    0.2546352
Birth       MAL-ED           PERU                           3                    NA                 0.1982580   -0.0358341    0.4323502
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.2287879   -0.5065288    0.0489530
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.6960000   -1.4913352    0.0993352
Birth       MAL-ED           SOUTH AFRICA                   2                    NA                 0.5066667   -0.1807332    1.1940665
Birth       MAL-ED           SOUTH AFRICA                   3                    NA                -0.3275000   -1.1444022    0.4894022
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.8631111    0.5363093    1.1899130
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9000000    0.3934379    1.4065621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.4500000    0.0450331    0.8549669
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.8666667    0.5289823    1.2043510
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -1.1900831   -1.3923806   -0.9877857
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2625805   -1.3922334   -1.1329276
Birth       NIH-Crypto       BANGLADESH                     2                    NA                -1.1854762   -1.3702771   -1.0006752
Birth       NIH-Crypto       BANGLADESH                     3                    NA                -1.3122255   -1.6003295   -1.0241214
Birth       PROVIDE          BANGLADESH                     4+                   NA                -1.1631244   -1.6080394   -0.7182094
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.2927602   -1.3818905   -1.2036299
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.2705399   -1.4751965   -1.0658832
Birth       PROVIDE          BANGLADESH                     3                    NA                -1.3377870   -1.6206071   -1.0549669
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3944443   -1.0276182    0.2387295
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.7377697   -0.9231546   -0.5523848
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -0.3579913   -0.7036846   -0.0122981
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -0.2211952   -0.6197123    0.1773220
6 months    COHORTS          INDIA                          4+                   NA                -0.3610004   -0.4641919   -0.2578089
6 months    COHORTS          INDIA                          1                    NA                -0.7378873   -0.7820573   -0.6937174
6 months    COHORTS          INDIA                          2                    NA                -0.6754655   -0.7442542   -0.6066769
6 months    COHORTS          INDIA                          3                    NA                -0.6774958   -0.7992088   -0.5557828
6 months    CONTENT          PERU                           4+                   NA                 0.8127895    0.5800410    1.0455379
6 months    CONTENT          PERU                           1                    NA                 0.9981802    0.4820749    1.5142855
6 months    CONTENT          PERU                           2                    NA                 1.1222692    0.8492492    1.3952892
6 months    CONTENT          PERU                           3                    NA                 1.0727333    0.8148647    1.3306020
6 months    GMS-Nepal        NEPAL                          4+                   NA                -0.6078244   -0.7316922   -0.4839565
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.6766342   -1.0208158   -0.3324526
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.6377872   -0.8290459   -0.4465286
6 months    GMS-Nepal        NEPAL                          3                    NA                -0.5447317   -0.7293170   -0.3601464
6 months    IRC              INDIA                          4+                   NA                -0.7797027   -1.5841235    0.0247181
6 months    IRC              INDIA                          1                    NA                -0.5606122   -0.7604593   -0.3607651
6 months    IRC              INDIA                          2                    NA                -0.5796071   -0.7833849   -0.3758292
6 months    IRC              INDIA                          3                    NA                -0.6745935   -1.2582202   -0.0909668
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.4186735   -0.4646414   -0.3727056
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.5773227   -0.6091833   -0.5454622
6 months    JiVitA-3         BANGLADESH                     2                    NA                -0.6206937   -0.6722189   -0.5691685
6 months    JiVitA-3         BANGLADESH                     3                    NA                -0.5545619   -0.6183944   -0.4907295
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.3608432   -0.5127771   -0.2089093
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4042657   -0.4623976   -0.3461338
6 months    JiVitA-4         BANGLADESH                     2                    NA                -0.4155620   -0.5219939   -0.3091300
6 months    JiVitA-4         BANGLADESH                     3                    NA                -0.3638943   -0.4818569   -0.2459317
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.3756533   -1.0178360    0.2665294
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.2205138   -0.3792953   -0.0617323
6 months    MAL-ED           BANGLADESH                     2                    NA                 0.0884337   -0.1943660    0.3712334
6 months    MAL-ED           BANGLADESH                     3                    NA                -0.1291965   -0.6124013    0.3540084
6 months    MAL-ED           INDIA                          4+                   NA                -0.6473484   -1.0100689   -0.2846279
6 months    MAL-ED           INDIA                          1                    NA                -0.7040544   -0.9067937   -0.5013152
6 months    MAL-ED           INDIA                          2                    NA                -0.6612754   -0.8827024   -0.4398484
6 months    MAL-ED           INDIA                          3                    NA                -0.7747619   -1.1184441   -0.4310796
6 months    MAL-ED           NEPAL                          4+                   NA                 0.1116607   -0.0652406    0.2885621
6 months    MAL-ED           NEPAL                          1                    NA                -0.0077099   -0.3062900    0.2908702
6 months    MAL-ED           NEPAL                          2                    NA                 0.4959764    0.0952760    0.8966767
6 months    MAL-ED           NEPAL                          3                    NA                -0.0259703   -0.2954016    0.2434609
6 months    MAL-ED           PERU                           4+                   NA                 1.0625013    0.8852470    1.2397555
6 months    MAL-ED           PERU                           1                    NA                 0.2436554   -0.3434524    0.8307633
6 months    MAL-ED           PERU                           2                    NA                 1.1443230    0.8622963    1.4263497
6 months    MAL-ED           PERU                           3                    NA                 1.0528578    0.8359781    1.2697375
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.5521572    0.3708534    0.7334611
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.4013075   -0.0096269    0.8122419
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                 0.9323531    0.3657553    1.4989508
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                 0.2473962   -0.1723708    0.6671631
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5874975    0.4014032    0.7735918
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5526386   -0.0609895    1.1662667
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5373515    0.2766075    0.7980955
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4605906    0.1626849    0.7584963
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                 0.0881356   -0.1599191    0.3361903
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0123047   -0.1267171    0.1021077
6 months    NIH-Crypto       BANGLADESH                     2                    NA                 0.0316541   -0.1322499    0.1955582
6 months    NIH-Crypto       BANGLADESH                     3                    NA                 0.2535331    0.0043573    0.5027089
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.6013718   -1.0784769   -0.1242668
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2456275   -0.3439516   -0.1473035
6 months    PROVIDE          BANGLADESH                     2                    NA                 0.0119907   -0.1952610    0.2192423
6 months    PROVIDE          BANGLADESH                     3                    NA                -0.1355469   -0.4300293    0.1589355
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2024184   -0.7457770    0.3409401
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.7198520   -0.8549242   -0.5847799
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.5617011   -0.7734196   -0.3499826
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.0916960   -0.3453507    0.1619587
24 months   COHORTS          INDIA                          4+                   NA                -0.1890830   -0.3199523   -0.0582137
24 months   COHORTS          INDIA                          1                    NA                -0.7369560   -0.7820869   -0.6918251
24 months   COHORTS          INDIA                          2                    NA                -0.5760046   -0.6407807   -0.5112285
24 months   COHORTS          INDIA                          3                    NA                -0.3755470   -0.5189763   -0.2321176
24 months   CONTENT          PERU                           4+                   NA                 0.5767047    0.3554246    0.7979848
24 months   CONTENT          PERU                           1                    NA                 0.6778387    0.2481032    1.1075742
24 months   CONTENT          PERU                           2                    NA                 0.6043788    0.3419738    0.8667838
24 months   CONTENT          PERU                           3                    NA                 0.7371777    0.2672018    1.2071536
24 months   GMS-Nepal        NEPAL                          4+                   NA                -1.1182328   -1.2535455   -0.9829201
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1089637   -1.5046312   -0.7132962
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1612262   -1.3510476   -0.9714047
24 months   GMS-Nepal        NEPAL                          3                    NA                -1.0858640   -1.2737557   -0.8979723
24 months   IRC              INDIA                          4+                   NA                -0.5550221   -1.1385012    0.0284570
24 months   IRC              INDIA                          1                    NA                -0.7349047   -0.8690317   -0.6007776
24 months   IRC              INDIA                          2                    NA                -0.7121498   -0.8574945   -0.5668052
24 months   IRC              INDIA                          3                    NA                -0.9463722   -1.2870572   -0.6056873
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -1.0828419   -1.1392756   -1.0264082
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.2567582   -1.2973065   -1.2162099
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.3413079   -1.3997882   -1.2828276
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.1868883   -1.2585752   -1.1152014
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -1.3122545   -1.4413563   -1.1831526
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2301440   -1.2809933   -1.1792948
24 months   JiVitA-4         BANGLADESH                     2                    NA                -1.2457642   -1.3471553   -1.1443731
24 months   JiVitA-4         BANGLADESH                     3                    NA                -1.1747207   -1.2728251   -1.0766162
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.6863145   -1.5278519    0.1552230
24 months   MAL-ED           BANGLADESH                     1                    NA                -0.9230071   -1.0657169   -0.7802974
24 months   MAL-ED           BANGLADESH                     2                    NA                -0.5705770   -0.8750664   -0.2660876
24 months   MAL-ED           BANGLADESH                     3                    NA                -0.7973946   -1.1119602   -0.4828291
24 months   MAL-ED           INDIA                          4+                   NA                -0.9211703   -1.3198044   -0.5225363
24 months   MAL-ED           INDIA                          1                    NA                -0.8674108   -1.0488503   -0.6859712
24 months   MAL-ED           INDIA                          2                    NA                -0.9861512   -1.2051809   -0.7671215
24 months   MAL-ED           INDIA                          3                    NA                -1.0464689   -1.3034358   -0.7895021
24 months   MAL-ED           NEPAL                          4+                   NA                -0.3745706   -0.5215314   -0.2276098
24 months   MAL-ED           NEPAL                          1                    NA                -0.4793106   -0.7399641   -0.2186570
24 months   MAL-ED           NEPAL                          2                    NA                -0.0050974   -0.3821011    0.3719064
24 months   MAL-ED           NEPAL                          3                    NA                -0.4029205   -0.7732256   -0.0326153
24 months   MAL-ED           PERU                           4+                   NA                 0.1997745    0.0281348    0.3714143
24 months   MAL-ED           PERU                           1                    NA                -0.2861539   -0.8165808    0.2442730
24 months   MAL-ED           PERU                           2                    NA                 0.0183086   -0.2234529    0.2600701
24 months   MAL-ED           PERU                           3                    NA                 0.0690454   -0.2050247    0.3431155
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.4197349    0.2730482    0.5664215
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.5417484    0.1703662    0.9131307
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.8535284    0.4785598    1.2284970
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                 0.5062212    0.1526236    0.8598187
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1237415   -0.0307885    0.2782715
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0032000   -0.2355186    0.2291186
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.5547935   -0.8158643   -0.2937227
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.7607663   -0.8993606   -0.6221720
24 months   NIH-Crypto       BANGLADESH                     2                    NA                -0.6657874   -0.8529509   -0.4786240
24 months   NIH-Crypto       BANGLADESH                     3                    NA                -0.2609193   -0.5380111    0.0161724
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.5737845   -1.0529655   -0.0946035
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.9621506   -1.0567969   -0.8675043
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.7412975   -0.9467238   -0.5358712
24 months   PROVIDE          BANGLADESH                     3                    NA                -0.6667851   -0.9901034   -0.3434668


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          INDIA                          NA                   NA                -0.9778087   -1.0126530   -0.9429644
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0053372   -1.1922119   -0.8184626
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7776536   -0.7966730   -0.7586341
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED           PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          INDIA                          NA                   NA                -0.7088012   -0.7411274   -0.6764750
6 months    CONTENT          PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    IRC              INDIA                          NA                   NA                -0.5900821   -0.7252457   -0.4549185
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5930302   -0.6125738   -0.5734865
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED           INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          INDIA                          NA                   NA                -0.6612799   -0.6944511   -0.6281088
24 months   CONTENT          PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          NA                   NA                -0.7416790   -0.8323562   -0.6510017
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2967966   -1.3200807   -1.2735126
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    4+                -0.1084286   -1.2953462    1.0784891
Birth       CMC-V-BCS-2002   INDIA                          2                    4+                -0.1995556   -1.4051651    1.0060540
Birth       CMC-V-BCS-2002   INDIA                          3                    4+                 0.2623158   -0.9427198    1.4673514
Birth       COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    4+                -0.3248901   -0.4606217   -0.1891585
Birth       COHORTS          INDIA                          2                    4+                -0.2697504   -0.4199958   -0.1195051
Birth       COHORTS          INDIA                          3                    4+                -0.0540124   -0.2525131    0.1444883
Birth       GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    4+                 0.1226198   -0.2613921    0.5066317
Birth       GMS-Nepal        NEPAL                          2                    4+                 0.1621340   -0.1037547    0.4280227
Birth       GMS-Nepal        NEPAL                          3                    4+                -0.0085721   -0.2561841    0.2390399
Birth       IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    4+                 0.3935022   -0.8772642    1.6642685
Birth       IRC              INDIA                          2                    4+                 0.6373361   -0.6270659    1.9017381
Birth       IRC              INDIA                          3                    4+                 0.6459093   -0.7487755    2.0405942
Birth       JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    4+                 0.0259565   -0.0291660    0.0810791
Birth       JiVitA-3         BANGLADESH                     2                    4+                -0.0027316   -0.0677477    0.0622844
Birth       JiVitA-3         BANGLADESH                     3                    4+                -0.0068341   -0.0728596    0.0591914
Birth       JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    4+                 0.2841814    0.0500085    0.5183542
Birth       JiVitA-4         BANGLADESH                     2                    4+                 0.2793850    0.0203963    0.5383738
Birth       JiVitA-4         BANGLADESH                     3                    4+                 0.2528556   -0.0536091    0.5593203
Birth       MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    4+                -0.0874998   -0.6307009    0.4557013
Birth       MAL-ED           BANGLADESH                     2                    4+                -0.0772928   -0.6210520    0.4664664
Birth       MAL-ED           BANGLADESH                     3                    4+                -0.2000791   -0.8832691    0.4831110
Birth       MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    4+                 0.1949742   -0.3738590    0.7638074
Birth       MAL-ED           PERU                           2                    4+                 0.2232457   -0.0957000    0.5421914
Birth       MAL-ED           PERU                           3                    4+                 0.4214374    0.1176873    0.7251875
Birth       MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    4+                -0.4672121   -1.3096480    0.3752237
Birth       MAL-ED           SOUTH AFRICA                   2                    4+                 0.7354545   -0.0059351    1.4768442
Birth       MAL-ED           SOUTH AFRICA                   3                    4+                -0.0987121   -0.9615385    0.7641142
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0368889   -0.5659416    0.6397194
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4131111   -0.9334933    0.1072711
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0035556   -0.4663701    0.4734813
Birth       NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    4+                -0.0724974   -0.3123101    0.1673154
Birth       NIH-Crypto       BANGLADESH                     2                    4+                 0.0046070   -0.2697370    0.2789509
Birth       NIH-Crypto       BANGLADESH                     3                    4+                -0.1221423   -0.4743809    0.2300963
Birth       PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    4+                -0.1296358   -0.5831072    0.3238357
Birth       PROVIDE          BANGLADESH                     2                    4+                -0.1074154   -0.5969168    0.3820859
Birth       PROVIDE          BANGLADESH                     3                    4+                -0.1746626   -0.7016392    0.3523140
6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.3433254   -1.0023987    0.3157479
6 months    CMC-V-BCS-2002   INDIA                          2                    4+                 0.0364530   -0.6827147    0.7556207
6 months    CMC-V-BCS-2002   INDIA                          3                    4+                 0.1732492   -0.5744970    0.9209953
6 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    4+                -0.3768870   -0.4889533   -0.2648207
6 months    COHORTS          INDIA                          2                    4+                -0.3144652   -0.4383253   -0.1906051
6 months    COHORTS          INDIA                          3                    4+                -0.3164954   -0.4760253   -0.1569655
6 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    4+                 0.1853908   -0.3788080    0.7495895
6 months    CONTENT          PERU                           2                    4+                 0.3094797   -0.0467319    0.6656914
6 months    CONTENT          PERU                           3                    4+                 0.2599439   -0.0915702    0.6114580
6 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    4+                -0.0688098   -0.4352716    0.2976519
6 months    GMS-Nepal        NEPAL                          2                    4+                -0.0299629   -0.2578381    0.1979123
6 months    GMS-Nepal        NEPAL                          3                    4+                 0.0630927   -0.1608691    0.2870545
6 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    4+                 0.2190905   -0.6112956    1.0494766
6 months    IRC              INDIA                          2                    4+                 0.2000956   -0.6330169    1.0332082
6 months    IRC              INDIA                          3                    4+                 0.1051092   -0.8894690    1.0996874
6 months    JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    4+                -0.1586492   -0.2133677   -0.1039307
6 months    JiVitA-3         BANGLADESH                     2                    4+                -0.2020201   -0.2698732   -0.1341671
6 months    JiVitA-3         BANGLADESH                     3                    4+                -0.1358884   -0.2175623   -0.0542145
6 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    4+                -0.0434226   -0.2084318    0.1215867
6 months    JiVitA-4         BANGLADESH                     2                    4+                -0.0547188   -0.2373890    0.1279514
6 months    JiVitA-4         BANGLADESH                     3                    4+                -0.0030512   -0.1873970    0.1812947
6 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    4+                 0.1551395   -0.5083766    0.8186556
6 months    MAL-ED           BANGLADESH                     2                    4+                 0.4640870   -0.2364477    1.1646217
6 months    MAL-ED           BANGLADESH                     3                    4+                 0.2464569   -0.5573416    1.0502554
6 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    4+                -0.0567060   -0.4766056    0.3631936
6 months    MAL-ED           INDIA                          2                    4+                -0.0139270   -0.4419445    0.4140905
6 months    MAL-ED           INDIA                          3                    4+                -0.1274134   -0.6279534    0.3731265
6 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    4+                -0.1193706   -0.4666099    0.2278687
6 months    MAL-ED           NEPAL                          2                    4+                 0.3843156   -0.0535263    0.8221575
6 months    MAL-ED           NEPAL                          3                    4+                -0.1376310   -0.4593287    0.1840666
6 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    4+                -0.8188458   -1.4337497   -0.2039420
6 months    MAL-ED           PERU                           2                    4+                 0.0818217   -0.2510090    0.4146525
6 months    MAL-ED           PERU                           3                    4+                -0.0096434   -0.2902042    0.2709173
6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.1508497   -0.6000934    0.2983940
6 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.3801958   -0.2148741    0.9752658
6 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.3047610   -0.7621431    0.1526210
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0348589   -0.6755893    0.6058715
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0501460   -0.3709244    0.2706324
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1269069   -0.4786826    0.2248688
6 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.1004403   -0.3736435    0.1727629
6 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0564815   -0.3537284    0.2407655
6 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.1653975   -0.1862289    0.5170239
6 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    4+                 0.3557443   -0.1307498    0.8422384
6 months    PROVIDE          BANGLADESH                     2                    4+                 0.6133625    0.0936276    1.1330974
6 months    PROVIDE          BANGLADESH                     3                    4+                 0.4658249   -0.0950744    1.0267242
24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.5174336   -1.0774633    0.0425961
24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.3592827   -0.9412778    0.2227123
24 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.1107224   -0.4890849    0.7105297
24 months   COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    4+                -0.5478730   -0.6858093   -0.4099368
24 months   COHORTS          INDIA                          2                    4+                -0.3869217   -0.5324965   -0.2413468
24 months   COHORTS          INDIA                          3                    4+                -0.1864640   -0.3802454    0.0073174
24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    4+                 0.1011340   -0.3850608    0.5873287
24 months   CONTENT          PERU                           2                    4+                 0.0276741   -0.3169521    0.3723003
24 months   CONTENT          PERU                           3                    4+                 0.1604730   -0.3569342    0.6778802
24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    4+                 0.0092691   -0.4096856    0.4282238
24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0429934   -0.2753315    0.1893448
24 months   GMS-Nepal        NEPAL                          3                    4+                 0.0323688   -0.1997823    0.2645199
24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    4+                -0.1798825   -0.7796485    0.4198834
24 months   IRC              INDIA                          2                    4+                -0.1571277   -0.7590215    0.4447660
24 months   IRC              INDIA                          3                    4+                -0.3913501   -1.0685092    0.2858090
24 months   JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    4+                -0.1739163   -0.2430852   -0.1047473
24 months   JiVitA-3         BANGLADESH                     2                    4+                -0.2584660   -0.3388389   -0.1780930
24 months   JiVitA-3         BANGLADESH                     3                    4+                -0.1040464   -0.1969256   -0.0111672
24 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    4+                 0.0821105   -0.0584509    0.2226718
24 months   JiVitA-4         BANGLADESH                     2                    4+                 0.0664903   -0.0960651    0.2290457
24 months   JiVitA-4         BANGLADESH                     3                    4+                 0.1375338   -0.0157161    0.2907837
24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    4+                -0.2366927   -1.0908256    0.6174403
24 months   MAL-ED           BANGLADESH                     2                    4+                 0.1157375   -0.7797877    1.0112627
24 months   MAL-ED           BANGLADESH                     3                    4+                -0.1110802   -1.0122462    0.7900858
24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    4+                 0.0537596   -0.3842531    0.4917722
24 months   MAL-ED           INDIA                          2                    4+                -0.0649808   -0.5202833    0.3903216
24 months   MAL-ED           INDIA                          3                    4+                -0.1252986   -0.5996432    0.3490460
24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    4+                -0.1047399   -0.4044341    0.1949542
24 months   MAL-ED           NEPAL                          2                    4+                 0.3694733   -0.0332491    0.7721957
24 months   MAL-ED           NEPAL                          3                    4+                -0.0283498   -0.4271887    0.3704891
24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    4+                -0.4859284   -1.0437016    0.0718447
24 months   MAL-ED           PERU                           2                    4+                -0.1814659   -0.4782682    0.1153364
24 months   MAL-ED           PERU                           3                    4+                -0.1307291   -0.4546218    0.1931635
24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.1220136   -0.2797670    0.5237941
24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.4337936    0.0297787    0.8378085
24 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0864863   -0.2968044    0.4697769
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3759637   -1.2967441    0.5448166
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1269415   -0.4059602    0.1520772
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0881275   -0.4200199    0.2437649
24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.2059728   -0.5012865    0.0893409
24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.1109939   -0.4308969    0.2089090
24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.2938742   -0.0832908    0.6710391
24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    4+                -0.3883661   -0.8768147    0.1000826
24 months   PROVIDE          BANGLADESH                     2                    4+                -0.1675130   -0.6878359    0.3528100
24 months   PROVIDE          BANGLADESH                     3                    4+                -0.0930006   -0.6710417    0.4850406


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0488256   -1.1046396    1.0069884
Birth       COHORTS          INDIA                          4+                   NA                -0.3007746   -0.4292725   -0.1722766
Birth       GMS-Nepal        NEPAL                          4+                   NA                 0.0389561   -0.0661010    0.1440133
Birth       IRC              INDIA                          4+                   NA                 0.5353291   -0.6727043    1.7433625
Birth       JiVitA-3         BANGLADESH                     4+                   NA                 0.0038433   -0.0421969    0.0498836
Birth       JiVitA-4         BANGLADESH                     4+                   NA                 0.2906797    0.0683138    0.5130455
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.0892591   -0.5811746    0.4026563
Birth       MAL-ED           PERU                           4+                   NA                 0.1763698    0.0459218    0.3068178
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0558405   -0.1182633    0.2299443
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0993611   -0.3431773    0.1444551
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.0540682   -0.2497946    0.1416582
Birth       PROVIDE          BANGLADESH                     4+                   NA                -0.1353342   -0.5721336    0.3014651
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1082323   -0.7376920    0.5212274
6 months    COHORTS          INDIA                          4+                   NA                -0.3478008   -0.4525432   -0.2430585
6 months    CONTENT          PERU                           4+                   NA                 0.2516384    0.0530885    0.4501884
6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0039827   -0.0877277    0.0956932
6 months    IRC              INDIA                          4+                   NA                 0.1896206   -0.5986721    0.9779133
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.1743566   -0.2207970   -0.1279163
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0293164   -0.1763689    0.1177362
6 months    MAL-ED           BANGLADESH                     4+                   NA                 0.2423200   -0.3785244    0.8631644
6 months    MAL-ED           INDIA                          4+                   NA                -0.0629388   -0.4153335    0.2894559
6 months    MAL-ED           NEPAL                          4+                   NA                -0.0012299   -0.1209196    0.1184597
6 months    MAL-ED           PERU                           4+                   NA                -0.0112914   -0.1309659    0.1083831
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0117222   -0.0903977    0.0669534
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0512762   -0.1994691    0.0969168
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0583734   -0.2909223    0.1741756
6 months    PROVIDE          BANGLADESH                     4+                   NA                 0.4022812   -0.0647902    0.8693526
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3547321   -0.8926509    0.1831867
24 months   COHORTS          INDIA                          4+                   NA                -0.4721969   -0.6027794   -0.3416145
24 months   CONTENT          PERU                           4+                   NA                 0.0135392   -0.1724906    0.1995690
24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0180779   -0.1164395    0.0802836
24 months   IRC              INDIA                          4+                   NA                -0.1866568   -0.7559364    0.3826227
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -0.2139547   -0.2727591   -0.1551504
24 months   JiVitA-4         BANGLADESH                     4+                   NA                 0.0890769   -0.0344962    0.2126500
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.1329780   -0.9428888    0.6769328
24 months   MAL-ED           INDIA                          4+                   NA                -0.0304816   -0.4053259    0.3443626
24 months   MAL-ED           NEPAL                          4+                   NA                -0.0003416   -0.1048681    0.1041848
24 months   MAL-ED           PERU                           4+                   NA                -0.0885764   -0.2002006    0.0230479
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0107048   -0.0684855    0.0470760
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0689440   -0.2018628    0.0639748
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0555567   -0.2906600    0.1795466
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.3190825   -0.7887829    0.1506179
