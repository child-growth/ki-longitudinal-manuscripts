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

**Outcome Variable:** ever_wasted

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

agecat                        studyid          country        cleanck    ever_wasted   n_cell     n
----------------------------  ---------------  -------------  --------  ------------  -------  ----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          1                    0      104   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          1                    1       59   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          0                    0       98   368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA          0                    1      107   368
0-24 months (no birth wast)   GMS-Nepal        NEPAL          1                    0        7   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          1                    1        2   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          0                    0      279   589
0-24 months (no birth wast)   GMS-Nepal        NEPAL          0                    1      301   589
0-24 months (no birth wast)   IRC              INDIA          1                    0      107   399
0-24 months (no birth wast)   IRC              INDIA          1                    1      123   399
0-24 months (no birth wast)   IRC              INDIA          0                    0       84   399
0-24 months (no birth wast)   IRC              INDIA          0                    1       85   399
0-24 months (no birth wast)   MAL-ED           PERU           1                    0        1     2
0-24 months (no birth wast)   MAL-ED           PERU           1                    1        0     2
0-24 months (no birth wast)   MAL-ED           PERU           0                    0        1     2
0-24 months (no birth wast)   MAL-ED           PERU           0                    1        0     2
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   1                    0        2     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   1                    1        0     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   0                    0        1     3
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA   0                    1        0     3
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     1                    0      319   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     1                    1       39   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     0                    0      181   575
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH     0                    1       36   575
0-24 months (no birth wast)   PROVIDE          BANGLADESH     1                    0      471   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     1                    1       90   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     0                    0       94   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH     0                    1       32   687
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          1                    0      117   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          1                    1       40   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          0                    0      125   350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA          0                    1       68   350
0-6 months (no birth wast)    GMS-Nepal        NEPAL          1                    0        7   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          1                    1        1   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          0                    0      456   576
0-6 months (no birth wast)    GMS-Nepal        NEPAL          0                    1      112   576
0-6 months (no birth wast)    IRC              INDIA          1                    0      136   381
0-6 months (no birth wast)    IRC              INDIA          1                    1       86   381
0-6 months (no birth wast)    IRC              INDIA          0                    0      115   381
0-6 months (no birth wast)    IRC              INDIA          0                    1       44   381
0-6 months (no birth wast)    MAL-ED           PERU           1                    0        1     2
0-6 months (no birth wast)    MAL-ED           PERU           1                    1        0     2
0-6 months (no birth wast)    MAL-ED           PERU           0                    0        1     2
0-6 months (no birth wast)    MAL-ED           PERU           0                    1        0     2
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   1                    0        2     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   1                    1        0     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   0                    0        1     3
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA   0                    1        0     3
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     1                    0      351   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     1                    1        4   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     0                    0      208   572
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH     0                    1        9   572
0-6 months (no birth wast)    PROVIDE          BANGLADESH     1                    0      530   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     1                    1       27   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     0                    0      116   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH     0                    1       10   683
6-24 months                   CMC-V-BCS-2002   INDIA          1                    0      128   373
6-24 months                   CMC-V-BCS-2002   INDIA          1                    1       35   373
6-24 months                   CMC-V-BCS-2002   INDIA          0                    0      146   373
6-24 months                   CMC-V-BCS-2002   INDIA          0                    1       64   373
6-24 months                   GMS-Nepal        NEPAL          1                    0        6   529
6-24 months                   GMS-Nepal        NEPAL          1                    1        2   529
6-24 months                   GMS-Nepal        NEPAL          0                    0      269   529
6-24 months                   GMS-Nepal        NEPAL          0                    1      252   529
6-24 months                   IRC              INDIA          1                    0      166   400
6-24 months                   IRC              INDIA          1                    1       65   400
6-24 months                   IRC              INDIA          0                    0      110   400
6-24 months                   IRC              INDIA          0                    1       59   400
6-24 months                   MAL-ED           SOUTH AFRICA   1                    0        1     1
6-24 months                   MAL-ED           SOUTH AFRICA   1                    1        0     1
6-24 months                   MAL-ED           SOUTH AFRICA   0                    0        0     1
6-24 months                   MAL-ED           SOUTH AFRICA   0                    1        0     1
6-24 months                   NIH-Crypto       BANGLADESH     1                    0      306   559
6-24 months                   NIH-Crypto       BANGLADESH     1                    1       37   559
6-24 months                   NIH-Crypto       BANGLADESH     0                    0      186   559
6-24 months                   NIH-Crypto       BANGLADESH     0                    1       30   559
6-24 months                   PROVIDE          BANGLADESH     1                    0      437   615
6-24 months                   PROVIDE          BANGLADESH     1                    1       71   615
6-24 months                   PROVIDE          BANGLADESH     0                    0       79   615
6-24 months                   PROVIDE          BANGLADESH     0                    1       28   615


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/8b34716b-2c96-4cd1-a3a9-f52f76b52e82/a53de665-60fb-4c4b-be60-7c19d3da4889/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8b34716b-2c96-4cd1-a3a9-f52f76b52e82/a53de665-60fb-4c4b-be60-7c19d3da4889/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8b34716b-2c96-4cd1-a3a9-f52f76b52e82/a53de665-60fb-4c4b-be60-7c19d3da4889/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8b34716b-2c96-4cd1-a3a9-f52f76b52e82/a53de665-60fb-4c4b-be60-7c19d3da4889/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                0.3619632   0.2880877   0.4358387
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        0                    NA                0.5219512   0.4534792   0.5904232
0-24 months (no birth wast)   IRC              INDIA        1                    NA                0.5347826   0.4702401   0.5993251
0-24 months (no birth wast)   IRC              INDIA        0                    NA                0.5029586   0.4274820   0.5784351
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                0.1089385   0.0766366   0.1412405
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   0                    NA                0.1658986   0.1163619   0.2154353
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                0.1604278   0.1300363   0.1908193
0-24 months (no birth wast)   PROVIDE          BANGLADESH   0                    NA                0.2539683   0.1779098   0.3300267
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                0.2547771   0.1865208   0.3230334
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        0                    NA                0.3523316   0.2848411   0.4198221
0-6 months (no birth wast)    IRC              INDIA        1                    NA                0.3873874   0.3232209   0.4515538
0-6 months (no birth wast)    IRC              INDIA        0                    NA                0.2767296   0.2070992   0.3463599
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    NA                0.0484740   0.0306254   0.0663225
0-6 months (no birth wast)    PROVIDE          BANGLADESH   0                    NA                0.0793651   0.0321327   0.1265974
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                0.2147239   0.1516008   0.2778471
6-24 months                   CMC-V-BCS-2002   INDIA        0                    NA                0.3047619   0.2424217   0.3671022
6-24 months                   IRC              INDIA        1                    NA                0.2813853   0.2233243   0.3394463
6-24 months                   IRC              INDIA        0                    NA                0.3491124   0.2771536   0.4210712
6-24 months                   NIH-Crypto       BANGLADESH   1                    NA                0.1078717   0.0750125   0.1407309
6-24 months                   NIH-Crypto       BANGLADESH   0                    NA                0.1388889   0.0927281   0.1850497
6-24 months                   PROVIDE          BANGLADESH   1                    NA                0.1397638   0.1095868   0.1699408
6-24 months                   PROVIDE          BANGLADESH   0                    NA                0.2616822   0.1783298   0.3450347


