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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        predfeed6    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       68     194  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     194  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      118     194  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        8     194  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        5      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       52      57  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      57  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        4      37  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0      37  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       33      37  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      37  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3      23  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      23  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       19      23  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      23  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                  0       72     208  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     208  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                  0      136     208  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     208  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1      90  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      90  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       89      90  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      90  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     105  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     105  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105     105  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     105  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                  0       24      28  swasted          
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      28  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      28  swasted          
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      28  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      371     522  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       19     522  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      129     522  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1        3     522  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8220   10744  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      172   10744  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2314   10744  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38   10744  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1783    2224  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    2224  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      412    2224  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       10    2224  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       83     231  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     231  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      146     231  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     231  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       30     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      179     209  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       11     218  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     218  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      202     218  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     218  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       12     225  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      213     225  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     225  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                  0       92     271  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                  0      179     271  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     233  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     233  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      227     233  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     233  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      231     232  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     232  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                  0       42      48  swasted          
6 months    ki1000109-EE               PAKISTAN                       1                  1        1      48  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48  swasted          
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     547  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     547  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      141     547  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     547  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7512    9882  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      113    9882  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2232    9882  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       25    9882  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3308    4275  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    4275  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      937    4275  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       11    4275  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       76     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      129     205  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     205  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       24     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      144     169  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     209  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     209  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      196     209  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     209  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       12     219  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     219  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      207     219  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     219  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                  0       67     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                  0      132     201  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     201  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     216  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      213     216  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     216  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      201     202  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     202  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                  0       20      23  swasted          
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      23  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      23  swasted          
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      23  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      349     469  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        6     469  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      105     469  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        9     469  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3752    5067  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      157    5067  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1120    5067  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38    5067  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3198    4184  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       80    4184  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      880    4184  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       26    4184  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/5c319133-4d87-4184-a83a-59583a83ff2a/916ed52f-0042-4a4a-a93f-72c9039e69b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c319133-4d87-4184-a83a-59583a83ff2a/916ed52f-0042-4a4a-a93f-72c9039e69b6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c319133-4d87-4184-a83a-59583a83ff2a/916ed52f-0042-4a4a-a93f-72c9039e69b6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c319133-4d87-4184-a83a-59583a83ff2a/916ed52f-0042-4a4a-a93f-72c9039e69b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0204957   0.0172481   0.0237433
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0161565   0.0095646   0.0227484
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0105438   0.0056293   0.0154584
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0236967   0.0022219   0.0451714
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0148197   0.0119197   0.0177197
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0110767   0.0059602   0.0161931
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057109   0.0020227   0.0093990
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0116034   0.0055832   0.0176236
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0169014   0.0034782   0.0303247
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0789474   0.0293943   0.1285004
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0401637   0.0320064   0.0483211
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0328152   0.0226906   0.0429398
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0244051   0.0179842   0.0308260
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0286976   0.0174361   0.0399591


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0195458   0.0166489   0.0224427
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0130396   0.0073461   0.0187330
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0139648   0.0114567   0.0164729
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0070175   0.0038738   0.0101612
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0319829   0.0160416   0.0479243
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0384843   0.0318086   0.0451600
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0253346   0.0198022   0.0308670


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7882852   0.5075556    1.224287
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.2474433   0.8096472    6.238521
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7474288   0.4509941    1.238708
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0318121   0.8808884    4.686474
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.6710523   1.6973880   12.854297
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8170357   0.5633987    1.184858
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1758830   0.7291736    1.896257


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009499   -0.0025684   0.0006686
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024957   -0.0017114   0.0067028
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008549   -0.0022103   0.0005005
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0013067   -0.0002711   0.0028845
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0150815    0.0023717   0.0277913
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0016794   -0.0046737   0.0013148
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0009295   -0.0019098   0.0037687


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0485996   -0.1354854   0.0316379
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1913965   -0.1518655   0.4323646
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0612174   -0.1630362   0.0316876
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1862038   -0.1055211   0.4009483
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.4715493    0.0254393   0.7134502
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0436389   -0.1221301   0.0293619
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0366883   -0.0832125   0.1433172
