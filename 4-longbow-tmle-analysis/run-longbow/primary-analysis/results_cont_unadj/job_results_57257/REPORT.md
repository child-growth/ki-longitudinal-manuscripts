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

**Outcome Variable:** y_rate_len

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
0-3 months     CMC-V-BCS-2002   INDIA          1              40    88
0-3 months     CMC-V-BCS-2002   INDIA          0              48    88
0-3 months     GMS-Nepal        NEPAL          1               6   460
0-3 months     GMS-Nepal        NEPAL          0             454   460
0-3 months     IRC              INDIA          1             212   369
0-3 months     IRC              INDIA          0             157   369
0-3 months     MAL-ED           PERU           1               1     1
0-3 months     MAL-ED           PERU           0               0     1
0-3 months     MAL-ED           SOUTH AFRICA   1               1     2
0-3 months     MAL-ED           SOUTH AFRICA   0               1     2
0-3 months     NIH-Crypto       BANGLADESH     1             334   547
0-3 months     NIH-Crypto       BANGLADESH     0             213   547
0-3 months     PROVIDE          BANGLADESH     1             529   640
0-3 months     PROVIDE          BANGLADESH     0             111   640
3-6 months     CMC-V-BCS-2002   INDIA          1             133   307
3-6 months     CMC-V-BCS-2002   INDIA          0             174   307
3-6 months     GMS-Nepal        NEPAL          1               6   424
3-6 months     GMS-Nepal        NEPAL          0             418   424
3-6 months     IRC              INDIA          1             224   390
3-6 months     IRC              INDIA          0             166   390
3-6 months     MAL-ED           SOUTH AFRICA   1               1     1
3-6 months     MAL-ED           SOUTH AFRICA   0               0     1
3-6 months     NIH-Crypto       BANGLADESH     1             315   527
3-6 months     NIH-Crypto       BANGLADESH     0             212   527
3-6 months     PROVIDE          BANGLADESH     1             492   598
3-6 months     PROVIDE          BANGLADESH     0             106   598
6-9 months     CMC-V-BCS-2002   INDIA          1             136   313
6-9 months     CMC-V-BCS-2002   INDIA          0             177   313
6-9 months     GMS-Nepal        NEPAL          1               8   433
6-9 months     GMS-Nepal        NEPAL          0             425   433
6-9 months     IRC              INDIA          1             230   398
6-9 months     IRC              INDIA          0             168   398
6-9 months     MAL-ED           SOUTH AFRICA   1               1     1
6-9 months     MAL-ED           SOUTH AFRICA   0               0     1
6-9 months     NIH-Crypto       BANGLADESH     1             311   525
6-9 months     NIH-Crypto       BANGLADESH     0             214   525
6-9 months     PROVIDE          BANGLADESH     1             462   565
6-9 months     PROVIDE          BANGLADESH     0             103   565
9-12 months    CMC-V-BCS-2002   INDIA          1             132   317
9-12 months    CMC-V-BCS-2002   INDIA          0             185   317
9-12 months    GMS-Nepal        NEPAL          1               8   424
9-12 months    GMS-Nepal        NEPAL          0             416   424
9-12 months    IRC              INDIA          1             227   391
9-12 months    IRC              INDIA          0             164   391
9-12 months    MAL-ED           SOUTH AFRICA   1               1     1
9-12 months    MAL-ED           SOUTH AFRICA   0               0     1
9-12 months    NIH-Crypto       BANGLADESH     1             304   518
9-12 months    NIH-Crypto       BANGLADESH     0             214   518
9-12 months    PROVIDE          BANGLADESH     1             464   566
9-12 months    PROVIDE          BANGLADESH     0             102   566
12-15 months   CMC-V-BCS-2002   INDIA          1             136   329
12-15 months   CMC-V-BCS-2002   INDIA          0             193   329
12-15 months   GMS-Nepal        NEPAL          1               8   423
12-15 months   GMS-Nepal        NEPAL          0             415   423
12-15 months   IRC              INDIA          1             220   380
12-15 months   IRC              INDIA          0             160   380
12-15 months   MAL-ED           SOUTH AFRICA   1               1     1
12-15 months   MAL-ED           SOUTH AFRICA   0               0     1
12-15 months   NIH-Crypto       BANGLADESH     1             295   507
12-15 months   NIH-Crypto       BANGLADESH     0             212   507
12-15 months   PROVIDE          BANGLADESH     1             441   532
12-15 months   PROVIDE          BANGLADESH     0              91   532
15-18 months   CMC-V-BCS-2002   INDIA          1             135   321
15-18 months   CMC-V-BCS-2002   INDIA          0             186   321
15-18 months   GMS-Nepal        NEPAL          1               8   434
15-18 months   GMS-Nepal        NEPAL          0             426   434
15-18 months   IRC              INDIA          1             217   374
15-18 months   IRC              INDIA          0             157   374
15-18 months   MAL-ED           SOUTH AFRICA   1               1     1
15-18 months   MAL-ED           SOUTH AFRICA   0               0     1
15-18 months   NIH-Crypto       BANGLADESH     1             256   466
15-18 months   NIH-Crypto       BANGLADESH     0             210   466
15-18 months   PROVIDE          BANGLADESH     1             438   528
15-18 months   PROVIDE          BANGLADESH     0              90   528
18-21 months   CMC-V-BCS-2002   INDIA          1             127   305
18-21 months   CMC-V-BCS-2002   INDIA          0             178   305
18-21 months   GMS-Nepal        NEPAL          1               7   406
18-21 months   GMS-Nepal        NEPAL          0             399   406
18-21 months   IRC              INDIA          1             212   371
18-21 months   IRC              INDIA          0             159   371
18-21 months   MAL-ED           SOUTH AFRICA   1               1     1
18-21 months   MAL-ED           SOUTH AFRICA   0               0     1
18-21 months   NIH-Crypto       BANGLADESH     1             222   431
18-21 months   NIH-Crypto       BANGLADESH     0             209   431
18-21 months   PROVIDE          BANGLADESH     1             441   541
18-21 months   PROVIDE          BANGLADESH     0             100   541
21-24 months   CMC-V-BCS-2002   INDIA          1             125   308
21-24 months   CMC-V-BCS-2002   INDIA          0             183   308
21-24 months   GMS-Nepal        NEPAL          1               4   310
21-24 months   GMS-Nepal        NEPAL          0             306   310
21-24 months   IRC              INDIA          1             216   380
21-24 months   IRC              INDIA          0             164   380
21-24 months   MAL-ED           SOUTH AFRICA   1               1     1
21-24 months   MAL-ED           SOUTH AFRICA   0               0     1
21-24 months   NIH-Crypto       BANGLADESH     1             184   393
21-24 months   NIH-Crypto       BANGLADESH     0             209   393
21-24 months   PROVIDE          BANGLADESH     1             387   471
21-24 months   PROVIDE          BANGLADESH     0              84   471


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
![](/tmp/50781c0e-d9d0-44b2-a0e8-ce13fc06ebb9/59c8b3b4-ca08-4e7f-bd07-4fcc7b7cae24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/50781c0e-d9d0-44b2-a0e8-ce13fc06ebb9/59c8b3b4-ca08-4e7f-bd07-4fcc7b7cae24/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/50781c0e-d9d0-44b2-a0e8-ce13fc06ebb9/59c8b3b4-ca08-4e7f-bd07-4fcc7b7cae24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                3.7667853   3.4830196   4.0505511
0-3 months     CMC-V-BCS-2002   INDIA        0                    NA                3.2046894   2.9056702   3.5037085
0-3 months     GMS-Nepal        NEPAL        1                    NA                4.0267398   3.8145010   4.2389786
0-3 months     GMS-Nepal        NEPAL        0                    NA                3.5890576   3.5338399   3.6442753
0-3 months     IRC              INDIA        1                    NA                3.3065344   3.1625748   3.4504940
0-3 months     IRC              INDIA        0                    NA                2.9292115   2.7578029   3.1006201
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                3.2298846   3.1742841   3.2854852
0-3 months     NIH-Crypto       BANGLADESH   0                    NA                2.9921810   2.9435414   3.0408205
0-3 months     PROVIDE          BANGLADESH   1                    NA                3.2729429   3.2325979   3.3132879
0-3 months     PROVIDE          BANGLADESH   0                    NA                3.1849464   3.0936901   3.2762028
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                1.8445040   1.6964825   1.9925255
3-6 months     CMC-V-BCS-2002   INDIA        0                    NA                1.7726660   1.6356257   1.9097063
3-6 months     GMS-Nepal        NEPAL        1                    NA                1.2139650   1.0591458   1.3687842
3-6 months     GMS-Nepal        NEPAL        0                    NA                1.7068916   1.6642904   1.7494928
3-6 months     IRC              INDIA        1                    NA                1.9091738   1.8145918   2.0037558
3-6 months     IRC              INDIA        0                    NA                1.8424439   1.7603966   1.9244912
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                1.9344184   1.8856905   1.9831463
3-6 months     NIH-Crypto       BANGLADESH   0                    NA                2.1286478   2.0540579   2.2032376
3-6 months     PROVIDE          BANGLADESH   1                    NA                1.9738979   1.9354749   2.0123210
3-6 months     PROVIDE          BANGLADESH   0                    NA                1.9279072   1.8596207   1.9961937
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                1.2300818   1.1060763   1.3540873
6-9 months     CMC-V-BCS-2002   INDIA        0                    NA                1.2075464   1.1090073   1.3060855
6-9 months     GMS-Nepal        NEPAL        1                    NA                1.3515781   1.1725495   1.5306067
6-9 months     GMS-Nepal        NEPAL        0                    NA                1.3140376   1.2691138   1.3589614
6-9 months     IRC              INDIA        1                    NA                1.3772629   1.3097258   1.4448000
6-9 months     IRC              INDIA        0                    NA                1.3497552   1.2842467   1.4152636
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                1.4062592   1.3597295   1.4527888
6-9 months     NIH-Crypto       BANGLADESH   0                    NA                1.2750502   1.2253991   1.3247013
6-9 months     PROVIDE          BANGLADESH   1                    NA                1.3010098   1.2730891   1.3289305
6-9 months     PROVIDE          BANGLADESH   0                    NA                1.1990283   1.1428086   1.2552481
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                0.9480654   0.8498165   1.0463143
9-12 months    CMC-V-BCS-2002   INDIA        0                    NA                0.8648863   0.7724470   0.9573257
9-12 months    GMS-Nepal        NEPAL        1                    NA                1.1461261   1.0720811   1.2201711
9-12 months    GMS-Nepal        NEPAL        0                    NA                1.0011032   0.9653508   1.0368557
9-12 months    IRC              INDIA        1                    NA                1.0997657   1.0456039   1.1539275
9-12 months    IRC              INDIA        0                    NA                1.1550029   1.0970899   1.2129160
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                1.1081579   1.0674861   1.1488296
9-12 months    NIH-Crypto       BANGLADESH   0                    NA                1.1473198   1.1033350   1.1913046
9-12 months    PROVIDE          BANGLADESH   1                    NA                1.0668363   1.0363335   1.0973390
9-12 months    PROVIDE          BANGLADESH   0                    NA                0.9732726   0.9197977   1.0267476
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                0.8999063   0.7938439   1.0059686
12-15 months   CMC-V-BCS-2002   INDIA        0                    NA                0.8205817   0.7286008   0.9125627
12-15 months   GMS-Nepal        NEPAL        1                    NA                0.9345104   0.8314399   1.0375809
12-15 months   GMS-Nepal        NEPAL        0                    NA                0.8742379   0.8427187   0.9057571
12-15 months   IRC              INDIA        1                    NA                0.9457616   0.8859983   1.0055249
12-15 months   IRC              INDIA        0                    NA                0.9734796   0.9154288   1.0315303
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                0.9799791   0.9420406   1.0179177
12-15 months   NIH-Crypto       BANGLADESH   0                    NA                0.9793670   0.9365871   1.0221470
12-15 months   PROVIDE          BANGLADESH   1                    NA                0.9758930   0.9468976   1.0048884
12-15 months   PROVIDE          BANGLADESH   0                    NA                0.8815188   0.8237914   0.9392462
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                0.7890603   0.6788335   0.8992870
15-18 months   CMC-V-BCS-2002   INDIA        0                    NA                0.6938877   0.6211245   0.7666508
15-18 months   GMS-Nepal        NEPAL        1                    NA                0.5938125   0.5084972   0.6791279
15-18 months   GMS-Nepal        NEPAL        0                    NA                0.7611989   0.7229049   0.7994929
15-18 months   IRC              INDIA        1                    NA                0.8618767   0.8039429   0.9198105
15-18 months   IRC              INDIA        0                    NA                0.8658871   0.8142950   0.9174793
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                0.9077237   0.8723230   0.9431245
15-18 months   NIH-Crypto       BANGLADESH   0                    NA                0.9436571   0.9045698   0.9827445
15-18 months   PROVIDE          BANGLADESH   1                    NA                0.8610050   0.8344517   0.8875583
15-18 months   PROVIDE          BANGLADESH   0                    NA                0.8322279   0.7753321   0.8891237
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                0.7071820   0.6032625   0.8111015
18-21 months   CMC-V-BCS-2002   INDIA        0                    NA                0.6948620   0.6146034   0.7751205
18-21 months   GMS-Nepal        NEPAL        1                    NA                0.8652948   0.7802558   0.9503338
18-21 months   GMS-Nepal        NEPAL        0                    NA                0.9075162   0.8701345   0.9448979
18-21 months   IRC              INDIA        1                    NA                0.7824952   0.7297810   0.8352094
18-21 months   IRC              INDIA        0                    NA                0.7224758   0.6666444   0.7783072
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                0.7959424   0.7598608   0.8320241
18-21 months   NIH-Crypto       BANGLADESH   0                    NA                0.8246046   0.7872628   0.8619463
18-21 months   PROVIDE          BANGLADESH   1                    NA                0.8432154   0.8172540   0.8691768
18-21 months   PROVIDE          BANGLADESH   0                    NA                0.8222371   0.7612326   0.8832415
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.6907861   0.5797808   0.8017914
21-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.7178178   0.6477323   0.7879034
21-24 months   IRC              INDIA        1                    NA                0.7235019   0.6677553   0.7792485
21-24 months   IRC              INDIA        0                    NA                0.6844532   0.6216656   0.7472408
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.8086764   0.7672377   0.8501151
21-24 months   NIH-Crypto       BANGLADESH   0                    NA                0.8200986   0.7855538   0.8546433
21-24 months   PROVIDE          BANGLADESH   1                    NA                0.7669422   0.7392503   0.7946341
21-24 months   PROVIDE          BANGLADESH   0                    NA                0.7456174   0.6825297   0.8087050


### Parameter: E(Y)


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     GMS-Nepal        NEPAL        NA                   NA                3.5947665   3.5404780   3.6490550
0-3 months     IRC              INDIA        NA                   NA                3.1459932   3.0340880   3.2578984
0-3 months     NIH-Crypto       BANGLADESH   NA                   NA                3.1373236   3.0972506   3.1773966
0-3 months     PROVIDE          BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CMC-V-BCS-2002   INDIA        NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     GMS-Nepal        NEPAL        NA                   NA                1.6999162   1.6578328   1.7419997
3-6 months     IRC              INDIA        NA                   NA                1.8807708   1.8161067   1.9454349
3-6 months     NIH-Crypto       BANGLADESH   NA                   NA                2.0125524   1.9699507   2.0551541
3-6 months     PROVIDE          BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     CMC-V-BCS-2002   INDIA        NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     GMS-Nepal        NEPAL        NA                   NA                1.3147312   1.2706998   1.3587625
6-9 months     IRC              INDIA        NA                   NA                1.3656516   1.3178011   1.4135021
6-9 months     NIH-Crypto       BANGLADESH   NA                   NA                1.3527759   1.3181375   1.3874142
6-9 months     PROVIDE          BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    GMS-Nepal        NEPAL        NA                   NA                1.0038395   0.9688811   1.0387978
9-12 months    IRC              INDIA        NA                   NA                1.1229343   1.0831083   1.1627603
9-12 months    NIH-Crypto       BANGLADESH   NA                   NA                1.1243367   1.0942919   1.1543816
9-12 months    PROVIDE          BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
12-15 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   GMS-Nepal        NEPAL        NA                   NA                0.8753778   0.8445288   0.9062268
12-15 months   IRC              INDIA        NA                   NA                0.9574323   0.9150475   0.9998172
12-15 months   NIH-Crypto       BANGLADESH   NA                   NA                0.9797232   0.9513105   1.0081359
12-15 months   PROVIDE          BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
15-18 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   GMS-Nepal        NEPAL        NA                   NA                0.7581134   0.7206558   0.7955710
15-18 months   IRC              INDIA        NA                   NA                0.8635602   0.8235728   0.9035477
15-18 months   NIH-Crypto       BANGLADESH   NA                   NA                0.9239169   0.8976277   0.9502061
15-18 months   PROVIDE          BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
18-21 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   GMS-Nepal        NEPAL        NA                   NA                0.9067882   0.8702752   0.9433012
18-21 months   IRC              INDIA        NA                   NA                0.7567726   0.7181843   0.7953609
18-21 months   NIH-Crypto       BANGLADESH   NA                   NA                0.8098412   0.7838581   0.8358244
18-21 months   PROVIDE          BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   IRC              INDIA        NA                   NA                0.7066493   0.6649098   0.7483888
21-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.8147508   0.7880257   0.8414758
21-24 months   PROVIDE          BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.5620960   -0.9743283   -0.1498637
0-3 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL        0                    1                 -0.4376822   -0.6569863   -0.2183781
0-3 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA        0                    1                 -0.3773229   -0.6011650   -0.1534808
0-3 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH   0                    1                 -0.2377037   -0.3115767   -0.1638306
0-3 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH   0                    1                 -0.0879965   -0.1877735    0.0117805
3-6 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0718380   -0.2735566    0.1298807
3-6 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL        0                    1                  0.4929266    0.3323531    0.6535001
3-6 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA        0                    1                 -0.0667299   -0.1919398    0.0584800
3-6 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH   0                    1                  0.1942293    0.1051336    0.2833251
3-6 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH   0                    1                 -0.0459907   -0.1243449    0.0323635
6-9 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0225354   -0.1809252    0.1358544
6-9 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL        0                    1                 -0.0375405   -0.2221194    0.1470385
6-9 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA        0                    1                 -0.0275077   -0.1215960    0.0665807
6-9 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH   0                    1                 -0.1312090   -0.1992548   -0.0631631
6-9 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH   0                    1                 -0.1019815   -0.1647527   -0.0392102
9-12 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.0831791   -0.2180786    0.0517204
9-12 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL        0                    1                 -0.1450229   -0.2272476   -0.0627982
9-12 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA        0                    1                  0.0552372   -0.0240561    0.1345305
9-12 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH   0                    1                  0.0391620   -0.0207451    0.0990690
9-12 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH   0                    1                 -0.0935637   -0.1551265   -0.0320008
12-15 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0793245   -0.2197158    0.0610667
12-15 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL        0                    1                 -0.0602725   -0.1680547    0.0475096
12-15 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA        0                    1                  0.0277180   -0.0555979    0.1110339
12-15 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH   0                    1                 -0.0006121   -0.0577913    0.0565670
12-15 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH   0                    1                 -0.0943742   -0.1589744   -0.0297740
15-18 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0951726   -0.2272499    0.0369047
15-18 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL        0                    1                  0.1673863    0.0738709    0.2609018
15-18 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA        0                    1                  0.0040104   -0.0735658    0.0815867
15-18 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH   0                    1                  0.0359334   -0.0168021    0.0886689
15-18 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH   0                    1                 -0.0287771   -0.0915642    0.0340099
18-21 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0123200   -0.1436239    0.1189838
18-21 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL        0                    1                  0.0422214   -0.0506711    0.1351139
18-21 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA        0                    1                 -0.0600194   -0.1368044    0.0167655
18-21 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH   0                    1                  0.0286621   -0.0232637    0.0805879
18-21 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH   0                    1                 -0.0209783   -0.0872771    0.0453205
21-24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA        0                    1                  0.0270317   -0.1042473    0.1583106
21-24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA        0                    1                 -0.0390487   -0.1230128    0.0449154
21-24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0114221   -0.0425270    0.0653713
21-24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH   0                    1                 -0.0213248   -0.0902225    0.0475729


### Parameter: PAR


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.3065978   -0.5390159   -0.0741797
0-3 months     GMS-Nepal        NEPAL        1                    NA                -0.4319733   -0.6458430   -0.2181035
0-3 months     IRC              INDIA        1                    NA                -0.1605412   -0.2576688   -0.0634136
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                -0.0925610   -0.1229255   -0.0621966
0-3 months     PROVIDE          BANGLADESH   1                    NA                -0.0152619   -0.0327587    0.0022349
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0407160   -0.1551147    0.0736827
3-6 months     GMS-Nepal        NEPAL        1                    NA                 0.4859512    0.3292938    0.6426086
3-6 months     IRC              INDIA        1                    NA                -0.0284030   -0.0817982    0.0249922
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0781340    0.0413803    0.1148877
3-6 months     PROVIDE          BANGLADESH   1                    NA                -0.0081522   -0.0221123    0.0058079
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0127437   -0.1023209    0.0768336
6-9 months     GMS-Nepal        NEPAL        1                    NA                -0.0368469   -0.2168120    0.1431182
6-9 months     IRC              INDIA        1                    NA                -0.0116113   -0.0513495    0.0281269
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                -0.0534833   -0.0817641   -0.0252025
6-9 months     PROVIDE          BANGLADESH   1                    NA                -0.0185913   -0.0304870   -0.0066956
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.0485430   -0.1273996    0.0303136
9-12 months    GMS-Nepal        NEPAL        1                    NA                -0.1422866   -0.2224777   -0.0620955
9-12 months    IRC              INDIA        1                    NA                 0.0231686   -0.0101998    0.0565370
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0161789   -0.0086261    0.0409839
9-12 months    PROVIDE          BANGLADESH   1                    NA                -0.0168613   -0.0283451   -0.0053775
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0465338   -0.1289995    0.0359318
12-15 months   GMS-Nepal        NEPAL        1                    NA                -0.0591326   -0.1642231    0.0459579
12-15 months   IRC              INDIA        1                    NA                 0.0116707   -0.0234367    0.0467782
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0002560   -0.0241652    0.0236533
12-15 months   PROVIDE          BANGLADESH   1                    NA                -0.0161430   -0.0275989   -0.0046870
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0551467   -0.1318504    0.0215570
15-18 months   GMS-Nepal        NEPAL        1                    NA                 0.1643009    0.0730987    0.2555031
15-18 months   IRC              INDIA        1                    NA                 0.0016835   -0.0308825    0.0342496
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0161932   -0.0076273    0.0400136
15-18 months   PROVIDE          BANGLADESH   1                    NA                -0.0049052   -0.0156473    0.0058369
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0071900   -0.0838229    0.0694428
18-21 months   GMS-Nepal        NEPAL        1                    NA                 0.0414934   -0.0490784    0.1320652
18-21 months   IRC              INDIA        1                    NA                -0.0257226   -0.0587693    0.0073241
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0138988   -0.0113174    0.0391150
18-21 months   PROVIDE          BANGLADESH   1                    NA                -0.0038777   -0.0161518    0.0083964
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0160610   -0.0619533    0.0940753
21-24 months   IRC              INDIA        1                    NA                -0.0168526   -0.0531420    0.0194368
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0060744   -0.0226217    0.0347704
21-24 months   PROVIDE          BANGLADESH   1                    NA                -0.0038032   -0.0161128    0.0085065
