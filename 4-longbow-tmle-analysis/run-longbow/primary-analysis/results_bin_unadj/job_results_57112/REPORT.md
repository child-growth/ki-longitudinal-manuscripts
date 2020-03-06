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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid     country                        predfeed3    pers_wast   n_cell     n
------------  ----------  -----------------------------  ----------  ----------  -------  ----
0-24 months   EE          PAKISTAN                       1                    0       38    39
0-24 months   EE          PAKISTAN                       1                    1        1    39
0-24 months   EE          PAKISTAN                       0                    0        0    39
0-24 months   EE          PAKISTAN                       0                    1        0    39
0-24 months   GMS-Nepal   NEPAL                          1                    0      326   457
0-24 months   GMS-Nepal   NEPAL                          1                    1       54   457
0-24 months   GMS-Nepal   NEPAL                          0                    0       63   457
0-24 months   GMS-Nepal   NEPAL                          0                    1       14   457
0-24 months   MAL-ED      BANGLADESH                     1                    0      188   240
0-24 months   MAL-ED      BANGLADESH                     1                    1        9   240
0-24 months   MAL-ED      BANGLADESH                     0                    0       40   240
0-24 months   MAL-ED      BANGLADESH                     0                    1        3   240
0-24 months   MAL-ED      BRAZIL                         1                    0       94   195
0-24 months   MAL-ED      BRAZIL                         1                    1        2   195
0-24 months   MAL-ED      BRAZIL                         0                    0       99   195
0-24 months   MAL-ED      BRAZIL                         0                    1        0   195
0-24 months   MAL-ED      INDIA                          1                    0      137   215
0-24 months   MAL-ED      INDIA                          1                    1       13   215
0-24 months   MAL-ED      INDIA                          0                    0       60   215
0-24 months   MAL-ED      INDIA                          0                    1        5   215
0-24 months   MAL-ED      NEPAL                          1                    0      112   228
0-24 months   MAL-ED      NEPAL                          1                    1        2   228
0-24 months   MAL-ED      NEPAL                          0                    0      112   228
0-24 months   MAL-ED      NEPAL                          0                    1        2   228
0-24 months   MAL-ED      PERU                           1                    0      181   281
0-24 months   MAL-ED      PERU                           1                    1        1   281
0-24 months   MAL-ED      PERU                           0                    0       99   281
0-24 months   MAL-ED      PERU                           0                    1        0   281
0-24 months   MAL-ED      SOUTH AFRICA                   1                    0       69   264
0-24 months   MAL-ED      SOUTH AFRICA                   1                    1        1   264
0-24 months   MAL-ED      SOUTH AFRICA                   0                    0      193   264
0-24 months   MAL-ED      SOUTH AFRICA                   0                    1        1   264
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    0       64   218
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1        0   218
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    0      154   218
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1        0   218
0-6 months    EE          PAKISTAN                       1                    0       35    38
0-6 months    EE          PAKISTAN                       1                    1        3    38
0-6 months    EE          PAKISTAN                       0                    0        0    38
0-6 months    EE          PAKISTAN                       0                    1        0    38
0-6 months    GMS-Nepal   NEPAL                          1                    0      338   453
0-6 months    GMS-Nepal   NEPAL                          1                    1       41   453
0-6 months    GMS-Nepal   NEPAL                          0                    0       64   453
0-6 months    GMS-Nepal   NEPAL                          0                    1       10   453
0-6 months    MAL-ED      BANGLADESH                     1                    0      193   240
0-6 months    MAL-ED      BANGLADESH                     1                    1        4   240
0-6 months    MAL-ED      BANGLADESH                     0                    0       40   240
0-6 months    MAL-ED      BANGLADESH                     0                    1        3   240
0-6 months    MAL-ED      BRAZIL                         1                    0       95   195
0-6 months    MAL-ED      BRAZIL                         1                    1        1   195
0-6 months    MAL-ED      BRAZIL                         0                    0       99   195
0-6 months    MAL-ED      BRAZIL                         0                    1        0   195
0-6 months    MAL-ED      INDIA                          1                    0      142   215
0-6 months    MAL-ED      INDIA                          1                    1        8   215
0-6 months    MAL-ED      INDIA                          0                    0       55   215
0-6 months    MAL-ED      INDIA                          0                    1       10   215
0-6 months    MAL-ED      NEPAL                          1                    0      113   228
0-6 months    MAL-ED      NEPAL                          1                    1        1   228
0-6 months    MAL-ED      NEPAL                          0                    0      109   228
0-6 months    MAL-ED      NEPAL                          0                    1        5   228
0-6 months    MAL-ED      PERU                           1                    0      182   281
0-6 months    MAL-ED      PERU                           1                    1        0   281
0-6 months    MAL-ED      PERU                           0                    0       99   281
0-6 months    MAL-ED      PERU                           0                    1        0   281
0-6 months    MAL-ED      SOUTH AFRICA                   1                    0       69   263
0-6 months    MAL-ED      SOUTH AFRICA                   1                    1        1   263
0-6 months    MAL-ED      SOUTH AFRICA                   0                    0      193   263
0-6 months    MAL-ED      SOUTH AFRICA                   0                    1        0   263
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    0       64   218
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1        0   218
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    0      154   218
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1        0   218
6-24 months   EE          PAKISTAN                       1                    0       38    39
6-24 months   EE          PAKISTAN                       1                    1        1    39
6-24 months   EE          PAKISTAN                       0                    0        0    39
6-24 months   EE          PAKISTAN                       0                    1        0    39
6-24 months   GMS-Nepal   NEPAL                          1                    0      326   457
6-24 months   GMS-Nepal   NEPAL                          1                    1       54   457
6-24 months   GMS-Nepal   NEPAL                          0                    0       63   457
6-24 months   GMS-Nepal   NEPAL                          0                    1       14   457
6-24 months   MAL-ED      BANGLADESH                     1                    0      188   240
6-24 months   MAL-ED      BANGLADESH                     1                    1        9   240
6-24 months   MAL-ED      BANGLADESH                     0                    0       40   240
6-24 months   MAL-ED      BANGLADESH                     0                    1        3   240
6-24 months   MAL-ED      BRAZIL                         1                    0       94   195
6-24 months   MAL-ED      BRAZIL                         1                    1        2   195
6-24 months   MAL-ED      BRAZIL                         0                    0       99   195
6-24 months   MAL-ED      BRAZIL                         0                    1        0   195
6-24 months   MAL-ED      INDIA                          1                    0      137   215
6-24 months   MAL-ED      INDIA                          1                    1       13   215
6-24 months   MAL-ED      INDIA                          0                    0       60   215
6-24 months   MAL-ED      INDIA                          0                    1        5   215
6-24 months   MAL-ED      NEPAL                          1                    0      112   228
6-24 months   MAL-ED      NEPAL                          1                    1        2   228
6-24 months   MAL-ED      NEPAL                          0                    0      112   228
6-24 months   MAL-ED      NEPAL                          0                    1        2   228
6-24 months   MAL-ED      PERU                           1                    0      181   281
6-24 months   MAL-ED      PERU                           1                    1        1   281
6-24 months   MAL-ED      PERU                           0                    0       99   281
6-24 months   MAL-ED      PERU                           0                    1        0   281
6-24 months   MAL-ED      SOUTH AFRICA                   1                    0       69   264
6-24 months   MAL-ED      SOUTH AFRICA                   1                    1        1   264
6-24 months   MAL-ED      SOUTH AFRICA                   0                    0      193   264
6-24 months   MAL-ED      SOUTH AFRICA                   0                    1        1   264
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    0       64   218
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1        0   218
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    0      154   218
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1        0   218


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/a3f0b09c-0c57-4659-98e0-67a68e42d7e3/31a47ab9-68d2-41f2-b612-5de4757555bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a3f0b09c-0c57-4659-98e0-67a68e42d7e3/31a47ab9-68d2-41f2-b612-5de4757555bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a3f0b09c-0c57-4659-98e0-67a68e42d7e3/31a47ab9-68d2-41f2-b612-5de4757555bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a3f0b09c-0c57-4659-98e0-67a68e42d7e3/31a47ab9-68d2-41f2-b612-5de4757555bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL     1                    NA                0.1421053   0.1069610   0.1772495
0-24 months   GMS-Nepal   NEPAL     0                    NA                0.1818182   0.0955756   0.2680608
0-24 months   MAL-ED      INDIA     1                    NA                0.0866667   0.0415377   0.1317956
0-24 months   MAL-ED      INDIA     0                    NA                0.0769231   0.0119922   0.1418539
0-6 months    GMS-Nepal   NEPAL     1                    NA                0.1081794   0.0768740   0.1394848
0-6 months    GMS-Nepal   NEPAL     0                    NA                0.1351351   0.0571574   0.2131128
0-6 months    MAL-ED      INDIA     1                    NA                0.0533333   0.0172910   0.0893757
0-6 months    MAL-ED      INDIA     0                    NA                0.1538462   0.0659294   0.2417629
6-24 months   GMS-Nepal   NEPAL     1                    NA                0.1421053   0.1069610   0.1772495
6-24 months   GMS-Nepal   NEPAL     0                    NA                0.1818182   0.0955756   0.2680608
6-24 months   MAL-ED      INDIA     1                    NA                0.0866667   0.0415377   0.1317956
6-24 months   MAL-ED      INDIA     0                    NA                0.0769231   0.0119922   0.1418539


