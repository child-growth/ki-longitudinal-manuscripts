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

**Outcome Variable:** wasted

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

agecat      studyid     country                        predfeed3    wasted   n_cell     n
----------  ----------  -----------------------------  ----------  -------  -------  ----
Birth       EE          PAKISTAN                       1                 0       18    22
Birth       EE          PAKISTAN                       1                 1        4    22
Birth       EE          PAKISTAN                       0                 0        0    22
Birth       EE          PAKISTAN                       0                 1        0    22
Birth       GMS-Nepal   NEPAL                          1                 0      282   422
Birth       GMS-Nepal   NEPAL                          1                 1       70   422
Birth       GMS-Nepal   NEPAL                          0                 0       60   422
Birth       GMS-Nepal   NEPAL                          0                 1       10   422
Birth       MAL-ED      BANGLADESH                     1                 0      137   202
Birth       MAL-ED      BANGLADESH                     1                 1       27   202
Birth       MAL-ED      BANGLADESH                     0                 0       32   202
Birth       MAL-ED      BANGLADESH                     0                 1        6   202
Birth       MAL-ED      BRAZIL                         1                 0       23    55
Birth       MAL-ED      BRAZIL                         1                 1        0    55
Birth       MAL-ED      BRAZIL                         0                 0       31    55
Birth       MAL-ED      BRAZIL                         0                 1        1    55
Birth       MAL-ED      INDIA                          1                 0       23    39
Birth       MAL-ED      INDIA                          1                 1        4    39
Birth       MAL-ED      INDIA                          0                 0       11    39
Birth       MAL-ED      INDIA                          0                 1        1    39
Birth       MAL-ED      NEPAL                          1                 0       12    25
Birth       MAL-ED      NEPAL                          1                 1        2    25
Birth       MAL-ED      NEPAL                          0                 0       11    25
Birth       MAL-ED      NEPAL                          0                 1        0    25
Birth       MAL-ED      PERU                           1                 0      142   218
Birth       MAL-ED      PERU                           1                 1        3   218
Birth       MAL-ED      PERU                           0                 0       71   218
Birth       MAL-ED      PERU                           0                 1        2   218
Birth       MAL-ED      SOUTH AFRICA                   1                 0       30    99
Birth       MAL-ED      SOUTH AFRICA                   1                 1        3    99
Birth       MAL-ED      SOUTH AFRICA                   0                 0       60    99
Birth       MAL-ED      SOUTH AFRICA                   0                 1        6    99
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                 0       24    95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                 1        0    95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                 0       70    95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                 1        1    95
6 months    EE          PAKISTAN                       1                 0       35    39
6 months    EE          PAKISTAN                       1                 1        4    39
6 months    EE          PAKISTAN                       0                 0        0    39
6 months    EE          PAKISTAN                       0                 1        0    39
6 months    GMS-Nepal   NEPAL                          1                 0      330   441
6 months    GMS-Nepal   NEPAL                          1                 1       37   441
6 months    GMS-Nepal   NEPAL                          0                 0       67   441
6 months    GMS-Nepal   NEPAL                          0                 1        7   441
6 months    MAL-ED      BANGLADESH                     1                 0      185   233
6 months    MAL-ED      BANGLADESH                     1                 1        6   233
6 months    MAL-ED      BANGLADESH                     0                 0       40   233
6 months    MAL-ED      BANGLADESH                     0                 1        2   233
6 months    MAL-ED      BRAZIL                         1                 0       92   187
6 months    MAL-ED      BRAZIL                         1                 1        1   187
6 months    MAL-ED      BRAZIL                         0                 0       94   187
6 months    MAL-ED      BRAZIL                         0                 1        0   187
6 months    MAL-ED      INDIA                          1                 0      139   210
6 months    MAL-ED      INDIA                          1                 1        8   210
6 months    MAL-ED      INDIA                          0                 0       54   210
6 months    MAL-ED      INDIA                          0                 1        9   210
6 months    MAL-ED      NEPAL                          1                 0      112   227
6 months    MAL-ED      NEPAL                          1                 1        1   227
6 months    MAL-ED      NEPAL                          0                 0      111   227
6 months    MAL-ED      NEPAL                          0                 1        3   227
6 months    MAL-ED      PERU                           1                 0      176   270
6 months    MAL-ED      PERU                           1                 1        0   270
6 months    MAL-ED      PERU                           0                 0       94   270
6 months    MAL-ED      PERU                           0                 1        0   270
6 months    MAL-ED      SOUTH AFRICA                   1                 0       62   244
6 months    MAL-ED      SOUTH AFRICA                   1                 1        1   244
6 months    MAL-ED      SOUTH AFRICA                   0                 0      176   244
6 months    MAL-ED      SOUTH AFRICA                   0                 1        5   244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                 0       64   212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                 1        0   212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                 0      148   212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                 1        0   212
24 months   EE          PAKISTAN                       1                 0       17    20
24 months   EE          PAKISTAN                       1                 1        3    20
24 months   EE          PAKISTAN                       0                 0        0    20
24 months   EE          PAKISTAN                       0                 1        0    20
24 months   GMS-Nepal   NEPAL                          1                 0      258   384
24 months   GMS-Nepal   NEPAL                          1                 1       64   384
24 months   GMS-Nepal   NEPAL                          0                 0       53   384
24 months   GMS-Nepal   NEPAL                          0                 1        9   384
24 months   MAL-ED      BANGLADESH                     1                 0      151   205
24 months   MAL-ED      BANGLADESH                     1                 1       17   205
24 months   MAL-ED      BANGLADESH                     0                 0       35   205
24 months   MAL-ED      BANGLADESH                     0                 1        2   205
24 months   MAL-ED      BRAZIL                         1                 0       76   152
24 months   MAL-ED      BRAZIL                         1                 1        3   152
24 months   MAL-ED      BRAZIL                         0                 0       73   152
24 months   MAL-ED      BRAZIL                         0                 1        0   152
24 months   MAL-ED      INDIA                          1                 0      121   202
24 months   MAL-ED      INDIA                          1                 1       18   202
24 months   MAL-ED      INDIA                          0                 0       57   202
24 months   MAL-ED      INDIA                          0                 1        6   202
24 months   MAL-ED      NEPAL                          1                 0      107   220
24 months   MAL-ED      NEPAL                          1                 1        3   220
24 months   MAL-ED      NEPAL                          0                 0      108   220
24 months   MAL-ED      NEPAL                          0                 1        2   220
24 months   MAL-ED      PERU                           1                 0      129   198
24 months   MAL-ED      PERU                           1                 1        2   198
24 months   MAL-ED      PERU                           0                 0       66   198
24 months   MAL-ED      PERU                           0                 1        1   198
24 months   MAL-ED      SOUTH AFRICA                   1                 0       59   228
24 months   MAL-ED      SOUTH AFRICA                   1                 1        1   228
24 months   MAL-ED      SOUTH AFRICA                   0                 0      168   228
24 months   MAL-ED      SOUTH AFRICA                   0                 1        0   228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                 0       54   184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                 1        0   184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                 0      126   184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                 1        4   184


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/fa560a10-b7b4-439d-83b6-24722140d8da/15c3202d-5f70-4d74-aa26-d2949799375a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa560a10-b7b4-439d-83b6-24722140d8da/15c3202d-5f70-4d74-aa26-d2949799375a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa560a10-b7b4-439d-83b6-24722140d8da/15c3202d-5f70-4d74-aa26-d2949799375a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa560a10-b7b4-439d-83b6-24722140d8da/15c3202d-5f70-4d74-aa26-d2949799375a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                0.1988636   0.1571169   0.2406104
Birth       GMS-Nepal   NEPAL        0                    NA                0.1428571   0.0607857   0.2249285
Birth       MAL-ED      BANGLADESH   1                    NA                0.1646341   0.1077355   0.2215328
Birth       MAL-ED      BANGLADESH   0                    NA                0.1578947   0.0416694   0.2741201
6 months    GMS-Nepal   NEPAL        1                    NA                0.1008174   0.0699785   0.1316564
6 months    GMS-Nepal   NEPAL        0                    NA                0.0945946   0.0278402   0.1613490
6 months    MAL-ED      INDIA        1                    NA                0.0544218   0.0176630   0.0911805
6 months    MAL-ED      INDIA        0                    NA                0.1428571   0.0562424   0.2294719
24 months   GMS-Nepal   NEPAL        1                    NA                0.1987578   0.1551132   0.2424023
24 months   GMS-Nepal   NEPAL        0                    NA                0.1451613   0.0573630   0.2329596
24 months   MAL-ED      INDIA        1                    NA                0.1294964   0.0735422   0.1854506
24 months   MAL-ED      INDIA        0                    NA                0.0952381   0.0225726   0.1679035


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL        NA                   NA                0.1895735   0.1521320   0.2270149
Birth       MAL-ED      BANGLADESH   NA                   NA                0.1633663   0.1122571   0.2144755
6 months    GMS-Nepal   NEPAL        NA                   NA                0.0997732   0.0717702   0.1277763
6 months    MAL-ED      INDIA        NA                   NA                0.0809524   0.0439731   0.1179317
24 months   GMS-Nepal   NEPAL        NA                   NA                0.1901042   0.1508072   0.2294011
24 months   MAL-ED      INDIA        NA                   NA                0.1188119   0.0740803   0.1635435


