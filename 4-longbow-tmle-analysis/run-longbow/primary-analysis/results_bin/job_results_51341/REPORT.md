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

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

agecat        studyid                    country                        predfeed6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       26    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       42    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       35    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        2    170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        7    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       64    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       97    170
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        4     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       17     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       68     90
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        5     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       19     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       65     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       37     45
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       76    257
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       65    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      0       74    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      1       42    257
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8    108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      187    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      208    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       68    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       75    538
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     3142   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2315   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1162   7501
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      882   7501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      985   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      373   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      343   1836
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      135   1836
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        5     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       21     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        7     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       26     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        1     76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        3     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       21     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       51     76
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        2     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       32     42
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        3     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        7     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       11     12
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       20    108
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       37    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      0       27    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      1       24    108
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     48
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       49    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1       73    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       21    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       28    171
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1013   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     2315   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      472   4682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      882   4682
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      139    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      229    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       75    522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       79    522
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       21     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       21     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        1     94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        4     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       43     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       46     94
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        2     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       36     48
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        2     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       12     19
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     49
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     33
6-24 months   ki1000109-EE               PAKISTAN                       1                      0       56    149
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       28    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       47    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      1       18    149
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     60
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      138    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       47    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       47    367
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2129   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      690   2819
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   2819
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      846   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      144   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      268   1314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       56   1314


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/57f50030-4fe1-4df7-a2b8-6914566a6938/198f4646-f4cc-492e-bbfc-095e642f5fe5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57f50030-4fe1-4df7-a2b8-6914566a6938/198f4646-f4cc-492e-bbfc-095e642f5fe5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57f50030-4fe1-4df7-a2b8-6914566a6938/198f4646-f4cc-492e-bbfc-095e642f5fe5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57f50030-4fe1-4df7-a2b8-6914566a6938/198f4646-f4cc-492e-bbfc-095e642f5fe5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6101531   0.4991062   0.7212000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6701683   0.5209650   0.8193716
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4647073   0.3727713   0.5566433
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3587504   0.2670214   0.4504795
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5271018   0.4734253   0.5807783
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5247518   0.4360524   0.6134511
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4202697   0.4075061   0.4330332
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4413467   0.4207086   0.4619848
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2775033   0.2534897   0.3015170
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2759248   0.2372473   0.3146023
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8076923   0.6590088   0.9563759
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7878788   0.6482934   0.9274642
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6332643   0.5048361   0.7616926
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4463778   0.3047083   0.5880474
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5939849   0.5059946   0.6819752
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5542814   0.4126007   0.6959620
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6919766   0.6765090   0.7074441
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6569649   0.6319219   0.6820079
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.5975528   0.5504443   0.6446612
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5636927   0.5021421   0.6252433
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5000000   0.3367001   0.6632999
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4500000   0.2444054   0.6555946
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3350835   0.2339533   0.4362138
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2743232   0.1619236   0.3867228
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4966884   0.4314593   0.5619174
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5157759   0.4080427   0.6235090
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1450559   0.1235802   0.1665315
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1683562   0.1280969   0.2086155


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5260223   0.4802445   0.5718001
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4262098   0.4150208   0.4373989
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2766885   0.2556490   0.2977279
0-6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.7966102   0.6946250   0.8985954
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5906433   0.5164645   0.6648221
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6828279   0.6694976   0.6961581
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5900383   0.5478064   0.6322702
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4959128   0.4403572   0.5514684
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1522070   0.1331665   0.1712475


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0983610   0.8220086   1.4676206
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.7719923   0.5587677   1.0665829
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9955415   0.8171134   1.2129320
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0501513   0.9956749   1.1076083
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9943115   0.8492552   1.1641441
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9754690   0.7555273   1.2594379
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7048839   0.4824804   1.0298063
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9331574   0.6935374   1.2555671
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9494034   0.9091533   0.9914354
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9433355   0.8413805   1.0576449
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9000000   0.5131644   1.5784417
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.8186711   0.4908924   1.3653142
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0384295   0.8111503   1.3293910
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1606299   0.8759045   1.5379095


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0262105   -0.0572055    0.1096266
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0483649   -0.1080250    0.0112953
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0010795   -0.0283932    0.0262341
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0059402   -0.0003453    0.0122257
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0008149   -0.0119430    0.0103132
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0110821   -0.1251307    0.1029664
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0684495   -0.1603180    0.0234190
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0033416   -0.0516259    0.0449427
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0091487   -0.0174445   -0.0008530
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0075144   -0.0266791    0.0116502
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0161290   -0.1017291    0.0694710
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0263587   -0.0931863    0.0404689
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0007755   -0.0330819    0.0315308
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0071511   -0.0042158    0.0185181


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0411880   -0.0984412    0.1630681
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.1161661   -0.2686758    0.0180102
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0020522   -0.0553433    0.0485479
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0139372   -0.0009208    0.0285747
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0029452   -0.0439769    0.0364739
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0139116   -0.1678073    0.1197034
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1211893   -0.2991516    0.0323951
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0056576   -0.0908339    0.0728679
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0133983   -0.0256321   -0.0013104
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0127355   -0.0457157    0.0192045
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0333333   -0.2253187    0.1285714
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0853793   -0.3258187    0.1114560
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0015639   -0.0688681    0.0615024
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0469830   -0.0305029    0.1186427