### Parameter: E(Y)


agecat        studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL     NA                   NA                0.1487965   0.1161318   0.1814612
0-24 months   MAL-ED      INDIA     NA                   NA                0.0837209   0.0466125   0.1208293
0-6 months    GMS-Nepal   NEPAL     NA                   NA                0.1125828   0.0834435   0.1417221
0-6 months    MAL-ED      INDIA     NA                   NA                0.0837209   0.0466125   0.1208293
6-24 months   GMS-Nepal   NEPAL     NA                   NA                0.1487965   0.1161318   0.1814612
6-24 months   MAL-ED      INDIA     NA                   NA                0.0837209   0.0466125   0.1208293


### Parameter: RR


agecat        studyid     country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  --------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL     0                    1                 1.279461   0.7493895   2.184473
0-24 months   MAL-ED      INDIA     1                    1                 1.000000   1.0000000   1.000000
0-24 months   MAL-ED      INDIA     0                    1                 0.887574   0.3292108   2.392958
0-6 months    GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL     0                    1                 1.249176   0.6550468   2.382182
0-6 months    MAL-ED      INDIA     1                    1                 1.000000   1.0000000   1.000000
0-6 months    MAL-ED      INDIA     0                    1                 2.884615   1.1904966   6.989525
6-24 months   GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL     0                    1                 1.279461   0.7493895   2.184473
6-24 months   MAL-ED      INDIA     1                    1                 1.000000   1.0000000   1.000000
6-24 months   MAL-ED      INDIA     0                    1                 0.887574   0.3292108   2.392958


