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

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country                        predfeed6    pers_wast   n_cell     n
------------  --------------  -----------------------------  ----------  ----------  -------  ----
0-24 months   EE              PAKISTAN                       1                    0       42    48
0-24 months   EE              PAKISTAN                       1                    1        1    48
0-24 months   EE              PAKISTAN                       0                    0        5    48
0-24 months   EE              PAKISTAN                       0                    1        0    48
0-24 months   GMS-Nepal       NEPAL                          1                    0      366   564
0-24 months   GMS-Nepal       NEPAL                          1                    1       54   564
0-24 months   GMS-Nepal       NEPAL                          0                    0      121   564
0-24 months   GMS-Nepal       NEPAL                          0                    1       23   564
0-24 months   LCNI-5          MALAWI                         1                    0       42   240
0-24 months   LCNI-5          MALAWI                         1                    1        0   240
0-24 months   LCNI-5          MALAWI                         0                    0      195   240
0-24 months   LCNI-5          MALAWI                         0                    1        3   240
0-24 months   MAL-ED          BANGLADESH                     1                    0       81   233
0-24 months   MAL-ED          BANGLADESH                     1                    1        4   233
0-24 months   MAL-ED          BANGLADESH                     0                    0      139   233
0-24 months   MAL-ED          BANGLADESH                     0                    1        9   233
0-24 months   MAL-ED          BRAZIL                         1                    0       29   210
0-24 months   MAL-ED          BRAZIL                         1                    1        1   210
0-24 months   MAL-ED          BRAZIL                         0                    0      179   210
0-24 months   MAL-ED          BRAZIL                         0                    1        1   210
0-24 months   MAL-ED          INDIA                          1                    0       11   219
0-24 months   MAL-ED          INDIA                          1                    1        0   219
0-24 months   MAL-ED          INDIA                          0                    0      190   219
0-24 months   MAL-ED          INDIA                          0                    1       18   219
0-24 months   MAL-ED          NEPAL                          1                    0       12   225
0-24 months   MAL-ED          NEPAL                          1                    1        0   225
0-24 months   MAL-ED          NEPAL                          0                    0      210   225
0-24 months   MAL-ED          NEPAL                          0                    1        3   225
0-24 months   MAL-ED          PERU                           1                    0       91   271
0-24 months   MAL-ED          PERU                           1                    1        1   271
0-24 months   MAL-ED          PERU                           0                    0      179   271
0-24 months   MAL-ED          PERU                           0                    1        0   271
0-24 months   MAL-ED          SOUTH AFRICA                   1                    0        3   237
0-24 months   MAL-ED          SOUTH AFRICA                   1                    1        0   237
0-24 months   MAL-ED          SOUTH AFRICA                   0                    0      232   237
0-24 months   MAL-ED          SOUTH AFRICA                   0                    1        2   237
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1   235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0   235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234   235
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0   235
0-24 months   SAS-FoodSuppl   INDIA                          1                    0        0   166
0-24 months   SAS-FoodSuppl   INDIA                          1                    1        0   166
0-24 months   SAS-FoodSuppl   INDIA                          0                    0      136   166
0-24 months   SAS-FoodSuppl   INDIA                          0                    1       30   166
0-6 months    EE              PAKISTAN                       1                    0       39    47
0-6 months    EE              PAKISTAN                       1                    1        3    47
0-6 months    EE              PAKISTAN                       0                    0        5    47
0-6 months    EE              PAKISTAN                       0                    1        0    47
0-6 months    GMS-Nepal       NEPAL                          1                    0      375   553
0-6 months    GMS-Nepal       NEPAL                          1                    1       39   553
0-6 months    GMS-Nepal       NEPAL                          0                    0      118   553
0-6 months    GMS-Nepal       NEPAL                          0                    1       21   553
0-6 months    MAL-ED          BANGLADESH                     1                    0       82   233
0-6 months    MAL-ED          BANGLADESH                     1                    1        3   233
0-6 months    MAL-ED          BANGLADESH                     0                    0      144   233
0-6 months    MAL-ED          BANGLADESH                     0                    1        4   233
0-6 months    MAL-ED          BRAZIL                         1                    0       29   210
0-6 months    MAL-ED          BRAZIL                         1                    1        1   210
0-6 months    MAL-ED          BRAZIL                         0                    0      180   210
0-6 months    MAL-ED          BRAZIL                         0                    1        0   210
0-6 months    MAL-ED          INDIA                          1                    0       11   218
0-6 months    MAL-ED          INDIA                          1                    1        0   218
0-6 months    MAL-ED          INDIA                          0                    0      192   218
0-6 months    MAL-ED          INDIA                          0                    1       15   218
0-6 months    MAL-ED          NEPAL                          1                    0       12   225
0-6 months    MAL-ED          NEPAL                          1                    1        0   225
0-6 months    MAL-ED          NEPAL                          0                    0      208   225
0-6 months    MAL-ED          NEPAL                          0                    1        5   225
0-6 months    MAL-ED          PERU                           1                    0       92   271
0-6 months    MAL-ED          PERU                           1                    1        0   271
0-6 months    MAL-ED          PERU                           0                    0      179   271
0-6 months    MAL-ED          PERU                           0                    1        0   271
0-6 months    MAL-ED          SOUTH AFRICA                   1                    0        3   236
0-6 months    MAL-ED          SOUTH AFRICA                   1                    1        0   236
0-6 months    MAL-ED          SOUTH AFRICA                   0                    0      231   236
0-6 months    MAL-ED          SOUTH AFRICA                   0                    1        2   236
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1   235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0   235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234   235
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0   235
6-24 months   EE              PAKISTAN                       1                    0       42    48
6-24 months   EE              PAKISTAN                       1                    1        1    48
6-24 months   EE              PAKISTAN                       0                    0        5    48
6-24 months   EE              PAKISTAN                       0                    1        0    48
6-24 months   GMS-Nepal       NEPAL                          1                    0      366   564
6-24 months   GMS-Nepal       NEPAL                          1                    1       54   564
6-24 months   GMS-Nepal       NEPAL                          0                    0      121   564
6-24 months   GMS-Nepal       NEPAL                          0                    1       23   564
6-24 months   LCNI-5          MALAWI                         1                    0       42   240
6-24 months   LCNI-5          MALAWI                         1                    1        0   240
6-24 months   LCNI-5          MALAWI                         0                    0      195   240
6-24 months   LCNI-5          MALAWI                         0                    1        3   240
6-24 months   MAL-ED          BANGLADESH                     1                    0       81   233
6-24 months   MAL-ED          BANGLADESH                     1                    1        4   233
6-24 months   MAL-ED          BANGLADESH                     0                    0      139   233
6-24 months   MAL-ED          BANGLADESH                     0                    1        9   233
6-24 months   MAL-ED          BRAZIL                         1                    0       29   210
6-24 months   MAL-ED          BRAZIL                         1                    1        1   210
6-24 months   MAL-ED          BRAZIL                         0                    0      179   210
6-24 months   MAL-ED          BRAZIL                         0                    1        1   210
6-24 months   MAL-ED          INDIA                          1                    0       11   219
6-24 months   MAL-ED          INDIA                          1                    1        0   219
6-24 months   MAL-ED          INDIA                          0                    0      190   219
6-24 months   MAL-ED          INDIA                          0                    1       18   219
6-24 months   MAL-ED          NEPAL                          1                    0       12   225
6-24 months   MAL-ED          NEPAL                          1                    1        0   225
6-24 months   MAL-ED          NEPAL                          0                    0      210   225
6-24 months   MAL-ED          NEPAL                          0                    1        3   225
6-24 months   MAL-ED          PERU                           1                    0       91   271
6-24 months   MAL-ED          PERU                           1                    1        1   271
6-24 months   MAL-ED          PERU                           0                    0      179   271
6-24 months   MAL-ED          PERU                           0                    1        0   271
6-24 months   MAL-ED          SOUTH AFRICA                   1                    0        3   237
6-24 months   MAL-ED          SOUTH AFRICA                   1                    1        0   237
6-24 months   MAL-ED          SOUTH AFRICA                   0                    0      232   237
6-24 months   MAL-ED          SOUTH AFRICA                   0                    1        2   237
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1   235
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0   235
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234   235
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0   235
6-24 months   SAS-FoodSuppl   INDIA                          1                    0        0   166
6-24 months   SAS-FoodSuppl   INDIA                          1                    1        0   166
6-24 months   SAS-FoodSuppl   INDIA                          0                    0      136   166
6-24 months   SAS-FoodSuppl   INDIA                          0                    1       30   166


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/7c45614b-065f-4485-8a58-5d217d5e8f32/86c08e23-ff69-416d-9760-3a0803aa8d9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c45614b-065f-4485-8a58-5d217d5e8f32/86c08e23-ff69-416d-9760-3a0803aa8d9f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c45614b-065f-4485-8a58-5d217d5e8f32/86c08e23-ff69-416d-9760-3a0803aa8d9f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c45614b-065f-4485-8a58-5d217d5e8f32/86c08e23-ff69-416d-9760-3a0803aa8d9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL     1                    NA                0.1285714   0.0965311   0.1606118
0-24 months   GMS-Nepal   NEPAL     0                    NA                0.1597222   0.0998333   0.2196111
0-6 months    GMS-Nepal   NEPAL     1                    NA                0.0942029   0.0660393   0.1223665
0-6 months    GMS-Nepal   NEPAL     0                    NA                0.1510791   0.0914897   0.2106686
6-24 months   GMS-Nepal   NEPAL     1                    NA                0.1285714   0.0965311   0.1606118
6-24 months   GMS-Nepal   NEPAL     0                    NA                0.1597222   0.0998333   0.2196111


