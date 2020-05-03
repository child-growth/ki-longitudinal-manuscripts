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

agecat      studyid          country                        nrooms    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          4+             5      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1             38      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          2             29      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          3             20      92  haz              
Birth       COHORTS          INDIA                          4+            92    4769  haz              
Birth       COHORTS          INDIA                          1           3125    4769  haz              
Birth       COHORTS          INDIA                          2           1385    4769  haz              
Birth       COHORTS          INDIA                          3            167    4769  haz              
Birth       CONTENT          PERU                           4+             1       2  haz              
Birth       CONTENT          PERU                           1              0       2  haz              
Birth       CONTENT          PERU                           2              1       2  haz              
Birth       CONTENT          PERU                           3              0       2  haz              
Birth       GMS-Nepal        NEPAL                          4+           321     696  haz              
Birth       GMS-Nepal        NEPAL                          1             49     696  haz              
Birth       GMS-Nepal        NEPAL                          2            145     696  haz              
Birth       GMS-Nepal        NEPAL                          3            181     696  haz              
Birth       IRC              INDIA                          4+            17     386  haz              
Birth       IRC              INDIA                          1            175     386  haz              
Birth       IRC              INDIA                          2            161     386  haz              
Birth       IRC              INDIA                          3             33     386  haz              
Birth       JiVitA-3         BANGLADESH                     4+           755   22429  haz              
Birth       JiVitA-3         BANGLADESH                     1          13942   22429  haz              
Birth       JiVitA-3         BANGLADESH                     2           5846   22429  haz              
Birth       JiVitA-3         BANGLADESH                     3           1886   22429  haz              
Birth       JiVitA-4         BANGLADESH                     4+           128    2820  haz              
Birth       JiVitA-4         BANGLADESH                     1           1705    2820  haz              
Birth       JiVitA-4         BANGLADESH                     2            709    2820  haz              
Birth       JiVitA-4         BANGLADESH                     3            278    2820  haz              
Birth       MAL-ED           BANGLADESH                     4+            12     213  haz              
Birth       MAL-ED           BANGLADESH                     1            130     213  haz              
Birth       MAL-ED           BANGLADESH                     2             46     213  haz              
Birth       MAL-ED           BANGLADESH                     3             25     213  haz              
Birth       MAL-ED           BRAZIL                         4+            30      60  haz              
Birth       MAL-ED           BRAZIL                         1              0      60  haz              
Birth       MAL-ED           BRAZIL                         2             10      60  haz              
Birth       MAL-ED           BRAZIL                         3             20      60  haz              
Birth       MAL-ED           INDIA                          4+             2      41  haz              
Birth       MAL-ED           INDIA                          1             18      41  haz              
Birth       MAL-ED           INDIA                          2             17      41  haz              
Birth       MAL-ED           INDIA                          3              4      41  haz              
Birth       MAL-ED           NEPAL                          4+            15      26  haz              
Birth       MAL-ED           NEPAL                          1              7      26  haz              
Birth       MAL-ED           NEPAL                          2              2      26  haz              
Birth       MAL-ED           NEPAL                          3              2      26  haz              
Birth       MAL-ED           PERU                           4+           107     215  haz              
Birth       MAL-ED           PERU                           1             13     215  haz              
Birth       MAL-ED           PERU                           2             45     215  haz              
Birth       MAL-ED           PERU                           3             50     215  haz              
Birth       MAL-ED           SOUTH AFRICA                   4+            67      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   1              5      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   2             12      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   3             12      96  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            49     120  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     120  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             31     120  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             31     120  haz              
Birth       NIH-Crypto       BANGLADESH                     4+            93     732  haz              
Birth       NIH-Crypto       BANGLADESH                     1            353     732  haz              
Birth       NIH-Crypto       BANGLADESH                     2            187     732  haz              
Birth       NIH-Crypto       BANGLADESH                     3             99     732  haz              
Birth       PROVIDE          BANGLADESH                     4+            19     539  haz              
Birth       PROVIDE          BANGLADESH                     1            390     539  haz              
Birth       PROVIDE          BANGLADESH                     2             83     539  haz              
Birth       PROVIDE          BANGLADESH                     3             47     539  haz              
6 months    CMC-V-BCS-2002   INDIA                          4+            14     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          1            198     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          2            106     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          3             51     369  haz              
6 months    COHORTS          INDIA                          4+            93    4962  haz              
6 months    COHORTS          INDIA                          1           3213    4962  haz              
6 months    COHORTS          INDIA                          2           1474    4962  haz              
6 months    COHORTS          INDIA                          3            182    4962  haz              
6 months    CONTENT          PERU                           4+            78     215  haz              
6 months    CONTENT          PERU                           1             44     215  haz              
6 months    CONTENT          PERU                           2             54     215  haz              
6 months    CONTENT          PERU                           3             39     215  haz              
6 months    GMS-Nepal        NEPAL                          4+           268     564  haz              
6 months    GMS-Nepal        NEPAL                          1             40     564  haz              
6 months    GMS-Nepal        NEPAL                          2            115     564  haz              
6 months    GMS-Nepal        NEPAL                          3            141     564  haz              
6 months    IRC              INDIA                          4+            17     405  haz              
6 months    IRC              INDIA                          1            183     405  haz              
6 months    IRC              INDIA                          2            170     405  haz              
6 months    IRC              INDIA                          3             35     405  haz              
6 months    JiVitA-3         BANGLADESH                     4+           744   16800  haz              
6 months    JiVitA-3         BANGLADESH                     1           9625   16800  haz              
6 months    JiVitA-3         BANGLADESH                     2           4740   16800  haz              
6 months    JiVitA-3         BANGLADESH                     3           1691   16800  haz              
6 months    JiVitA-4         BANGLADESH                     4+           262    4825  haz              
6 months    JiVitA-4         BANGLADESH                     1           2850    4825  haz              
6 months    JiVitA-4         BANGLADESH                     2           1225    4825  haz              
6 months    JiVitA-4         BANGLADESH                     3            488    4825  haz              
6 months    MAL-ED           BANGLADESH                     4+            12     240  haz              
6 months    MAL-ED           BANGLADESH                     1            150     240  haz              
6 months    MAL-ED           BANGLADESH                     2             50     240  haz              
6 months    MAL-ED           BANGLADESH                     3             28     240  haz              
6 months    MAL-ED           BRAZIL                         4+           126     209  haz              
6 months    MAL-ED           BRAZIL                         1              4     209  haz              
6 months    MAL-ED           BRAZIL                         2             20     209  haz              
6 months    MAL-ED           BRAZIL                         3             59     209  haz              
6 months    MAL-ED           INDIA                          4+            25     235  haz              
6 months    MAL-ED           INDIA                          1             84     235  haz              
6 months    MAL-ED           INDIA                          2             78     235  haz              
6 months    MAL-ED           INDIA                          3             48     235  haz              
6 months    MAL-ED           NEPAL                          4+           131     236  haz              
6 months    MAL-ED           NEPAL                          1             52     236  haz              
6 months    MAL-ED           NEPAL                          2             31     236  haz              
6 months    MAL-ED           NEPAL                          3             22     236  haz              
6 months    MAL-ED           PERU                           4+           139     270  haz              
6 months    MAL-ED           PERU                           1             19     270  haz              
6 months    MAL-ED           PERU                           2             50     270  haz              
6 months    MAL-ED           PERU                           3             62     270  haz              
6 months    MAL-ED           SOUTH AFRICA                   4+           191     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   1             14     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   2             21     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   3             23     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           108     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             62     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             64     247  haz              
6 months    NIH-Crypto       BANGLADESH                     4+            91     715  haz              
6 months    NIH-Crypto       BANGLADESH                     1            339     715  haz              
6 months    NIH-Crypto       BANGLADESH                     2            184     715  haz              
6 months    NIH-Crypto       BANGLADESH                     3            101     715  haz              
6 months    PROVIDE          BANGLADESH                     4+            21     604  haz              
6 months    PROVIDE          BANGLADESH                     1            431     604  haz              
6 months    PROVIDE          BANGLADESH                     2             94     604  haz              
6 months    PROVIDE          BANGLADESH                     3             58     604  haz              
24 months   CMC-V-BCS-2002   INDIA                          4+            14     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          1            201     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          2            105     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          3             51     371  haz              
24 months   COHORTS          INDIA                          4+            76    3746  haz              
24 months   COHORTS          INDIA                          1           2299    3746  haz              
24 months   COHORTS          INDIA                          2           1221    3746  haz              
24 months   COHORTS          INDIA                          3            150    3746  haz              
24 months   CONTENT          PERU                           4+            63     164  haz              
24 months   CONTENT          PERU                           1             30     164  haz              
24 months   CONTENT          PERU                           2             39     164  haz              
24 months   CONTENT          PERU                           3             32     164  haz              
24 months   GMS-Nepal        NEPAL                          4+           231     488  haz              
24 months   GMS-Nepal        NEPAL                          1             35     488  haz              
24 months   GMS-Nepal        NEPAL                          2            106     488  haz              
24 months   GMS-Nepal        NEPAL                          3            116     488  haz              
24 months   IRC              INDIA                          4+            17     407  haz              
24 months   IRC              INDIA                          1            184     407  haz              
24 months   IRC              INDIA                          2            170     407  haz              
24 months   IRC              INDIA                          3             36     407  haz              
24 months   JiVitA-3         BANGLADESH                     4+           367    8620  haz              
24 months   JiVitA-3         BANGLADESH                     1           5051    8620  haz              
24 months   JiVitA-3         BANGLADESH                     2           2400    8620  haz              
24 months   JiVitA-3         BANGLADESH                     3            802    8620  haz              
24 months   JiVitA-4         BANGLADESH                     4+           251    4747  haz              
24 months   JiVitA-4         BANGLADESH                     1           2789    4747  haz              
24 months   JiVitA-4         BANGLADESH                     2           1216    4747  haz              
24 months   JiVitA-4         BANGLADESH                     3            491    4747  haz              
24 months   MAL-ED           BANGLADESH                     4+            11     212  haz              
24 months   MAL-ED           BANGLADESH                     1            134     212  haz              
24 months   MAL-ED           BANGLADESH                     2             40     212  haz              
24 months   MAL-ED           BANGLADESH                     3             27     212  haz              
24 months   MAL-ED           BRAZIL                         4+           104     169  haz              
24 months   MAL-ED           BRAZIL                         1              0     169  haz              
24 months   MAL-ED           BRAZIL                         2             16     169  haz              
24 months   MAL-ED           BRAZIL                         3             49     169  haz              
24 months   MAL-ED           INDIA                          4+            25     227  haz              
24 months   MAL-ED           INDIA                          1             82     227  haz              
24 months   MAL-ED           INDIA                          2             74     227  haz              
24 months   MAL-ED           INDIA                          3             46     227  haz              
24 months   MAL-ED           NEPAL                          4+           127     228  haz              
24 months   MAL-ED           NEPAL                          1             48     228  haz              
24 months   MAL-ED           NEPAL                          2             31     228  haz              
24 months   MAL-ED           NEPAL                          3             22     228  haz              
24 months   MAL-ED           PERU                           4+           110     201  haz              
24 months   MAL-ED           PERU                           1             16     201  haz              
24 months   MAL-ED           PERU                           2             32     201  haz              
24 months   MAL-ED           PERU                           3             43     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   4+           183     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   1             13     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   2             19     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   3             23     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             57     214  haz              
24 months   NIH-Crypto       BANGLADESH                     4+            82     514  haz              
24 months   NIH-Crypto       BANGLADESH                     1            217     514  haz              
24 months   NIH-Crypto       BANGLADESH                     2            137     514  haz              
24 months   NIH-Crypto       BANGLADESH                     3             78     514  haz              
24 months   PROVIDE          BANGLADESH                     4+            22     578  haz              
24 months   PROVIDE          BANGLADESH                     1            407     578  haz              
24 months   PROVIDE          BANGLADESH                     2             92     578  haz              
24 months   PROVIDE          BANGLADESH                     3             57     578  haz              


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
![](/tmp/faf2f1ca-2008-444c-9000-61fde020b2c7/7684a6db-8435-4567-910f-b2fea35fdf3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/faf2f1ca-2008-444c-9000-61fde020b2c7/7684a6db-8435-4567-910f-b2fea35fdf3d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/faf2f1ca-2008-444c-9000-61fde020b2c7/7684a6db-8435-4567-910f-b2fea35fdf3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.8740000   -1.4739904   -0.2740096
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.8946053   -1.2459292   -0.5432813
Birth       CMC-V-BCS-2002   INDIA                          2                    NA                -1.1229310   -1.4808250   -0.7650370
Birth       CMC-V-BCS-2002   INDIA                          3                    NA                -0.8750000   -1.3685904   -0.3814096
Birth       COHORTS          INDIA                          4+                   NA                -0.5168410   -0.6533271   -0.3803548
Birth       COHORTS          INDIA                          1                    NA                -0.7253403   -0.7681073   -0.6825733
Birth       COHORTS          INDIA                          2                    NA                -0.5724331   -0.6513970   -0.4934692
Birth       COHORTS          INDIA                          3                    NA                -0.6840093   -0.8438557   -0.5241629
Birth       GMS-Nepal        NEPAL                          4+                   NA                -1.0335191   -1.1547148   -0.9123233
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.2128303   -1.5829797   -0.8426808
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.0897078   -1.2761423   -0.9032734
Birth       GMS-Nepal        NEPAL                          3                    NA                -1.1527040   -1.3202639   -0.9851442
Birth       IRC              INDIA                          4+                   NA                -0.0564942   -0.7635615    0.6505730
Birth       IRC              INDIA                          1                    NA                -0.8644013   -1.0799673   -0.6488353
Birth       IRC              INDIA                          2                    NA                -0.3924944   -0.6777928   -0.1071959
Birth       IRC              INDIA                          3                    NA                -0.0558724   -0.7846160    0.6728711
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -1.3521489   -1.3925905   -1.3117073
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.5899858   -1.6172286   -1.5627430
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.5990548   -1.6458251   -1.5522846
Birth       JiVitA-3         BANGLADESH                     3                    NA                -1.5591373   -1.6161961   -1.5020786
Birth       JiVitA-4         BANGLADESH                     4+                   NA                -2.0061452   -2.1803343   -1.8319561
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5715679   -1.6672273   -1.4759085
Birth       JiVitA-4         BANGLADESH                     2                    NA                -1.4987599   -1.6219283   -1.3755914
Birth       JiVitA-4         BANGLADESH                     3                    NA                -1.4282716   -1.5669547   -1.2895885
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.4422024   -1.0468779    0.1624732
Birth       MAL-ED           BANGLADESH                     1                    NA                -1.1262962   -1.3050765   -0.9475159
Birth       MAL-ED           BANGLADESH                     2                    NA                -1.1039019   -1.4057303   -0.8020735
Birth       MAL-ED           BANGLADESH                     3                    NA                -0.9252454   -1.2339163   -0.6165744
Birth       MAL-ED           PERU                           4+                   NA                -0.8477477   -1.0473255   -0.6481698
Birth       MAL-ED           PERU                           1                    NA                -1.0362777   -1.5109906   -0.5615647
Birth       MAL-ED           PERU                           2                    NA                -0.9841800   -1.2045810   -0.7637789
Birth       MAL-ED           PERU                           3                    NA                -0.9545523   -1.1612502   -0.7478544
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.4688060   -0.7283817   -0.2092303
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.1980000   -0.4674799    0.0714799
Birth       MAL-ED           SOUTH AFRICA                   2                    NA                -1.0133333   -1.4164289   -0.6102377
Birth       MAL-ED           SOUTH AFRICA                   3                    NA                -0.7058333   -1.2016555   -0.2100111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.2567347   -1.5615935   -0.9518759
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8588889   -1.4085412   -0.3092365
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.1070968   -1.6324652   -0.5817283
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.0022581   -1.3571466   -0.6473695
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.8966027   -1.0823544   -0.7108510
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9790220   -1.0816254   -0.8764186
Birth       NIH-Crypto       BANGLADESH                     2                    NA                -0.9101260   -1.0824390   -0.7378129
Birth       NIH-Crypto       BANGLADESH                     3                    NA                -0.8273936   -1.0440606   -0.6107265
Birth       PROVIDE          BANGLADESH                     4+                   NA                -1.1106742   -1.5447751   -0.6765733
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.8784924   -0.9647031   -0.7922816
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.9579345   -1.1652706   -0.7505985
Birth       PROVIDE          BANGLADESH                     3                    NA                -0.9035852   -1.1486394   -0.6585310
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -1.4071692   -2.0533046   -0.7610337
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.3801636   -1.5602210   -1.2001061
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -1.6005296   -1.8868377   -1.3142214
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -1.3114712   -1.7749875   -0.8479548
6 months    COHORTS          INDIA                          4+                   NA                -0.6538133   -0.7462519   -0.5613746
6 months    COHORTS          INDIA                          1                    NA                -1.1437242   -1.1871737   -1.1002747
6 months    COHORTS          INDIA                          2                    NA                -0.8722851   -0.9398533   -0.8047168
6 months    COHORTS          INDIA                          3                    NA                -0.8531150   -0.9869489   -0.7192811
6 months    CONTENT          PERU                           4+                   NA                -0.1066885   -0.3395469    0.1261700
6 months    CONTENT          PERU                           1                    NA                -0.0671403   -0.3562794    0.2219988
6 months    CONTENT          PERU                           2                    NA                -0.0008365   -0.2555298    0.2538569
6 months    CONTENT          PERU                           3                    NA                -0.2063348   -0.6685138    0.2558441
6 months    GMS-Nepal        NEPAL                          4+                   NA                -1.3627277   -1.4778068   -1.2476486
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.5118267   -1.8086871   -1.2149663
6 months    GMS-Nepal        NEPAL                          2                    NA                -1.3668900   -1.5415135   -1.1922666
6 months    GMS-Nepal        NEPAL                          3                    NA                -1.3272859   -1.4792619   -1.1753100
6 months    IRC              INDIA                          4+                   NA                -1.0054337   -1.8423661   -0.1685012
6 months    IRC              INDIA                          1                    NA                -1.2286505   -1.4268247   -1.0304763
6 months    IRC              INDIA                          2                    NA                -1.2855934   -1.4841585   -1.0870283
6 months    IRC              INDIA                          3                    NA                -1.3289946   -1.7749754   -0.8830139
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -1.1387220   -1.1866054   -1.0908386
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3044379   -1.3362545   -1.2726213
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.2982549   -1.3445837   -1.2519261
6 months    JiVitA-3         BANGLADESH                     3                    NA                -1.2461705   -1.3036327   -1.1887083
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -1.3437057   -1.4723927   -1.2150187
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3310808   -1.3926541   -1.2695075
6 months    JiVitA-4         BANGLADESH                     2                    NA                -1.3365105   -1.4445985   -1.2284226
6 months    JiVitA-4         BANGLADESH                     3                    NA                -1.3323930   -1.4464308   -1.2183552
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.9465200   -1.4253475   -0.4676924
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.2364742   -1.3780124   -1.0949360
6 months    MAL-ED           BANGLADESH                     2                    NA                -1.2590656   -1.5925778   -0.9255534
6 months    MAL-ED           BANGLADESH                     3                    NA                -1.0420327   -1.3238379   -0.7602275
6 months    MAL-ED           INDIA                          4+                   NA                -1.0347007   -1.2980094   -0.7713920
6 months    MAL-ED           INDIA                          1                    NA                -1.1199387   -1.3342702   -0.9056072
6 months    MAL-ED           INDIA                          2                    NA                -1.4387520   -1.6505977   -1.2269064
6 months    MAL-ED           INDIA                          3                    NA                -1.0847214   -1.3225933   -0.8468496
6 months    MAL-ED           NEPAL                          4+                   NA                -0.4945029   -0.6459496   -0.3430562
6 months    MAL-ED           NEPAL                          1                    NA                -0.6467275   -0.9050306   -0.3884243
6 months    MAL-ED           NEPAL                          2                    NA                -0.6977664   -1.0206628   -0.3748700
6 months    MAL-ED           NEPAL                          3                    NA                -0.5542457   -0.9378372   -0.1706542
6 months    MAL-ED           PERU                           4+                   NA                -1.3441527   -1.5043818   -1.1839236
6 months    MAL-ED           PERU                           1                    NA                -1.6310905   -2.0694206   -1.1927604
6 months    MAL-ED           PERU                           2                    NA                -1.2052883   -1.4516558   -0.9589208
6 months    MAL-ED           PERU                           3                    NA                -1.2953096   -1.5164566   -1.0741627
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -1.0720639   -1.2284942   -0.9156335
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.2553158   -1.7995693   -0.7110623
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                -0.8753891   -1.3224360   -0.4283422
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                -0.9298388   -1.2464091   -0.6132685
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3674078   -1.5429864   -1.1918292
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4265522   -2.1126390   -0.7404654
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4839766   -1.7755878   -1.1923655
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.2511822   -1.4756332   -1.0267312
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -1.1792727   -1.3274344   -1.0311110
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.2809162   -1.3885679   -1.1732646
6 months    NIH-Crypto       BANGLADESH                     2                    NA                -1.2037120   -1.3710569   -1.0363672
6 months    NIH-Crypto       BANGLADESH                     3                    NA                -0.9014299   -1.1071025   -0.6957573
6 months    PROVIDE          BANGLADESH                     4+                   NA                -1.0695956   -1.4890664   -0.6501248
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1341397   -1.2225958   -1.0456836
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.0238096   -1.2167107   -0.8309084
6 months    PROVIDE          BANGLADESH                     3                    NA                -1.0210118   -1.2537262   -0.7882973
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -2.2232052   -2.6284966   -1.8179138
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.6491195   -2.7850854   -2.5131536
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -2.4945146   -2.6775845   -2.3114448
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -2.4095175   -2.7041441   -2.1148909
24 months   COHORTS          INDIA                          4+                   NA                -1.3211770   -1.4535051   -1.1888490
24 months   COHORTS          INDIA                          1                    NA                -2.3752657   -2.4296730   -2.3208585
24 months   COHORTS          INDIA                          2                    NA                -1.9711892   -2.0506303   -1.8917480
24 months   COHORTS          INDIA                          3                    NA                -1.9171124   -2.1021370   -1.7320877
24 months   CONTENT          PERU                           4+                   NA                -0.4932736   -0.7073973   -0.2791500
24 months   CONTENT          PERU                           1                    NA                -0.9142992   -1.4183059   -0.4102926
24 months   CONTENT          PERU                           2                    NA                -0.6515290   -1.1022792   -0.2007789
24 months   CONTENT          PERU                           3                    NA                -0.7391764   -1.1048134   -0.3735394
24 months   GMS-Nepal        NEPAL                          4+                   NA                -1.8373363   -1.9601253   -1.7145474
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.1649872   -2.5120253   -1.8179490
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.9764771   -2.1576001   -1.7953540
24 months   GMS-Nepal        NEPAL                          3                    NA                -1.8452389   -2.0203437   -1.6701342
24 months   IRC              INDIA                          4+                   NA                -1.9633464   -2.4826541   -1.4440387
24 months   IRC              INDIA                          1                    NA                -1.8732685   -2.0171477   -1.7293892
24 months   IRC              INDIA                          2                    NA                -1.6640236   -1.8071636   -1.5208836
24 months   IRC              INDIA                          3                    NA                -2.0321781   -2.2886239   -1.7757324
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -1.7974806   -1.8757161   -1.7192452
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.0043158   -2.0462161   -1.9624156
24 months   JiVitA-3         BANGLADESH                     2                    NA                -2.0309817   -2.0966634   -1.9653001
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.9833232   -2.0602042   -1.9064423
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -1.7423474   -1.8838431   -1.6008517
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7905600   -1.8518577   -1.7292623
24 months   JiVitA-4         BANGLADESH                     2                    NA                -1.7879053   -1.8921568   -1.6836538
24 months   JiVitA-4         BANGLADESH                     3                    NA                -1.6938042   -1.7789300   -1.6086783
24 months   MAL-ED           BANGLADESH                     4+                   NA                -1.5189235   -2.0197493   -1.0180977
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.0655016   -2.2229832   -1.9080200
24 months   MAL-ED           BANGLADESH                     2                    NA                -1.9525438   -2.2766411   -1.6284466
24 months   MAL-ED           BANGLADESH                     3                    NA                -1.7716353   -2.0632973   -1.4799732
24 months   MAL-ED           INDIA                          4+                   NA                -1.8835446   -2.2022854   -1.5648038
24 months   MAL-ED           INDIA                          1                    NA                -1.7555470   -1.9770123   -1.5340818
24 months   MAL-ED           INDIA                          2                    NA                -2.0755137   -2.2940755   -1.8569519
24 months   MAL-ED           INDIA                          3                    NA                -1.8518374   -2.1021484   -1.6015265
24 months   MAL-ED           NEPAL                          4+                   NA                -1.2818264   -1.4414989   -1.1221540
24 months   MAL-ED           NEPAL                          1                    NA                -1.4337107   -1.6588135   -1.2086078
24 months   MAL-ED           NEPAL                          2                    NA                -1.2134315   -1.5551589   -0.8717041
24 months   MAL-ED           NEPAL                          3                    NA                -1.4362475   -1.9169389   -0.9555562
24 months   MAL-ED           PERU                           4+                   NA                -1.7277819   -1.9036683   -1.5518955
24 months   MAL-ED           PERU                           1                    NA                -2.1330654   -2.5485117   -1.7176191
24 months   MAL-ED           PERU                           2                    NA                -1.6349302   -1.9169008   -1.3529596
24 months   MAL-ED           PERU                           3                    NA                -1.7165854   -1.9772392   -1.4559316
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -1.6330156   -1.7844663   -1.4815649
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.9260033   -2.5764787   -1.2755279
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                -1.2047795   -1.6516907   -0.7578683
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                -1.8595597   -2.3883235   -1.3307959
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5722449   -2.7682142   -2.3762756
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5316667   -3.4733393   -1.5899941
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -3.0096000   -3.2841137   -2.7350863
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4702632   -2.7008840   -2.2396423
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -1.3634211   -1.5727369   -1.1541054
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.5326099   -1.6675403   -1.3976795
24 months   NIH-Crypto       BANGLADESH                     2                    NA                -1.6134271   -1.8017851   -1.4250691
24 months   NIH-Crypto       BANGLADESH                     3                    NA                -1.0500348   -1.2713121   -0.8287576
24 months   PROVIDE          BANGLADESH                     4+                   NA                -1.0131672   -1.4879745   -0.5383599
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6882088   -1.7849342   -1.5914833
24 months   PROVIDE          BANGLADESH                     2                    NA                -1.5054352   -1.7284588   -1.2824116
24 months   PROVIDE          BANGLADESH                     3                    NA                -1.4298126   -1.6770162   -1.1826089


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
Birth       COHORTS          INDIA                          1                    4+                -0.2084993   -0.3512261   -0.0657725
Birth       COHORTS          INDIA                          2                    4+                -0.0555921   -0.2130054    0.1018212
Birth       COHORTS          INDIA                          3                    4+                -0.1671684   -0.3769517    0.0426150
Birth       GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    4+                -0.1793112   -0.5685335    0.2099111
Birth       GMS-Nepal        NEPAL                          2                    4+                -0.0561888   -0.2781817    0.1658042
Birth       GMS-Nepal        NEPAL                          3                    4+                -0.1191850   -0.3253085    0.0869385
Birth       IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    4+                -0.8079071   -1.5528450   -0.0629691
Birth       IRC              INDIA                          2                    4+                -0.3360001   -1.0967123    0.4247120
Birth       IRC              INDIA                          3                    4+                 0.0006218   -1.0163054    1.0175490
Birth       JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    4+                -0.2378369   -0.2854040   -0.1902698
Birth       JiVitA-3         BANGLADESH                     2                    4+                -0.2469059   -0.3063927   -0.1874192
Birth       JiVitA-3         BANGLADESH                     3                    4+                -0.2069884   -0.2750714   -0.1389054
Birth       JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    4+                 0.4345773    0.2384831    0.6306715
Birth       JiVitA-4         BANGLADESH                     2                    4+                 0.5073853    0.2977157    0.7170550
Birth       JiVitA-4         BANGLADESH                     3                    4+                 0.5778736    0.3552092    0.8005380
Birth       MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    4+                -0.6840938   -1.3151482   -0.0530395
Birth       MAL-ED           BANGLADESH                     2                    4+                -0.6616995   -1.3384582    0.0150592
Birth       MAL-ED           BANGLADESH                     3                    4+                -0.4830430   -1.1618511    0.1957651
Birth       MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    4+                -0.1885300   -0.7016963    0.3246364
Birth       MAL-ED           PERU                           2                    4+                -0.1364323   -0.4320572    0.1591927
Birth       MAL-ED           PERU                           3                    4+                -0.1068046   -0.3908710    0.1772617
Birth       MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    4+                 0.2708060   -0.1033584    0.6449703
Birth       MAL-ED           SOUTH AFRICA                   2                    4+                -0.5445274   -1.0239704   -0.0650843
Birth       MAL-ED           SOUTH AFRICA                   3                    4+                -0.2370274   -0.7966873    0.3226325
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.3978458   -0.2306895    1.0263811
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.1496379   -0.4577754    0.7570512
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.2544766   -0.2133746    0.7223279
Birth       NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    4+                -0.0824193   -0.2947243    0.1298858
Birth       NIH-Crypto       BANGLADESH                     2                    4+                -0.0135233   -0.2668868    0.2398402
Birth       NIH-Crypto       BANGLADESH                     3                    4+                 0.0692091   -0.2162860    0.3547043
Birth       PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    4+                 0.2321818   -0.2112352    0.6755988
Birth       PROVIDE          BANGLADESH                     2                    4+                 0.1527397   -0.3289413    0.6344206
Birth       PROVIDE          BANGLADESH                     3                    4+                 0.2070890   -0.2923418    0.7065199
6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    4+                 0.0270056   -0.6446647    0.6986759
6 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.1933604   -0.9000454    0.5133247
6 months    CMC-V-BCS-2002   INDIA                          3                    4+                 0.0956980   -0.7011862    0.8925821
6 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    4+                -0.4899109   -0.5915096   -0.3883123
6 months    COHORTS          INDIA                          2                    4+                -0.2184718   -0.3324634   -0.1044802
6 months    COHORTS          INDIA                          3                    4+                -0.1993017   -0.3615819   -0.0370214
6 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    4+                 0.0395482   -0.3376151    0.4167114
6 months    CONTENT          PERU                           2                    4+                 0.1058520   -0.2400223    0.4517263
6 months    CONTENT          PERU                           3                    4+                -0.0996463   -0.6119963    0.4127036
6 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    4+                -0.1490990   -0.4675678    0.1693698
6 months    GMS-Nepal        NEPAL                          2                    4+                -0.0041623   -0.2130105    0.2046859
6 months    GMS-Nepal        NEPAL                          3                    4+                 0.0354418   -0.1547592    0.2256427
6 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    4+                -0.2232168   -1.0864083    0.6399747
6 months    IRC              INDIA                          2                    4+                -0.2801597   -1.1393617    0.5790422
6 months    IRC              INDIA                          3                    4+                -0.3235610   -1.2706689    0.6235470
6 months    JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    4+                -0.1657159   -0.2203914   -0.1110404
6 months    JiVitA-3         BANGLADESH                     2                    4+                -0.1595329   -0.2239431   -0.0951227
6 months    JiVitA-3         BANGLADESH                     3                    4+                -0.1074485   -0.1824882   -0.0324087
6 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    4+                 0.0126249   -0.1269592    0.1522090
6 months    JiVitA-4         BANGLADESH                     2                    4+                 0.0071951   -0.1601962    0.1745865
6 months    JiVitA-4         BANGLADESH                     3                    4+                 0.0113127   -0.1605365    0.1831619
6 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    4+                -0.2899542   -0.7900421    0.2101337
6 months    MAL-ED           BANGLADESH                     2                    4+                -0.3125456   -0.8970627    0.2719715
6 months    MAL-ED           BANGLADESH                     3                    4+                -0.0955128   -0.6526002    0.4615747
6 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    4+                -0.0852379   -0.4253938    0.2549179
6 months    MAL-ED           INDIA                          2                    4+                -0.4040513   -0.7427990   -0.0653037
6 months    MAL-ED           INDIA                          3                    4+                -0.0500207   -0.4051035    0.3050621
6 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    4+                -0.1522246   -0.4527311    0.1482819
6 months    MAL-ED           NEPAL                          2                    4+                -0.2032635   -0.5609787    0.1544517
6 months    MAL-ED           NEPAL                          3                    4+                -0.0597428   -0.4737535    0.3542679
6 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    4+                -0.2869379   -0.7539544    0.1800787
6 months    MAL-ED           PERU                           2                    4+                 0.1388644   -0.1550995    0.4328283
6 months    MAL-ED           PERU                           3                    4+                 0.0488430   -0.2244658    0.3221519
6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.1832519   -0.7486457    0.3821418
6 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.1966748   -0.2778489    0.6711985
6 months    MAL-ED           SOUTH AFRICA                   3                    4+                 0.1422251   -0.2091651    0.4936153
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0591444   -0.7677309    0.6494422
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1165688   -0.4572214    0.2240838
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1162256   -0.1690521    0.4015033
6 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.1016435   -0.2832941    0.0800071
6 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0244393   -0.2473172    0.1984386
6 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.2778428    0.0245237    0.5311619
6 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    4+                -0.0645441   -0.4931796    0.3640914
6 months    PROVIDE          BANGLADESH                     2                    4+                 0.0457860   -0.4157762    0.5073482
6 months    PROVIDE          BANGLADESH                     3                    4+                 0.0485839   -0.4307924    0.5279601
24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.4259143   -0.8521635    0.0003350
24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.2713095   -0.7148410    0.1722220
24 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.1863123   -0.6883616    0.3157370
24 months   COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    4+                -1.0540887   -1.1973083   -0.9108691
24 months   COHORTS          INDIA                          2                    4+                -0.6500121   -0.8044509   -0.4955733
24 months   COHORTS          INDIA                          3                    4+                -0.5959353   -0.8236573   -0.3682133
24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    4+                -0.4210256   -0.9724393    0.1303880
24 months   CONTENT          PERU                           2                    4+                -0.1582554   -0.6559438    0.3394330
24 months   CONTENT          PERU                           3                    4+                -0.2459028   -0.6689497    0.1771441
24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    4+                -0.3276508   -0.6959894    0.0406877
24 months   GMS-Nepal        NEPAL                          2                    4+                -0.1391407   -0.3578722    0.0795907
24 months   GMS-Nepal        NEPAL                          3                    4+                -0.0079026   -0.2214950    0.2056897
24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    4+                 0.0900780   -0.4490828    0.6292388
24 months   IRC              INDIA                          2                    4+                 0.2993228   -0.2394743    0.8381200
24 months   IRC              INDIA                          3                    4+                -0.0688317   -0.6479104    0.5102470
24 months   JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    4+                -0.2068352   -0.2906267   -0.1230437
24 months   JiVitA-3         BANGLADESH                     2                    4+                -0.2335011   -0.3290618   -0.1379404
24 months   JiVitA-3         BANGLADESH                     3                    4+                -0.1858426   -0.2939183   -0.0777669
24 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    4+                -0.0482126   -0.1976476    0.1012224
24 months   JiVitA-4         BANGLADESH                     2                    4+                -0.0455579   -0.2203975    0.1292816
24 months   JiVitA-4         BANGLADESH                     3                    4+                 0.0485432   -0.1156640    0.2127504
24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    4+                -0.5465780   -1.0699340   -0.0232221
24 months   MAL-ED           BANGLADESH                     2                    4+                -0.4336203   -1.0301056    0.1628650
24 months   MAL-ED           BANGLADESH                     3                    4+                -0.2527117   -0.8335776    0.3281542
24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    4+                 0.1279976   -0.2592226    0.5152178
24 months   MAL-ED           INDIA                          2                    4+                -0.1919691   -0.5764373    0.1924992
24 months   MAL-ED           INDIA                          3                    4+                 0.0317072   -0.3718334    0.4352478
24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    4+                -0.1518842   -0.4269514    0.1231830
24 months   MAL-ED           NEPAL                          2                    4+                 0.0683949   -0.3085531    0.4453430
24 months   MAL-ED           NEPAL                          3                    4+                -0.1544211   -0.6609090    0.3520668
24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    4+                -0.4052835   -0.8557948    0.0452279
24 months   MAL-ED           PERU                           2                    4+                 0.0928517   -0.2392664    0.4249698
24 months   MAL-ED           PERU                           3                    4+                 0.0111965   -0.3035720    0.3259650
24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.2929878   -0.9601954    0.3742199
24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.4282361   -0.0431250    0.8995972
24 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.2265442   -0.7778085    0.3247202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0405782   -0.9212696    1.0024261
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4373551   -0.7746409   -0.1000693
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1019817   -0.2006566    0.4046200
24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.1691888   -0.4183902    0.0800125
24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.2500060   -0.5320009    0.0319889
24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.3133863    0.0086722    0.6181003
24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    4+                -0.6750416   -1.1595172   -0.1905659
24 months   PROVIDE          BANGLADESH                     2                    4+                -0.4922680   -1.0167537    0.0322177
24 months   PROVIDE          BANGLADESH                     3                    4+                -0.4166454   -0.9520808    0.1187901


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0871957   -0.6936048    0.5192134
Birth       COHORTS          INDIA                          4+                   NA                -0.1609217   -0.2970339   -0.0248094
Birth       GMS-Nepal        NEPAL                          4+                   NA                -0.0516390   -0.1426627    0.0393848
Birth       IRC              INDIA                          4+                   NA                -0.2514073   -0.9451260    0.4423114
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.2376937   -0.2798843   -0.1955031
Birth       JiVitA-4         BANGLADESH                     4+                   NA                 0.4825317    0.3102349    0.6548286
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.6108493   -1.2012272   -0.0204713
Birth       MAL-ED           PERU                           4+                   NA                -0.0663919   -0.1873132    0.0545295
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0835899   -0.2035080    0.0363283
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1342347   -0.1139344    0.3824038
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.0128918   -0.1886127    0.1628291
Birth       PROVIDE          BANGLADESH                     4+                   NA                 0.2255722   -0.2012284    0.6523727
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0162816   -0.6594757    0.6269125
6 months    COHORTS          INDIA                          4+                   NA                -0.3875148   -0.4822705   -0.2927591
6 months    CONTENT          PERU                           4+                   NA                -0.1718371   -0.3782301    0.0345558
6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0118884   -0.0743852    0.0981621
6 months    IRC              INDIA                          4+                   NA                -0.2415787   -1.0570905    0.5739332
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.1745768   -0.2229917   -0.1261619
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0003420   -0.1261528    0.1254689
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.2561606   -0.7270717    0.2147505
6 months    MAL-ED           INDIA                          4+                   NA                -0.1723631   -0.4358463    0.0911201
6 months    MAL-ED           NEPAL                          4+                   NA                -0.0670790   -0.1704887    0.0363306
6 months    MAL-ED           PERU                           4+                   NA                 0.0192977   -0.0877674    0.1263629
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0172714   -0.0458912    0.0804340
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0013371   -0.1441957    0.1415215
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0194056   -0.1643997    0.1255885
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.0220959   -0.4346138    0.3904220
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3356627   -0.7390983    0.0677728
24 months   COHORTS          INDIA                          4+                   NA                -0.8919943   -1.0260946   -0.7578941
24 months   CONTENT          PERU                           4+                   NA                -0.1935861   -0.3795884   -0.0075839
24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0500817   -0.1409998    0.0408364
24 months   IRC              INDIA                          4+                   NA                 0.1618559   -0.3446118    0.6683235
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -0.2162665   -0.2913507   -0.1411823
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0380234   -0.1739870    0.0979403
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.4594727   -0.9535426    0.0345972
24 months   MAL-ED           INDIA                          4+                   NA                -0.0026448   -0.3097917    0.3045021
24 months   MAL-ED           NEPAL                          4+                   NA                -0.0257613   -0.1326513    0.0811287
24 months   MAL-ED           PERU                           4+                   NA                -0.0246891   -0.1355512    0.0861731
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0120440   -0.0872947    0.0632068
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0733158   -0.2199439    0.0733122
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0778435   -0.2768909    0.1212039
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.5892549   -1.0538388   -0.1246711
