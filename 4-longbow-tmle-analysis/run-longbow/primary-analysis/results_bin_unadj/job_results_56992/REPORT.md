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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country                        predfeed36    wast_rec90d   n_cell     n
------------  --------------  -----------------------------  -----------  ------------  -------  ----
0-24 months   EE              PAKISTAN                       1                       0        1     4
0-24 months   EE              PAKISTAN                       1                       1        0     4
0-24 months   EE              PAKISTAN                       0                       0        0     4
0-24 months   EE              PAKISTAN                       0                       1        3     4
0-24 months   GMS-Nepal       NEPAL                          1                       0      190   559
0-24 months   GMS-Nepal       NEPAL                          1                       1      257   559
0-24 months   GMS-Nepal       NEPAL                          0                       0       52   559
0-24 months   GMS-Nepal       NEPAL                          0                       1       60   559
0-24 months   LCNI-5          MALAWI                         1                       0        5    34
0-24 months   LCNI-5          MALAWI                         1                       1        2    34
0-24 months   LCNI-5          MALAWI                         0                       0       22    34
0-24 months   LCNI-5          MALAWI                         0                       1        5    34
0-24 months   MAL-ED          BANGLADESH                     1                       0       13   121
0-24 months   MAL-ED          BANGLADESH                     1                       1       30   121
0-24 months   MAL-ED          BANGLADESH                     0                       0       30   121
0-24 months   MAL-ED          BANGLADESH                     0                       1       48   121
0-24 months   MAL-ED          BRAZIL                         1                       0        0    24
0-24 months   MAL-ED          BRAZIL                         1                       1        1    24
0-24 months   MAL-ED          BRAZIL                         0                       0        6    24
0-24 months   MAL-ED          BRAZIL                         0                       1       17    24
0-24 months   MAL-ED          INDIA                          1                       0        2   178
0-24 months   MAL-ED          INDIA                          1                       1        6   178
0-24 months   MAL-ED          INDIA                          0                       0       68   178
0-24 months   MAL-ED          INDIA                          0                       1      102   178
0-24 months   MAL-ED          NEPAL                          1                       0        1    98
0-24 months   MAL-ED          NEPAL                          1                       1        1    98
0-24 months   MAL-ED          NEPAL                          0                       0       19    98
0-24 months   MAL-ED          NEPAL                          0                       1       77    98
0-24 months   MAL-ED          PERU                           1                       0        1    34
0-24 months   MAL-ED          PERU                           1                       1        4    34
0-24 months   MAL-ED          PERU                           0                       0        5    34
0-24 months   MAL-ED          PERU                           0                       1       24    34
0-24 months   MAL-ED          SOUTH AFRICA                   1                       0        0    80
0-24 months   MAL-ED          SOUTH AFRICA                   1                       1        0    80
0-24 months   MAL-ED          SOUTH AFRICA                   0                       0       14    80
0-24 months   MAL-ED          SOUTH AFRICA                   0                       1       66    80
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        9    50
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       41    50
0-24 months   SAS-FoodSuppl   INDIA                          1                       0        0   108
0-24 months   SAS-FoodSuppl   INDIA                          1                       1        0   108
0-24 months   SAS-FoodSuppl   INDIA                          0                       0      100   108
0-24 months   SAS-FoodSuppl   INDIA                          0                       1        8   108
0-6 months    EE              PAKISTAN                       1                       0        1     3
0-6 months    EE              PAKISTAN                       1                       1        0     3
0-6 months    EE              PAKISTAN                       0                       0        0     3
0-6 months    EE              PAKISTAN                       0                       1        2     3
0-6 months    GMS-Nepal       NEPAL                          1                       0       54   216
0-6 months    GMS-Nepal       NEPAL                          1                       1      117   216
0-6 months    GMS-Nepal       NEPAL                          0                       0       18   216
0-6 months    GMS-Nepal       NEPAL                          0                       1       27   216
0-6 months    LCNI-5          MALAWI                         1                       0        0     4
0-6 months    LCNI-5          MALAWI                         1                       1        0     4
0-6 months    LCNI-5          MALAWI                         0                       0        4     4
0-6 months    LCNI-5          MALAWI                         0                       1        0     4
0-6 months    MAL-ED          BANGLADESH                     1                       0        3    60
0-6 months    MAL-ED          BANGLADESH                     1                       1       15    60
0-6 months    MAL-ED          BANGLADESH                     0                       0        9    60
0-6 months    MAL-ED          BANGLADESH                     0                       1       33    60
0-6 months    MAL-ED          BRAZIL                         1                       0        0    15
0-6 months    MAL-ED          BRAZIL                         1                       1        1    15
0-6 months    MAL-ED          BRAZIL                         0                       0        1    15
0-6 months    MAL-ED          BRAZIL                         0                       1       13    15
0-6 months    MAL-ED          INDIA                          1                       0        2    83
0-6 months    MAL-ED          INDIA                          1                       1        4    83
0-6 months    MAL-ED          INDIA                          0                       0       24    83
0-6 months    MAL-ED          INDIA                          0                       1       53    83
0-6 months    MAL-ED          NEPAL                          1                       0        1    48
0-6 months    MAL-ED          NEPAL                          1                       1        1    48
0-6 months    MAL-ED          NEPAL                          0                       0        8    48
0-6 months    MAL-ED          NEPAL                          0                       1       38    48
0-6 months    MAL-ED          PERU                           1                       0        0    10
0-6 months    MAL-ED          PERU                           1                       1        2    10
0-6 months    MAL-ED          PERU                           0                       0        0    10
0-6 months    MAL-ED          PERU                           0                       1        8    10
0-6 months    MAL-ED          SOUTH AFRICA                   1                       0        0    29
0-6 months    MAL-ED          SOUTH AFRICA                   1                       1        0    29
0-6 months    MAL-ED          SOUTH AFRICA                   0                       0        5    29
0-6 months    MAL-ED          SOUTH AFRICA                   0                       1       24    29
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       13    14
0-6 months    SAS-FoodSuppl   INDIA                          1                       0        0    48
0-6 months    SAS-FoodSuppl   INDIA                          1                       1        0    48
0-6 months    SAS-FoodSuppl   INDIA                          0                       0       48    48
0-6 months    SAS-FoodSuppl   INDIA                          0                       1        0    48
6-24 months   EE              PAKISTAN                       1                       0        0     1
6-24 months   EE              PAKISTAN                       1                       1        0     1
6-24 months   EE              PAKISTAN                       0                       0        0     1
6-24 months   EE              PAKISTAN                       0                       1        1     1
6-24 months   GMS-Nepal       NEPAL                          1                       0      136   343
6-24 months   GMS-Nepal       NEPAL                          1                       1      140   343
6-24 months   GMS-Nepal       NEPAL                          0                       0       34   343
6-24 months   GMS-Nepal       NEPAL                          0                       1       33   343
6-24 months   LCNI-5          MALAWI                         1                       0        5    30
6-24 months   LCNI-5          MALAWI                         1                       1        2    30
6-24 months   LCNI-5          MALAWI                         0                       0       18    30
6-24 months   LCNI-5          MALAWI                         0                       1        5    30
6-24 months   MAL-ED          BANGLADESH                     1                       0       10    61
6-24 months   MAL-ED          BANGLADESH                     1                       1       15    61
6-24 months   MAL-ED          BANGLADESH                     0                       0       21    61
6-24 months   MAL-ED          BANGLADESH                     0                       1       15    61
6-24 months   MAL-ED          BRAZIL                         1                       0        0     9
6-24 months   MAL-ED          BRAZIL                         1                       1        0     9
6-24 months   MAL-ED          BRAZIL                         0                       0        5     9
6-24 months   MAL-ED          BRAZIL                         0                       1        4     9
6-24 months   MAL-ED          INDIA                          1                       0        0    95
6-24 months   MAL-ED          INDIA                          1                       1        2    95
6-24 months   MAL-ED          INDIA                          0                       0       44    95
6-24 months   MAL-ED          INDIA                          0                       1       49    95
6-24 months   MAL-ED          NEPAL                          1                       0        0    50
6-24 months   MAL-ED          NEPAL                          1                       1        0    50
6-24 months   MAL-ED          NEPAL                          0                       0       11    50
6-24 months   MAL-ED          NEPAL                          0                       1       39    50
6-24 months   MAL-ED          PERU                           1                       0        1    24
6-24 months   MAL-ED          PERU                           1                       1        2    24
6-24 months   MAL-ED          PERU                           0                       0        5    24
6-24 months   MAL-ED          PERU                           0                       1       16    24
6-24 months   MAL-ED          SOUTH AFRICA                   1                       0        0    51
6-24 months   MAL-ED          SOUTH AFRICA                   1                       1        0    51
6-24 months   MAL-ED          SOUTH AFRICA                   0                       0        9    51
6-24 months   MAL-ED          SOUTH AFRICA                   0                       1       42    51
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0    36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8    36
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       28    36
6-24 months   SAS-FoodSuppl   INDIA                          1                       0        0    60
6-24 months   SAS-FoodSuppl   INDIA                          1                       1        0    60
6-24 months   SAS-FoodSuppl   INDIA                          0                       0       52    60
6-24 months   SAS-FoodSuppl   INDIA                          0                       1        8    60


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
![](/tmp/34f0aa3c-3b2c-42d9-baf7-f1423ebb1d06/a86be64b-4139-4e6b-b24f-c8aadd62159c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34f0aa3c-3b2c-42d9-baf7-f1423ebb1d06/a86be64b-4139-4e6b-b24f-c8aadd62159c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34f0aa3c-3b2c-42d9-baf7-f1423ebb1d06/a86be64b-4139-4e6b-b24f-c8aadd62159c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34f0aa3c-3b2c-42d9-baf7-f1423ebb1d06/a86be64b-4139-4e6b-b24f-c8aadd62159c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.5749441   0.5250126   0.6248755
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.5357143   0.4313777   0.6400508
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.6976744   0.5693135   0.8260353
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.6153846   0.5015292   0.7292400
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.6842105   0.6140569   0.7543642
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.6000000   0.4531242   0.7468758
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.5072464   0.4420152   0.5724775
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.4925373   0.3695646   0.6155100
6-24 months   MAL-ED      BANGLADESH   1                    NA                0.6000000   0.3962234   0.8037766
6-24 months   MAL-ED      BANGLADESH   0                    NA                0.4166667   0.2563280   0.5770053


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5670841   0.5219813   0.6121868
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.6446281   0.5577732   0.7314830
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.6666667   0.6030996   0.7302337
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   MAL-ED      BANGLADESH   NA                   NA                0.4918033   0.3610932   0.6225134


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 0.9317676   0.7528165   1.153257
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.8820513   0.6792104   1.145469
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 0.8769231   0.6725124   1.143465
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 0.9710021   0.7332506   1.285843
6-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      BANGLADESH   0                    1                 0.6944444   0.4157783   1.159880


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0078600   -0.0311387   0.0154187
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0530463   -0.1633844   0.0572918
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0175439   -0.0517806   0.0166929
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0028732   -0.0300857   0.0243393
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.1081967   -0.2641060   0.0477125


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0138604   -0.0558133   0.0264255
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0822898   -0.2703360   0.0779201
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0263158   -0.0792180   0.0239932
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0056966   -0.0610868   0.0468022
6-24 months   MAL-ED      BANGLADESH   1                    NA                -0.2200000   -0.5887217   0.0631462
