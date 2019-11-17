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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        predfeed6    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       69     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       16     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      127     233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      178     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     219
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      161     219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       47     219
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       10     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      195     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       18     225
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       90     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  0      170     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214     237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     237
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      211     235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       23     235
0-24 months   ki1000109-EE               PAKISTAN                       1                  0       20      48
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       23      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      48
0-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      48
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      279     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      141     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       93     565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       52     565
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11280   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1121   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3166   15902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      335   15902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3154    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      549    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      834    4753
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      216    4753
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       83     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      141     233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       29     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      180     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       11     219
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  0      192     219
0-6 months    ki0047075b-MAL-ED          INDIA                          0                  1       16     219
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       12     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      207     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        6     225
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       92     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  0      178     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                  1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      231     237
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     237
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      230     235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     235
0-6 months    ki1000109-EE               PAKISTAN                       1                  0       35      48
0-6 months    ki1000109-EE               PAKISTAN                       1                  1        8      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48
0-6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       21     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      133     565
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       12     565
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    11859   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      519   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3351   15873
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      144   15873
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3607    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       78    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      973    4703
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       45    4703
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       68     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       16     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      128     229
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       17     229
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       30     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      175     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  0      164     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                  1       42     217
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       10     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      198     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       14     224
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       89     269
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  0      169     269
6-24 months   ki0047075b-MAL-ED          PERU                           0                  1        9     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214     235
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       18     235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      209     231
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       21     231
6-24 months   ki1000109-EE               PAKISTAN                       1                  0       23      47
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       19      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  0        5      47
6-24 months   ki1000109-EE               PAKISTAN                       0                  1        0      47
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      278     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      137     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       94     557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                  1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7189   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      689   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2104   10192
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      210   10192
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3195    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      500    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      850    4741
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      196    4741


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
![](/tmp/767628a3-8c2c-4216-a962-34563e9c53b3/0e67f979-3009-478d-966d-f46d2b96dbcf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/767628a3-8c2c-4216-a962-34563e9c53b3/0e67f979-3009-478d-966d-f46d2b96dbcf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/767628a3-8c2c-4216-a962-34563e9c53b3/0e67f979-3009-478d-966d-f46d2b96dbcf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/767628a3-8c2c-4216-a962-34563e9c53b3/0e67f979-3009-478d-966d-f46d2b96dbcf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1882353   0.1049558   0.2715148
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1418919   0.0855539   0.1982298
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3357143   0.2905109   0.3809176
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3586207   0.2804896   0.4367518
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0903959   0.0848875   0.0959043
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0956869   0.0857322   0.1056417
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1482582   0.1352166   0.1612997
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2057143   0.1799964   0.2314321
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0500000   0.0291380   0.0708620
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0827586   0.0378740   0.1276432
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0419292   0.0380420   0.0458165
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0412017   0.0345392   0.0478642
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0211669   0.0152954   0.0270384
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0442043   0.0312540   0.0571547
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1904762   0.1063185   0.2746339
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1172414   0.0647636   0.1697192
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3301205   0.2848361   0.3754049
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3380282   0.2601546   0.4159018
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0874587   0.0807870   0.0941305
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0907519   0.0781373   0.1033666
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1353180   0.1231193   0.1475167
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1873805   0.1630535   0.2117075


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1587983   0.1117681   0.2058285
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3415929   0.3024539   0.3807320
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0915608   0.0867079   0.0964137
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1609510   0.1491579   0.1727440
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0584071   0.0390530   0.0777612
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0417690   0.0384207   0.0451174
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0261535   0.0207066   0.0316005
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1441048   0.0985189   0.1896907
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3321364   0.2929882   0.3712847
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0882064   0.0821266   0.0942862
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1468045   0.1358635   0.1577455


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7538007   0.4159920   1.365929
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0682318   0.8268670   1.380052
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0585315   0.9391051   1.193145
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3875410   1.1937092   1.612847
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.6551724   0.8349580   3.281118
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9826490   0.8145856   1.185387
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0883709   1.4012961   3.112328
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6155172   0.3281680   1.154474
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0239539   0.7831336   1.338829
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0376543   0.8899650   1.209853
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3847419   1.1829716   1.620926


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0294370   -0.0933674   0.0344934
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0058786   -0.0173015   0.0290588
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0011649   -0.0013249   0.0036547
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0126928    0.0064853   0.0189004
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0084071   -0.0043502   0.0211643
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0001602   -0.0018694   0.0015491
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0049866    0.0019446   0.0080287
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0463714   -0.1093371   0.0165943
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0020160   -0.0209514   0.0249833
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007477   -0.0023917   0.0038870
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0114865    0.0055563   0.0174167


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1853736   -0.6618630   0.1544967
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0172095   -0.0530476   0.0827792
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0127224   -0.0148740   0.0395685
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0788613    0.0393333   0.1167630
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1439394   -0.0988175   0.3330651
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0038351   -0.0455757   0.0362392
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1906675    0.0639161   0.3002560
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3217893   -0.8304107   0.0455000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0060697   -0.0655428   0.0728693
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0084766   -0.0277292   0.0434069
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0782434    0.0367951   0.1179080
