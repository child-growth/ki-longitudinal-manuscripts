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

agecat        studyid                    country                        predfeed36    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0      124     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        7     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      110     247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        6     247
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       37     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      178     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       20     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      200     241
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       21     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       32     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      202     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        4     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0      126     282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        1     282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      155     282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1        0     282
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      268     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        2     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      251     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-24 months   ki1000109-EE               PAKISTAN                       1                     0      210     372
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       15     372
0-24 months   ki1000109-EE               PAKISTAN                       0                     0      134     372
0-24 months   ki1000109-EE               PAKISTAN                       0                     1       13     372
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30     166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      366     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       59     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       88     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9816   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      484   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2277   12813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      236   12813
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3247    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      251    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      871    4470
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      101    4470
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0      128     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        3     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      112     247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        4     247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       37     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      179     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        1     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      202     240
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       32     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      200     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        5     237
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0      127     282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0     282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      155     282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        0     282
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      266     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        2     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      251     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
0-6 months    ki1000109-EE               PAKISTAN                       1                     0      207     366
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       12     366
0-6 months    ki1000109-EE               PAKISTAN                       0                     0      132     366
0-6 months    ki1000109-EE               PAKISTAN                       0                     1       15     366
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      364     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       44     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       85     509
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       16     509
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0        7      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0       37      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        2      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0      124     247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        7     247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      110     247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        6     247
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       37     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      178     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        1     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       20     241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     241
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      200     241
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       21     241
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       32     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      202     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        4     238
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0      126     282
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        1     282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      155     282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1        0     282
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      268     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        2     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      251     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0     253
6-24 months   ki1000109-EE               PAKISTAN                       1                     0      210     372
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       15     372
6-24 months   ki1000109-EE               PAKISTAN                       0                     0      134     372
6-24 months   ki1000109-EE               PAKISTAN                       0                     1       13     372
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30     166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      366     528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       59     528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       88     528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15     528
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42     240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3     240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9816   12813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      484   12813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2277   12813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      236   12813
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3247    4470
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      251    4470
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      871    4470
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      101    4470


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/82a0c98f-01ac-48c7-bc03-c706d519ecc9/4a99996f-e865-47b5-b4b1-cdbfae692154/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82a0c98f-01ac-48c7-bc03-c706d519ecc9/4a99996f-e865-47b5-b4b1-cdbfae692154/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82a0c98f-01ac-48c7-bc03-c706d519ecc9/4a99996f-e865-47b5-b4b1-cdbfae692154/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82a0c98f-01ac-48c7-bc03-c706d519ecc9/4a99996f-e865-47b5-b4b1-cdbfae692154/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0534351   0.0148445   0.0920258
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0517241   0.0113397   0.0921086
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0673572   0.0346524   0.1000619
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0881671   0.0425772   0.1337570
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1388022   0.1058411   0.1717633
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1458108   0.0765347   0.2150869
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0487145   0.0440257   0.0534033
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0846202   0.0728073   0.0964332
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0748724   0.0644052   0.0853396
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0875626   0.0685804   0.1065449
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0546485   0.0243799   0.0849171
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1018910   0.0524397   0.1513424
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1080374   0.0779195   0.1381553
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1610957   0.0912845   0.2309069
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0534351   0.0148445   0.0920258
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0517241   0.0113397   0.0921086
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0671669   0.0345439   0.0997900
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0876477   0.0418578   0.1334376
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1391078   0.1061350   0.1720806
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1458312   0.0762907   0.2153717
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0485509   0.0438624   0.0532393
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0853526   0.0737152   0.0969899
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0746621   0.0642392   0.0850851
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0909797   0.0712509   0.1107085


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0752688   0.0484230   0.1021146
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1401515   0.1105133   0.1697898
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0561929   0.0517926   0.0605933
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0787472   0.0695071   0.0879873
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1178782   0.0898370   0.1459194
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0752688   0.0484230   0.1021146
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1401515   0.1105133   0.1697898
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0561929   0.0517926   0.0605933
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0787472   0.0695071   0.0879873


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9679803   0.3341702   2.803918
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.3089495   0.6434338   2.662821
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0504935   0.6173102   1.787653
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.7370634   1.4721325   2.049672
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1694916   0.9077032   1.506782
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 1.8644789   0.8923855   3.895493
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4911101   0.8900267   2.498138
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9679803   0.3341702   2.803918
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.3049237   0.6387108   2.666036
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0483324   0.6152643   1.786226
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.7580034   1.4901974   2.073937
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2185521   0.9448485   1.571542


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0008035   -0.0270368   0.0254297
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0079117   -0.0145488   0.0303721
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0013493   -0.0135002   0.0161989
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0074784    0.0049515   0.0100053
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0038748   -0.0010021   0.0087517
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0191220   -0.0041916   0.0424355
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0098408   -0.0057307   0.0254123
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0008035   -0.0270368   0.0254297
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0081019   -0.0142711   0.0304748
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0010437   -0.0138028   0.0158902
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0076421    0.0051134   0.0101707
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0040851   -0.0008088   0.0089790


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0152672   -0.6586937   0.3785668
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.1051120   -0.2455934   0.3570739
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0096277   -0.1021909   0.1101022
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1330843    0.0875178   0.1763754
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0492056   -0.0151008   0.1094382
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.2592088   -0.1162418   0.5083757
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0834826   -0.0571314   0.2053928
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0152672   -0.6586937   0.3785668
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.1076392   -0.2415413   0.3586135
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0074471   -0.1043340   0.1079136
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1359971    0.0903846   0.1793224
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0518758   -0.0126216   0.1122651
