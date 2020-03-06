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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country        cleanck    n_cell     n
-------------  ---------------  -------------  --------  -------  ----
0-3 months     CMC-V-BCS-2002   INDIA          1             147   331
0-3 months     CMC-V-BCS-2002   INDIA          0             184   331
0-3 months     GMS-Nepal        NEPAL          1               7   460
0-3 months     GMS-Nepal        NEPAL          0             453   460
0-3 months     IRC              INDIA          1             223   386
0-3 months     IRC              INDIA          0             163   386
0-3 months     MAL-ED           PERU           1               1     1
0-3 months     MAL-ED           PERU           0               0     1
0-3 months     MAL-ED           SOUTH AFRICA   1               2     3
0-3 months     MAL-ED           SOUTH AFRICA   0               1     3
0-3 months     NIH-Crypto       BANGLADESH     1             337   550
0-3 months     NIH-Crypto       BANGLADESH     0             213   550
0-3 months     PROVIDE          BANGLADESH     1             529   640
0-3 months     PROVIDE          BANGLADESH     0             111   640
3-6 months     CMC-V-BCS-2002   INDIA          1             138   322
3-6 months     CMC-V-BCS-2002   INDIA          0             184   322
3-6 months     GMS-Nepal        NEPAL          1               6   424
3-6 months     GMS-Nepal        NEPAL          0             418   424
3-6 months     IRC              INDIA          1             225   391
3-6 months     IRC              INDIA          0             166   391
3-6 months     MAL-ED           SOUTH AFRICA   1               1     1
3-6 months     MAL-ED           SOUTH AFRICA   0               0     1
3-6 months     NIH-Crypto       BANGLADESH     1             320   532
3-6 months     NIH-Crypto       BANGLADESH     0             212   532
3-6 months     PROVIDE          BANGLADESH     1             494   601
3-6 months     PROVIDE          BANGLADESH     0             107   601
6-9 months     CMC-V-BCS-2002   INDIA          1             141   325
6-9 months     CMC-V-BCS-2002   INDIA          0             184   325
6-9 months     GMS-Nepal        NEPAL          1               8   429
6-9 months     GMS-Nepal        NEPAL          0             421   429
6-9 months     IRC              INDIA          1             231   400
6-9 months     IRC              INDIA          0             169   400
6-9 months     MAL-ED           SOUTH AFRICA   1               1     1
6-9 months     MAL-ED           SOUTH AFRICA   0               0     1
6-9 months     NIH-Crypto       BANGLADESH     1             315   529
6-9 months     NIH-Crypto       BANGLADESH     0             214   529
6-9 months     PROVIDE          BANGLADESH     1             472   576
6-9 months     PROVIDE          BANGLADESH     0             104   576
9-12 months    CMC-V-BCS-2002   INDIA          1             139   327
9-12 months    CMC-V-BCS-2002   INDIA          0             188   327
9-12 months    GMS-Nepal        NEPAL          1               8   412
9-12 months    GMS-Nepal        NEPAL          0             404   412
9-12 months    IRC              INDIA          1             228   393
9-12 months    IRC              INDIA          0             165   393
9-12 months    MAL-ED           SOUTH AFRICA   1               1     1
9-12 months    MAL-ED           SOUTH AFRICA   0               0     1
9-12 months    NIH-Crypto       BANGLADESH     1             310   524
9-12 months    NIH-Crypto       BANGLADESH     0             214   524
9-12 months    PROVIDE          BANGLADESH     1             467   569
9-12 months    PROVIDE          BANGLADESH     0             102   569
12-15 months   CMC-V-BCS-2002   INDIA          1             140   334
12-15 months   CMC-V-BCS-2002   INDIA          0             194   334
12-15 months   GMS-Nepal        NEPAL          1               8   410
12-15 months   GMS-Nepal        NEPAL          0             402   410
12-15 months   IRC              INDIA          1             221   382
12-15 months   IRC              INDIA          0             161   382
12-15 months   MAL-ED           SOUTH AFRICA   1               1     1
12-15 months   MAL-ED           SOUTH AFRICA   0               0     1
12-15 months   NIH-Crypto       BANGLADESH     1             299   511
12-15 months   NIH-Crypto       BANGLADESH     0             212   511
12-15 months   PROVIDE          BANGLADESH     1             445   537
12-15 months   PROVIDE          BANGLADESH     0              92   537
15-18 months   CMC-V-BCS-2002   INDIA          1             138   325
15-18 months   CMC-V-BCS-2002   INDIA          0             187   325
15-18 months   GMS-Nepal        NEPAL          1               8   432
15-18 months   GMS-Nepal        NEPAL          0             424   432
15-18 months   IRC              INDIA          1             218   375
15-18 months   IRC              INDIA          0             157   375
15-18 months   MAL-ED           SOUTH AFRICA   1               1     1
15-18 months   MAL-ED           SOUTH AFRICA   0               0     1
15-18 months   NIH-Crypto       BANGLADESH     1             257   467
15-18 months   NIH-Crypto       BANGLADESH     0             210   467
15-18 months   PROVIDE          BANGLADESH     1             442   533
15-18 months   PROVIDE          BANGLADESH     0              91   533
18-21 months   CMC-V-BCS-2002   INDIA          1             129   310
18-21 months   CMC-V-BCS-2002   INDIA          0             181   310
18-21 months   GMS-Nepal        NEPAL          1               7   407
18-21 months   GMS-Nepal        NEPAL          0             400   407
18-21 months   IRC              INDIA          1             213   372
18-21 months   IRC              INDIA          0             159   372
18-21 months   MAL-ED           SOUTH AFRICA   1               1     1
18-21 months   MAL-ED           SOUTH AFRICA   0               0     1
18-21 months   NIH-Crypto       BANGLADESH     1             222   431
18-21 months   NIH-Crypto       BANGLADESH     0             209   431
18-21 months   PROVIDE          BANGLADESH     1             442   542
18-21 months   PROVIDE          BANGLADESH     0             100   542
21-24 months   CMC-V-BCS-2002   INDIA          1             126   311
21-24 months   CMC-V-BCS-2002   INDIA          0             185   311
21-24 months   GMS-Nepal        NEPAL          1               4   310
21-24 months   GMS-Nepal        NEPAL          0             306   310
21-24 months   IRC              INDIA          1             216   380
21-24 months   IRC              INDIA          0             164   380
21-24 months   MAL-ED           SOUTH AFRICA   1               1     1
21-24 months   MAL-ED           SOUTH AFRICA   0               0     1
21-24 months   NIH-Crypto       BANGLADESH     1             186   395
21-24 months   NIH-Crypto       BANGLADESH     0             209   395
21-24 months   PROVIDE          BANGLADESH     1             396   485
21-24 months   PROVIDE          BANGLADESH     0              89   485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/b95aec72-e636-45e6-b77d-6e2b75adbebf/898ff645-7677-4b2e-8732-79e9f93be77f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b95aec72-e636-45e6-b77d-6e2b75adbebf/898ff645-7677-4b2e-8732-79e9f93be77f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b95aec72-e636-45e6-b77d-6e2b75adbebf/898ff645-7677-4b2e-8732-79e9f93be77f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                0.7675616   0.7348516   0.8002717
0-3 months     CMC-V-BCS-2002   INDIA        0                    NA                0.7301339   0.6966652   0.7636026
0-3 months     GMS-Nepal        NEPAL        1                    NA                0.8517935   0.7801961   0.9233909
0-3 months     GMS-Nepal        NEPAL        0                    NA                0.8221249   0.8038873   0.8403626
0-3 months     IRC              INDIA        1                    NA                0.7677833   0.7417638   0.7938029
0-3 months     IRC              INDIA        0                    NA                0.7657744   0.7358643   0.7956846
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                0.8822415   0.8614335   0.9030494
0-3 months     NIH-Crypto       BANGLADESH   0                    NA                0.9025430   0.8766778   0.9284082
0-3 months     PROVIDE          BANGLADESH   1                    NA                0.9116266   0.8954527   0.9278006
0-3 months     PROVIDE          BANGLADESH   0                    NA                0.8540874   0.8194185   0.8887563
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                0.4968670   0.4643287   0.5294053
3-6 months     CMC-V-BCS-2002   INDIA        0                    NA                0.4588739   0.4368077   0.4809402
3-6 months     GMS-Nepal        NEPAL        1                    NA                0.3977899   0.3730672   0.4225126
3-6 months     GMS-Nepal        NEPAL        0                    NA                0.4950234   0.4799980   0.5100489
3-6 months     IRC              INDIA        1                    NA                0.4718594   0.4476031   0.4961156
3-6 months     IRC              INDIA        0                    NA                0.4533795   0.4274937   0.4792653
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                0.4997578   0.4835673   0.5159484
3-6 months     NIH-Crypto       BANGLADESH   0                    NA                0.5033056   0.4837380   0.5228731
3-6 months     PROVIDE          BANGLADESH   1                    NA                0.4979860   0.4829962   0.5129757
3-6 months     PROVIDE          BANGLADESH   0                    NA                0.4478567   0.4251973   0.4705162
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                0.2638932   0.2374878   0.2902986
6-9 months     CMC-V-BCS-2002   INDIA        0                    NA                0.2562905   0.2363645   0.2762165
6-9 months     GMS-Nepal        NEPAL        1                    NA                0.2373516   0.2071781   0.2675251
6-9 months     GMS-Nepal        NEPAL        0                    NA                0.1884564   0.1750948   0.2018179
6-9 months     IRC              INDIA        1                    NA                0.2654751   0.2471082   0.2838420
6-9 months     IRC              INDIA        0                    NA                0.2586682   0.2366360   0.2807003
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                0.2669247   0.2519287   0.2819207
6-9 months     NIH-Crypto       BANGLADESH   0                    NA                0.2990674   0.2803777   0.3177572
6-9 months     PROVIDE          BANGLADESH   1                    NA                0.2548471   0.2409874   0.2687067
6-9 months     PROVIDE          BANGLADESH   0                    NA                0.2233789   0.2017273   0.2450305
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                0.2349137   0.2104896   0.2593378
9-12 months    CMC-V-BCS-2002   INDIA        0                    NA                0.1956339   0.1714157   0.2198522
9-12 months    GMS-Nepal        NEPAL        1                    NA                0.1404390   0.0774489   0.2034290
9-12 months    GMS-Nepal        NEPAL        0                    NA                0.1395699   0.1259592   0.1531806
9-12 months    IRC              INDIA        1                    NA                0.2139673   0.1955235   0.2324111
9-12 months    IRC              INDIA        0                    NA                0.2161472   0.1933842   0.2389103
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                0.1839144   0.1685546   0.1992743
9-12 months    NIH-Crypto       BANGLADESH   0                    NA                0.2227828   0.2048136   0.2407521
9-12 months    PROVIDE          BANGLADESH   1                    NA                0.1800171   0.1693566   0.1906777
9-12 months    PROVIDE          BANGLADESH   0                    NA                0.1661518   0.1481672   0.1841363
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1584629   0.1377782   0.1791475
12-15 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1446964   0.1262338   0.1631591
12-15 months   GMS-Nepal        NEPAL        1                    NA                0.2124379   0.1407820   0.2840939
12-15 months   GMS-Nepal        NEPAL        0                    NA                0.1754264   0.1615923   0.1892604
12-15 months   IRC              INDIA        1                    NA                0.1927295   0.1753294   0.2101296
12-15 months   IRC              INDIA        0                    NA                0.1642165   0.1450448   0.1833882
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                0.1701572   0.1548862   0.1854282
12-15 months   NIH-Crypto       BANGLADESH   0                    NA                0.1539395   0.1335848   0.1742942
12-15 months   PROVIDE          BANGLADESH   1                    NA                0.1847031   0.1716664   0.1977399
12-15 months   PROVIDE          BANGLADESH   0                    NA                0.1574401   0.1316358   0.1832444
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1717109   0.1480883   0.1953335
15-18 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1377729   0.1207090   0.1548368
15-18 months   GMS-Nepal        NEPAL        1                    NA                0.2159802   0.1441626   0.2877979
15-18 months   GMS-Nepal        NEPAL        0                    NA                0.2374486   0.2212279   0.2536693
15-18 months   IRC              INDIA        1                    NA                0.1687236   0.1510410   0.1864062
15-18 months   IRC              INDIA        0                    NA                0.1530285   0.1317420   0.1743150
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                0.1506981   0.1338622   0.1675339
15-18 months   NIH-Crypto       BANGLADESH   0                    NA                0.1795996   0.1629238   0.1962753
15-18 months   PROVIDE          BANGLADESH   1                    NA                0.1556949   0.1425774   0.1688123
15-18 months   PROVIDE          BANGLADESH   0                    NA                0.1595406   0.1332366   0.1858446
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1338151   0.1067140   0.1609161
18-21 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1362431   0.1188285   0.1536577
18-21 months   GMS-Nepal        NEPAL        1                    NA                0.1069112   0.0173514   0.1964710
18-21 months   GMS-Nepal        NEPAL        0                    NA                0.1405466   0.1237035   0.1573898
18-21 months   IRC              INDIA        1                    NA                0.1606717   0.1416039   0.1797396
18-21 months   IRC              INDIA        0                    NA                0.1536250   0.1349620   0.1722881
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                0.1485909   0.1333071   0.1638747
18-21 months   NIH-Crypto       BANGLADESH   0                    NA                0.1432675   0.1236698   0.1628652
18-21 months   PROVIDE          BANGLADESH   1                    NA                0.1313933   0.1183671   0.1444195
18-21 months   PROVIDE          BANGLADESH   0                    NA                0.1373276   0.1142737   0.1603814
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1545407   0.1337473   0.1753341
21-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1443002   0.1256076   0.1629928
21-24 months   IRC              INDIA        1                    NA                0.1804138   0.1614289   0.1993988
21-24 months   IRC              INDIA        0                    NA                0.1737257   0.1529853   0.1944661
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.1587891   0.1395737   0.1780046
21-24 months   NIH-Crypto       BANGLADESH   0                    NA                0.2004621   0.1811775   0.2197466
21-24 months   PROVIDE          BANGLADESH   1                    NA                0.1419217   0.1293192   0.1545241
21-24 months   PROVIDE          BANGLADESH   0                    NA                0.1421877   0.1149818   0.1693935