### Parameter: RR


agecat      studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL        0                    1                 0.7183673   0.3896809   1.324293
Birth       MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED      BANGLADESH   0                    1                 0.9590643   0.4252885   2.162777
6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal   NEPAL        0                    1                 0.9382761   0.4348109   2.024701
6 months    MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED      INDIA        0                    1                 2.6250000   1.0591134   6.506031
24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL        0                    1                 0.7303427   0.3837740   1.389882
24 months   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED      INDIA        0                    1                 0.7354497   0.3060169   1.767505


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0092902   -0.0246930   0.0061127
Birth       MAL-ED      BANGLADESH   1                    NA                -0.0012678   -0.0256142   0.0230785
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0010442   -0.0133851   0.0112967
6 months    MAL-ED      INDIA        1                    NA                 0.0265306   -0.0022268   0.0552880
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0086536   -0.0246070   0.0072998
24 months   MAL-ED      INDIA        1                    NA                -0.0106845   -0.0393719   0.0180028


### Parameter: PAF


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0490057   -0.1331673   0.0289051
Birth       MAL-ED      BANGLADESH   1                    NA                -0.0077605   -0.1683589   0.1307626
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0104657   -0.1420133   0.1059291
6 months    MAL-ED      INDIA        1                    NA                 0.3277311   -0.0921984   0.5862057
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0455203   -0.1326078   0.0348709
24 months   MAL-ED      INDIA        1                    NA                -0.0899281   -0.3581162   0.1253008
