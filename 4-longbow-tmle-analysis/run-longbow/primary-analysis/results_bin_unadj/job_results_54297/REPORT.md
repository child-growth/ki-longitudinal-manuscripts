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

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        predfeed36    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       71     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       14     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      141     251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       25     251
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       28     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      193     224
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     224
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      168     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       53     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        8     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      206     236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       21     236
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       80     286
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      195     286
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     286
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        6     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      248     276
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22     276
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      221     250
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       23     250
0-24 months   ki1000109-EE               PAKISTAN                       1                   0        3       9
0-24 months   ki1000109-EE               PAKISTAN                       1                   1        1       9
0-24 months   ki1000109-EE               PAKISTAN                       0                   0        5       9
0-24 months   ki1000109-EE               PAKISTAN                       0                   1        0       9
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       73     184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      286     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      137     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       41     528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       44     272
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      212     272
0-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9017   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      925   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2527   12748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      279   12748
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3023    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      533    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      821    4589
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      212    4589
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       83     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      159     251
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     251
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       28     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      195     224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     224
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       18     239
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     239
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      202     239
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       19     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        8     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      220     236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        7     236
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       81     286
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      204     286
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        1     286
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        6     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      266     276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     276
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      240     250
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        4     250
0-6 months    ki1000109-EE               PAKISTAN                       1                   0        3       9
0-6 months    ki1000109-EE               PAKISTAN                       1                   1        1       9
0-6 months    ki1000109-EE               PAKISTAN                       0                   0        5       9
0-6 months    ki1000109-EE               PAKISTAN                       0                   1        0       9
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      157     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       26     183
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      405     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       18     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       11     528
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225     272
0-6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9520   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      401   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2688   12721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      112   12721
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3460    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       78    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      958    4540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       44    4540
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       67     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       14     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      137     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       21     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       25     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      180     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0       16     232
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1     232
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      169     232
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       46     232
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        8     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      210     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       16     234
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       70     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      189     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        4     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      232     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       20     256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      217     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     243
6-24 months   ki1000109-EE               PAKISTAN                       1                   0        3       9
6-24 months   ki1000109-EE               PAKISTAN                       1                   1        1       9
6-24 months   ki1000109-EE               PAKISTAN                       0                   0        5       9
6-24 months   ki1000109-EE               PAKISTAN                       0                   1        0       9
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      111     176
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       65     176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      289     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       67     526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       42     258
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        3     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   0      200     258
6-24 months   ki1148112-LCNI-5           MALAWI                         0                   1       13     258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6207    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1825    8812
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      184    8812
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3064    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      484    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      836    4577
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      193    4577


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
![](/tmp/d0e9b4dc-0a18-4c93-b2ae-6676ea63f4c6/5d0a0f60-7db9-4834-a571-519e2113c5d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0e9b4dc-0a18-4c93-b2ae-6676ea63f4c6/5d0a0f60-7db9-4834-a571-519e2113c5d8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0e9b4dc-0a18-4c93-b2ae-6676ea63f4c6/5d0a0f60-7db9-4834-a571-519e2113c5d8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0e9b4dc-0a18-4c93-b2ae-6676ea63f4c6/5d0a0f60-7db9-4834-a571-519e2113c5d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1647059   0.0856963   0.2437155
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1506024   0.0960854   0.2051195
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3238771   0.2792403   0.3685138
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3904762   0.2970739   0.4838785
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0930396   0.0868523   0.0992270
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0994298   0.0883500   0.1105096
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1498875   0.1366638   0.1631112
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2052275   0.1792158   0.2312392
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0425532   0.0232995   0.0618068
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1047619   0.0461297   0.1633941
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0404193   0.0361959   0.0446427
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0400000   0.0328471   0.0471529
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0220464   0.0160454   0.0280473
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0439122   0.0309534   0.0568709
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1728395   0.0903246   0.2553544
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1329114   0.0798666   0.1859562
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3151659   0.2707981   0.3595336
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.3557692   0.2636714   0.4478671
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0876084   0.0805268   0.0946900
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0915879   0.0779014   0.1052743
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1364149   0.1240425   0.1487873
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1875607   0.1628605   0.2122610


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1553785   0.1104725   0.2002845
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3371212   0.2967611   0.3774814
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0944462   0.0888980   0.0999944
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1623447   0.1503363   0.1743531
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0549242   0.0354725   0.0743760
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0403270   0.0366289   0.0440252
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0268722   0.0213332   0.0324113
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.3231939   0.2831873   0.3632006
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0885157   0.0819350   0.0950963
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1479135   0.1367519   0.1590750


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9143718   0.5013367   1.667693
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2056309   0.9147894   1.588940
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0686822   0.9422393   1.212093
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3692101   1.1771005   1.592673
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.4619048   1.1987106   5.056246
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9896259   0.8069553   1.213648
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.9918112   1.3389505   2.963001
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7689873   0.4127417   1.432716
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1288317   0.8407269   1.515666
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0454231   0.8890863   1.229250
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3749287   1.1735183   1.610907


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0093274   -0.0728181   0.0541633
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0132441   -0.0074670   0.0339553
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0014066   -0.0013077   0.0041208
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0124572    0.0060768   0.0188376
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0123711   -0.0000831   0.0248252
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000923   -0.0018937   0.0017091
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0048259    0.0017085   0.0079433
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0263960   -0.0912893   0.0384973
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0080280   -0.0122316   0.0282877
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009073   -0.0024463   0.0042608
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0114986    0.0053877   0.0176095


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0600302   -0.5582518   0.2788945
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0392860   -0.0241518   0.0987943
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0148927   -0.0142865   0.0432325
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0767332    0.0365437   0.1152461
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2252384   -0.0207122   0.4119249
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0022886   -0.0479547   0.0413875
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1795865    0.0535958   0.2888046
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1802469   -0.7150376   0.1877830
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0248397   -0.0398991   0.0855482
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0102496   -0.0283000   0.0473541
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0777387    0.0354475   0.1181756