### Parameter: E(Y)


agecat        studyid     country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL     NA                   NA                0.1365248   0.1081636   0.164886
0-6 months    GMS-Nepal   NEPAL     NA                   NA                0.1084991   0.0825542   0.134444
6-24 months   GMS-Nepal   NEPAL     NA                   NA                0.1365248   0.1081636   0.164886


### Parameter: RR


agecat        studyid     country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  --------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000    1.00000
0-24 months   GMS-Nepal   NEPAL     0                    1                 1.242284   0.7919442    1.94871
0-6 months    GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000    1.00000
0-6 months    GMS-Nepal   NEPAL     0                    1                 1.603763   0.9776782    2.63078
6-24 months   GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000    1.00000
6-24 months   GMS-Nepal   NEPAL     0                    1                 1.242284   0.7919442    1.94871


### Parameter: PAR


agecat        studyid     country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL     1                    NA                0.0079534   -0.0094244   0.0253312
0-6 months    GMS-Nepal   NEPAL     1                    NA                0.0142962   -0.0023980   0.0309904
6-24 months   GMS-Nepal   NEPAL     1                    NA                0.0079534   -0.0094244   0.0253312


### Parameter: PAF


agecat        studyid     country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL     1                    NA                0.0582560   -0.0775707   0.1769619
0-6 months    GMS-Nepal   NEPAL     1                    NA                0.1317633   -0.0335189   0.2706132
6-24 months   GMS-Nepal   NEPAL     1                    NA                0.0582560   -0.0775707   0.1769619