### Parameter: E(Y)


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     GMS-Nepal        NEPAL        NA                   NA                0.8225764   0.8047018   0.8404511
0-3 months     IRC              INDIA        NA                   NA                0.7669350   0.7473009   0.7865692
0-3 months     NIH-Crypto       BANGLADESH   NA                   NA                0.8901037   0.8738687   0.9063387
0-3 months     PROVIDE          BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     CMC-V-BCS-2002   INDIA        NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     GMS-Nepal        NEPAL        NA                   NA                0.4936475   0.4789438   0.5083512
3-6 months     IRC              INDIA        NA                   NA                0.4640137   0.4462252   0.4818022
3-6 months     NIH-Crypto       BANGLADESH   NA                   NA                0.5011716   0.4886950   0.5136482
3-6 months     PROVIDE          BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     CMC-V-BCS-2002   INDIA        NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     GMS-Nepal        NEPAL        NA                   NA                0.1893682   0.1763037   0.2024326
6-9 months     IRC              INDIA        NA                   NA                0.2625992   0.2484830   0.2767153
6-9 months     NIH-Crypto       BANGLADESH   NA                   NA                0.2799276   0.2681500   0.2917053
6-9 months     PROVIDE          BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    GMS-Nepal        NEPAL        NA                   NA                0.1395867   0.1262232   0.1529503
9-12 months    IRC              INDIA        NA                   NA                0.2148825   0.2005353   0.2292297
9-12 months    NIH-Crypto       BANGLADESH   NA                   NA                0.1997882   0.1879938   0.2115826
9-12 months    PROVIDE          BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
12-15 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   GMS-Nepal        NEPAL        NA                   NA                0.1761486   0.1625329   0.1897642
12-15 months   IRC              INDIA        NA                   NA                0.1807123   0.1677267   0.1936978
12-15 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1634289   0.1511149   0.1757429
12-15 months   PROVIDE          BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
15-18 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   GMS-Nepal        NEPAL        NA                   NA                0.2370510   0.2211319   0.2529701
15-18 months   IRC              INDIA        NA                   NA                0.1621526   0.1485252   0.1757800
15-18 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1636945   0.1517037   0.1756852
15-18 months   PROVIDE          BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
18-21 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   GMS-Nepal        NEPAL        NA                   NA                0.1399681   0.1233886   0.1565477
18-21 months   IRC              INDIA        NA                   NA                0.1576598   0.1441337   0.1711860
18-21 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1460095   0.1336664   0.1583525
18-21 months   PROVIDE          BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   IRC              INDIA        NA                   NA                0.1775274   0.1635028   0.1915520
21-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1808389   0.1670473   0.1946304
21-24 months   PROVIDE          BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0374277   -0.0842263    0.0093708
0-3 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL        0                    1                 -0.0296686   -0.1035523    0.0442151
0-3 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA        0                    1                 -0.0020089   -0.0416527    0.0376350
0-3 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH   0                    1                  0.0203015   -0.0128946    0.0534976
0-3 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH   0                    1                 -0.0575392   -0.0957953   -0.0192831
3-6 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0379931   -0.0773080    0.0013218
3-6 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL        0                    1                  0.0972335    0.0683030    0.1261641
3-6 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA        0                    1                 -0.0184799   -0.0539544    0.0169946
3-6 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH   0                    1                  0.0035477   -0.0218496    0.0289450
3-6 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH   0                    1                 -0.0501292   -0.0772980   -0.0229604
6-9 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0076027   -0.0406827    0.0254773
6-9 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL        0                    1                 -0.0488953   -0.0818949   -0.0158957
6-9 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA        0                    1                 -0.0068069   -0.0354907    0.0218769
6-9 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH   0                    1                  0.0321427    0.0081805    0.0561049
6-9 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH   0                    1                 -0.0314682   -0.0571758   -0.0057605
9-12 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.0392798   -0.0736754   -0.0048842
9-12 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL        0                    1                 -0.0008691   -0.0653129    0.0635747
9-12 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA        0                    1                  0.0021799   -0.0271173    0.0314772
9-12 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH   0                    1                  0.0388684    0.0152291    0.0625077
9-12 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH   0                    1                 -0.0138654   -0.0347721    0.0070414
12-15 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0137665   -0.0414923    0.0139594
12-15 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL        0                    1                 -0.0370116   -0.1099908    0.0359676
12-15 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA        0                    1                 -0.0285130   -0.0544035   -0.0026225
12-15 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH   0                    1                 -0.0162177   -0.0416640    0.0092287
12-15 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH   0                    1                 -0.0272630   -0.0561736    0.0016475
15-18 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0339380   -0.0630791   -0.0047969
15-18 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL        0                    1                  0.0214684   -0.0521583    0.0950951
15-18 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA        0                    1                 -0.0156951   -0.0433680    0.0119778
15-18 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH   0                    1                  0.0289015    0.0052050    0.0525980
15-18 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH   0                    1                  0.0038457   -0.0255476    0.0332390
18-21 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA        0                    1                  0.0024280   -0.0297858    0.0346419
18-21 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL        0                    1                  0.0336355   -0.0574944    0.1247653
18-21 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA        0                    1                 -0.0070467   -0.0337280    0.0196346
18-21 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH   0                    1                 -0.0053234   -0.0301763    0.0195295
18-21 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH   0                    1                  0.0059343   -0.0205452    0.0324137
21-24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0102405   -0.0382008    0.0177198
21-24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA        0                    1                 -0.0066881   -0.0348056    0.0214294
21-24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0416729    0.0144493    0.0688966
21-24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH   0                    1                  0.0002660   -0.0297170    0.0302491


