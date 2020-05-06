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

agecat      studyid          country                        nrooms    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          4+             5      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          1             35      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          2             27      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          3             19      86  whz              
Birth       COHORTS          INDIA                          4+            90    4454  whz              
Birth       COHORTS          INDIA                          1           2879    4454  whz              
Birth       COHORTS          INDIA                          2           1328    4454  whz              
Birth       COHORTS          INDIA                          3            157    4454  whz              
Birth       CONTENT          PERU                           4+             1       2  whz              
Birth       CONTENT          PERU                           1              0       2  whz              
Birth       CONTENT          PERU                           2              1       2  whz              
Birth       CONTENT          PERU                           3              0       2  whz              
Birth       GMS-Nepal        NEPAL                          4+           297     641  whz              
Birth       GMS-Nepal        NEPAL                          1             42     641  whz              
Birth       GMS-Nepal        NEPAL                          2            135     641  whz              
Birth       GMS-Nepal        NEPAL                          3            167     641  whz              
Birth       IRC              INDIA                          4+            14     341  whz              
Birth       IRC              INDIA                          1            156     341  whz              
Birth       IRC              INDIA                          2            140     341  whz              
Birth       IRC              INDIA                          3             31     341  whz              
Birth       JiVitA-3         BANGLADESH                     4+           662   17989  whz              
Birth       JiVitA-3         BANGLADESH                     1          11170   17989  whz              
Birth       JiVitA-3         BANGLADESH                     2           4609   17989  whz              
Birth       JiVitA-3         BANGLADESH                     3           1548   17989  whz              
Birth       JiVitA-4         BANGLADESH                     4+           111    2394  whz              
Birth       JiVitA-4         BANGLADESH                     1           1430    2394  whz              
Birth       JiVitA-4         BANGLADESH                     2            610    2394  whz              
Birth       JiVitA-4         BANGLADESH                     3            243    2394  whz              
Birth       MAL-ED           BANGLADESH                     4+            12     201  whz              
Birth       MAL-ED           BANGLADESH                     1            121     201  whz              
Birth       MAL-ED           BANGLADESH                     2             43     201  whz              
Birth       MAL-ED           BANGLADESH                     3             25     201  whz              
Birth       MAL-ED           BRAZIL                         4+            29      57  whz              
Birth       MAL-ED           BRAZIL                         1              0      57  whz              
Birth       MAL-ED           BRAZIL                         2             10      57  whz              
Birth       MAL-ED           BRAZIL                         3             18      57  whz              
Birth       MAL-ED           INDIA                          4+             2      39  whz              
Birth       MAL-ED           INDIA                          1             17      39  whz              
Birth       MAL-ED           INDIA                          2             16      39  whz              
Birth       MAL-ED           INDIA                          3              4      39  whz              
Birth       MAL-ED           NEPAL                          4+            15      25  whz              
Birth       MAL-ED           NEPAL                          1              6      25  whz              
Birth       MAL-ED           NEPAL                          2              2      25  whz              
Birth       MAL-ED           NEPAL                          3              2      25  whz              
Birth       MAL-ED           PERU                           4+           103     210  whz              
Birth       MAL-ED           PERU                           1             13     210  whz              
Birth       MAL-ED           PERU                           2             45     210  whz              
Birth       MAL-ED           PERU                           3             49     210  whz              
Birth       MAL-ED           SOUTH AFRICA                   4+            66      95  whz              
Birth       MAL-ED           SOUTH AFRICA                   1              5      95  whz              
Birth       MAL-ED           SOUTH AFRICA                   2             12      95  whz              
Birth       MAL-ED           SOUTH AFRICA                   3             12      95  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            45     112  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     112  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             28     112  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             30     112  whz              
Birth       NIH-Crypto       BANGLADESH                     4+            90     707  whz              
Birth       NIH-Crypto       BANGLADESH                     1            338     707  whz              
Birth       NIH-Crypto       BANGLADESH                     2            181     707  whz              
Birth       NIH-Crypto       BANGLADESH                     3             98     707  whz              
Birth       PROVIDE          BANGLADESH                     4+            18     532  whz              
Birth       PROVIDE          BANGLADESH                     1            388     532  whz              
Birth       PROVIDE          BANGLADESH                     2             79     532  whz              
Birth       PROVIDE          BANGLADESH                     3             47     532  whz              
6 months    CMC-V-BCS-2002   INDIA                          4+            14     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          1            197     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          2            106     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          3             51     368  whz              
6 months    COHORTS          INDIA                          4+            93    4955  whz              
6 months    COHORTS          INDIA                          1           3206    4955  whz              
6 months    COHORTS          INDIA                          2           1474    4955  whz              
6 months    COHORTS          INDIA                          3            182    4955  whz              
6 months    CONTENT          PERU                           4+            78     215  whz              
6 months    CONTENT          PERU                           1             44     215  whz              
6 months    CONTENT          PERU                           2             54     215  whz              
6 months    CONTENT          PERU                           3             39     215  whz              
6 months    GMS-Nepal        NEPAL                          4+           268     564  whz              
6 months    GMS-Nepal        NEPAL                          1             40     564  whz              
6 months    GMS-Nepal        NEPAL                          2            115     564  whz              
6 months    GMS-Nepal        NEPAL                          3            141     564  whz              
6 months    IRC              INDIA                          4+            17     406  whz              
6 months    IRC              INDIA                          1            183     406  whz              
6 months    IRC              INDIA                          2            170     406  whz              
6 months    IRC              INDIA                          3             36     406  whz              
6 months    JiVitA-3         BANGLADESH                     4+           742   16773  whz              
6 months    JiVitA-3         BANGLADESH                     1           9611   16773  whz              
6 months    JiVitA-3         BANGLADESH                     2           4732   16773  whz              
6 months    JiVitA-3         BANGLADESH                     3           1688   16773  whz              
6 months    JiVitA-4         BANGLADESH                     4+           262    4827  whz              
6 months    JiVitA-4         BANGLADESH                     1           2851    4827  whz              
6 months    JiVitA-4         BANGLADESH                     2           1226    4827  whz              
6 months    JiVitA-4         BANGLADESH                     3            488    4827  whz              
6 months    MAL-ED           BANGLADESH                     4+            12     240  whz              
6 months    MAL-ED           BANGLADESH                     1            150     240  whz              
6 months    MAL-ED           BANGLADESH                     2             50     240  whz              
6 months    MAL-ED           BANGLADESH                     3             28     240  whz              
6 months    MAL-ED           BRAZIL                         4+           126     209  whz              
6 months    MAL-ED           BRAZIL                         1              4     209  whz              
6 months    MAL-ED           BRAZIL                         2             20     209  whz              
6 months    MAL-ED           BRAZIL                         3             59     209  whz              
6 months    MAL-ED           INDIA                          4+            25     235  whz              
6 months    MAL-ED           INDIA                          1             84     235  whz              
6 months    MAL-ED           INDIA                          2             78     235  whz              
6 months    MAL-ED           INDIA                          3             48     235  whz              
6 months    MAL-ED           NEPAL                          4+           131     236  whz              
6 months    MAL-ED           NEPAL                          1             52     236  whz              
6 months    MAL-ED           NEPAL                          2             31     236  whz              
6 months    MAL-ED           NEPAL                          3             22     236  whz              
6 months    MAL-ED           PERU                           4+           139     270  whz              
6 months    MAL-ED           PERU                           1             19     270  whz              
6 months    MAL-ED           PERU                           2             50     270  whz              
6 months    MAL-ED           PERU                           3             62     270  whz              
6 months    MAL-ED           SOUTH AFRICA                   4+           191     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   1             14     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   2             21     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   3             23     249  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           108     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             62     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             64     247  whz              
6 months    NIH-Crypto       BANGLADESH                     4+            91     715  whz              
6 months    NIH-Crypto       BANGLADESH                     1            339     715  whz              
6 months    NIH-Crypto       BANGLADESH                     2            184     715  whz              
6 months    NIH-Crypto       BANGLADESH                     3            101     715  whz              
6 months    PROVIDE          BANGLADESH                     4+            21     603  whz              
6 months    PROVIDE          BANGLADESH                     1            430     603  whz              
6 months    PROVIDE          BANGLADESH                     2             94     603  whz              
6 months    PROVIDE          BANGLADESH                     3             58     603  whz              
24 months   CMC-V-BCS-2002   INDIA                          4+            14     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          1            201     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          2            106     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          3             51     372  whz              
24 months   COHORTS          INDIA                          4+            75    3719  whz              
24 months   COHORTS          INDIA                          1           2287    3719  whz              
24 months   COHORTS          INDIA                          2           1207    3719  whz              
24 months   COHORTS          INDIA                          3            150    3719  whz              
24 months   CONTENT          PERU                           4+            63     164  whz              
24 months   CONTENT          PERU                           1             30     164  whz              
24 months   CONTENT          PERU                           2             39     164  whz              
24 months   CONTENT          PERU                           3             32     164  whz              
24 months   GMS-Nepal        NEPAL                          4+           231     487  whz              
24 months   GMS-Nepal        NEPAL                          1             35     487  whz              
24 months   GMS-Nepal        NEPAL                          2            106     487  whz              
24 months   GMS-Nepal        NEPAL                          3            115     487  whz              
24 months   IRC              INDIA                          4+            17     407  whz              
24 months   IRC              INDIA                          1            184     407  whz              
24 months   IRC              INDIA                          2            170     407  whz              
24 months   IRC              INDIA                          3             36     407  whz              
24 months   JiVitA-3         BANGLADESH                     4+           365    8591  whz              
24 months   JiVitA-3         BANGLADESH                     1           5036    8591  whz              
24 months   JiVitA-3         BANGLADESH                     2           2394    8591  whz              
24 months   JiVitA-3         BANGLADESH                     3            796    8591  whz              
24 months   JiVitA-4         BANGLADESH                     4+           251    4730  whz              
24 months   JiVitA-4         BANGLADESH                     1           2781    4730  whz              
24 months   JiVitA-4         BANGLADESH                     2           1208    4730  whz              
24 months   JiVitA-4         BANGLADESH                     3            490    4730  whz              
24 months   MAL-ED           BANGLADESH                     4+            11     212  whz              
24 months   MAL-ED           BANGLADESH                     1            134     212  whz              
24 months   MAL-ED           BANGLADESH                     2             40     212  whz              
24 months   MAL-ED           BANGLADESH                     3             27     212  whz              
24 months   MAL-ED           BRAZIL                         4+           104     169  whz              
24 months   MAL-ED           BRAZIL                         1              0     169  whz              
24 months   MAL-ED           BRAZIL                         2             16     169  whz              
24 months   MAL-ED           BRAZIL                         3             49     169  whz              
24 months   MAL-ED           INDIA                          4+            25     227  whz              
24 months   MAL-ED           INDIA                          1             82     227  whz              
24 months   MAL-ED           INDIA                          2             74     227  whz              
24 months   MAL-ED           INDIA                          3             46     227  whz              
24 months   MAL-ED           NEPAL                          4+           127     228  whz              
24 months   MAL-ED           NEPAL                          1             48     228  whz              
24 months   MAL-ED           NEPAL                          2             31     228  whz              
24 months   MAL-ED           NEPAL                          3             22     228  whz              
24 months   MAL-ED           PERU                           4+           110     201  whz              
24 months   MAL-ED           PERU                           1             16     201  whz              
24 months   MAL-ED           PERU                           2             32     201  whz              
24 months   MAL-ED           PERU                           3             43     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   4+           183     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   1             13     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   2             19     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   3             23     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             57     214  whz              
24 months   NIH-Crypto       BANGLADESH                     4+            82     514  whz              
24 months   NIH-Crypto       BANGLADESH                     1            217     514  whz              
24 months   NIH-Crypto       BANGLADESH                     2            137     514  whz              
24 months   NIH-Crypto       BANGLADESH                     3             78     514  whz              
24 months   PROVIDE          BANGLADESH                     4+            22     579  whz              
24 months   PROVIDE          BANGLADESH                     1            408     579  whz              
24 months   PROVIDE          BANGLADESH                     2             92     579  whz              
24 months   PROVIDE          BANGLADESH                     3             57     579  whz              


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
![](/tmp/391c18f3-1114-42d8-b8c7-2087309b851a/c4069f8b-e215-45d0-9a04-0e2af6bf133b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/391c18f3-1114-42d8-b8c7-2087309b851a/c4069f8b-e215-45d0-9a04-0e2af6bf133b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/391c18f3-1114-42d8-b8c7-2087309b851a/c4069f8b-e215-45d0-9a04-0e2af6bf133b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4929959    0.6609959
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.5244286   -1.0232807   -0.0255765
Birth       CMC-V-BCS-2002   INDIA                          2                    NA                -0.6155556   -1.1573805   -0.0737306
Birth       CMC-V-BCS-2002   INDIA                          3                    NA                -0.1536842   -0.6942308    0.3868624
Birth       COHORTS          INDIA                          4+                   NA                -0.7089194   -0.8463375   -0.5715013
Birth       COHORTS          INDIA                          1                    NA                -1.0011320   -1.0469324   -0.9553316
Birth       COHORTS          INDIA                          2                    NA                -0.9416132   -1.0218275   -0.8613989
Birth       COHORTS          INDIA                          3                    NA                -0.7510164   -0.9038628   -0.5981700
Birth       GMS-Nepal        NEPAL                          4+                   NA                -1.1808450   -1.3122008   -1.0494892
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0079109   -1.3613062   -0.6545156
Birth       GMS-Nepal        NEPAL                          2                    NA                -0.9813939   -1.2120817   -0.7507060
Birth       GMS-Nepal        NEPAL                          3                    NA                -1.1641148   -1.3790476   -0.9491819
Birth       IRC              INDIA                          4+                   NA                -1.1969984   -2.5378746    0.1438777
Birth       IRC              INDIA                          1                    NA                -1.1470743   -1.4385273   -0.8556213
Birth       IRC              INDIA                          2                    NA                -0.8936945   -1.1639556   -0.6234334
Birth       IRC              INDIA                          3                    NA                -0.8141443   -1.4622620   -0.1660265
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.7646082   -0.8102139   -0.7190024
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7564510   -0.7891154   -0.7237865
Birth       JiVitA-3         BANGLADESH                     2                    NA                -0.7731596   -0.8192193   -0.7271000
Birth       JiVitA-3         BANGLADESH                     3                    NA                -0.7856443   -0.8376230   -0.7336656
Birth       JiVitA-4         BANGLADESH                     4+                   NA                -0.9568276   -1.1689279   -0.7447273
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.7066176   -0.7776539   -0.6355812
Birth       JiVitA-4         BANGLADESH                     2                    NA                -0.6975594   -0.8165972   -0.5785216
Birth       JiVitA-4         BANGLADESH                     3                    NA                -0.7475615   -0.9652599   -0.5298632
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.9082266   -1.4080736   -0.4083795
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.9772296   -1.1925740   -0.7618853
Birth       MAL-ED           BANGLADESH                     2                    NA                -0.9668786   -1.1903326   -0.7434247
Birth       MAL-ED           BANGLADESH                     3                    NA                -1.0357089   -1.4579471   -0.6134708
Birth       MAL-ED           PERU                           4+                   NA                -0.2065229   -0.4008522   -0.0121935
Birth       MAL-ED           PERU                           1                    NA                 0.1977708   -0.3873254    0.7828670
Birth       MAL-ED           PERU                           2                    NA                 0.0161995   -0.2368526    0.2692515
Birth       MAL-ED           PERU                           3                    NA                 0.2157164   -0.0223732    0.4538061
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.2287879   -0.5065288    0.0489530
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.6960000   -1.4913352    0.0993352
Birth       MAL-ED           SOUTH AFRICA                   2                    NA                 0.5066667   -0.1807332    1.1940665
Birth       MAL-ED           SOUTH AFRICA                   3                    NA                -0.3275000   -1.1444022    0.4894022
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.8631111    0.5363093    1.1899130
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9000000    0.3934379    1.4065621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.4500000    0.0450331    0.8549669
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.8666667    0.5289823    1.2043510
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -1.2011566   -1.4132964   -0.9890169
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2510689   -1.3777827   -1.1243550
Birth       NIH-Crypto       BANGLADESH                     2                    NA                -1.2027719   -1.3806904   -1.0248533
Birth       NIH-Crypto       BANGLADESH                     3                    NA                -1.3227492   -1.6075477   -1.0379508
Birth       PROVIDE          BANGLADESH                     4+                   NA                -1.3413532   -1.8267436   -0.8559629
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.2927602   -1.3816710   -1.2038495
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.3002182   -1.5056852   -1.0947512
Birth       PROVIDE          BANGLADESH                     3                    NA                -1.3848596   -1.6640770   -1.1056422
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3856434   -0.9772894    0.2060026
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.7397381   -0.9230929   -0.5563834
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -0.3413171   -0.6761226   -0.0065115
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -0.2197852   -0.6115695    0.1719990
6 months    COHORTS          INDIA                          4+                   NA                -0.4171996   -0.5203259   -0.3140734
6 months    COHORTS          INDIA                          1                    NA                -0.7421608   -0.7869091   -0.6974125
6 months    COHORTS          INDIA                          2                    NA                -0.6655378   -0.7350087   -0.5960669
6 months    COHORTS          INDIA                          3                    NA                -0.6776927   -0.7933100   -0.5620754
6 months    CONTENT          PERU                           4+                   NA                 0.6548512    0.3926790    0.9170234
6 months    CONTENT          PERU                           1                    NA                 1.0845035    0.7278659    1.4411411
6 months    CONTENT          PERU                           2                    NA                 1.1793874    0.9209516    1.4378232
6 months    CONTENT          PERU                           3                    NA                 1.0836240    0.8479881    1.3192599
6 months    GMS-Nepal        NEPAL                          4+                   NA                -0.6214498   -0.7457443   -0.4971554
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.6408059   -0.9805864   -0.3010253
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.6345718   -0.8254727   -0.4436709
6 months    GMS-Nepal        NEPAL                          3                    NA                -0.5389926   -0.7191023   -0.3588830
6 months    IRC              INDIA                          4+                   NA                -0.9430444   -1.7182706   -0.1678181
6 months    IRC              INDIA                          1                    NA                -0.5399460   -0.7389680   -0.3409239
6 months    IRC              INDIA                          2                    NA                -0.5815543   -0.7865299   -0.3765788
6 months    IRC              INDIA                          3                    NA                -0.6501360   -1.2284632   -0.0718089
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.4422999   -0.4893267   -0.3952732
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.5848435   -0.6164576   -0.5532295
6 months    JiVitA-3         BANGLADESH                     2                    NA                -0.6211955   -0.6750562   -0.5673347
6 months    JiVitA-3         BANGLADESH                     3                    NA                -0.5719511   -0.6346782   -0.5092240
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.3882864   -0.5401255   -0.2364473
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4072009   -0.4663554   -0.3480464
6 months    JiVitA-4         BANGLADESH                     2                    NA                -0.4186575   -0.5260328   -0.3112823
6 months    JiVitA-4         BANGLADESH                     3                    NA                -0.3192280   -0.4410134   -0.1974427
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.4410949   -1.0648982    0.1827084
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.2276106   -0.3872754   -0.0679459
6 months    MAL-ED           BANGLADESH                     2                    NA                 0.0777021   -0.2046644    0.3600686
6 months    MAL-ED           BANGLADESH                     3                    NA                -0.1208930   -0.5880769    0.3462909
6 months    MAL-ED           INDIA                          4+                   NA                -0.6476661   -0.9872474   -0.3080848
6 months    MAL-ED           INDIA                          1                    NA                -0.7160541   -0.9216923   -0.5104159
6 months    MAL-ED           INDIA                          2                    NA                -0.6883006   -0.8996199   -0.4769812
6 months    MAL-ED           INDIA                          3                    NA                -0.7516711   -1.1037831   -0.3995591
6 months    MAL-ED           NEPAL                          4+                   NA                 0.1066859   -0.0703254    0.2836972
6 months    MAL-ED           NEPAL                          1                    NA                -0.0370694   -0.3353839    0.2612451
6 months    MAL-ED           NEPAL                          2                    NA                 0.4918233    0.1024654    0.8811811
6 months    MAL-ED           NEPAL                          3                    NA                -0.0683398   -0.3357588    0.1990793
6 months    MAL-ED           PERU                           4+                   NA                 1.0701191    0.8926280    1.2476102
6 months    MAL-ED           PERU                           1                    NA                 0.5497012    0.0238407    1.0755617
6 months    MAL-ED           PERU                           2                    NA                 1.2401098    0.9442391    1.5359805
6 months    MAL-ED           PERU                           3                    NA                 1.0919948    0.8739747    1.3100148
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.5471398    0.3654254    0.7288542
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.3124756   -0.0961932    0.7211444
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                 0.9579806    0.4182282    1.4977330
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                 0.2209122   -0.2045405    0.6463649
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5615918    0.3770058    0.7461778
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1719474   -0.8718384    0.5279436
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.4901591    0.2412202    0.7390980
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4035116    0.1028975    0.7041256
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0232685   -0.2951108    0.2485738
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0095784   -0.0996327    0.1187895
6 months    NIH-Crypto       BANGLADESH                     2                    NA                 0.0456375   -0.1196568    0.2109318
6 months    NIH-Crypto       BANGLADESH                     3                    NA                 0.2222831   -0.0286226    0.4731888
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.5078482   -1.0352593    0.0195630
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2442910   -0.3412834   -0.1472987
6 months    PROVIDE          BANGLADESH                     2                    NA                 0.0242619   -0.1808165    0.2293403
6 months    PROVIDE          BANGLADESH                     3                    NA                -0.1140590   -0.4055763    0.1774584
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2203589   -0.7754809    0.3347631
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.7210921   -0.8570128   -0.5851715
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.5473510   -0.7550757   -0.3396264
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.1100886   -0.3701176    0.1499404
24 months   COHORTS          INDIA                          4+                   NA                -0.2262717   -0.3619943   -0.0905491
24 months   COHORTS          INDIA                          1                    NA                -0.7348600   -0.7803371   -0.6893828
24 months   COHORTS          INDIA                          2                    NA                -0.5807393   -0.6456353   -0.5158433
24 months   COHORTS          INDIA                          3                    NA                -0.3651364   -0.5091034   -0.2211695
24 months   CONTENT          PERU                           4+                   NA                 0.5710024    0.3349758    0.8070290
24 months   CONTENT          PERU                           1                    NA                 0.6869099    0.3124647    1.0613551
24 months   CONTENT          PERU                           2                    NA                 0.6309850    0.3844754    0.8774947
24 months   CONTENT          PERU                           3                    NA                 0.7167615    0.2706916    1.1628314
24 months   GMS-Nepal        NEPAL                          4+                   NA                -1.1169422   -1.2515184   -0.9823660
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1226723   -1.4984803   -0.7468644
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1317875   -1.3190181   -0.9445568
24 months   GMS-Nepal        NEPAL                          3                    NA                -1.0897302   -1.2822604   -0.8971999
24 months   IRC              INDIA                          4+                   NA                -0.5399266   -1.1261697    0.0463165
24 months   IRC              INDIA                          1                    NA                -0.7313047   -0.8620476   -0.6005618
24 months   IRC              INDIA                          2                    NA                -0.7308232   -0.8757801   -0.5858664
24 months   IRC              INDIA                          3                    NA                -0.9055717   -1.2147825   -0.5963609
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -1.0828239   -1.1406218   -1.0250260
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.2538603   -1.2931223   -1.2145982
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.3510289   -1.4116224   -1.2904353
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.1608839   -1.2334547   -1.0883131
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -1.3293286   -1.4528794   -1.2057778
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2352817   -1.2857009   -1.1848626
24 months   JiVitA-4         BANGLADESH                     2                    NA                -1.2435088   -1.3323037   -1.1547138
24 months   JiVitA-4         BANGLADESH                     3                    NA                -1.1852607   -1.2810084   -1.0895130
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.5675548   -1.3568782    0.2217686
24 months   MAL-ED           BANGLADESH                     1                    NA                -0.9311158   -1.0742213   -0.7880103
24 months   MAL-ED           BANGLADESH                     2                    NA                -0.5837480   -0.8996199   -0.2678761
24 months   MAL-ED           BANGLADESH                     3                    NA                -0.7299065   -1.0374357   -0.4223774
24 months   MAL-ED           INDIA                          4+                   NA                -0.9059103   -1.3062226   -0.5055979
24 months   MAL-ED           INDIA                          1                    NA                -0.8801359   -1.0606146   -0.6996572
24 months   MAL-ED           INDIA                          2                    NA                -0.9707150   -1.1895224   -0.7519075
24 months   MAL-ED           INDIA                          3                    NA                -1.0607239   -1.3137013   -0.8077465
24 months   MAL-ED           NEPAL                          4+                   NA                -0.3705949   -0.5161364   -0.2250533
24 months   MAL-ED           NEPAL                          1                    NA                -0.5049966   -0.7666790   -0.2433141
24 months   MAL-ED           NEPAL                          2                    NA                -0.0992294   -0.4764411    0.2779823
24 months   MAL-ED           NEPAL                          3                    NA                -0.4396005   -0.7784129   -0.1007881
24 months   MAL-ED           PERU                           4+                   NA                 0.2057760    0.0327038    0.3788482
24 months   MAL-ED           PERU                           1                    NA                -0.3102290   -0.8867402    0.2662821
24 months   MAL-ED           PERU                           2                    NA                 0.0313026   -0.2091217    0.2717269
24 months   MAL-ED           PERU                           3                    NA                 0.0635716   -0.2169995    0.3441427
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.4133325    0.2667696    0.5598954
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.2333896   -0.0550147    0.5217940
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.5727160    0.2312807    0.9141514
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                 0.2286290   -0.1620790    0.6193371
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1237415   -0.0307885    0.2782715
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0032000   -0.2355186    0.2291186
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.4879246   -0.7389609   -0.2368883
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.7456883   -0.8830738   -0.6083029
24 months   NIH-Crypto       BANGLADESH                     2                    NA                -0.6845086   -0.8708563   -0.4981610
24 months   NIH-Crypto       BANGLADESH                     3                    NA                -0.2816528   -0.5880141    0.0247084
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.7460043   -1.2257861   -0.2662224
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.9655775   -1.0603172   -0.8708378
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.8323439   -1.0448238   -0.6198640
24 months   PROVIDE          BANGLADESH                     3                    NA                -0.7334012   -1.0599979   -0.4068045


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
Birth       COHORTS          INDIA                          1                    4+                -0.2922126   -0.4369951   -0.1474300
Birth       COHORTS          INDIA                          2                    4+                -0.2326938   -0.3918144   -0.0735732
Birth       COHORTS          INDIA                          3                    4+                -0.0420970   -0.2476062    0.1634122
Birth       GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    4+                 0.1729341   -0.2048988    0.5507670
Birth       GMS-Nepal        NEPAL                          2                    4+                 0.1994511   -0.0655872    0.4644895
Birth       GMS-Nepal        NEPAL                          3                    4+                 0.0167302   -0.2353785    0.2688390
Birth       IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    4+                 0.0499241   -1.3231767    1.4230249
Birth       IRC              INDIA                          2                    4+                 0.3033039   -1.0649674    1.6715753
Birth       IRC              INDIA                          3                    4+                 0.3828542   -1.1073980    1.8731064
Birth       JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    4+                 0.0081572   -0.0473672    0.0636815
Birth       JiVitA-3         BANGLADESH                     2                    4+                -0.0085515   -0.0737234    0.0566205
Birth       JiVitA-3         BANGLADESH                     3                    4+                -0.0210361   -0.0887549    0.0466826
Birth       JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    4+                 0.2502101    0.0277506    0.4726695
Birth       JiVitA-4         BANGLADESH                     2                    4+                 0.2592682    0.0193816    0.4991548
Birth       JiVitA-4         BANGLADESH                     3                    4+                 0.2092661   -0.0873191    0.5058513
Birth       MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    4+                -0.0690031   -0.6136188    0.4756126
Birth       MAL-ED           BANGLADESH                     2                    4+                -0.0586521   -0.6059646    0.4886605
Birth       MAL-ED           BANGLADESH                     3                    4+                -0.1274824   -0.7801328    0.5251681
Birth       MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    4+                 0.4042937   -0.2092260    1.0178134
Birth       MAL-ED           PERU                           2                    4+                 0.2227224   -0.0950942    0.5405389
Birth       MAL-ED           PERU                           3                    4+                 0.4222393    0.1136372    0.7308414
Birth       MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    4+                -0.4672121   -1.3096480    0.3752237
Birth       MAL-ED           SOUTH AFRICA                   2                    4+                 0.7354545   -0.0059351    1.4768442
Birth       MAL-ED           SOUTH AFRICA                   3                    4+                -0.0987121   -0.9615385    0.7641142
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0368889   -0.5659416    0.6397194
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4131111   -0.9334933    0.1072711
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0035556   -0.4663701    0.4734813
Birth       NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    4+                -0.0499123   -0.2963647    0.1965402
Birth       NIH-Crypto       BANGLADESH                     2                    4+                -0.0016152   -0.2783594    0.2751289
Birth       NIH-Crypto       BANGLADESH                     3                    4+                -0.1215926   -0.4761613    0.2329761
Birth       PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    4+                 0.0485930   -0.4447009    0.5418870
Birth       PROVIDE          BANGLADESH                     2                    4+                 0.0411351   -0.4858532    0.5681233
Birth       PROVIDE          BANGLADESH                     3                    4+                -0.0435064   -0.6030645    0.5160517
6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.3540947   -0.9731599    0.2649704
6 months    CMC-V-BCS-2002   INDIA                          2                    4+                 0.0443263   -0.6316303    0.7202830
6 months    CMC-V-BCS-2002   INDIA                          3                    4+                 0.1658581   -0.5431543    0.8748706
6 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    4+                -0.3249612   -0.4371502   -0.2127722
6 months    COHORTS          INDIA                          2                    4+                -0.2483382   -0.3725205   -0.1241559
6 months    COHORTS          INDIA                          3                    4+                -0.2604931   -0.4153075   -0.1056787
6 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    4+                 0.4296523   -0.0076016    0.8669062
6 months    CONTENT          PERU                           2                    4+                 0.5245362    0.1617260    0.8873464
6 months    CONTENT          PERU                           3                    4+                 0.4287728    0.0710461    0.7864995
6 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    4+                -0.0193560   -0.3812937    0.3425817
6 months    GMS-Nepal        NEPAL                          2                    4+                -0.0131219   -0.2415742    0.2153303
6 months    GMS-Nepal        NEPAL                          3                    4+                 0.0824572   -0.1373290    0.3022434
6 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    4+                 0.4030984   -0.3992967    1.2054935
6 months    IRC              INDIA                          2                    4+                 0.3614900   -0.4432348    1.1662149
6 months    IRC              INDIA                          3                    4+                 0.2929084   -0.6752043    1.2610211
6 months    JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    4+                -0.1425436   -0.1983328   -0.0867544
6 months    JiVitA-3         BANGLADESH                     2                    4+                -0.1788955   -0.2489854   -0.1088057
6 months    JiVitA-3         BANGLADESH                     3                    4+                -0.1296512   -0.2107987   -0.0485036
6 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    4+                -0.0189145   -0.1854545    0.1476255
6 months    JiVitA-4         BANGLADESH                     2                    4+                -0.0303712   -0.2142949    0.1535526
6 months    JiVitA-4         BANGLADESH                     3                    4+                 0.0690583   -0.1173375    0.2554542
6 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    4+                 0.2134843   -0.4320063    0.8589748
6 months    MAL-ED           BANGLADESH                     2                    4+                 0.5187970   -0.1641976    1.2017916
6 months    MAL-ED           BANGLADESH                     3                    4+                 0.3202019   -0.4595388    1.0999426
6 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    4+                -0.0683880   -0.4660283    0.3292524
6 months    MAL-ED           INDIA                          2                    4+                -0.0406345   -0.4411028    0.3598339
6 months    MAL-ED           INDIA                          3                    4+                -0.1040050   -0.5929498    0.3849398
6 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    4+                -0.1437553   -0.4899991    0.2024885
6 months    MAL-ED           NEPAL                          2                    4+                 0.3851374   -0.0424217    0.8126965
6 months    MAL-ED           NEPAL                          3                    4+                -0.1750257   -0.4945085    0.1444572
6 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    4+                -0.5204179   -1.0746731    0.0338374
6 months    MAL-ED           PERU                           2                    4+                 0.1699907   -0.1755037    0.5154851
6 months    MAL-ED           PERU                           3                    4+                 0.0218757   -0.2600669    0.3038182
6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.2346643   -0.6820312    0.2127027
6 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.4108407   -0.1589295    0.9806110
6 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.3262277   -0.7892775    0.1368222
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.7335391   -1.4536379   -0.0134403
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0714327   -0.3814212    0.2385559
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1580802   -0.5143522    0.1981918
6 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    4+                 0.0328468   -0.2599482    0.3256419
6 months    NIH-Crypto       BANGLADESH                     2                    4+                 0.0689060   -0.2489558    0.3867678
6 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.2455516   -0.1243569    0.6154600
6 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    4+                 0.2635571   -0.2722822    0.7993964
6 months    PROVIDE          BANGLADESH                     2                    4+                 0.5321100   -0.0331231    1.0973431
6 months    PROVIDE          BANGLADESH                     3                    4+                 0.3937892   -0.2085641    0.9961425
24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.5007332   -1.0723634    0.0708969
24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.3269921   -0.9190544    0.2650702
24 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.1102703   -0.5030286    0.7235693
24 months   COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    4+                -0.5085883   -0.6512219   -0.3659546
24 months   COHORTS          INDIA                          2                    4+                -0.3544676   -0.5044627   -0.2044725
24 months   COHORTS          INDIA                          3                    4+                -0.1388647   -0.3364258    0.0586964
24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    4+                 0.1159075   -0.3259922    0.5578073
24 months   CONTENT          PERU                           2                    4+                 0.0599826   -0.2814705    0.4014357
24 months   CONTENT          PERU                           3                    4+                 0.1457591   -0.3581358    0.6496541
24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    4+                -0.0057301   -0.4059840    0.3945237
24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0148453   -0.2447648    0.2150742
24 months   GMS-Nepal        NEPAL                          3                    4+                 0.0272120   -0.2080999    0.2625239
24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    4+                -0.1913781   -0.7921262    0.4093700
24 months   IRC              INDIA                          2                    4+                -0.1908966   -0.7949057    0.4131124
24 months   IRC              INDIA                          3                    4+                -0.3656451   -1.0284417    0.2971514
24 months   JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    4+                -0.1710363   -0.2411340   -0.1009387
24 months   JiVitA-3         BANGLADESH                     2                    4+                -0.2682050   -0.3501851   -0.1862248
24 months   JiVitA-3         BANGLADESH                     3                    4+                -0.0780600   -0.1725321    0.0164121
24 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    4+                 0.0940468   -0.0417639    0.2298576
24 months   JiVitA-4         BANGLADESH                     2                    4+                 0.0858198   -0.0645035    0.2361432
24 months   JiVitA-4         BANGLADESH                     3                    4+                 0.1440679   -0.0032529    0.2913886
24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    4+                -0.3635610   -1.1660347    0.4389128
24 months   MAL-ED           BANGLADESH                     2                    4+                -0.0161932   -0.8664539    0.8340676
24 months   MAL-ED           BANGLADESH                     3                    4+                -0.1623517   -1.0096834    0.6849799
24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    4+                 0.0257744   -0.4139681    0.4655169
24 months   MAL-ED           INDIA                          2                    4+                -0.0648047   -0.5208669    0.3912574
24 months   MAL-ED           INDIA                          3                    4+                -0.1548136   -0.6270945    0.3174672
24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    4+                -0.1344017   -0.4327575    0.1639541
24 months   MAL-ED           NEPAL                          2                    4+                 0.2713655   -0.1326663    0.6753972
24 months   MAL-ED           NEPAL                          3                    4+                -0.0690057   -0.4377984    0.2997871
24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    4+                -0.5160051   -1.1186555    0.0866454
24 months   MAL-ED           PERU                           2                    4+                -0.1744734   -0.4711470    0.1222003
24 months   MAL-ED           PERU                           3                    4+                -0.1422044   -0.4731918    0.1887830
24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.1799428   -0.5027292    0.1428435
24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.1593836   -0.2111697    0.5299368
24 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.1847034   -0.6041495    0.2347426
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3759637   -1.2967441    0.5448166
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1269415   -0.4059602    0.1520772
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0881275   -0.4200199    0.2437649
24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.2577637   -0.5431285    0.0276010
24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.1965840   -0.5082509    0.1150829
24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.2062718   -0.1892721    0.6018157
24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    4+                -0.2195733   -0.7089148    0.2697683
24 months   PROVIDE          BANGLADESH                     2                    4+                -0.0863396   -0.6110479    0.4383686
24 months   PROVIDE          BANGLADESH                     3                    4+                 0.0126030   -0.5675999    0.5928060


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0488256   -1.1046396    1.0069884
Birth       COHORTS          INDIA                          4+                   NA                -0.2688893   -0.4064563   -0.1313223
Birth       GMS-Nepal        NEPAL                          4+                   NA                 0.0644020   -0.0393897    0.1681936
Birth       IRC              INDIA                          4+                   NA                 0.1916612   -1.1170164    1.5003388
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.0130454   -0.0597207    0.0336299
Birth       JiVitA-4         BANGLADESH                     4+                   NA                 0.2685778    0.0589231    0.4782325
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.0646093   -0.5587135    0.4294950
Birth       MAL-ED           PERU                           4+                   NA                 0.1597133    0.0287474    0.2906793
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0558405   -0.1182633    0.2299443
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0993611   -0.3431773    0.1444551
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.0429947   -0.2475642    0.1615747
Birth       PROVIDE          BANGLADESH                     4+                   NA                 0.0428946   -0.4336696    0.5194588
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1170332   -0.7051187    0.4710522
6 months    COHORTS          INDIA                          4+                   NA                -0.2916016   -0.3962769   -0.1869263
6 months    CONTENT          PERU                           4+                   NA                 0.4095767    0.1804219    0.6387316
6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0176082   -0.0739051    0.1091215
6 months    IRC              INDIA                          4+                   NA                 0.3529623   -0.4068462    1.1127708
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.1507302   -0.1981591   -0.1033014
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0018731   -0.1487366    0.1449903
6 months    MAL-ED           BANGLADESH                     4+                   NA                 0.3077616   -0.2967322    0.9122553
6 months    MAL-ED           INDIA                          4+                   NA                -0.0626211   -0.3930446    0.2678023
6 months    MAL-ED           NEPAL                          4+                   NA                 0.0037449   -0.1154331    0.1229229
6 months    MAL-ED           PERU                           4+                   NA                -0.0189092   -0.1391836    0.1013652
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0067048   -0.0853212    0.0719117
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0253704   -0.1736469    0.1229060
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                 0.0530307   -0.2010836    0.3071450
6 months    PROVIDE          BANGLADESH                     4+                   NA                 0.3087575   -0.2075260    0.8250410
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3367916   -0.8862820    0.2126987
24 months   COHORTS          INDIA                          4+                   NA                -0.4350082   -0.5701676   -0.2998488
24 months   CONTENT          PERU                           4+                   NA                 0.0192415   -0.1800128    0.2184958
24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0193686   -0.1172806    0.0785434
24 months   IRC              INDIA                          4+                   NA                -0.2017524   -0.7732936    0.3697888
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -0.2139727   -0.2738265   -0.1541189
24 months   JiVitA-4         BANGLADESH                     4+                   NA                 0.1061510   -0.0123751    0.2246771
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.2517376   -1.0096377    0.5061624
24 months   MAL-ED           INDIA                          4+                   NA                -0.0457417   -0.4214554    0.3299719
24 months   MAL-ED           NEPAL                          4+                   NA                -0.0043174   -0.1066042    0.0979694
24 months   MAL-ED           PERU                           4+                   NA                -0.0945778   -0.2077248    0.0185692
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0043024   -0.0615659    0.0529612
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0689440   -0.2018628    0.0639748
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.1224256   -0.3502146    0.1053634
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.1468628   -0.6174539    0.3237284
