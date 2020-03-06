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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country                        predfeed6    wast_rec90d   n_cell     n
------------  --------------  -----------------------------  ----------  ------------  -------  ----
0-24 months   EE              PAKISTAN                       1                      0       15    34
0-24 months   EE              PAKISTAN                       1                      1       16    34
0-24 months   EE              PAKISTAN                       0                      0        0    34
0-24 months   EE              PAKISTAN                       0                      1        3    34
0-24 months   GMS-Nepal       NEPAL                          1                      0      192   594
0-24 months   GMS-Nepal       NEPAL                          1                      1      251   594
0-24 months   GMS-Nepal       NEPAL                          0                      0       70   594
0-24 months   GMS-Nepal       NEPAL                          0                      1       81   594
0-24 months   LCNI-5          MALAWI                         1                      0        5    34
0-24 months   LCNI-5          MALAWI                         1                      1        2    34
0-24 months   LCNI-5          MALAWI                         0                      0       22    34
0-24 months   LCNI-5          MALAWI                         0                      1        5    34
0-24 months   MAL-ED          BANGLADESH                     1                      0       15   114
0-24 months   MAL-ED          BANGLADESH                     1                      1       30   114
0-24 months   MAL-ED          BANGLADESH                     0                      0       25   114
0-24 months   MAL-ED          BANGLADESH                     0                      1       44   114
0-24 months   MAL-ED          BRAZIL                         1                      0        1    24
0-24 months   MAL-ED          BRAZIL                         1                      1        1    24
0-24 months   MAL-ED          BRAZIL                         0                      0        5    24
0-24 months   MAL-ED          BRAZIL                         0                      1       17    24
0-24 months   MAL-ED          INDIA                          1                      0        0   162
0-24 months   MAL-ED          INDIA                          1                      1        2   162
0-24 months   MAL-ED          INDIA                          0                      0       62   162
0-24 months   MAL-ED          INDIA                          0                      1       98   162
0-24 months   MAL-ED          NEPAL                          1                      0        1    94
0-24 months   MAL-ED          NEPAL                          1                      1        2    94
0-24 months   MAL-ED          NEPAL                          0                      0       18    94
0-24 months   MAL-ED          NEPAL                          0                      1       73    94
0-24 months   MAL-ED          PERU                           1                      0        2    34
0-24 months   MAL-ED          PERU                           1                      1        6    34
0-24 months   MAL-ED          PERU                           0                      0        4    34
0-24 months   MAL-ED          PERU                           0                      1       22    34
0-24 months   MAL-ED          SOUTH AFRICA                   1                      0        0    75
0-24 months   MAL-ED          SOUTH AFRICA                   1                      1        0    75
0-24 months   MAL-ED          SOUTH AFRICA                   0                      0       11    75
0-24 months   MAL-ED          SOUTH AFRICA                   0                      1       64    75
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0    50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0    50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        9    50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       41    50
0-24 months   SAS-FoodSuppl   INDIA                          1                      0        0   108
0-24 months   SAS-FoodSuppl   INDIA                          1                      1        0   108
0-24 months   SAS-FoodSuppl   INDIA                          0                      0      100   108
0-24 months   SAS-FoodSuppl   INDIA                          0                      1        8   108
0-6 months    EE              PAKISTAN                       1                      0        6    15
0-6 months    EE              PAKISTAN                       1                      1        7    15
0-6 months    EE              PAKISTAN                       0                      0        0    15
0-6 months    EE              PAKISTAN                       0                      1        2    15
0-6 months    GMS-Nepal       NEPAL                          1                      0       54   228
0-6 months    GMS-Nepal       NEPAL                          1                      1      116   228
0-6 months    GMS-Nepal       NEPAL                          0                      0       24   228
0-6 months    GMS-Nepal       NEPAL                          0                      1       34   228
0-6 months    LCNI-5          MALAWI                         1                      0        0     4
0-6 months    LCNI-5          MALAWI                         1                      1        0     4
0-6 months    LCNI-5          MALAWI                         0                      0        4     4
0-6 months    LCNI-5          MALAWI                         0                      1        0     4
0-6 months    MAL-ED          BANGLADESH                     1                      0        4    58
0-6 months    MAL-ED          BANGLADESH                     1                      1       14    58
0-6 months    MAL-ED          BANGLADESH                     0                      0        8    58
0-6 months    MAL-ED          BANGLADESH                     0                      1       32    58
0-6 months    MAL-ED          BRAZIL                         1                      0        1    15
0-6 months    MAL-ED          BRAZIL                         1                      1        1    15
0-6 months    MAL-ED          BRAZIL                         0                      0        0    15
0-6 months    MAL-ED          BRAZIL                         0                      1       13    15
0-6 months    MAL-ED          INDIA                          1                      0        0    72
0-6 months    MAL-ED          INDIA                          1                      1        1    72
0-6 months    MAL-ED          INDIA                          0                      0       20    72
0-6 months    MAL-ED          INDIA                          0                      1       51    72
0-6 months    MAL-ED          NEPAL                          1                      0        0    44
0-6 months    MAL-ED          NEPAL                          1                      1        1    44
0-6 months    MAL-ED          NEPAL                          0                      0        8    44
0-6 months    MAL-ED          NEPAL                          0                      1       35    44
0-6 months    MAL-ED          PERU                           1                      0        0    10
0-6 months    MAL-ED          PERU                           1                      1        3    10
0-6 months    MAL-ED          PERU                           0                      0        0    10
0-6 months    MAL-ED          PERU                           0                      1        7    10
0-6 months    MAL-ED          SOUTH AFRICA                   1                      0        0    28
0-6 months    MAL-ED          SOUTH AFRICA                   1                      1        0    28
0-6 months    MAL-ED          SOUTH AFRICA                   0                      0        4    28
0-6 months    MAL-ED          SOUTH AFRICA                   0                      1       24    28
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       13    14
0-6 months    SAS-FoodSuppl   INDIA                          1                      0        0    48
0-6 months    SAS-FoodSuppl   INDIA                          1                      1        0    48
0-6 months    SAS-FoodSuppl   INDIA                          0                      0       48    48
0-6 months    SAS-FoodSuppl   INDIA                          0                      1        0    48
6-24 months   EE              PAKISTAN                       1                      0        9    19
6-24 months   EE              PAKISTAN                       1                      1        9    19
6-24 months   EE              PAKISTAN                       0                      0        0    19
6-24 months   EE              PAKISTAN                       0                      1        1    19
6-24 months   GMS-Nepal       NEPAL                          1                      0      138   366
6-24 months   GMS-Nepal       NEPAL                          1                      1      135   366
6-24 months   GMS-Nepal       NEPAL                          0                      0       46   366
6-24 months   GMS-Nepal       NEPAL                          0                      1       47   366
6-24 months   LCNI-5          MALAWI                         1                      0        5    30
6-24 months   LCNI-5          MALAWI                         1                      1        2    30
6-24 months   LCNI-5          MALAWI                         0                      0       18    30
6-24 months   LCNI-5          MALAWI                         0                      1        5    30
6-24 months   MAL-ED          BANGLADESH                     1                      0       11    56
6-24 months   MAL-ED          BANGLADESH                     1                      1       16    56
6-24 months   MAL-ED          BANGLADESH                     0                      0       17    56
6-24 months   MAL-ED          BANGLADESH                     0                      1       12    56
6-24 months   MAL-ED          BRAZIL                         1                      0        0     9
6-24 months   MAL-ED          BRAZIL                         1                      1        0     9
6-24 months   MAL-ED          BRAZIL                         0                      0        5     9
6-24 months   MAL-ED          BRAZIL                         0                      1        4     9
6-24 months   MAL-ED          INDIA                          1                      0        0    90
6-24 months   MAL-ED          INDIA                          1                      1        1    90
6-24 months   MAL-ED          INDIA                          0                      0       42    90
6-24 months   MAL-ED          INDIA                          0                      1       47    90
6-24 months   MAL-ED          NEPAL                          1                      0        1    50
6-24 months   MAL-ED          NEPAL                          1                      1        1    50
6-24 months   MAL-ED          NEPAL                          0                      0       10    50
6-24 months   MAL-ED          NEPAL                          0                      1       38    50
6-24 months   MAL-ED          PERU                           1                      0        2    24
6-24 months   MAL-ED          PERU                           1                      1        3    24
6-24 months   MAL-ED          PERU                           0                      0        4    24
6-24 months   MAL-ED          PERU                           0                      1       15    24
6-24 months   MAL-ED          SOUTH AFRICA                   1                      0        0    47
6-24 months   MAL-ED          SOUTH AFRICA                   1                      1        0    47
6-24 months   MAL-ED          SOUTH AFRICA                   0                      0        7    47
6-24 months   MAL-ED          SOUTH AFRICA                   0                      1       40    47
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0    36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0    36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8    36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       28    36
6-24 months   SAS-FoodSuppl   INDIA                          1                      0        0    60
6-24 months   SAS-FoodSuppl   INDIA                          1                      1        0    60
6-24 months   SAS-FoodSuppl   INDIA                          0                      0       52    60
6-24 months   SAS-FoodSuppl   INDIA                          0                      1        8    60


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/ab6664a7-0100-4ef1-b573-49d18b0a3a76/58540dd3-9842-4ad4-9bfc-fea897dad018/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab6664a7-0100-4ef1-b573-49d18b0a3a76/58540dd3-9842-4ad4-9bfc-fea897dad018/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ab6664a7-0100-4ef1-b573-49d18b0a3a76/58540dd3-9842-4ad4-9bfc-fea897dad018/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ab6664a7-0100-4ef1-b573-49d18b0a3a76/58540dd3-9842-4ad4-9bfc-fea897dad018/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.5665914   0.5166081   0.6165747
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.5364238   0.4464027   0.6264450
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.6666667   0.5380396   0.7952937
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.6376812   0.5149052   0.7604571
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.6823529   0.6118839   0.7528220
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.5862069   0.4571188   0.7152950
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.4945055   0.4294359   0.5595751
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.5053763   0.3987212   0.6120315
6-24 months   MAL-ED      BANGLADESH   1                    NA                0.5925926   0.4104877   0.7746975
6-24 months   MAL-ED      BANGLADESH   0                    NA                0.4137931   0.2226867   0.6048995


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   MAL-ED      BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 0.9467560   0.7832370   1.144413
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.9565217   0.7281502   1.256518
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 0.8590963   0.6736130   1.095654
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.0219833   0.7968052   1.310797
6-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      BANGLADESH   0                    1                 0.6982759   0.4011192   1.215572


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0076689   -0.0339330   0.0185953
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0175439   -0.1251106   0.0900229
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0244582   -0.0623411   0.0134247
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0027623   -0.0289795   0.0345040
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0925926   -0.2328449   0.0476597


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0137208   -0.0618835   0.0322574
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0270270   -0.2076159   0.1265563
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0371765   -0.0967690   0.0191781
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0055549   -0.0604002   0.0674077
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.1851852   -0.5160790   0.0734890
