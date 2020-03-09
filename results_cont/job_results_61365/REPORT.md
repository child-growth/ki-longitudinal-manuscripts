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
![](/tmp/38d058c4-bf5c-4a10-8864-9e125316f2d5/870dac24-03de-4f7e-8e40-85d3df2b97be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/38d058c4-bf5c-4a10-8864-9e125316f2d5/870dac24-03de-4f7e-8e40-85d3df2b97be/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/38d058c4-bf5c-4a10-8864-9e125316f2d5/870dac24-03de-4f7e-8e40-85d3df2b97be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.8740000   -1.4739904   -0.2740096
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.8946053   -1.2459292   -0.5432813
Birth       CMC-V-BCS-2002   INDIA                          2                    NA                -1.1229310   -1.4808250   -0.7650370
Birth       CMC-V-BCS-2002   INDIA                          3                    NA                -0.8750000   -1.3685904   -0.3814096
Birth       COHORTS          INDIA                          4+                   NA                -0.5115376   -0.6349521   -0.3881232
Birth       COHORTS          INDIA                          1                    NA                -0.7273610   -0.7697874   -0.6849345
Birth       COHORTS          INDIA                          2                    NA                -0.5853170   -0.6590119   -0.5116222
Birth       COHORTS          INDIA                          3                    NA                -0.6749330   -0.8428420   -0.5070240
Birth       GMS-Nepal        NEPAL                          4+                   NA                -1.0344496   -1.1564046   -0.9124947
Birth       GMS-Nepal        NEPAL                          1                    NA                -1.1189004   -1.4356592   -0.8021416
Birth       GMS-Nepal        NEPAL                          2                    NA                -1.0958141   -1.2816817   -0.9099465
Birth       GMS-Nepal        NEPAL                          3                    NA                -1.1454058   -1.3094674   -0.9813441
Birth       IRC              INDIA                          4+                   NA                -0.1185832   -0.8519389    0.6147724
Birth       IRC              INDIA                          1                    NA                -0.6947993   -0.8987248   -0.4908737
Birth       IRC              INDIA                          2                    NA                -0.3951003   -0.6822413   -0.1079593
Birth       IRC              INDIA                          3                    NA                -0.0094422   -0.7415139    0.7226296
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -1.3604569   -1.4022910   -1.3186227
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.5885537   -1.6155763   -1.5615311
Birth       JiVitA-3         BANGLADESH                     2                    NA                -1.5977868   -1.6433712   -1.5522024
Birth       JiVitA-3         BANGLADESH                     3                    NA                -1.5621614   -1.6217913   -1.5025315
Birth       JiVitA-4         BANGLADESH                     4+                   NA                -2.0028223   -2.1594096   -1.8462350
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.5543482   -1.6436032   -1.4650932
Birth       JiVitA-4         BANGLADESH                     2                    NA                -1.4901158   -1.6197471   -1.3604846
Birth       JiVitA-4         BANGLADESH                     3                    NA                -1.3892447   -1.5260089   -1.2524805
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.4320976   -0.9997054    0.1355102
Birth       MAL-ED           BANGLADESH                     1                    NA                -1.1247876   -1.3033692   -0.9462060
Birth       MAL-ED           BANGLADESH                     2                    NA                -1.1028488   -1.4049029   -0.8007946
Birth       MAL-ED           BANGLADESH                     3                    NA                -0.9184051   -1.2451987   -0.5916115
Birth       MAL-ED           PERU                           4+                   NA                -0.8505544   -1.0519697   -0.6491391
Birth       MAL-ED           PERU                           1                    NA                -1.0170742   -1.5048343   -0.5293140
Birth       MAL-ED           PERU                           2                    NA                -0.9734687   -1.1916030   -0.7553344
Birth       MAL-ED           PERU                           3                    NA                -0.9305455   -1.1329642   -0.7281267
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.4688060   -0.7283817   -0.2092303
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.1980000   -0.4674799    0.0714799
Birth       MAL-ED           SOUTH AFRICA                   2                    NA                -1.0133333   -1.4164289   -0.6102377
Birth       MAL-ED           SOUTH AFRICA                   3                    NA                -0.7058333   -1.2016555   -0.2100111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.2567347   -1.5615935   -0.9518759
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8588889   -1.4085412   -0.3092365
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.1070968   -1.6324652   -0.5817283
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.0022581   -1.3571466   -0.6473695
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                -0.9511409   -1.1440017   -0.7582802
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9461657   -1.0507263   -0.8416051
Birth       NIH-Crypto       BANGLADESH                     2                    NA                -0.9191529   -1.0906562   -0.7476496
Birth       NIH-Crypto       BANGLADESH                     3                    NA                -0.8425981   -1.0463568   -0.6388395
Birth       PROVIDE          BANGLADESH                     4+                   NA                -0.8956350   -1.3168509   -0.4744191
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.8719684   -0.9581232   -0.7858137
Birth       PROVIDE          BANGLADESH                     2                    NA                -0.9255951   -1.1351444   -0.7160458
Birth       PROVIDE          BANGLADESH                     3                    NA                -0.8661324   -1.1177016   -0.6145633
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.9508781   -1.5679583   -0.3337979
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.3767032   -1.5556138   -1.1977925
6 months    CMC-V-BCS-2002   INDIA                          2                    NA                -1.5934480   -1.8778726   -1.3090233
6 months    CMC-V-BCS-2002   INDIA                          3                    NA                -1.2560642   -1.7262318   -0.7858966
6 months    COHORTS          INDIA                          4+                   NA                -0.6506796   -0.7384225   -0.5629368
6 months    COHORTS          INDIA                          1                    NA                -1.1423140   -1.1856332   -1.0989948
6 months    COHORTS          INDIA                          2                    NA                -0.8645915   -0.9320831   -0.7970999
6 months    COHORTS          INDIA                          3                    NA                -0.8584780   -0.9883398   -0.7286161
6 months    CONTENT          PERU                           4+                   NA                -0.1627234   -0.3779553    0.0525085
6 months    CONTENT          PERU                           1                    NA                -0.1052373   -0.4409615    0.2304868
6 months    CONTENT          PERU                           2                    NA                 0.0455040   -0.2201336    0.3111416
6 months    CONTENT          PERU                           3                    NA                -0.1821879   -0.6128855    0.2485096
6 months    GMS-Nepal        NEPAL                          4+                   NA                -1.3495128   -1.4631992   -1.2358263
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.5814621   -1.9193574   -1.2435667
6 months    GMS-Nepal        NEPAL                          2                    NA                -1.3867142   -1.5572540   -1.2161743
6 months    GMS-Nepal        NEPAL                          3                    NA                -1.3188087   -1.4724654   -1.1651520
6 months    IRC              INDIA                          4+                   NA                -0.9567392   -1.7535191   -0.1599593
6 months    IRC              INDIA                          1                    NA                -1.2266287   -1.4211830   -1.0320744
6 months    IRC              INDIA                          2                    NA                -1.2995286   -1.4988904   -1.1001668
6 months    IRC              INDIA                          3                    NA                -1.1569728   -1.5680565   -0.7458892
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -1.1354291   -1.1831741   -1.0876841
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3060970   -1.3382268   -1.2739673
6 months    JiVitA-3         BANGLADESH                     2                    NA                -1.3005048   -1.3463135   -1.2546961
6 months    JiVitA-3         BANGLADESH                     3                    NA                -1.2611429   -1.3199366   -1.2023493
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -1.2818920   -1.4169229   -1.1468612
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3286688   -1.3939871   -1.2633505
6 months    JiVitA-4         BANGLADESH                     2                    NA                -1.3418744   -1.4467934   -1.2369554
6 months    JiVitA-4         BANGLADESH                     3                    NA                -1.3396341   -1.4563944   -1.2228738
6 months    MAL-ED           BANGLADESH                     4+                   NA                -1.0465965   -1.6102174   -0.4829755
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.2430225   -1.3850208   -1.1010242
6 months    MAL-ED           BANGLADESH                     2                    NA                -1.2490950   -1.5773569   -0.9208331
6 months    MAL-ED           BANGLADESH                     3                    NA                -1.0251160   -1.3184633   -0.7317687
6 months    MAL-ED           INDIA                          4+                   NA                -1.0178796   -1.2884873   -0.7472720
6 months    MAL-ED           INDIA                          1                    NA                -1.1285738   -1.3437530   -0.9133945
6 months    MAL-ED           INDIA                          2                    NA                -1.4424539   -1.6583917   -1.2265161
6 months    MAL-ED           INDIA                          3                    NA                -1.1146941   -1.3595946   -0.8697936
6 months    MAL-ED           NEPAL                          4+                   NA                -0.4938035   -0.6461327   -0.3414743
6 months    MAL-ED           NEPAL                          1                    NA                -0.6385747   -0.8941293   -0.3830201
6 months    MAL-ED           NEPAL                          2                    NA                -0.7238364   -1.0673724   -0.3803004
6 months    MAL-ED           NEPAL                          3                    NA                -0.5244887   -0.9266652   -0.1223121
6 months    MAL-ED           PERU                           4+                   NA                -1.3480926   -1.5092416   -1.1869436
6 months    MAL-ED           PERU                           1                    NA                -1.6192442   -2.0464344   -1.1920541
6 months    MAL-ED           PERU                           2                    NA                -1.2242262   -1.4753793   -0.9730731
6 months    MAL-ED           PERU                           3                    NA                -1.2739762   -1.4844117   -1.0635407
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -1.0637220   -1.2200785   -0.9073655
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.3534462   -1.8639442   -0.8429483
6 months    MAL-ED           SOUTH AFRICA                   2                    NA                -0.8780031   -1.2496592   -0.5063471
6 months    MAL-ED           SOUTH AFRICA                   3                    NA                -1.0444929   -1.3669060   -0.7220797
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -1.3688593   -1.5436197   -1.1940988
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4087970   -2.1232150   -0.6943791
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -1.4827851   -1.7707224   -1.1948479
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -1.2587880   -1.4819823   -1.0355936
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -1.1706707   -1.3313592   -1.0099822
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.2904979   -1.3979598   -1.1830360
6 months    NIH-Crypto       BANGLADESH                     2                    NA                -1.2094339   -1.3764729   -1.0423949
6 months    NIH-Crypto       BANGLADESH                     3                    NA                -0.8942769   -1.0949802   -0.6935736
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.9852404   -1.4679712   -0.5025096
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1204499   -1.2084872   -1.0324126
6 months    PROVIDE          BANGLADESH                     2                    NA                -1.0374139   -1.2240784   -0.8507494
6 months    PROVIDE          BANGLADESH                     3                    NA                -1.0431450   -1.2790523   -0.8072376
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -2.1869856   -2.6215798   -1.7523914
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.6602857   -2.7968819   -2.5236894
24 months   CMC-V-BCS-2002   INDIA                          2                    NA                -2.4929472   -2.6779159   -2.3079785
24 months   CMC-V-BCS-2002   INDIA                          3                    NA                -2.3890356   -2.6785460   -2.0995253
24 months   COHORTS          INDIA                          4+                   NA                -1.3310347   -1.4712346   -1.1908347
24 months   COHORTS          INDIA                          1                    NA                -2.3700315   -2.4241771   -2.3158858
24 months   COHORTS          INDIA                          2                    NA                -1.9873711   -2.0670781   -1.9076642
24 months   COHORTS          INDIA                          3                    NA                -1.9150449   -2.0980384   -1.7320514
24 months   CONTENT          PERU                           4+                   NA                -0.4963269   -0.7011927   -0.2914612
24 months   CONTENT          PERU                           1                    NA                -0.8794113   -1.3092936   -0.4495290
24 months   CONTENT          PERU                           2                    NA                -0.6133602   -1.0764281   -0.1502924
24 months   CONTENT          PERU                           3                    NA                -0.7046829   -1.0845551   -0.3248107
24 months   GMS-Nepal        NEPAL                          4+                   NA                -1.8333922   -1.9550799   -1.7117045
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.2058150   -2.5248201   -1.8868099
24 months   GMS-Nepal        NEPAL                          2                    NA                -1.9859491   -2.1655163   -1.8063820
24 months   GMS-Nepal        NEPAL                          3                    NA                -1.8414114   -2.0212742   -1.6615487
24 months   IRC              INDIA                          4+                   NA                -1.8850127   -2.4517419   -1.3182835
24 months   IRC              INDIA                          1                    NA                -1.8666267   -2.0107556   -1.7224977
24 months   IRC              INDIA                          2                    NA                -1.6599879   -1.8032674   -1.5167085
24 months   IRC              INDIA                          3                    NA                -1.9703099   -2.2348947   -1.7057250
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -1.7849603   -1.8604418   -1.7094787
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.0000374   -2.0426369   -1.9574379
24 months   JiVitA-3         BANGLADESH                     2                    NA                -2.0203350   -2.0862250   -1.9544450
24 months   JiVitA-3         BANGLADESH                     3                    NA                -1.9775525   -2.0500710   -1.9050340
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -1.7457725   -1.8839709   -1.6075742
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7873024   -1.8476191   -1.7269857
24 months   JiVitA-4         BANGLADESH                     2                    NA                -1.7860733   -1.8954678   -1.6766789
24 months   JiVitA-4         BANGLADESH                     3                    NA                -1.6928002   -1.7775663   -1.6080342
24 months   MAL-ED           BANGLADESH                     4+                   NA                -1.7219960   -2.2542638   -1.1897283
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.0706159   -2.2284048   -1.9128270
24 months   MAL-ED           BANGLADESH                     2                    NA                -1.9643471   -2.2791058   -1.6495884
24 months   MAL-ED           BANGLADESH                     3                    NA                -1.8484253   -2.1225338   -1.5743168
24 months   MAL-ED           INDIA                          4+                   NA                -1.8396680   -2.1602810   -1.5190549
24 months   MAL-ED           INDIA                          1                    NA                -1.7455900   -1.9649066   -1.5262734
24 months   MAL-ED           INDIA                          2                    NA                -2.1100421   -2.3321914   -1.8878929
24 months   MAL-ED           INDIA                          3                    NA                -1.8704102   -2.1195829   -1.6212376
24 months   MAL-ED           NEPAL                          4+                   NA                -1.2851609   -1.4447480   -1.1255738
24 months   MAL-ED           NEPAL                          1                    NA                -1.4564262   -1.6769594   -1.2358930
24 months   MAL-ED           NEPAL                          2                    NA                -1.2052116   -1.5447362   -0.8656870
24 months   MAL-ED           NEPAL                          3                    NA                -1.4245393   -1.9049795   -0.9440990
24 months   MAL-ED           PERU                           4+                   NA                -1.7139052   -1.8850421   -1.5427682
24 months   MAL-ED           PERU                           1                    NA                -2.0962549   -2.5436647   -1.6488450
24 months   MAL-ED           PERU                           2                    NA                -1.6132493   -1.8792816   -1.3472170
24 months   MAL-ED           PERU                           3                    NA                -1.7083079   -1.9460061   -1.4706097
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -1.6329726   -1.7848500   -1.4810951
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.8222495   -2.4893412   -1.1551578
24 months   MAL-ED           SOUTH AFRICA                   2                    NA                -1.2026194   -1.6503716   -0.7548672
24 months   MAL-ED           SOUTH AFRICA                   3                    NA                -1.7855097   -2.2935782   -1.2774413
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -2.5722449   -2.7682142   -2.3762756
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5316667   -3.4733393   -1.5899941
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                -3.0096000   -3.2841137   -2.7350863
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                -2.4702632   -2.7008840   -2.2396423
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -1.3512772   -1.5555337   -1.1470206
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.5152582   -1.6506694   -1.3798470
24 months   NIH-Crypto       BANGLADESH                     2                    NA                -1.6340805   -1.8237086   -1.4444523
24 months   NIH-Crypto       BANGLADESH                     3                    NA                -1.0008665   -1.2304024   -0.7713306
24 months   PROVIDE          BANGLADESH                     4+                   NA                -1.1050153   -1.6093644   -0.6006662
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6833587   -1.7795852   -1.5871322
24 months   PROVIDE          BANGLADESH                     2                    NA                -1.5208003   -1.7397990   -1.3018017
24 months   PROVIDE          BANGLADESH                     3                    NA                -1.4438580   -1.6907126   -1.1970034


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
Birth       COHORTS          INDIA                          1                    4+                -0.2158233   -0.3460035   -0.0856432
Birth       COHORTS          INDIA                          2                    4+                -0.0737794   -0.2172259    0.0696671
Birth       COHORTS          INDIA                          3                    4+                -0.1633954   -0.3714144    0.0446237
Birth       GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    4+                -0.0844508   -0.4232594    0.2543578
Birth       GMS-Nepal        NEPAL                          2                    4+                -0.0613645   -0.2832466    0.1605177
Birth       GMS-Nepal        NEPAL                          3                    4+                -0.1109561   -0.3146007    0.0926884
Birth       IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    4+                -0.5762160   -1.3415333    0.1891013
Birth       IRC              INDIA                          2                    4+                -0.2765171   -1.0634753    0.5104411
Birth       IRC              INDIA                          3                    4+                 0.1091411   -0.9309759    1.1492581
Birth       JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    4+                -0.2280968   -0.2769036   -0.1792900
Birth       JiVitA-3         BANGLADESH                     2                    4+                -0.2373299   -0.2970775   -0.1775823
Birth       JiVitA-3         BANGLADESH                     3                    4+                -0.2017045   -0.2724226   -0.1309864
Birth       JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    4+                 0.4484741    0.2709610    0.6259872
Birth       JiVitA-4         BANGLADESH                     2                    4+                 0.5127065    0.3133699    0.7120430
Birth       JiVitA-4         BANGLADESH                     3                    4+                 0.6135776    0.4078352    0.8193200
Birth       MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    4+                -0.6926900   -1.2873620   -0.0980180
Birth       MAL-ED           BANGLADESH                     2                    4+                -0.6707512   -1.3134438   -0.0280586
Birth       MAL-ED           BANGLADESH                     3                    4+                -0.4863075   -1.1409704    0.1683554
Birth       MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    4+                -0.1665198   -0.6924136    0.3593740
Birth       MAL-ED           PERU                           2                    4+                -0.1229143   -0.4199570    0.1741283
Birth       MAL-ED           PERU                           3                    4+                -0.0799911   -0.3630211    0.2030389
Birth       MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    4+                 0.2708060   -0.1033584    0.6449703
Birth       MAL-ED           SOUTH AFRICA                   2                    4+                -0.5445274   -1.0239704   -0.0650843
Birth       MAL-ED           SOUTH AFRICA                   3                    4+                -0.2370274   -0.7966873    0.3226325
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.3978458   -0.2306895    1.0263811
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.1496379   -0.4577754    0.7570512
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.2544766   -0.2133746    0.7223279
Birth       NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    4+                 0.0049752   -0.2148006    0.2247510
Birth       NIH-Crypto       BANGLADESH                     2                    4+                 0.0319880   -0.2260448    0.2900208
Birth       NIH-Crypto       BANGLADESH                     3                    4+                 0.1085428   -0.1721032    0.3891888
Birth       PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    4+                 0.0236666   -0.4071302    0.4544634
Birth       PROVIDE          BANGLADESH                     2                    4+                -0.0299601   -0.5015148    0.4415946
Birth       PROVIDE          BANGLADESH                     3                    4+                 0.0295026   -0.4622517    0.5212569
6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.4258251   -1.0691016    0.2174514
6 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.6425699   -1.3237064    0.0385666
6 months    CMC-V-BCS-2002   INDIA                          3                    4+                -0.3051861   -1.0797991    0.4694269
6 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    4+                -0.4916344   -0.5888465   -0.3944223
6 months    COHORTS          INDIA                          2                    4+                -0.2139119   -0.3240432   -0.1037805
6 months    COHORTS          INDIA                          3                    4+                -0.2077983   -0.3641279   -0.0514688
6 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    4+                 0.0574861   -0.3461977    0.4611699
6 months    CONTENT          PERU                           2                    4+                 0.2082274   -0.1349917    0.5514465
6 months    CONTENT          PERU                           3                    4+                -0.0194645   -0.4973331    0.4584041
6 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    4+                -0.2319493   -0.5888557    0.1249571
6 months    GMS-Nepal        NEPAL                          2                    4+                -0.0372014   -0.2423442    0.1679415
6 months    GMS-Nepal        NEPAL                          3                    4+                 0.0307041   -0.1604884    0.2218966
6 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    4+                -0.2698895   -1.0903223    0.5505433
6 months    IRC              INDIA                          2                    4+                -0.3427894   -1.1642333    0.4786545
6 months    IRC              INDIA                          3                    4+                -0.2002336   -1.0987163    0.6982490
6 months    JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    4+                -0.1706679   -0.2251179   -0.1162180
6 months    JiVitA-3         BANGLADESH                     2                    4+                -0.1650757   -0.2285583   -0.1015931
6 months    JiVitA-3         BANGLADESH                     3                    4+                -0.1257138   -0.2017894   -0.0496382
6 months    JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    4+                -0.0467768   -0.1943378    0.1007842
6 months    JiVitA-4         BANGLADESH                     2                    4+                -0.0599824   -0.2304085    0.1104437
6 months    JiVitA-4         BANGLADESH                     3                    4+                -0.0577421   -0.2355288    0.1200446
6 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    4+                -0.1964261   -0.7781313    0.3852792
6 months    MAL-ED           BANGLADESH                     2                    4+                -0.2024985   -0.8547854    0.4497883
6 months    MAL-ED           BANGLADESH                     3                    4+                 0.0214804   -0.6142654    0.6572263
6 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    4+                -0.1106941   -0.4580305    0.2366422
6 months    MAL-ED           INDIA                          2                    4+                -0.4245743   -0.7732085   -0.0759401
6 months    MAL-ED           INDIA                          3                    4+                -0.0968145   -0.4634416    0.2698126
6 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    4+                -0.1447712   -0.4436801    0.1541377
6 months    MAL-ED           NEPAL                          2                    4+                -0.2300329   -0.6074495    0.1473837
6 months    MAL-ED           NEPAL                          3                    4+                -0.0306852   -0.4620986    0.4007282
6 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    4+                -0.2711516   -0.7277749    0.1854718
6 months    MAL-ED           PERU                           2                    4+                 0.1238665   -0.1749042    0.4226371
6 months    MAL-ED           PERU                           3                    4+                 0.0741164   -0.1911007    0.3393335
6 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    4+                -0.2897243   -0.8237516    0.2443031
6 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.1857188   -0.2168983    0.5883360
6 months    MAL-ED           SOUTH AFRICA                   3                    4+                 0.0192291   -0.3386135    0.3770717
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0399378   -0.7761101    0.6962345
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1139259   -0.4505376    0.2226859
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1100713   -0.1734608    0.3936034
6 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.1198272   -0.3132802    0.0736259
6 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0387632   -0.2707318    0.1932054
6 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.2763938    0.0192095    0.5335781
6 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    4+                -0.1352095   -0.6263829    0.3559640
6 months    PROVIDE          BANGLADESH                     2                    4+                -0.0521735   -0.5697991    0.4654520
6 months    PROVIDE          BANGLADESH                     3                    4+                -0.0579045   -0.5955279    0.4797188
24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.4733000   -0.9289380   -0.0176620
24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.3059616   -0.7785148    0.1665916
24 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.2020500   -0.7245017    0.3204017
24 months   COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    4+                -1.0389968   -1.1894478   -0.8885458
24 months   COHORTS          INDIA                          2                    4+                -0.6563365   -0.8177378   -0.4949351
24 months   COHORTS          INDIA                          3                    4+                -0.5840103   -0.8147064   -0.3533141
24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    4+                -0.3830843   -0.8654062    0.0992375
24 months   CONTENT          PERU                           2                    4+                -0.1170333   -0.6225097    0.3884432
24 months   CONTENT          PERU                           3                    4+                -0.2083560   -0.6388767    0.2221647
24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    4+                -0.3724228   -0.7143120   -0.0305336
24 months   GMS-Nepal        NEPAL                          2                    4+                -0.1525569   -0.3694247    0.0643108
24 months   GMS-Nepal        NEPAL                          3                    4+                -0.0080192   -0.2249776    0.2089391
24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    4+                 0.0183860   -0.5664306    0.6032027
24 months   IRC              INDIA                          2                    4+                 0.2250248   -0.3598539    0.8099035
24 months   IRC              INDIA                          3                    4+                -0.0852972   -0.7110304    0.5404361
24 months   JiVitA-3         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    4+                -0.2150771   -0.2964421   -0.1337121
24 months   JiVitA-3         BANGLADESH                     2                    4+                -0.2353747   -0.3278293   -0.1429202
24 months   JiVitA-3         BANGLADESH                     3                    4+                -0.1925922   -0.2959874   -0.0891971
24 months   JiVitA-4         BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    4+                -0.0415299   -0.1871519    0.1040921
24 months   JiVitA-4         BANGLADESH                     2                    4+                -0.0403008   -0.2160408    0.1354393
24 months   JiVitA-4         BANGLADESH                     3                    4+                 0.0529723   -0.1084613    0.2144059
24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    4+                -0.3486198   -0.9034329    0.2061932
24 months   MAL-ED           BANGLADESH                     2                    4+                -0.2423510   -0.8621182    0.3774161
24 months   MAL-ED           BANGLADESH                     3                    4+                -0.1264293   -0.7259611    0.4731026
24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    4+                 0.0940779   -0.2946636    0.4828195
24 months   MAL-ED           INDIA                          2                    4+                -0.2703742   -0.6582543    0.1175060
24 months   MAL-ED           INDIA                          3                    4+                -0.0307423   -0.4352181    0.3737335
24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    4+                -0.1712653   -0.4424661    0.0999355
24 months   MAL-ED           NEPAL                          2                    4+                 0.0799493   -0.2944942    0.4543928
24 months   MAL-ED           NEPAL                          3                    4+                -0.1393783   -0.6450462    0.3662895
24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    4+                -0.3823497   -0.8610055    0.0963061
24 months   MAL-ED           PERU                           2                    4+                 0.1006559   -0.2164438    0.4177556
24 months   MAL-ED           PERU                           3                    4+                 0.0055972   -0.2874990    0.2986935
24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.1892769   -0.8720502    0.4934964
24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.4303532   -0.0417354    0.9024417
24 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.1525372   -0.6845758    0.3795014
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0405782   -0.9212696    1.0024261
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.4373551   -0.7746409   -0.1000693
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.1019817   -0.2006566    0.4046200
24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.1639811   -0.4093927    0.0814306
24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.2828033   -0.5617473   -0.0038593
24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.3504106    0.0426871    0.6581341
24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    4+                -0.5783434   -1.0915601   -0.0651266
24 months   PROVIDE          BANGLADESH                     2                    4+                -0.4157850   -0.9647110    0.1331410
24 months   PROVIDE          BANGLADESH                     3                    4+                -0.3388427   -0.9000526    0.2223673


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0871957   -0.6936048    0.5192134
Birth       COHORTS          INDIA                          4+                   NA                -0.1662250   -0.2897436   -0.0427065
Birth       GMS-Nepal        NEPAL                          4+                   NA                -0.0507084   -0.1423853    0.0409685
Birth       IRC              INDIA                          4+                   NA                -0.1893183   -0.9079866    0.5293499
Birth       JiVitA-3         BANGLADESH                     4+                   NA                -0.2293857   -0.2726621   -0.1861094
Birth       JiVitA-4         BANGLADESH                     4+                   NA                 0.4792088    0.3232216    0.6351961
Birth       MAL-ED           BANGLADESH                     4+                   NA                -0.6209540   -1.1751340   -0.0667741
Birth       MAL-ED           PERU                           4+                   NA                -0.0635852   -0.1865828    0.0594125
Birth       MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0835899   -0.2035080    0.0363283
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.1342347   -0.1139344    0.3824038
Birth       NIH-Crypto       BANGLADESH                     4+                   NA                 0.0416464   -0.1414848    0.2247776
Birth       PROVIDE          BANGLADESH                     4+                   NA                 0.0105330   -0.4030618    0.4241277
6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.4725727   -1.0882615    0.1431161
6 months    COHORTS          INDIA                          4+                   NA                -0.3906485   -0.4809243   -0.3003726
6 months    CONTENT          PERU                           4+                   NA                -0.1158022   -0.3038182    0.0722138
6 months    GMS-Nepal        NEPAL                          4+                   NA                -0.0013265   -0.0864034    0.0837505
6 months    IRC              INDIA                          4+                   NA                -0.2902732   -1.0668764    0.4863301
6 months    JiVitA-3         BANGLADESH                     4+                   NA                -0.1778697   -0.2261541   -0.1295853
6 months    JiVitA-4         BANGLADESH                     4+                   NA                -0.0621557   -0.1938957    0.0695844
6 months    MAL-ED           BANGLADESH                     4+                   NA                -0.1560841   -0.7089291    0.3967609
6 months    MAL-ED           INDIA                          4+                   NA                -0.1891842   -0.4596760    0.0813076
6 months    MAL-ED           NEPAL                          4+                   NA                -0.0677784   -0.1721613    0.0366044
6 months    MAL-ED           PERU                           4+                   NA                 0.0232377   -0.0844928    0.1309681
6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0089295   -0.0539806    0.0718395
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0001143   -0.1421615    0.1423901
6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0280076   -0.1850261    0.1290108
6 months    PROVIDE          BANGLADESH                     4+                   NA                -0.1064511   -0.5812784    0.3683762
24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3718823   -0.8040432    0.0602786
24 months   COHORTS          INDIA                          4+                   NA                -0.8821367   -1.0236361   -0.7406373
24 months   CONTENT          PERU                           4+                   NA                -0.1905328   -0.3698776   -0.0111880
24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0540258   -0.1441546    0.0361029
24 months   IRC              INDIA                          4+                   NA                 0.0835221   -0.4696222    0.6366664
24 months   JiVitA-3         BANGLADESH                     4+                   NA                -0.2287868   -0.3013190   -0.1562547
24 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.0345982   -0.1671021    0.0979057
24 months   MAL-ED           BANGLADESH                     4+                   NA                -0.2564002   -0.7833237    0.2705234
24 months   MAL-ED           INDIA                          4+                   NA                -0.0465215   -0.3558004    0.2627574
24 months   MAL-ED           NEPAL                          4+                   NA                -0.0224268   -0.1289240    0.0840704
24 months   MAL-ED           PERU                           4+                   NA                -0.0385658   -0.1458555    0.0687238
24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0120870   -0.0886835    0.0645096
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0733158   -0.2199439    0.0733122
24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0899874   -0.2847352    0.1047604
24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.4974068   -0.9912583   -0.0035554