### Parameter: PAR


agecat        studyid     country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL     1                    NA                 0.0066912   -0.0090592   0.0224417
0-24 months   MAL-ED      INDIA     1                    NA                -0.0029457   -0.0268592   0.0209678
0-6 months    GMS-Nepal   NEPAL     1                    NA                 0.0044034   -0.0093536   0.0181603
0-6 months    MAL-ED      INDIA     1                    NA                 0.0303876    0.0010030   0.0597722
6-24 months   GMS-Nepal   NEPAL     1                    NA                 0.0066912   -0.0090592   0.0224417
6-24 months   MAL-ED      INDIA     1                    NA                -0.0029457   -0.0268592   0.0209678


### Parameter: PAF


agecat        studyid     country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL     1                    NA                 0.0449690   -0.0666291   0.1448910
0-24 months   MAL-ED      INDIA     1                    NA                -0.0351852   -0.3636591   0.2141670
0-6 months    GMS-Nepal   NEPAL     1                    NA                 0.0391122   -0.0908314   0.1535765
0-6 months    MAL-ED      INDIA     1                    NA                 0.3629630   -0.0473568   0.6125330
6-24 months   GMS-Nepal   NEPAL     1                    NA                 0.0449690   -0.0666291   0.1448910
6-24 months   MAL-ED      INDIA     1                    NA                -0.0351852   -0.3636591   0.2141670
