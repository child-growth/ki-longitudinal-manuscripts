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

agecat        studyid                    country                        predfeed6    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ----------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      117     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      108     238
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     238
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      175     212
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     212
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       19     234
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      196     234
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       29     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      203     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0      113     270
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      156     270
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      243     248
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-24 months   ki1000109-EE               PAKISTAN                       1                    0      208     377
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       13     377
0-24 months   ki1000109-EE               PAKISTAN                       0                    0      141     377
0-24 months   ki1000109-EE               PAKISTAN                       0                    1       15     377
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136     166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30     166
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      357     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121     560
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23     560
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195     240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11837   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      608   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2940   15675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      290   15675
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3383    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      261    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      886    4632
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      102    4632
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      122     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      109     238
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     238
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      176     212
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     212
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       18     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      197     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       17     233
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       29     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      201     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        4     234
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0      114     270
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      156     270
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      241     246
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     246
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
0-6 months    ki1000109-EE               PAKISTAN                       1                    0      199     366
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       11     366
0-6 months    ki1000109-EE               PAKISTAN                       0                    0      140     366
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       16     366
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      353     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       41     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      117     533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       22     533
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0        7      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       37      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0      117     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        8     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      108     238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     238
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       35     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      175     212
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     212
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       19     234
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      196     234
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       19     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       29     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      203     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0      113     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      156     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      243     248
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0     248
6-24 months   ki1000109-EE               PAKISTAN                       1                    0      208     377
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       13     377
6-24 months   ki1000109-EE               PAKISTAN                       0                    0      141     377
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       15     377
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136     166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30     166
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      357     560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       59     560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121     560
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23     560
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42     240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195     240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3     240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11837   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      608   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2940   15675
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      290   15675
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3383    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      261    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      886    4632
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      102    4632


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
![](/tmp/5ef32a1c-45d5-4bd2-8b01-7a5c843a5789/23b84a00-9529-49ff-9eb5-371bf18305bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ef32a1c-45d5-4bd2-8b01-7a5c843a5789/23b84a00-9529-49ff-9eb5-371bf18305bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ef32a1c-45d5-4bd2-8b01-7a5c843a5789/23b84a00-9529-49ff-9eb5-371bf18305bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ef32a1c-45d5-4bd2-8b01-7a5c843a5789/23b84a00-9529-49ff-9eb5-371bf18305bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0640000   0.0210033   0.1069967
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0442478   0.0062515   0.0822441
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0596561   0.0288178   0.0904945
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0958682   0.0500391   0.1416973
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1421397   0.1085841   0.1756953
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1601823   0.1013192   0.2190454
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0511600   0.0467976   0.0555224
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0802645   0.0703524   0.0901766
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0747308   0.0644595   0.0850022
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0909429   0.0720333   0.1098525
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0518339   0.0221271   0.0815407
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1037168   0.0562185   0.1512151
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1042974   0.0741334   0.1344614
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1605001   0.0997723   0.2212278
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0640000   0.0210033   0.1069967
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0442478   0.0062515   0.0822441
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0594716   0.0284924   0.0904507
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0952967   0.0498431   0.1407503
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1413100   0.1076839   0.1749360
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1546532   0.0939539   0.2153524
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0507912   0.0464433   0.0551390
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0809519   0.0710357   0.0908681
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0744623   0.0642147   0.0847099
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0897458   0.0707869   0.1087046


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0546218   0.0256911   0.0835526
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1181989   0.0907652   0.1456326
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0546218   0.0256911   0.0835526
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1464286   0.1171213   0.1757358
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0572887   0.0532017   0.0613756
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0783679   0.0692461   0.0874896


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6913717   0.2323821   2.056934
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.6070125   0.7937901   3.253365
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1269356   0.7274504   1.745801
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5688914   1.3558421   1.815418
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2169395   0.9530703   1.553864
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 2.0009448   0.9581986   4.178445
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.5388695   0.9550486   2.479580
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6913717   0.2323821   2.056934
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.6023919   0.7895390   3.252100
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0944250   0.6913046   1.732617
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5938188   1.3781109   1.843290
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2052518   0.9410998   1.543547


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0093782   -0.0366504   0.0178941
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0146144   -0.0085248   0.0377536
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0042889   -0.0135350   0.0221128
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0061287    0.0038329   0.0084245
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0036370   -0.0010443   0.0083184
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0219366   -0.0020716   0.0459447
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0139015   -0.0039456   0.0317486
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0093782   -0.0366504   0.0178941
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0147990   -0.0085005   0.0380985
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051186   -0.0126174   0.0228546
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0064975    0.0042054   0.0087896
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0039056   -0.0007924   0.0086036


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1716923   -0.7832238   0.2301231
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.1967726   -0.1711851   0.4491270
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0292898   -0.1002335   0.1435652
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1069788    0.0664862   0.1457150
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0464099   -0.0155211   0.1045641
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.2973623   -0.0896079   0.5469015
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1176111   -0.0446496   0.2546685
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1716923   -0.7832238   0.2301231
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.1992579   -0.1722727   0.4530387
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0349564   -0.0939997   0.1487117
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1134169    0.0730181   0.1520551
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0498367   -0.0123217   0.1081784
