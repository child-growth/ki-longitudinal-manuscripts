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

agecat        studyid                    country                        predfeed36    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       25    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       44    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       19    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       34    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        2    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1       10    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       68    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       97    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        5     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       19     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       68     93
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1     32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        5     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       21     32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       13     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65     78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       37     45
0-24 months   ki1000109-EE               PAKISTAN                       1                       0       80    255
0-24 months   ki1000109-EE               PAKISTAN                       1                       1       66    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       0       68    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       1       41    255
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      100    108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8    108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      186    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      218    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       49    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       53    506
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     2406   5715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1809   5715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      856   5715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      644   5715
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      948   1783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      361   1783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      339   1783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      135   1783
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        5     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       23     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0        7     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       25     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        1     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        3     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       24     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       54     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        2     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       32     43
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        3     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1        8     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       11     12
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       21    107
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       38    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       0       25    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       23    107
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       48     48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     48
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0       51    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1       77    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       14    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       21    163
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0      683   3444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     1809   3444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      308   3444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      644   3444
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      134    512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      226    512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       73    512
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       79    512
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       21     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       12     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1        9     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        1     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        7     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       44     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       43     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        3     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       36     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        1     21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        2     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        5     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       13     21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       41     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     33
6-24 months   ki1000109-EE               PAKISTAN                       1                       0       59    148
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       28    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       43    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       1       18    148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       52     60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8     60
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      135    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      141    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       35    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       32    343
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1723   2271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0   2271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      548   2271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0   2271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      814   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      135   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      266   1271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       56   1271


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
![](/tmp/fb4bfb1c-f72b-4e5b-a032-339c4484f3a3/98a82018-c1bd-48ec-8dd9-d41e83d299d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb4bfb1c-f72b-4e5b-a032-339c4484f3a3/98a82018-c1bd-48ec-8dd9-d41e83d299d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb4bfb1c-f72b-4e5b-a032-339c4484f3a3/98a82018-c1bd-48ec-8dd9-d41e83d299d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb4bfb1c-f72b-4e5b-a032-339c4484f3a3/98a82018-c1bd-48ec-8dd9-d41e83d299d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6341445   0.5292520   0.7390371
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6405106   0.4884677   0.7925536
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4549260   0.3668678   0.5429843
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3713487   0.2757749   0.4669224
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5419234   0.4885044   0.5953423
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5075926   0.4035046   0.6116806
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4237984   0.4093174   0.4382794
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4427964   0.4190896   0.4665032
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2780533   0.2534990   0.3026076
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2798620   0.2408657   0.3188582
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.8214286   0.6823152   0.9605419
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.7812500   0.6381241   0.9243759
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6396180   0.5121959   0.7670400
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4723356   0.3279392   0.6167321
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6021468   0.5168637   0.6874298
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5865615   0.4181239   0.7549990
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7228531   0.7055118   0.7401944
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6841997   0.6552869   0.7131124
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.5996666   0.5523179   0.6470153
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5823568   0.5199997   0.6447139
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5121951   0.3484618   0.6759284
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4285714   0.2258750   0.6312678
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3249896   0.2263573   0.4236219
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2912552   0.1700621   0.4124484
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5127885   0.4470885   0.5784885
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4784994   0.3503534   0.6066454
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1425698   0.1207027   0.1644370
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1712750   0.1308841   0.2116659


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5355731   0.4882587   0.5828875
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4292213   0.4164001   0.4420426
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2781828   0.2567503   0.2996153
0-6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.8000000   0.6995926   0.9004074
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6012270   0.5255442   0.6769098
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7122532   0.6971343   0.7273720
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5957031   0.5531528   0.6382534
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1502754   0.1309788   0.1695719


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0100388   0.7551515   1.3509586
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.8162836   0.5910802   1.1272903
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9366502   0.7461157   1.1758411
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0448279   0.9834049   1.1100872
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0065048   0.8590315   1.1792953
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9510870   0.7410793   1.2206068
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7384653   0.5124187   1.0642292
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9741171   0.7064363   1.3432268
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9465265   0.9024048   0.9928056
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9711343   0.8678120   1.0867581
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8367347   0.4727681   1.4809056
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.8961986   0.5340528   1.5039186
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9331321   0.6931294   1.2562380
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2013413   0.9065538   1.5919861


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0051997   -0.0745253    0.0849247
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0353182   -0.0916814    0.0210451
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0063502   -0.0302077    0.0175073
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0054229   -0.0014685    0.0123143
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0001295   -0.0114615    0.0117206
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0214286   -0.1279114    0.0850542
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0695245   -0.1578545    0.0188055
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0009198   -0.0409868    0.0391473
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0105999   -0.0197570   -0.0014428
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0039635   -0.0232144    0.0152874
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0283242   -0.1184390    0.0617907
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0141788   -0.0786447    0.0502871
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0084153   -0.0362645    0.0194338
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0077055   -0.0040258    0.0194369


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0081329   -0.1244954    0.1251184
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0841695   -0.2272962    0.0422659
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0118569   -0.0573884    0.0317140
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0126343   -0.0035523    0.0285599
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0004656   -0.0420827    0.0412767
0-6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0267857   -0.1693195    0.0983739
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1219528   -0.2906940    0.0247277
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0015298   -0.0704414    0.0629455
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0148822   -0.0278380   -0.0020897
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0066535   -0.0394795    0.0251359
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0585366   -0.2614024    0.1117032
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0456187   -0.2755732    0.1428806
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0166847   -0.0733294    0.0369706
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0512762   -0.0298901    0.1260456
