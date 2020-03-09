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
![](/tmp/840f563d-3253-4af3-99b0-92f06e32e7c8/9ca87abf-021e-4340-838c-0eec99254fdd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/840f563d-3253-4af3-99b0-92f06e32e7c8/9ca87abf-021e-4340-838c-0eec99254fdd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/840f563d-3253-4af3-99b0-92f06e32e7c8/9ca87abf-021e-4340-838c-0eec99254fdd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4160000   -1.4929959    0.6609959
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.5244286   -1.0232807   -0.0255765
Birth       CMC-V-BCS-2002   INDIA                          2                    NA                -0.6155556   -1.1573805   -0.0737306
Birth       CMC-V-BCS-2002   INDIA                          3                    NA                -0.1536842   -0.6942308    0.3868624
Birth       COHORTS          INDIA                          4+                   NA                -0.6972032   -0.8303412   -0.5640652
Birth       COHORTS          INDIA                          1                    NA                -1.0016123   -1.0472184   -0.9560062
Birth       COHORTS          INDIA                          2                    NA                -0.9427329   -1.0232016   -0.8622641
Birth       COHORTS          INDIA                          3                    NA                -0.7287141   -0.8842644   -0.5731637
Birth       GMS-Nepal        NEPAL                          4+                   NA                -1.1638193   -1.2911576   -1.0364810
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.0863106   -1.4334620   -0.7391593
Birth       GMS-Nepal        NEPAL                          2                    NA                -0.9644807   -1.1838087   -0.7451526
Birth       GMS-Nepal        NEPAL                          3                    NA                -1.1652926   -1.3739619   -0.9566234
Birth       IRC              INDIA                          4+                   NA                -0.9462709   -2.1910400    0.2984983
Birth       IRC              INDIA                          1                    NA                -1.1268886   -1.4169487   -0.8368285
Birth       IRC              INDIA                          2                    NA                -0.8901031   -1.1595785   -0.6206276
Birth       IRC              INDIA                          3                    NA                -0.7761864   -1.4450361   -0.1073368
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.7543212   -0.7983347   -0.7103077
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7564662   -0.7883188   -0.7246135
Birth       JiVitA-3         BANGLADESH                     2                    NA                -0.7786349   -0.8248538   -0.7324160
Birth       JiVitA-3         BANGLADESH                     3                    NA                -0.7893625   -0.8415812   -0.7371437
Birth       JiVitA-4         BANGLADESH                     4+                   NA                -0.9536813   -1.1450065   -0.7623562
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.7047084   -0.7738254   -0.6355913
Birth       JiVitA-4         BANGLADESH                     2                    NA                -0.7082797   -0.8305841   -0.5859753
Birth       JiVitA-4         BANGLADESH                     3                    NA                -0.7142568   -0.9586607   -0.4698530
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.9525990   -1.4475942   -0.4576039
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.9789768   -1.1948212   -0.7631325
Birth       MAL-ED           BANGLADESH                     2                    NA                -0.9930416   -1.2158323   -0.7702509
Birth       MAL-ED           BANGLADESH                     3                    NA                -1.0651097   -1.4852229   -0.6449966
Birth       MAL-ED           PERU                           4+                   NA                -0.2326768   -0.4261126   -0.0392411
Birth       MAL-ED           PERU                           1                    NA                -0.1380757   -0.7252307    0.4490794
Birth       MAL-ED           PERU                           2                    NA                -0.0465961   -0.2900059    0.1968137
Birth       MAL-ED           PERU                           3                    NA                 0.2060770   -0.0245455    0.4366996
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.2287879   -0.5065288    0.0489530
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.6960000   -1.4913352    0.0993352
Birth       MAL-ED           SOUTH AFRICA                   2                    NA                 0.5066667   -0.1807332    1.1940665
Birth       MAL-ED           SOUTH AFRICA                   3                    NA                -0.3275000   -1.1444022    0.4894022
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.8631111    0.5363093    1.1899130
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9000000    0.3934379    1.4065621
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.4500000    0.0450331    0.8549669
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.8666667    0.5289823    1.2043510
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -1.1981723   -1.4101551   -0.9861894
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2788219   -1.4093561   -1.1482877
Birth       NIH-Crypto       BANGLADESH                     2                    NA                -1.1815244   -1.3573947   -1.0056542
Birth       NIH-Crypto       BANGLADESH                     3                    NA                -1.2716404   -1.5546282   -0.9886527
Birth       PROVIDE          BANGLADESH                     4+                   NA                -1.2779209   -1.7510882   -0.8047535
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.2965350   -1.3855456   -1.2075244
Birth       PROVIDE          BANGLADESH                     2                    NA                -1.2751110   -1.4801479   -1.0700742
Birth       PROVIDE          BANGLADESH                     3                    NA                -1.3359453   -1.6188374   -1.0530531
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4536991   -1.0177376    0.1103394
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.7399957   -0.9239818   -0.5560097
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -0.3576375   -0.6995089   -0.0157662
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -0.2078711   -0.6014805    0.1857382
6 months    COHORTS          INDIA                          4+                   NA                -0.3976323   -0.4938659   -0.3013987
6 months    COHORTS          INDIA                          1                    NA                -0.7441268   -0.7879942   -0.7002593
6 months    COHORTS          INDIA                          2                    NA                -0.6770599   -0.7473673   -0.6067525
6 months    COHORTS          INDIA                          3                    NA                -0.6873567   -0.8114743   -0.5632391
6 months    CONTENT          PERU                           4+                   NA                 0.7993761    0.5516578    1.0470944
6 months    CONTENT          PERU                           1                    NA                 1.0535624    0.7412550    1.3658698
6 months    CONTENT          PERU                           2                    NA                 1.0836717    0.8317235    1.3356200
6 months    CONTENT          PERU                           3                    NA                 1.0644876    0.7651108    1.3638643
6 months    GMS-Nepal        NEPAL                          4+                   NA                -0.6093960   -0.7333795   -0.4854124
6 months    GMS-Nepal        NEPAL                          1                    NA                -0.6308703   -0.9574933   -0.3042472
6 months    GMS-Nepal        NEPAL                          2                    NA                -0.6494826   -0.8441213   -0.4548440
6 months    GMS-Nepal        NEPAL                          3                    NA                -0.5605388   -0.7433486   -0.3777290
6 months    IRC              INDIA                          4+                   NA                -0.7759678   -1.5768838    0.0249483
6 months    IRC              INDIA                          1                    NA                -0.5325574   -0.7333520   -0.3317628
6 months    IRC              INDIA                          2                    NA                -0.5889561   -0.7949907   -0.3829215
6 months    IRC              INDIA                          3                    NA                -0.7334397   -1.3334474   -0.1334321
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.4364213   -0.4822370   -0.3906056
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.5835487   -0.6151584   -0.5519390
6 months    JiVitA-3         BANGLADESH                     2                    NA                -0.6131381   -0.6650976   -0.5611786
6 months    JiVitA-3         BANGLADESH                     3                    NA                -0.5600168   -0.6204184   -0.4996152
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.3510795   -0.5031211   -0.1990379
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4017244   -0.4603839   -0.3430649
6 months    JiVitA-4         BANGLADESH                     2                    NA                -0.4227480   -0.5290974   -0.3163985
6 months    JiVitA-4         BANGLADESH                     3                    NA                -0.3096987   -0.4266965   -0.1927009
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.4168224   -0.9897389    0.1560941
6 months    MAL-ED           BANGLADESH                     1                    NA                -0.2189304   -0.3760909   -0.0617700
6 months    MAL-ED           BANGLADESH                     2                    NA                 0.0931468   -0.2026347    0.3889282
6 months    MAL-ED           BANGLADESH                     3                    NA                -0.1736050   -0.6585247    0.3113147
6 months    MAL-ED           INDIA                          4+                   NA                -0.6189432   -0.9944341   -0.2434523
6 months    MAL-ED           INDIA                          1                    NA                -0.7029511   -0.9099138   -0.4959884
6 months    MAL-ED           INDIA                          2                    NA                -0.6744776   -0.8935053   -0.4554499
6 months    MAL-ED           INDIA                          3                    NA                -0.7075194   -1.0632457   -0.3517932
6 months    MAL-ED           NEPAL                          4+                   NA                 0.1033768   -0.0736361    0.2803898
6 months    MAL-ED           NEPAL                          1                    NA                -0.0148026   -0.3098864    0.2802811
6 months    MAL-ED           NEPAL                          2                    NA                 0.4558373    0.0754033    0.8362713
6 months    MAL-ED           NEPAL                          3                    NA                 0.0278770   -0.2272107    0.2829648
6 months    MAL-ED           PERU                           4+                   NA                 1.0672112    0.8895125    1.2449100
6 months    MAL-ED           PERU                           1                    NA                 0.5071109   -0.0055651    1.0197870
6 months    MAL-ED           PERU                           2                    NA                 1.2086105    0.9184160    1.4988051
6 months    MAL-ED           PERU                           3                    NA                 1.1008841    0.8769086    1.3248595
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.5509094    0.3692547    0.7325641
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.2338280   -0.1639415    0.6315974
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                 0.8791714    0.3118206    1.4465222
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                 0.1709243   -0.2455490    0.5873976
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.5853246    0.3993065    0.7713428
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5203162   -0.1057229    1.1463554
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.5112151    0.2535078    0.7689225
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.4612885    0.1573533    0.7652237
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                 0.0453992   -0.2034514    0.2942498
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0055706   -0.1087156    0.1198568
6 months    NIH-Crypto       BANGLADESH                     2                    NA                 0.0366399   -0.1311495    0.2044293
6 months    NIH-Crypto       BANGLADESH                     3                    NA                 0.2094126   -0.0422667    0.4610919
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.4804757   -1.0030023    0.0420508
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.2472173   -0.3447269   -0.1497077
6 months    PROVIDE          BANGLADESH                     2                    NA                 0.0198010   -0.1808110    0.2204130
6 months    PROVIDE          BANGLADESH                     3                    NA                -0.1086558   -0.3999584    0.1826468
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2525830   -0.7916689    0.2865029
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.7231815   -0.8602060   -0.5861570
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -0.5462280   -0.7585031   -0.3339530
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -0.1220579   -0.3744195    0.1303038
24 months   COHORTS          INDIA                          4+                   NA                -0.2328497   -0.3636833   -0.1020161
24 months   COHORTS          INDIA                          1                    NA                -0.7407934   -0.7861221   -0.6954647
24 months   COHORTS          INDIA                          2                    NA                -0.5864302   -0.6507714   -0.5220890
24 months   COHORTS          INDIA                          3                    NA                -0.3639593   -0.5086746   -0.2192441
24 months   CONTENT          PERU                           4+                   NA                 0.5606272    0.3395387    0.7817157
24 months   CONTENT          PERU                           1                    NA                 0.6954723    0.3194613    1.0714832
24 months   CONTENT          PERU                           2                    NA                 0.6433420    0.3749173    0.9117666
24 months   CONTENT          PERU                           3                    NA                 0.7019615    0.2529669    1.1509562
24 months   GMS-Nepal        NEPAL                          4+                   NA                -1.1201759   -1.2550233   -0.9853284
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.1261612   -1.5077593   -0.7445632
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.1714399   -1.3596815   -0.9831983
24 months   GMS-Nepal        NEPAL                          3                    NA                -1.1031014   -1.2921194   -0.9140834
24 months   IRC              INDIA                          4+                   NA                -0.5267757   -1.1077264    0.0541751
24 months   IRC              INDIA                          1                    NA                -0.7242087   -0.8554930   -0.5929245
24 months   IRC              INDIA                          2                    NA                -0.7230352   -0.8674627   -0.5786078
24 months   IRC              INDIA                          3                    NA                -0.9569902   -1.2963452   -0.6176352
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -1.1209668   -1.1766281   -1.0653055
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.2556995   -1.2941438   -1.2172552
24 months   JiVitA-3         BANGLADESH                     2                    NA                -1.3454108   -1.4064736   -1.2843479
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.1740968   -1.2415171   -1.1066764
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -1.3240320   -1.4538893   -1.1941748
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.2348631   -1.2848540   -1.1848722
24 months   JiVitA-4         BANGLADESH                     2                    NA                -1.2411709   -1.3300702   -1.1522716
24 months   JiVitA-4         BANGLADESH                     3                    NA                -1.1903671   -1.2864703   -1.0942639
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.5655333   -1.4581301    0.3270634
24 months   MAL-ED           BANGLADESH                     1                    NA                -0.9306630   -1.0746326   -0.7866934
24 months   MAL-ED           BANGLADESH                     2                    NA                -0.5751519   -0.9057136   -0.2445902
24 months   MAL-ED           BANGLADESH                     3                    NA                -0.7077339   -1.0129524   -0.4025155
24 months   MAL-ED           INDIA                          4+                   NA                -0.8691897   -1.2440002   -0.4943792
24 months   MAL-ED           INDIA                          1                    NA                -0.8832887   -1.0637827   -0.7027947
24 months   MAL-ED           INDIA                          2                    NA                -0.9812297   -1.1967918   -0.7656676
24 months   MAL-ED           INDIA                          3                    NA                -1.0588548   -1.3137016   -0.8040079
24 months   MAL-ED           NEPAL                          4+                   NA                -0.3751189   -0.5235766   -0.2266611
24 months   MAL-ED           NEPAL                          1                    NA                -0.4583134   -0.7105776   -0.2060492
24 months   MAL-ED           NEPAL                          2                    NA                -0.0890854   -0.4639011    0.2857302
24 months   MAL-ED           NEPAL                          3                    NA                -0.4603361   -0.8231537   -0.0975186
24 months   MAL-ED           PERU                           4+                   NA                 0.2046551    0.0339673    0.3753428
24 months   MAL-ED           PERU                           1                    NA                -0.3055122   -0.8501858    0.2391613
24 months   MAL-ED           PERU                           2                    NA                 0.0400368   -0.1874474    0.2675210
24 months   MAL-ED           PERU                           3                    NA                 0.0454356   -0.2363951    0.3272663
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.4127472    0.2667933    0.5587012
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.3393728    0.0779424    0.6008033
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                 0.6211351    0.2568439    0.9854262
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                 0.3725670    0.0126729    0.7324610
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1237415   -0.0307885    0.2782715
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2522222   -1.1599430    0.6554985
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0032000   -0.2355186    0.2291186
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0356140   -0.2581087    0.3293368
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.5151958   -0.7746047   -0.2557869
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.7332412   -0.8628419   -0.6036405
24 months   NIH-Crypto       BANGLADESH                     2                    NA                -0.6832110   -0.8742433   -0.4921788
24 months   NIH-Crypto       BANGLADESH                     3                    NA                -0.2829213   -0.5653890   -0.0004535
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.6551165   -1.1134049   -0.1968281
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.9643301   -1.0591252   -0.8695350
24 months   PROVIDE          BANGLADESH                     2                    NA                -0.7723983   -0.9900844   -0.5547122
24 months   PROVIDE          BANGLADESH                     3                    NA                -0.7110999   -1.0424223   -0.3797775


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
Birth       COHORTS          INDIA                          1                    4+                -0.3044091   -0.4450290   -0.1637892
Birth       COHORTS          INDIA                          2                    4+                -0.2455296   -0.4010682   -0.0899911
Birth       COHORTS          INDIA                          3                    4+                -0.0315108   -0.2361976    0.1731759
Birth       GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    4+                 0.0775087   -0.2921869    0.4472043
Birth       GMS-Nepal        NEPAL                          2                    4+                 0.1993386   -0.0538334    0.4525107
Birth       GMS-Nepal        NEPAL                          3                    4+                -0.0014733   -0.2459226    0.2429760
Birth       IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    4+                -0.1806178   -1.4591913    1.0979558
Birth       IRC              INDIA                          2                    4+                 0.0561678   -1.2175926    1.3299282
Birth       IRC              INDIA                          3                    4+                 0.1700844   -1.2425535    1.5827224
Birth       JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    4+                -0.0021450   -0.0557229    0.0514330
Birth       JiVitA-3         BANGLADESH                     2                    4+                -0.0243137   -0.0882025    0.0395751
Birth       JiVitA-3         BANGLADESH                     3                    4+                -0.0350413   -0.1014545    0.0313719
Birth       JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    4+                 0.2489729    0.0465513    0.4513946
Birth       JiVitA-4         BANGLADESH                     2                    4+                 0.2454016    0.0193003    0.4715029
Birth       JiVitA-4         BANGLADESH                     3                    4+                 0.2394245   -0.0646156    0.5434645
Birth       MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    4+                -0.0263778   -0.5667250    0.5139694
Birth       MAL-ED           BANGLADESH                     2                    4+                -0.0404426   -0.5833976    0.5025125
Birth       MAL-ED           BANGLADESH                     3                    4+                -0.1125107   -0.7596368    0.5346154
Birth       MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    4+                 0.0946012   -0.5212316    0.7104339
Birth       MAL-ED           PERU                           2                    4+                 0.1860807   -0.1256744    0.4978358
Birth       MAL-ED           PERU                           3                    4+                 0.4387538    0.1375270    0.7399807
Birth       MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    4+                -0.4672121   -1.3096480    0.3752237
Birth       MAL-ED           SOUTH AFRICA                   2                    4+                 0.7354545   -0.0059351    1.4768442
Birth       MAL-ED           SOUTH AFRICA                   3                    4+                -0.0987121   -0.9615385    0.7641142
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0368889   -0.5659416    0.6397194
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4131111   -0.9334933    0.1072711
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0035556   -0.4663701    0.4734813
Birth       NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    4+                -0.0806496   -0.3295074    0.1682081
Birth       NIH-Crypto       BANGLADESH                     2                    4+                 0.0166478   -0.2587873    0.2920829
Birth       NIH-Crypto       BANGLADESH                     3                    4+                -0.0734682   -0.4270178    0.2800815
Birth       PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    4+                -0.0186141   -0.4999847    0.4627565
Birth       PROVIDE          BANGLADESH                     2                    4+                 0.0028098   -0.5134072    0.5190269
Birth       PROVIDE          BANGLADESH                     3                    4+                -0.0580244   -0.6096361    0.4935874
6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.2862966   -0.8797819    0.3071887
6 months    CMC-V-BCS-2002   INDIA                          2                    4+                 0.0960616   -0.5600904    0.7522136
6 months    CMC-V-BCS-2002   INDIA                          3                    4+                 0.2458280   -0.4414337    0.9330896
6 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    4+                -0.3464945   -0.4520624   -0.2409266
6 months    COHORTS          INDIA                          2                    4+                -0.2794276   -0.3984605   -0.1603947
6 months    COHORTS          INDIA                          3                    4+                -0.2897244   -0.4467083   -0.1327405
6 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    4+                 0.2541863   -0.1418678    0.6502404
6 months    CONTENT          PERU                           2                    4+                 0.2842956   -0.0674620    0.6360533
6 months    CONTENT          PERU                           3                    4+                 0.2651114   -0.1271917    0.6574146
6 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    4+                -0.0214743   -0.3710559    0.3281073
6 months    GMS-Nepal        NEPAL                          2                    4+                -0.0400867   -0.2711287    0.1909554
6 months    GMS-Nepal        NEPAL                          3                    4+                 0.0488571   -0.1721396    0.2698538
6 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    4+                 0.2434104   -0.5846589    1.0714796
6 months    IRC              INDIA                          2                    4+                 0.1870117   -0.6429133    1.0169366
6 months    IRC              INDIA                          3                    4+                 0.0425281   -0.9606686    1.0457247
6 months    JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    4+                -0.1471274   -0.2018876   -0.0923673
6 months    JiVitA-3         BANGLADESH                     2                    4+                -0.1767168   -0.2445021   -0.1089315
6 months    JiVitA-3         BANGLADESH                     3                    4+                -0.1235955   -0.2024545   -0.0447366
6 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    4+                -0.0506449   -0.2165489    0.1152591
6 months    JiVitA-4         BANGLADESH                     2                    4+                -0.0716685   -0.2544590    0.1111220
6 months    JiVitA-4         BANGLADESH                     3                    4+                 0.0413808   -0.1429885    0.2257502
6 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    4+                 0.1978920   -0.3972949    0.7930789
6 months    MAL-ED           BANGLADESH                     2                    4+                 0.5099692   -0.1330758    1.1530142
6 months    MAL-ED           BANGLADESH                     3                    4+                 0.2432174   -0.5081137    0.9945486
6 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    4+                -0.0840079   -0.5154537    0.3474378
6 months    MAL-ED           INDIA                          2                    4+                -0.0555344   -0.4944131    0.3833443
6 months    MAL-ED           INDIA                          3                    4+                -0.0885762   -0.6053476    0.4281951
6 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    4+                -0.1181795   -0.4629308    0.2265718
6 months    MAL-ED           NEPAL                          2                    4+                 0.3524605   -0.0671332    0.7720541
6 months    MAL-ED           NEPAL                          3                    4+                -0.0754998   -0.3853308    0.2343312
6 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    4+                -0.5601003   -1.1031699   -0.0170307
6 months    MAL-ED           PERU                           2                    4+                 0.1413993   -0.1990439    0.4818426
6 months    MAL-ED           PERU                           3                    4+                 0.0336728   -0.2528752    0.3202208
6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.3170814   -0.7547704    0.1206076
6 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.3282620   -0.2673751    0.9238991
6 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.3799851   -0.8348328    0.0748626
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0650084   -0.7173051    0.5872883
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0741095   -0.3927775    0.2445585
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.1240361   -0.4813432    0.2332710
6 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0398286   -0.3134467    0.2337894
6 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0087593   -0.3084727    0.2909541
6 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.1640134   -0.1895406    0.5175674
6 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    4+                 0.2332584   -0.2977455    0.7642623
6 months    PROVIDE          BANGLADESH                     2                    4+                 0.5002768   -0.0586812    1.0592348
6 months    PROVIDE          BANGLADESH                     3                    4+                 0.3718199   -0.2265117    0.9701516
24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.4705985   -1.0264459    0.0852488
24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.2936451   -0.8721317    0.2848415
24 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.1305251   -0.4646051    0.7256553
24 months   COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    4+                -0.5079437   -0.6459609   -0.3699266
24 months   COHORTS          INDIA                          2                    4+                -0.3535805   -0.4989533   -0.2082078
24 months   COHORTS          INDIA                          3                    4+                -0.1311096   -0.3258865    0.0636672
24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    4+                 0.1348451   -0.3031603    0.5728504
24 months   CONTENT          PERU                           2                    4+                 0.0827148   -0.2657042    0.4311338
24 months   CONTENT          PERU                           3                    4+                 0.1413344   -0.3598655    0.6425343
24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    4+                -0.0059854   -0.4111429    0.3991722
24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0512640   -0.2831053    0.1805773
24 months   GMS-Nepal        NEPAL                          3                    4+                 0.0170745   -0.2159198    0.2500687
24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    4+                -0.1974331   -0.7933448    0.3984786
24 months   IRC              INDIA                          2                    4+                -0.1962596   -0.7956713    0.4031521
24 months   IRC              INDIA                          3                    4+                -0.4302146   -1.1044916    0.2440625
24 months   JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    4+                -0.1347327   -0.2019994   -0.0674660
24 months   JiVitA-3         BANGLADESH                     2                    4+                -0.2244440   -0.3070249   -0.1418631
24 months   JiVitA-3         BANGLADESH                     3                    4+                -0.0531300   -0.1426505    0.0363906
24 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    4+                 0.0891689   -0.0515948    0.2299327
24 months   JiVitA-4         BANGLADESH                     2                    4+                 0.0828612   -0.0729392    0.2386615
24 months   JiVitA-4         BANGLADESH                     3                    4+                 0.1336650   -0.0190112    0.2863411
24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    4+                -0.3651297   -1.2704417    0.5401823
24 months   MAL-ED           BANGLADESH                     2                    4+                -0.0096186   -0.9612590    0.9420219
24 months   MAL-ED           BANGLADESH                     3                    4+                -0.1422006   -1.0866689    0.8022678
24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    4+                -0.0140990   -0.4298420    0.4016440
24 months   MAL-ED           INDIA                          2                    4+                -0.1120400   -0.5435969    0.3195170
24 months   MAL-ED           INDIA                          3                    4+                -0.1896650   -0.6421768    0.2628467
24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    4+                -0.0831945   -0.3747701    0.2083811
24 months   MAL-ED           NEPAL                          2                    4+                 0.2860334   -0.1171399    0.6892067
24 months   MAL-ED           NEPAL                          3                    4+                -0.0852173   -0.4772844    0.3068499
24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    4+                -0.5101673   -1.0821574    0.0618228
24 months   MAL-ED           PERU                           2                    4+                -0.1646182   -0.4490250    0.1197885
24 months   MAL-ED           PERU                           3                    4+                -0.1592194   -0.4889836    0.1705447
24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0733744   -0.3717998    0.2250509
24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.2083878   -0.1838660    0.6006416
24 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0401803   -0.4288321    0.3484715
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.3759637   -1.2967441    0.5448166
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1269415   -0.4059602    0.1520772
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0881275   -0.4200199    0.2437649
24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.2180454   -0.5079656    0.0718749
24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.1680153   -0.4889151    0.1528846
24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.2322745   -0.1501675    0.6147166
24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    4+                -0.3092136   -0.7771811    0.1587539
24 months   PROVIDE          BANGLADESH                     2                    4+                -0.1172818   -0.6244345    0.3898709
24 months   PROVIDE          BANGLADESH                     3                    4+                -0.0559834   -0.6209348    0.5089680


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0488256   -1.1046396    1.0069884
Birth       COHORTS          INDIA                          4+                   NA                -0.2806055   -0.4140211   -0.1471899
Birth       GMS-Nepal        NEPAL                          4+                   NA                 0.0473763   -0.0516044    0.1463569
Birth       IRC              INDIA                          4+                   NA                -0.0590664   -1.2722720    1.1541392
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.0233324   -0.0685435    0.0218788
Birth       JiVitA-4         BANGLADESH                     4+                   NA                 0.2654315    0.0755699    0.4552931
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.0202368   -0.5099560    0.4694824
Birth       MAL-ED           PERU                           4+                   NA                 0.1858673    0.0550207    0.3167139
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0558405   -0.1182633    0.2299443
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0993611   -0.3431773    0.1444551
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.0459791   -0.2504766    0.1585184
Birth       PROVIDE          BANGLADESH                     4+                   NA                -0.0205378   -0.4852282    0.4441526
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0489775   -0.6119856    0.5140306
6 months    COHORTS          INDIA                          4+                   NA                -0.3111689   -0.4093425   -0.2129954
6 months    CONTENT          PERU                           4+                   NA                 0.2650518    0.0516214    0.4784821
6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0055543   -0.0854010    0.0965097
6 months    IRC              INDIA                          4+                   NA                 0.1858857   -0.5990632    0.9708345
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.1566089   -0.2030129   -0.1102049
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0390800   -0.1863808    0.1082207
6 months    MAL-ED           BANGLADESH                     4+                   NA                 0.2834891   -0.2709722    0.8379503
6 months    MAL-ED           INDIA                          4+                   NA                -0.0913440   -0.4562365    0.2735485
6 months    MAL-ED           NEPAL                          4+                   NA                 0.0070540   -0.1129702    0.1270781
6 months    MAL-ED           PERU                           4+                   NA                -0.0160014   -0.1362936    0.1042909
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0104743   -0.0890906    0.0681419
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0491033   -0.1973789    0.0991723
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0156370   -0.2480423    0.2167684
6 months    PROVIDE          BANGLADESH                     4+                   NA                 0.2813851   -0.2297793    0.7925495
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3045676   -0.8384841    0.2293489
24 months   COHORTS          INDIA                          4+                   NA                -0.4284302   -0.5589979   -0.2978625
24 months   CONTENT          PERU                           4+                   NA                 0.0296167   -0.1557610    0.2149945
24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0161349   -0.1143913    0.0821216
24 months   IRC              INDIA                          4+                   NA                -0.2149033   -0.7815449    0.3517383
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -0.1758299   -0.2336837   -0.1179760
24 months   JiVitA-4         BANGLADESH                     4+                   NA                 0.1008545   -0.0236721    0.2253810
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.2537591   -1.1134090    0.6058908
24 months   MAL-ED           INDIA                          4+                   NA                -0.0824623   -0.4334169    0.2684924
24 months   MAL-ED           NEPAL                          4+                   NA                 0.0002066   -0.1049120    0.1053251
24 months   MAL-ED           PERU                           4+                   NA                -0.0934569   -0.2050271    0.0181133
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0037171   -0.0603120    0.0528777
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0689440   -0.2018628    0.0639748
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0951544   -0.3276396    0.1373308
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.2377505   -0.6867942    0.2112931
