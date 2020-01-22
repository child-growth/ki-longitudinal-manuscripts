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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        predfeed36    wasted   n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       59    208  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10    208  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      115    208  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       24    208  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        7     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       53     62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        2     62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        4     40  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     40  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       31     40  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        5     40  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        0     25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1     25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       23     25  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1     25  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1                  0       57    218  wasted           
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    218  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0                  0      156    218  wasted           
Birth       ki0047075b-MAL-ED          PERU                           0                  1        5    218  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    104  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    104  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       93    104  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        9    104  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      110    111  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    111  wasted           
Birth       ki1000109-EE               PAKISTAN                       1                  0        2      6  wasted           
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      6  wasted           
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      6  wasted           
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      6  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      320    491  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       76    491  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       77    491  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       18    491  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5983   8619  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      763   8619  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1680   8619  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      193   8619  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1540   2128  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      174   2128  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      367   2128  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       47   2128  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       78    240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        3    240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      154    240  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        5    240  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       25    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      183    209  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1    209  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       16    233  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1    233  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      198    233  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18    233  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        8    235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      223    235  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4    235  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1                  0       72    272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0                  0      200    272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    272  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3    250  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    250  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      240    250  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7    250  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5    243  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    243  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      237    243  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    243  wasted           
6 months    ki1000109-EE               PAKISTAN                       1                  0        4      9  wasted           
6 months    ki1000109-EE               PAKISTAN                       1                  1        0      9  wasted           
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      9  wasted           
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      9  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0    168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0    168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127    168  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41    168  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      383    527  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39    527  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       95    527  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10    527  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47    272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0    272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221    272  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4    272  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6001   8535  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      575   8535  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1789   8535  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      170   8535  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3093   4188  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      159   4188  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      858   4188  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78   4188  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       62    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        7    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      129    212  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       14    212  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       20    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      146    169  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        3    169  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       16    224  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1    224  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      181    224  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       26    224  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        8    227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      214    227  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        5    227  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1                  0       52    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0                  0      145    201  wasted           
24 months   ki0047075b-MAL-ED          PERU                           0                  1        3    201  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3    235  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    235  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      231    235  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1    235  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        4    213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      205    213  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4    213  wasted           
24 months   ki1000109-EE               PAKISTAN                       1                  0        0      3  wasted           
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      3  wasted           
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      3  wasted           
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      3  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      304    445  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58    445  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       60    445  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23    445  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33    184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1    184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147    184  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3    184  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2563   4317  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      757   4317  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      775   4317  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      222   4317  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2551   4035  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      593   4035  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      692   4035  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      199   4035  wasted           


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/b0cd9922-0585-4237-a3c9-df7d0efb760b/9f6c93f1-60ed-499f-9e7f-ce448798b2d6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0cd9922-0585-4237-a3c9-df7d0efb760b/9f6c93f1-60ed-499f-9e7f-ce448798b2d6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0cd9922-0585-4237-a3c9-df7d0efb760b/9f6c93f1-60ed-499f-9e7f-ce448798b2d6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0cd9922-0585-4237-a3c9-df7d0efb760b/9f6c93f1-60ed-499f-9e7f-ce448798b2d6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1449275   0.0616655   0.2281896
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1726619   0.1096784   0.2356454
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1919192   0.1530926   0.2307458
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1894737   0.1105900   0.2683573
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1131041   0.1045247   0.1216834
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1030432   0.0874225   0.1186640
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1015169   0.0835805   0.1194533
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1135266   0.0760216   0.1510316
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0924171   0.0647589   0.1200752
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0952381   0.0390378   0.1514384
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0874392   0.0796369   0.0952414
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0867790   0.0733351   0.1002228
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0488930   0.0384425   0.0593435
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0833333   0.0649081   0.1017585
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1014493   0.0300414   0.1728571
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0979021   0.0490785   0.1467257
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1602210   0.1223920   0.1980500
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2771084   0.1807124   0.3735044
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2280120   0.2106521   0.2453720
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2226680   0.1904160   0.2549200
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1886132   0.1726054   0.2046210
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2233446   0.1897570   0.2569321


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1634615   0.1130867   0.2138364
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1914460   0.1566101   0.2262820
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1109177   0.1033745   0.1184610
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1038534   0.0874500   0.1202568
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0929791   0.0681617   0.1177965
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0872876   0.0805483   0.0940269
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0565903   0.0475372   0.0656433
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1820225   0.1461311   0.2179138
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2267779   0.2114523   0.2421034
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1962825   0.1816413   0.2109237


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.1913669   0.6032458   2.352864
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9872576   0.6214464   1.568402
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9110482   0.7693582   1.078833
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1183019   0.7730565   1.617733
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0305250   0.5317475   1.997154
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9924496   0.8295404   1.187352
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7044025   1.2521966   2.319914
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9650350   0.4072906   2.286555
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7295388   1.1359084   2.633403
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9765624   0.8295311   1.149655
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1841404   0.9977258   1.405385


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0185340   -0.0512564   0.0883244
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0004732   -0.0174846   0.0165383
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0021863   -0.0060553   0.0016827
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0023365   -0.0056451   0.0103180
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0005621   -0.0119182   0.0130424
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0001515   -0.0037297   0.0034267
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0076973    0.0029200   0.0124746
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0023927   -0.0607420   0.0559567
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0218015    0.0020282   0.0415747
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0012342   -0.0096642   0.0071958
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0076693   -0.0005396   0.0158782


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1133845   -0.4335513   0.4516505
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0024715   -0.0953856   0.0825613
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0197112   -0.0551821   0.0145673
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0224977   -0.0573847   0.0963452
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0060451   -0.1376585   0.1315967
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0017360   -0.0435722   0.0384229
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1360176    0.0431014   0.2199115
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0241546   -0.8202311   0.4237586
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1197735    0.0059331   0.2205770
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0054423   -0.0433197   0.0310600
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0390727   -0.0034550   0.0797981