### Parameter: E(Y)


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   IRC              INDIA        NA                   NA                0.5213033   0.4722258   0.5703807
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   NA                   NA                0.1304348   0.1028836   0.1579859
0-24 months (no birth wast)   PROVIDE          BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    IRC              INDIA        NA                   NA                0.3412073   0.2935379   0.3888768
0-6 months (no birth wast)    PROVIDE          BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
6-24 months                   CMC-V-BCS-2002   INDIA        NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   IRC              INDIA        NA                   NA                0.3100000   0.2646197   0.3553803
6-24 months                   NIH-Crypto       BANGLADESH   NA                   NA                0.1198569   0.0929081   0.1468057
6-24 months                   PROVIDE          BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447


### Parameter: RR


agecat                        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        0                    1                 1.4420008   1.1313491   1.8379530
0-24 months (no birth wast)   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA        0                    1                 0.9404917   0.7757474   1.1402223
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   0                    1                 1.5228642   0.9997828   2.3196193
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH   0                    1                 1.5830688   1.1107087   2.2563134
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        0                    1                 1.3829016   0.9948545   1.9223080
0-6 months (no birth wast)    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA        0                    1                 0.7143484   0.5285442   0.9654702
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH   0                    1                 1.6372722   0.8131878   3.2964837
6-24 months                   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA        0                    1                 1.4193197   0.9920714   2.0305680
6-24 months                   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA        0                    1                 1.2406919   0.9268315   1.6608372
6-24 months                   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto       BANGLADESH   0                    1                 1.2875375   0.8202858   2.0209456
6-24 months                   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE          BANGLADESH   0                    1                 1.8723180   1.2742643   2.7510578


### Parameter: PAR


agecat                        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                 0.0891238    0.0324260    0.1458215
0-24 months (no birth wast)   IRC              INDIA        1                    NA                -0.0134794   -0.0555713    0.0286126
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                 0.0214962   -0.0009359    0.0439284
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                 0.0171559    0.0018916    0.0324202
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                 0.0537944    0.0006191    0.1069697
0-6 months (no birth wast)    IRC              INDIA        1                    NA                -0.0461800   -0.0860743   -0.0062857
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    NA                 0.0056988   -0.0036593    0.0150569
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                 0.0506916    0.0005375    0.1008457
6-24 months                   IRC              INDIA        1                    NA                 0.0286147   -0.0105880    0.0678174
6-24 months                   NIH-Crypto       BANGLADESH   1                    NA                 0.0119852   -0.0099450    0.0339153
6-24 months                   PROVIDE          BANGLADESH   1                    NA                 0.0212118    0.0053614    0.0370623


### Parameter: PAF


agecat                        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA        1                    NA                 0.1975756    0.0607694    0.3144549
0-24 months (no birth wast)   IRC              INDIA        1                    NA                -0.0258570   -0.1099123    0.0518326
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH   1                    NA                 0.1648045   -0.0228987    0.3180639
0-24 months (no birth wast)   PROVIDE          BANGLADESH   1                    NA                 0.0966073    0.0073785    0.1778152
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA        1                    NA                 0.1743336   -0.0165907    0.3294007
0-6 months (no birth wast)    IRC              INDIA        1                    NA                -0.1353430   -0.2587946   -0.0239985
0-6 months (no birth wast)    PROVIDE          BANGLADESH   1                    NA                 0.1051968   -0.0818986    0.2599372
6-24 months                   CMC-V-BCS-2002   INDIA        1                    NA                 0.1909897   -0.0204161    0.3585972
6-24 months                   IRC              INDIA        1                    NA                 0.0923055   -0.0432347    0.2102360
6-24 months                   NIH-Crypto       BANGLADESH   1                    NA                 0.0999956   -0.1016189    0.2647114
6-24 months                   PROVIDE          BANGLADESH   1                    NA                 0.1317705    0.0296712    0.2231267
