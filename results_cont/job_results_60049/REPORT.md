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
Birth       CMC-V-BCS-2002   INDIA                          4+             5      92
Birth       CMC-V-BCS-2002   INDIA                          1             38      92
Birth       CMC-V-BCS-2002   INDIA                          2             29      92
Birth       CMC-V-BCS-2002   INDIA                          3             20      92
Birth       COHORTS          INDIA                          4+            92    4769
Birth       COHORTS          INDIA                          1           3125    4769
Birth       COHORTS          INDIA                          2           1385    4769
Birth       COHORTS          INDIA                          3            167    4769
Birth       CONTENT          PERU                           4+             1       2
Birth       CONTENT          PERU                           1              0       2
Birth       CONTENT          PERU                           2              1       2
Birth       CONTENT          PERU                           3              0       2
Birth       GMS-Nepal        NEPAL                          4+           321     696
Birth       GMS-Nepal        NEPAL                          1             49     696
Birth       GMS-Nepal        NEPAL                          2            145     696
Birth       GMS-Nepal        NEPAL                          3            181     696
Birth       IRC              INDIA                          4+            17     386
Birth       IRC              INDIA                          1            175     386
Birth       IRC              INDIA                          2            161     386
Birth       IRC              INDIA                          3             33     386
Birth       JiVitA-3         BANGLADESH                     4+           755   22429
Birth       JiVitA-3         BANGLADESH                     1          13942   22429
Birth       JiVitA-3         BANGLADESH                     2           5846   22429
Birth       JiVitA-3         BANGLADESH                     3           1886   22429
Birth       JiVitA-4         BANGLADESH                     4+           128    2820
Birth       JiVitA-4         BANGLADESH                     1           1705    2820
Birth       JiVitA-4         BANGLADESH                     2            709    2820
Birth       JiVitA-4         BANGLADESH                     3            278    2820
Birth       MAL-ED           BANGLADESH                     4+            12     213
Birth       MAL-ED           BANGLADESH                     1            130     213
Birth       MAL-ED           BANGLADESH                     2             46     213
Birth       MAL-ED           BANGLADESH                     3             25     213
Birth       MAL-ED           BRAZIL                         4+            30      60
Birth       MAL-ED           BRAZIL                         1              0      60
Birth       MAL-ED           BRAZIL                         2             10      60
Birth       MAL-ED           BRAZIL                         3             20      60
Birth       MAL-ED           INDIA                          4+             2      41
Birth       MAL-ED           INDIA                          1             18      41
Birth       MAL-ED           INDIA                          2             17      41
Birth       MAL-ED           INDIA                          3              4      41
Birth       MAL-ED           NEPAL                          4+            15      26
Birth       MAL-ED           NEPAL                          1              7      26
Birth       MAL-ED           NEPAL                          2              2      26
Birth       MAL-ED           NEPAL                          3              2      26
Birth       MAL-ED           PERU                           4+           107     215
Birth       MAL-ED           PERU                           1             13     215
Birth       MAL-ED           PERU                           2             45     215
Birth       MAL-ED           PERU                           3             50     215
Birth       MAL-ED           SOUTH AFRICA                   4+            67      96
Birth       MAL-ED           SOUTH AFRICA                   1              5      96
Birth       MAL-ED           SOUTH AFRICA                   2             12      96
Birth       MAL-ED           SOUTH AFRICA                   3             12      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            49     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             31     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             31     120
Birth       NIH-Crypto       BANGLADESH                     4+            93     732
Birth       NIH-Crypto       BANGLADESH                     1            353     732
Birth       NIH-Crypto       BANGLADESH                     2            187     732
Birth       NIH-Crypto       BANGLADESH                     3             99     732
Birth       PROVIDE          BANGLADESH                     4+            19     539
Birth       PROVIDE          BANGLADESH                     1            390     539
Birth       PROVIDE          BANGLADESH                     2             83     539
Birth       PROVIDE          BANGLADESH                     3             47     539
6 months    CMC-V-BCS-2002   INDIA                          4+            14     369
6 months    CMC-V-BCS-2002   INDIA                          1            198     369
6 months    CMC-V-BCS-2002   INDIA                          2            106     369
6 months    CMC-V-BCS-2002   INDIA                          3             51     369
6 months    COHORTS          INDIA                          4+            93    4962
6 months    COHORTS          INDIA                          1           3213    4962
6 months    COHORTS          INDIA                          2           1474    4962
6 months    COHORTS          INDIA                          3            182    4962
6 months    CONTENT          PERU                           4+            78     215
6 months    CONTENT          PERU                           1             44     215
6 months    CONTENT          PERU                           2             54     215
6 months    CONTENT          PERU                           3             39     215
6 months    GMS-Nepal        NEPAL                          4+           268     564
6 months    GMS-Nepal        NEPAL                          1             40     564
6 months    GMS-Nepal        NEPAL                          2            115     564
6 months    GMS-Nepal        NEPAL                          3            141     564
6 months    IRC              INDIA                          4+            17     405
6 months    IRC              INDIA                          1            183     405
6 months    IRC              INDIA                          2            170     405
6 months    IRC              INDIA                          3             35     405
6 months    JiVitA-3         BANGLADESH                     4+           744   16800
6 months    JiVitA-3         BANGLADESH                     1           9625   16800
6 months    JiVitA-3         BANGLADESH                     2           4740   16800
6 months    JiVitA-3         BANGLADESH                     3           1691   16800
6 months    JiVitA-4         BANGLADESH                     4+           262    4825
6 months    JiVitA-4         BANGLADESH                     1           2850    4825
6 months    JiVitA-4         BANGLADESH                     2           1225    4825
6 months    JiVitA-4         BANGLADESH                     3            488    4825
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
6 months    PROVIDE          BANGLADESH                     4+            21     604
6 months    PROVIDE          BANGLADESH                     1            431     604
6 months    PROVIDE          BANGLADESH                     2             94     604
6 months    PROVIDE          BANGLADESH                     3             58     604
24 months   CMC-V-BCS-2002   INDIA                          4+            14     371
24 months   CMC-V-BCS-2002   INDIA                          1            201     371
24 months   CMC-V-BCS-2002   INDIA                          2            105     371
24 months   CMC-V-BCS-2002   INDIA                          3             51     371
24 months   COHORTS          INDIA                          4+            76    3746
24 months   COHORTS          INDIA                          1           2299    3746
24 months   COHORTS          INDIA                          2           1221    3746
24 months   COHORTS          INDIA                          3            150    3746
24 months   CONTENT          PERU                           4+            63     164
24 months   CONTENT          PERU                           1             30     164
24 months   CONTENT          PERU                           2             39     164
24 months   CONTENT          PERU                           3             32     164
24 months   GMS-Nepal        NEPAL                          4+           231     488
24 months   GMS-Nepal        NEPAL                          1             35     488
24 months   GMS-Nepal        NEPAL                          2            106     488
24 months   GMS-Nepal        NEPAL                          3            116     488
24 months   IRC              INDIA                          4+            17     407
24 months   IRC              INDIA                          1            184     407
24 months   IRC              INDIA                          2            170     407
24 months   IRC              INDIA                          3             36     407
24 months   JiVitA-3         BANGLADESH                     4+           367    8620
24 months   JiVitA-3         BANGLADESH                     1           5051    8620
24 months   JiVitA-3         BANGLADESH                     2           2400    8620
24 months   JiVitA-3         BANGLADESH                     3            802    8620
24 months   JiVitA-4         BANGLADESH                     4+           251    4747
24 months   JiVitA-4         BANGLADESH                     1           2789    4747
24 months   JiVitA-4         BANGLADESH                     2           1216    4747
24 months   JiVitA-4         BANGLADESH                     3            491    4747
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
24 months   PROVIDE          BANGLADESH                     4+            22     578
24 months   PROVIDE          BANGLADESH                     1            407     578
24 months   PROVIDE          BANGLADESH                     2             92     578
24 months   PROVIDE          BANGLADESH                     3             57     578


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
![](/tmp/5955fee3-9a45-45e5-ac77-07e8c243130a/351fc6e3-fb38-4ee1-89ef-3306fd4878b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5955fee3-9a45-45e5-ac77-07e8c243130a/351fc6e3-fb38-4ee1-89ef-3306fd4878b2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5955fee3-9a45-45e5-ac77-07e8c243130a/351fc6e3-fb38-4ee1-89ef-3306fd4878b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.8740000   -1.4739904   -0.2740096
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.8946053   -1.2459292   -0.5432813
Birth       CMC-V-BCS-2002   INDIA                          2                    NA                -1.1229310   -1.4808250   -0.7650370
Birth       CMC-V-BCS-2002   INDIA                          3                    NA                -0.8750000   -1.3685904   -0.3814096
Birth       COHORTS          INDIA                          4+                   NA                -0.5527985   -0.6910865   -0.4145106
Birth       COHORTS          INDIA                          1                    NA                -0.7238769   -0.7667155   -0.6810382
Birth       COHORTS          INDIA                          2                    NA                -0.5576952   -0.6316407   -0.4837498
Birth       COHORTS          INDIA                          3                    NA                -0.6749634   -0.8360504   -0.5138765
Birth       GMS-Nepal        NEPAL                          4+                   NA                -1.0396151   -1.1605409   -0.9186894
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.1558692   -1.4797681   -0.8319703
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.0986849   -1.2800062   -0.9173637
Birth       GMS-Nepal        NEPAL                          3                    NA                -1.1283809   -1.3001553   -0.9566065
Birth       IRC              INDIA                          4+                   NA                -0.1099435   -0.7853414    0.5654544
Birth       IRC              INDIA                          1                    NA                -0.6352593   -0.8340058   -0.4365128
Birth       IRC              INDIA                          2                    NA                -0.3901255   -0.6700205   -0.1102306
Birth       IRC              INDIA                          3                    NA                -0.0203063   -0.7241845    0.6835719
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -1.3764633   -1.4176465   -1.3352800
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.5922262   -1.6199363   -1.5645161
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.5949733   -1.6411585   -1.5487880
Birth       JiVitA-3         BANGLADESH                     3                    NA                -1.5650567   -1.6242504   -1.5058629
Birth       JiVitA-4         BANGLADESH                     4+                   NA                -1.9215879   -2.0616235   -1.7815524
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5588480   -1.6539510   -1.4637450
Birth       JiVitA-4         BANGLADESH                     2                    NA                -1.4967773   -1.6202744   -1.3732802
Birth       JiVitA-4         BANGLADESH                     3                    NA                -1.4299275   -1.5775947   -1.2822602
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.4086964   -0.9758406    0.1584477
Birth       MAL-ED           BANGLADESH                     1                    NA                -1.1307112   -1.3107602   -0.9506622
Birth       MAL-ED           BANGLADESH                     2                    NA                -1.0921492   -1.4001609   -0.7841376
Birth       MAL-ED           BANGLADESH                     3                    NA                -0.8805454   -1.2086136   -0.5524772
Birth       MAL-ED           PERU                           4+                   NA                -0.8493073   -1.0487741   -0.6498405
Birth       MAL-ED           PERU                           1                    NA                -0.9208210   -1.3785300   -0.4631120
Birth       MAL-ED           PERU                           2                    NA                -0.9920184   -1.2003666   -0.7836702
Birth       MAL-ED           PERU                           3                    NA                -0.9251095   -1.1288231   -0.7213959
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.4688060   -0.7283817   -0.2092303
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.1980000   -0.4674799    0.0714799
Birth       MAL-ED           SOUTH AFRICA                   2                    NA                -1.0133333   -1.4164289   -0.6102377
Birth       MAL-ED           SOUTH AFRICA                   3                    NA                -0.7058333   -1.2016555   -0.2100111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.2567347   -1.5615935   -0.9518759
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8588889   -1.4085412   -0.3092365
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.1070968   -1.6324652   -0.5817283
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.0022581   -1.3571466   -0.6473695
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.9886152   -1.1879161   -0.7893143
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9539745   -1.0565200   -0.8514290
Birth       NIH-Crypto       BANGLADESH                     2                    NA                -0.8924480   -1.0626425   -0.7222535
Birth       NIH-Crypto       BANGLADESH                     3                    NA                -0.7961865   -0.9856656   -0.6067073
Birth       PROVIDE          BANGLADESH                     4+                   NA                -0.9605121   -1.3959724   -0.5250517
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.8773712   -0.9631915   -0.7915509
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.9586308   -1.1736520   -0.7436096
Birth       PROVIDE          BANGLADESH                     3                    NA                -0.8831557   -1.1256997   -0.6406117
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.9425160   -1.5278075   -0.3572246
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.3699550   -1.5485103   -1.1913996
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -1.5471549   -1.8379025   -1.2564073
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -1.2313129   -1.7034317   -0.7591941
6 months    COHORTS          INDIA                          4+                   NA                -0.6454194   -0.7383459   -0.5524929
6 months    COHORTS          INDIA                          1                    NA                -1.1452679   -1.1884775   -1.1020584
6 months    COHORTS          INDIA                          2                    NA                -0.8632068   -0.9317598   -0.7946538
6 months    COHORTS          INDIA                          3                    NA                -0.8504577   -0.9812069   -0.7197084
6 months    CONTENT          PERU                           4+                   NA                -0.2163733   -0.4305466   -0.0021999
6 months    CONTENT          PERU                           1                    NA                -0.2391347   -0.8009218    0.3226524
6 months    CONTENT          PERU                           2                    NA                -0.0315736   -0.2969113    0.2337640
6 months    CONTENT          PERU                           3                    NA                -0.1868275   -0.5834094    0.2097545
6 months    GMS-Nepal        NEPAL                          4+                   NA                -1.3632305   -1.4768872   -1.2495737
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.5328955   -1.8212801   -1.2445110
6 months    GMS-Nepal        NEPAL                          2                    NA                -1.3643880   -1.5349191   -1.1938570
6 months    GMS-Nepal        NEPAL                          3                    NA                -1.3197550   -1.4745237   -1.1649863
6 months    IRC              INDIA                          4+                   NA                -1.0734770   -1.9599203   -0.1870337
6 months    IRC              INDIA                          1                    NA                -1.2315264   -1.4275740   -1.0354789
6 months    IRC              INDIA                          2                    NA                -1.2876791   -1.4858175   -1.0895407
6 months    IRC              INDIA                          3                    NA                -1.2903780   -1.7690208   -0.8117353
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -1.1328070   -1.1812711   -1.0843429
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3036409   -1.3353166   -1.2719652
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.3081984   -1.3539988   -1.2623980
6 months    JiVitA-3         BANGLADESH                     3                    NA                -1.2490672   -1.3065628   -1.1915716
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -1.3176231   -1.4447224   -1.1905238
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3346839   -1.3979218   -1.2714460
6 months    JiVitA-4         BANGLADESH                     2                    NA                -1.3280661   -1.4284494   -1.2276827
6 months    JiVitA-4         BANGLADESH                     3                    NA                -1.3488263   -1.4652573   -1.2323953
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.9652470   -1.4770477   -0.4534463
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.2323708   -1.3738253   -1.0909162
6 months    MAL-ED           BANGLADESH                     2                    NA                -1.2594149   -1.5883045   -0.9305254
6 months    MAL-ED           BANGLADESH                     3                    NA                -1.0737602   -1.3462012   -0.8013192
6 months    MAL-ED           INDIA                          4+                   NA                -0.9885698   -1.2512415   -0.7258981
6 months    MAL-ED           INDIA                          1                    NA                -1.1011198   -1.3161996   -0.8860400
6 months    MAL-ED           INDIA                          2                    NA                -1.4386902   -1.6509058   -1.2264745
6 months    MAL-ED           INDIA                          3                    NA                -1.0767682   -1.3148189   -0.8387175
6 months    MAL-ED           NEPAL                          4+                   NA                -0.5054968   -0.6575619   -0.3534318
6 months    MAL-ED           NEPAL                          1                    NA                -0.6436557   -0.8950784   -0.3922331
6 months    MAL-ED           NEPAL                          2                    NA                -0.6821463   -1.0026322   -0.3616604
6 months    MAL-ED           NEPAL                          3                    NA                -0.5581207   -0.9348578   -0.1813837
6 months    MAL-ED           PERU                           4+                   NA                -1.3508321   -1.5095373   -1.1921268
6 months    MAL-ED           PERU                           1                    NA                -1.7294618   -2.1663179   -1.2926057
6 months    MAL-ED           PERU                           2                    NA                -1.2191058   -1.4698693   -0.9683423
6 months    MAL-ED           PERU                           3                    NA                -1.2804171   -1.4809488   -1.0798853
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -1.0766983   -1.2332958   -0.9201009
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.2341229   -1.7635215   -0.7047242
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                -0.8075598   -1.2309437   -0.3841759
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                -0.9217229   -1.2260756   -0.6173701
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3534777   -1.5260370   -1.1809184
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4402580   -2.1237166   -0.7567995
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4607325   -1.7543751   -1.1670900
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.2518005   -1.4705998   -1.0330013
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -1.1835319   -1.3286573   -1.0384066
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.2545647   -1.3610832   -1.1480462
6 months    NIH-Crypto       BANGLADESH                     2                    NA                -1.2031608   -1.3634729   -1.0428488
6 months    NIH-Crypto       BANGLADESH                     3                    NA                -0.9288948   -1.1439770   -0.7138126
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.9410747   -1.3483107   -0.5338387
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1250034   -1.2129719   -1.0370349
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.0329722   -1.2240068   -0.8419376
6 months    PROVIDE          BANGLADESH                     3                    NA                -1.0304180   -1.2686952   -0.7921409
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -2.2006831   -2.6202117   -1.7811544
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.6577905   -2.7938718   -2.5217092
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -2.4906289   -2.6739554   -2.3073024
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -2.3769083   -2.6680147   -2.0858018
24 months   COHORTS          INDIA                          4+                   NA                -1.4238876   -1.5733644   -1.2744107
24 months   COHORTS          INDIA                          1                    NA                -2.3592497   -2.4135333   -2.3049661
24 months   COHORTS          INDIA                          2                    NA                -1.9757648   -2.0564965   -1.8950331
24 months   COHORTS          INDIA                          3                    NA                -1.9105180   -2.0872364   -1.7337995
24 months   CONTENT          PERU                           4+                   NA                -0.4435010   -0.6614135   -0.2255886
24 months   CONTENT          PERU                           1                    NA                -0.8932272   -1.3681227   -0.4183317
24 months   CONTENT          PERU                           2                    NA                -0.6952253   -1.1048371   -0.2856135
24 months   CONTENT          PERU                           3                    NA                -0.7307637   -1.0828488   -0.3786785
24 months   GMS-Nepal        NEPAL                          4+                   NA                -1.8409485   -1.9629455   -1.7189514
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.2354127   -2.5625044   -1.9083210
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.9681136   -2.1521164   -1.7841108
24 months   GMS-Nepal        NEPAL                          3                    NA                -1.8310023   -2.0095554   -1.6524492
24 months   IRC              INDIA                          4+                   NA                -1.9290236   -2.4353861   -1.4226610
24 months   IRC              INDIA                          1                    NA                -1.8743931   -2.0196469   -1.7291393
24 months   IRC              INDIA                          2                    NA                -1.6566638   -1.8002148   -1.5131128
24 months   IRC              INDIA                          3                    NA                -2.0600933   -2.3186774   -1.8015093
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -1.8268685   -1.9034460   -1.7502910
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.0043022   -2.0466041   -1.9620003
24 months   JiVitA-3         BANGLADESH                     2                    NA                -2.0287615   -2.0976414   -1.9598816
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.9835758   -2.0569451   -1.9102065
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -1.7717699   -1.8973017   -1.6462382
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7840419   -1.8468493   -1.7212345
24 months   JiVitA-4         BANGLADESH                     2                    NA                -1.7866693   -1.8843259   -1.6890127
24 months   JiVitA-4         BANGLADESH                     3                    NA                -1.7080705   -1.7939000   -1.6222411
24 months   MAL-ED           BANGLADESH                     4+                   NA                -1.4214346   -1.8745218   -0.9683474
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.0813592   -2.2405645   -1.9221538
24 months   MAL-ED           BANGLADESH                     2                    NA                -1.9438762   -2.2745992   -1.6131531
24 months   MAL-ED           BANGLADESH                     3                    NA                -1.7875699   -2.0607510   -1.5143889
24 months   MAL-ED           INDIA                          4+                   NA                -1.8163956   -2.1264649   -1.5063263
24 months   MAL-ED           INDIA                          1                    NA                -1.7313491   -1.9503978   -1.5123003
24 months   MAL-ED           INDIA                          2                    NA                -2.0980997   -2.3188750   -1.8773245
24 months   MAL-ED           INDIA                          3                    NA                -1.8690509   -2.1157610   -1.6223408
24 months   MAL-ED           NEPAL                          4+                   NA                -1.2721188   -1.4316409   -1.1125968
24 months   MAL-ED           NEPAL                          1                    NA                -1.4097673   -1.6347397   -1.1847950
24 months   MAL-ED           NEPAL                          2                    NA                -1.1361570   -1.4723898   -0.7999243
24 months   MAL-ED           NEPAL                          3                    NA                -1.3864226   -1.8636070   -0.9092381
24 months   MAL-ED           PERU                           4+                   NA                -1.7180063   -1.8900255   -1.5459871
24 months   MAL-ED           PERU                           1                    NA                -2.1066497   -2.5181355   -1.6951640
24 months   MAL-ED           PERU                           2                    NA                -1.6605699   -1.9293481   -1.3917917
24 months   MAL-ED           PERU                           3                    NA                -1.6489967   -1.8926691   -1.4053243
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -1.6357770   -1.7869655   -1.4845885
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.8887075   -2.5333956   -1.2440195
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                -1.2088017   -1.6894974   -0.7281060
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                -1.7957644   -2.3351200   -1.2564089
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5722449   -2.7682142   -2.3762756
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5316667   -3.4733393   -1.5899941
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -3.0096000   -3.2841137   -2.7350863
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4702632   -2.7008840   -2.2396423
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -1.3458833   -1.5379762   -1.1537904
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.5212117   -1.6560611   -1.3863622
24 months   NIH-Crypto       BANGLADESH                     2                    NA                -1.5907102   -1.7730810   -1.4083394
24 months   NIH-Crypto       BANGLADESH                     3                    NA                -1.0579919   -1.2668961   -0.8490876
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.9204257   -1.4152485   -0.4256029
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6880744   -1.7848184   -1.5913304
24 months   PROVIDE          BANGLADESH                     2                    NA                -1.4921273   -1.7151165   -1.2691382
24 months   PROVIDE          BANGLADESH                     3                    NA                -1.3901877   -1.6343640   -1.1460113


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          INDIA                          NA                   NA                -0.6777626   -0.7107167   -0.6448086
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3079016   -0.4694769   -0.1463262
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5898426   -1.6091216   -1.5705636
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED           PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1225000   -1.3335666   -0.9114334
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          INDIA                          NA                   NA                -1.0413281   -1.0740395   -1.0086167
6 months    CONTENT          PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    IRC              INDIA                          NA                   NA                -1.2470123   -1.3779341   -1.1160906
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3132988   -1.3364412   -1.2901565
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED           INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          INDIA                          NA                   NA                -2.2131714   -2.2523749   -2.1739679
24 months   CONTENT          PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.8014906   -1.8952579   -1.7077232
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0137471   -2.0414306   -1.9860636
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    4+                -0.0206053   -0.7158872    0.6746767
Birth       CMC-V-BCS-2002   INDIA                          2                    4+                -0.2489310   -0.9475558    0.4496938
Birth       CMC-V-BCS-2002   INDIA                          3                    4+                -0.0010000   -0.7779299    0.7759299
Birth       COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    4+                -0.1710783   -0.3155439   -0.0266127
Birth       COHORTS          INDIA                          2                    4+                -0.0048967   -0.1614859    0.1516925
Birth       COHORTS          INDIA                          3                    4+                -0.1221649   -0.3340837    0.0897539
Birth       GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    4+                -0.1162541   -0.4614790    0.2289709
Birth       GMS-Nepal        NEPAL                          2                    4+                -0.0590698   -0.2765937    0.1584542
Birth       GMS-Nepal        NEPAL                          3                    4+                -0.0887658   -0.2980761    0.1205446
Birth       IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    4+                -0.5253158   -1.2336849    0.1830533
Birth       IRC              INDIA                          2                    4+                -0.2801821   -1.0098932    0.4495291
Birth       IRC              INDIA                          3                    4+                 0.0896372   -0.8881386    1.0674130
Birth       JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    4+                -0.2157629   -0.2639199   -0.1676059
Birth       JiVitA-3         BANGLADESH                     2                    4+                -0.2185100   -0.2783131   -0.1587069
Birth       JiVitA-3         BANGLADESH                     3                    4+                -0.1885934   -0.2586311   -0.1185557
Birth       JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    4+                 0.3627399    0.1947260    0.5307539
Birth       JiVitA-4         BANGLADESH                     2                    4+                 0.4248106    0.2424871    0.6071341
Birth       JiVitA-4         BANGLADESH                     3                    4+                 0.4916605    0.2875433    0.6957776
Birth       MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    4+                -0.7220148   -1.3179618   -0.1260677
Birth       MAL-ED           BANGLADESH                     2                    4+                -0.6834528   -1.3291781   -0.0377275
Birth       MAL-ED           BANGLADESH                     3                    4+                -0.4718490   -1.1268616    0.1831636
Birth       MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    4+                -0.0715137   -0.5686826    0.4256553
Birth       MAL-ED           PERU                           2                    4+                -0.1427110   -0.4287705    0.1433485
Birth       MAL-ED           PERU                           3                    4+                -0.0758022   -0.3590610    0.2074567
Birth       MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    4+                 0.2708060   -0.1033584    0.6449703
Birth       MAL-ED           SOUTH AFRICA                   2                    4+                -0.5445274   -1.0239704   -0.0650843
Birth       MAL-ED           SOUTH AFRICA                   3                    4+                -0.2370274   -0.7966873    0.3226325
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.3978458   -0.2306895    1.0263811
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.1496379   -0.4577754    0.7570512
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.2544766   -0.2133746    0.7223279
Birth       NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    4+                 0.0346407   -0.1895846    0.2588660
Birth       NIH-Crypto       BANGLADESH                     2                    4+                 0.0961672   -0.1662484    0.3585828
Birth       NIH-Crypto       BANGLADESH                     3                    4+                 0.1924287   -0.0819193    0.4667767
Birth       PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    4+                 0.0831409   -0.3610366    0.5273183
Birth       PROVIDE          BANGLADESH                     2                    4+                 0.0018812   -0.4841468    0.4879093
Birth       PROVIDE          BANGLADESH                     3                    4+                 0.0773564   -0.4211460    0.5758587
6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.4274389   -1.0400881    0.1852102
6 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.6046389   -1.2584929    0.0492151
6 months    CMC-V-BCS-2002   INDIA                          3                    4+                -0.2887969   -1.0399845    0.4623907
6 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    4+                -0.4998485   -0.6017270   -0.3979701
6 months    COHORTS          INDIA                          2                    4+                -0.2177874   -0.3327015   -0.1028733
6 months    COHORTS          INDIA                          3                    4+                -0.2050383   -0.3650816   -0.0449949
6 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    4+                -0.0227614   -0.6270110    0.5814882
6 months    CONTENT          PERU                           2                    4+                 0.1847996   -0.1560237    0.5256230
6 months    CONTENT          PERU                           3                    4+                 0.0295458   -0.4191508    0.4782424
6 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    4+                -0.1696651   -0.4797326    0.1404024
6 months    GMS-Nepal        NEPAL                          2                    4+                -0.0011576   -0.2057296    0.2034144
6 months    GMS-Nepal        NEPAL                          3                    4+                 0.0434755   -0.1480705    0.2350214
6 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    4+                -0.1580494   -1.0664922    0.7503934
6 months    IRC              INDIA                          2                    4+                -0.2142021   -1.1218928    0.6934886
6 months    IRC              INDIA                          3                    4+                -0.2169010   -1.2225181    0.7887160
6 months    JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    4+                -0.1708339   -0.2260618   -0.1156061
6 months    JiVitA-3         BANGLADESH                     2                    4+                -0.1753914   -0.2395789   -0.1112040
6 months    JiVitA-3         BANGLADESH                     3                    4+                -0.1162602   -0.1915662   -0.0409542
6 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    4+                -0.0170608   -0.1560413    0.1219197
6 months    JiVitA-4         BANGLADESH                     2                    4+                -0.0104430   -0.1722247    0.1513388
6 months    JiVitA-4         BANGLADESH                     3                    4+                -0.0312032   -0.2022475    0.1398410
6 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    4+                -0.2671238   -0.7997692    0.2655217
6 months    MAL-ED           BANGLADESH                     2                    4+                -0.2941679   -0.9047777    0.3164419
6 months    MAL-ED           BANGLADESH                     3                    4+                -0.1085132   -0.6906858    0.4736593
6 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    4+                -0.1125500   -0.4524015    0.2273014
6 months    MAL-ED           INDIA                          2                    4+                -0.4501204   -0.7878266   -0.1124142
6 months    MAL-ED           INDIA                          3                    4+                -0.0881985   -0.4422176    0.2658207
6 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    4+                -0.1381589   -0.4328906    0.1565728
6 months    MAL-ED           NEPAL                          2                    4+                -0.1766495   -0.5321014    0.1788024
6 months    MAL-ED           NEPAL                          3                    4+                -0.0526239   -0.4601401    0.3548923
6 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    4+                -0.3786297   -0.8430208    0.0857613
6 months    MAL-ED           PERU                           2                    4+                 0.1317263   -0.1661594    0.4296120
6 months    MAL-ED           PERU                           3                    4+                 0.0704150   -0.1824882    0.3233182
6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.1574245   -0.7073915    0.3925424
6 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.2691385   -0.1837515    0.7220286
6 months    MAL-ED           SOUTH AFRICA                   3                    4+                 0.1549755   -0.1851362    0.4950872
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0867803   -0.7919738    0.6184132
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1072548   -0.4484825    0.2339728
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1016772   -0.1781554    0.3815098
6 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0710328   -0.2494333    0.1073678
6 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0196289   -0.2348782    0.1956204
6 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.2546371   -0.0039783    0.5132525
6 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    4+                -0.1839287   -0.6004060    0.2325487
6 months    PROVIDE          BANGLADESH                     2                    4+                -0.0918975   -0.5416159    0.3578209
6 months    PROVIDE          BANGLADESH                     3                    4+                -0.0893433   -0.5612653    0.3825786
24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.4571074   -0.8976654   -0.0165494
24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.2899458   -0.7478984    0.1680067
24 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.1762252   -0.6868150    0.3343646
24 months   COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    4+                -0.9353622   -1.0944406   -0.7762837
24 months   COHORTS          INDIA                          2                    4+                -0.5518773   -0.7218717   -0.3818828
24 months   COHORTS          INDIA                          3                    4+                -0.4866304   -0.7182785   -0.2549823
24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    4+                -0.4497262   -0.9785202    0.0790678
24 months   CONTENT          PERU                           2                    4+                -0.2517243   -0.7141666    0.2107180
24 months   CONTENT          PERU                           3                    4+                -0.2872627   -0.7011385    0.1266131
24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    4+                -0.3944643   -0.7438707   -0.0450578
24 months   GMS-Nepal        NEPAL                          2                    4+                -0.1271652   -0.3477622    0.0934319
24 months   GMS-Nepal        NEPAL                          3                    4+                 0.0099462   -0.2060946    0.2259869
24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    4+                 0.0546305   -0.4723128    0.5815738
24 months   IRC              INDIA                          2                    4+                 0.2723598   -0.2541388    0.7988583
24 months   IRC              INDIA                          3                    4+                -0.1310698   -0.6997941    0.4376546
24 months   JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    4+                -0.1774337   -0.2596983   -0.0951692
24 months   JiVitA-3         BANGLADESH                     2                    4+                -0.2018930   -0.2956838   -0.1081021
24 months   JiVitA-3         BANGLADESH                     3                    4+                -0.1567073   -0.2606079   -0.0528067
24 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    4+                -0.0122720   -0.1467780    0.1222341
24 months   JiVitA-4         BANGLADESH                     2                    4+                -0.0148994   -0.1729039    0.1431052
24 months   JiVitA-4         BANGLADESH                     3                    4+                 0.0636994   -0.0875060    0.2149049
24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    4+                -0.6599246   -1.1412707   -0.1785785
24 months   MAL-ED           BANGLADESH                     2                    4+                -0.5224416   -1.0842327    0.0393496
24 months   MAL-ED           BANGLADESH                     3                    4+                -0.3661354   -0.8964755    0.1642048
24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    4+                 0.0850465   -0.2941790    0.4642721
24 months   MAL-ED           INDIA                          2                    4+                -0.2817041   -0.6620445    0.0986363
24 months   MAL-ED           INDIA                          3                    4+                -0.0526553   -0.4475516    0.3422411
24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    4+                -0.1376485   -0.4133260    0.1380291
24 months   MAL-ED           NEPAL                          2                    4+                 0.1359618   -0.2365567    0.5084803
24 months   MAL-ED           NEPAL                          3                    4+                -0.1143037   -0.6176130    0.3890055
24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    4+                -0.3886434   -0.8328903    0.0556034
24 months   MAL-ED           PERU                           2                    4+                 0.0574364   -0.2609305    0.3758033
24 months   MAL-ED           PERU                           3                    4+                 0.0690096   -0.2297100    0.3677293
24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.2529305   -0.9140587    0.4081976
24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.4269753   -0.0761565    0.9301070
24 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.1599874   -0.7211543    0.4011795
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0405782   -0.9212696    1.0024261
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4373551   -0.7746409   -0.1000693
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1019817   -0.2006566    0.4046200
24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.1753284   -0.4081483    0.0574916
24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.2448269   -0.5084508    0.0187969
24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.2878914    0.0040345    0.5717484
24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    4+                -0.7676488   -1.2717970   -0.2635005
24 months   PROVIDE          BANGLADESH                     2                    4+                -0.5717017   -1.1144697   -0.0289336
24 months   PROVIDE          BANGLADESH                     3                    4+                -0.4697620   -1.0213891    0.0818652


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0871957   -0.6936048    0.5192134
Birth       COHORTS          INDIA                          4+                   NA                -0.1249641   -0.2628766    0.0129484
Birth       GMS-Nepal        NEPAL                          4+                   NA                -0.0455429   -0.1357181    0.0446323
Birth       IRC              INDIA                          4+                   NA                -0.1979581   -0.8591209    0.4632047
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.2133793   -0.2561821   -0.1705766
Birth       JiVitA-4         BANGLADESH                     4+                   NA                 0.3979745    0.2574872    0.5384617
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.6443552   -1.1984551   -0.0902554
Birth       MAL-ED           PERU                           4+                   NA                -0.0648322   -0.1863406    0.0566762
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0835899   -0.2035080    0.0363283
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1342347   -0.1139344    0.3824038
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                 0.0791206   -0.1091945    0.2674357
Birth       PROVIDE          BANGLADESH                     4+                   NA                 0.0754100   -0.3519949    0.5028150
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4809348   -1.0659202    0.1040507
6 months    COHORTS          INDIA                          4+                   NA                -0.3959087   -0.4910707   -0.3007467
6 months    CONTENT          PERU                           4+                   NA                -0.0621523   -0.2460033    0.1216986
6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0123912   -0.0724913    0.0972737
6 months    IRC              INDIA                          4+                   NA                -0.1735354   -1.0380413    0.6909706
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.1804918   -0.2293442   -0.1316395
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0264246   -0.1501945    0.0973454
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.2374336   -0.7419087    0.2670416
6 months    MAL-ED           INDIA                          4+                   NA                -0.2184941   -0.4813814    0.0443933
6 months    MAL-ED           NEPAL                          4+                   NA                -0.0560851   -0.1597994    0.0476291
6 months    MAL-ED           PERU                           4+                   NA                 0.0259771   -0.0803545    0.1323088
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0219058   -0.0418568    0.0856684
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0152672   -0.1563655    0.1258310
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0151464   -0.1579140    0.1276212
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.1506168   -0.5509631    0.2497296
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3581848   -0.7756249    0.0592553
24 months   COHORTS          INDIA                          4+                   NA                -0.7892838   -0.9396694   -0.6388983
24 months   CONTENT          PERU                           4+                   NA                -0.2433587   -0.4356909   -0.0510266
24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0464696   -0.1371004    0.0441613
24 months   IRC              INDIA                          4+                   NA                 0.1275330   -0.3663491    0.6214151
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -0.1868786   -0.2603255   -0.1134317
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0086008   -0.1290600    0.1118583
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.5569616   -1.0063042   -0.1076191
24 months   MAL-ED           INDIA                          4+                   NA                -0.0697938   -0.3707950    0.2312074
24 months   MAL-ED           NEPAL                          4+                   NA                -0.0354689   -0.1426168    0.0716791
24 months   MAL-ED           PERU                           4+                   NA                -0.0344647   -0.1419708    0.0730415
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0092825   -0.0846765    0.0661114
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0733158   -0.2199439    0.0733122
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0953813   -0.2776399    0.0868773
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.6819965   -1.1663715   -0.1976214
