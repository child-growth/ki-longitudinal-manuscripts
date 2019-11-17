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

agecat        studyid                    country                        predfeed6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       15    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       30    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       25    114
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       44    114
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0    162
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        2    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       62    162
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       98    162
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        2     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       18     94
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       73     94
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       22     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       11     75
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       64     75
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        9     50
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       41     50
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       15     34
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       16     34
0-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     34
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        3     34
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8    108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      192    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      251    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       70    594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       81    594
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2004   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1506   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      594   4526
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      422   4526
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      986   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      372   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      349   1841
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      134   1841
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        4     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       14     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       32     58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0     72
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        1     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       20     72
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       51     72
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        1     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     44
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       35     44
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        3     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        7     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       13     14
0-6 months    ki1000109-EE               PAKISTAN                       1                      0        6     15
0-6 months    ki1000109-EE               PAKISTAN                       1                      1        7     15
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        0     15
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        2     15
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     48
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       54    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      116    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       24    228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       34    228
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      702   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1506   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      202   2832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      422   2832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      141    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       77    526
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    526
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       11     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       16     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       17     56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       12     56
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     90
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       42     90
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       47     90
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       38     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       15     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       40     47
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     36
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       28     36
6-24 months   ki1000109-EE               PAKISTAN                       1                      0        9     19
6-24 months   ki1000109-EE               PAKISTAN                       1                      1        9     19
6-24 months   ki1000109-EE               PAKISTAN                       0                      0        0     19
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        1     19
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     60
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      138    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       46    366
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       47    366
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1302   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      392   1694
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1694
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      845   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      143   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      272   1315
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       55   1315


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/ddc20f89-2298-4275-a574-9fb9de7ba305/adc8d506-ae27-45bf-bbe2-a745db9efa02/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ddc20f89-2298-4275-a574-9fb9de7ba305/adc8d506-ae27-45bf-bbe2-a745db9efa02/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ddc20f89-2298-4275-a574-9fb9de7ba305/adc8d506-ae27-45bf-bbe2-a745db9efa02/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ddc20f89-2298-4275-a574-9fb9de7ba305/adc8d506-ae27-45bf-bbe2-a745db9efa02/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6666667   0.5380396   0.7952937
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6376812   0.5149052   0.7604571
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5665914   0.5166081   0.6165747
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5364238   0.4464027   0.6264450
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4290598   0.4127253   0.4453944
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4153543   0.3848162   0.4458925
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2739323   0.2493557   0.2985088
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2774327   0.2374284   0.3174370
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6823529   0.6118839   0.7528220
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5862069   0.4571188   0.7152950
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6820652   0.6626382   0.7014923
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6762821   0.6395640   0.7130001
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6189189   0.5693869   0.6684509
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5064103   0.4278807   0.5849398
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5925926   0.4104877   0.7746975
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4137931   0.2226867   0.6048995
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4945055   0.4294359   0.5595751
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5053763   0.3987212   0.6120315
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1447368   0.1232643   0.1662093
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1681957   0.1284788   0.2079126


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6491228   0.5591034   0.7391422
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5589226   0.5151400   0.6027051
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4259832   0.4115786   0.4403878
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2748506   0.2539041   0.2957971
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6578947   0.5956613   0.7201282
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6807910   0.6636189   0.6979630
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5855513   0.5434121   0.6276905
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.5000000   0.3630175   0.6369825
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4972678   0.4417121   0.5528234
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1505703   0.1316510   0.1694897


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9565217   0.7281502   1.2565181
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9467560   0.7832370   1.1444135
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9680569   0.8911348   1.0516189
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0127786   0.8545864   1.2002537
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8590963   0.6736130   1.0956535
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9915211   0.9325555   1.0542151
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.8182174   0.6871988   0.9742156
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6982759   0.4011192   1.2155719
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0219833   0.7968052   1.3107970
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1620795   0.8792281   1.5359255


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0175439   -0.1251106    0.0900229
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0076689   -0.0339330    0.0185953
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030766   -0.0108534    0.0047001
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0009184   -0.0113988    0.0132355
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0244582   -0.0623411    0.0134247
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0012743   -0.0104277    0.0078792
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0333676   -0.0612522   -0.0054830
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0925926   -0.2328449    0.0476597
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0027623   -0.0289795    0.0345040
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0058335   -0.0053919    0.0170589


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0270270   -0.2076159    0.1265563
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0137208   -0.0618835    0.0322574
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0072224   -0.0256478    0.0108720
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0033413   -0.0425032    0.0471699
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0371765   -0.0967690    0.0191781
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0018717   -0.0154080    0.0114840
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0569849   -0.1060608   -0.0100865
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1851852   -0.5160790    0.0734890
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0055549   -0.0604002    0.0674077
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0387427   -0.0386652    0.1103816