### Parameter: PAR


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0208057   -0.0468979    0.0052864
0-3 months     GMS-Nepal        NEPAL        1                    NA                -0.0292171   -0.1012545    0.0428203
0-3 months     IRC              INDIA        1                    NA                -0.0008483   -0.0175894    0.0158928
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0078622   -0.0050203    0.0207448
0-3 months     PROVIDE          BANGLADESH   1                    NA                -0.0099795   -0.0168261   -0.0031328
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0217103   -0.0442699    0.0008493
3-6 months     GMS-Nepal        NEPAL        1                    NA                 0.0958576    0.0676291    0.1240861
3-6 months     IRC              INDIA        1                    NA                -0.0078457   -0.0229337    0.0072424
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0014138   -0.0087081    0.0115356
3-6 months     PROVIDE          BANGLADESH   1                    NA                -0.0089248   -0.0139994   -0.0038503
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0043043   -0.0230372    0.0144286
6-9 months     GMS-Nepal        NEPAL        1                    NA                -0.0479835   -0.0801642   -0.0158028
6-9 months     IRC              INDIA        1                    NA                -0.0028759   -0.0149993    0.0092475
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0130029    0.0032164    0.0227895
6-9 months     PROVIDE          BANGLADESH   1                    NA                -0.0056818   -0.0104277   -0.0009358
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.0225829   -0.0424698   -0.0026960
9-12 months    GMS-Nepal        NEPAL        1                    NA                -0.0008522   -0.0636849    0.0619804
9-12 months    IRC              INDIA        1                    NA                 0.0009152   -0.0113856    0.0132161
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0158737    0.0060816    0.0256658
9-12 months    PROVIDE          BANGLADESH   1                    NA                -0.0024855   -0.0062587    0.0012877
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0079961   -0.0241168    0.0081247
12-15 months   GMS-Nepal        NEPAL        1                    NA                -0.0362894   -0.1074458    0.0348670
12-15 months   IRC              INDIA        1                    NA                -0.0120173   -0.0230204   -0.0010141
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0067283   -0.0173080    0.0038515
12-15 months   PROVIDE          BANGLADESH   1                    NA                -0.0046708   -0.0096995    0.0003580
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0195274   -0.0363939   -0.0026609
15-18 months   GMS-Nepal        NEPAL        1                    NA                 0.0210708   -0.0507157    0.0928573
15-18 months   IRC              INDIA        1                    NA                -0.0065710   -0.0181833    0.0050413
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0129964    0.0022609    0.0237319
15-18 months   PROVIDE          BANGLADESH   1                    NA                 0.0006566   -0.0043633    0.0056765
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0014177   -0.0173916    0.0202269
18-21 months   GMS-Nepal        NEPAL        1                    NA                 0.0330570   -0.0557956    0.1219096
18-21 months   IRC              INDIA        1                    NA                -0.0030119   -0.0144215    0.0083977
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0025814   -0.0146357    0.0094729
18-21 months   PROVIDE          BANGLADESH   1                    NA                 0.0010949   -0.0037945    0.0059842
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0060916   -0.0227334    0.0105501
21-24 months   IRC              INDIA        1                    NA                -0.0028865   -0.0150259    0.0092530
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0220497    0.0074996    0.0365998
21-24 months   PROVIDE          BANGLADESH   1                    NA                 0.0000488   -0.0054532    0.0055509
