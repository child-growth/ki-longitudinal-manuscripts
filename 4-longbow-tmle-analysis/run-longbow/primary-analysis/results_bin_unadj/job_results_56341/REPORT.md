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

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid               country                        predfeed3    wasted   n_cell       n  outcome_variable 
----------  --------------------  -----------------------------  ----------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                 0      137     202  wasted           
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                 1       27     202  wasted           
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                 0       32     202  wasted           
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                 1        6     202  wasted           
Birth       ki0047075b-MAL-ED     BRAZIL                         1                 0       23      55  wasted           
Birth       ki0047075b-MAL-ED     BRAZIL                         1                 1        0      55  wasted           
Birth       ki0047075b-MAL-ED     BRAZIL                         0                 0       31      55  wasted           
Birth       ki0047075b-MAL-ED     BRAZIL                         0                 1        1      55  wasted           
Birth       ki0047075b-MAL-ED     INDIA                          1                 0       23      39  wasted           
Birth       ki0047075b-MAL-ED     INDIA                          1                 1        4      39  wasted           
Birth       ki0047075b-MAL-ED     INDIA                          0                 0       11      39  wasted           
Birth       ki0047075b-MAL-ED     INDIA                          0                 1        1      39  wasted           
Birth       ki0047075b-MAL-ED     NEPAL                          1                 0       12      25  wasted           
Birth       ki0047075b-MAL-ED     NEPAL                          1                 1        2      25  wasted           
Birth       ki0047075b-MAL-ED     NEPAL                          0                 0       11      25  wasted           
Birth       ki0047075b-MAL-ED     NEPAL                          0                 1        0      25  wasted           
Birth       ki0047075b-MAL-ED     PERU                           1                 0      142     218  wasted           
Birth       ki0047075b-MAL-ED     PERU                           1                 1        3     218  wasted           
Birth       ki0047075b-MAL-ED     PERU                           0                 0       71     218  wasted           
Birth       ki0047075b-MAL-ED     PERU                           0                 1        2     218  wasted           
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       30      99  wasted           
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        3      99  wasted           
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0       60      99  wasted           
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        6      99  wasted           
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       24      95  wasted           
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0      95  wasted           
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0       70      95  wasted           
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        1      95  wasted           
Birth       ki1000109-EE          PAKISTAN                       1                 0       18      22  wasted           
Birth       ki1000109-EE          PAKISTAN                       1                 1        4      22  wasted           
Birth       ki1000109-EE          PAKISTAN                       0                 0        0      22  wasted           
Birth       ki1000109-EE          PAKISTAN                       0                 1        0      22  wasted           
Birth       ki1113344-GMS-Nepal   NEPAL                          1                 0      282     422  wasted           
Birth       ki1113344-GMS-Nepal   NEPAL                          1                 1       70     422  wasted           
Birth       ki1113344-GMS-Nepal   NEPAL                          0                 0       60     422  wasted           
Birth       ki1113344-GMS-Nepal   NEPAL                          0                 1       10     422  wasted           
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                 0     8559   10634  wasted           
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                 1     1079   10634  wasted           
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                 0      897   10634  wasted           
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                 1       99   10634  wasted           
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                 0       87      97  wasted           
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                 1        2      97  wasted           
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 0        8      97  wasted           
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 1        0      97  wasted           
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                 0      185     233  wasted           
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                 1        6     233  wasted           
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                 0       40     233  wasted           
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                 1        2     233  wasted           
6 months    ki0047075b-MAL-ED     BRAZIL                         1                 0       92     187  wasted           
6 months    ki0047075b-MAL-ED     BRAZIL                         1                 1        1     187  wasted           
6 months    ki0047075b-MAL-ED     BRAZIL                         0                 0       94     187  wasted           
6 months    ki0047075b-MAL-ED     BRAZIL                         0                 1        0     187  wasted           
6 months    ki0047075b-MAL-ED     INDIA                          1                 0      139     210  wasted           
6 months    ki0047075b-MAL-ED     INDIA                          1                 1        8     210  wasted           
6 months    ki0047075b-MAL-ED     INDIA                          0                 0       54     210  wasted           
6 months    ki0047075b-MAL-ED     INDIA                          0                 1        9     210  wasted           
6 months    ki0047075b-MAL-ED     NEPAL                          1                 0      112     227  wasted           
6 months    ki0047075b-MAL-ED     NEPAL                          1                 1        1     227  wasted           
6 months    ki0047075b-MAL-ED     NEPAL                          0                 0      111     227  wasted           
6 months    ki0047075b-MAL-ED     NEPAL                          0                 1        3     227  wasted           
6 months    ki0047075b-MAL-ED     PERU                           1                 0      176     270  wasted           
6 months    ki0047075b-MAL-ED     PERU                           1                 1        0     270  wasted           
6 months    ki0047075b-MAL-ED     PERU                           0                 0       94     270  wasted           
6 months    ki0047075b-MAL-ED     PERU                           0                 1        0     270  wasted           
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       62     244  wasted           
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        1     244  wasted           
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      176     244  wasted           
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        5     244  wasted           
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       64     212  wasted           
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     212  wasted           
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0      148     212  wasted           
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        0     212  wasted           
6 months    ki1000109-EE          PAKISTAN                       1                 0       35      39  wasted           
6 months    ki1000109-EE          PAKISTAN                       1                 1        4      39  wasted           
6 months    ki1000109-EE          PAKISTAN                       0                 0        0      39  wasted           
6 months    ki1000109-EE          PAKISTAN                       0                 1        0      39  wasted           
6 months    ki1113344-GMS-Nepal   NEPAL                          1                 0      330     441  wasted           
6 months    ki1113344-GMS-Nepal   NEPAL                          1                 1       37     441  wasted           
6 months    ki1113344-GMS-Nepal   NEPAL                          0                 0       67     441  wasted           
6 months    ki1113344-GMS-Nepal   NEPAL                          0                 1        7     441  wasted           
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                 0     7754    9310  wasted           
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                 1      746    9310  wasted           
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                 0      747    9310  wasted           
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                 1       63    9310  wasted           
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                 0       72      88  wasted           
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                 1        4      88  wasted           
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 0       12      88  wasted           
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                 1        0      88  wasted           
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                 0      151     205  wasted           
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                 1       17     205  wasted           
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                 0       35     205  wasted           
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                 1        2     205  wasted           
24 months   ki0047075b-MAL-ED     BRAZIL                         1                 0       76     152  wasted           
24 months   ki0047075b-MAL-ED     BRAZIL                         1                 1        3     152  wasted           
24 months   ki0047075b-MAL-ED     BRAZIL                         0                 0       73     152  wasted           
24 months   ki0047075b-MAL-ED     BRAZIL                         0                 1        0     152  wasted           
24 months   ki0047075b-MAL-ED     INDIA                          1                 0      121     202  wasted           
24 months   ki0047075b-MAL-ED     INDIA                          1                 1       18     202  wasted           
24 months   ki0047075b-MAL-ED     INDIA                          0                 0       57     202  wasted           
24 months   ki0047075b-MAL-ED     INDIA                          0                 1        6     202  wasted           
24 months   ki0047075b-MAL-ED     NEPAL                          1                 0      107     220  wasted           
24 months   ki0047075b-MAL-ED     NEPAL                          1                 1        3     220  wasted           
24 months   ki0047075b-MAL-ED     NEPAL                          0                 0      108     220  wasted           
24 months   ki0047075b-MAL-ED     NEPAL                          0                 1        2     220  wasted           
24 months   ki0047075b-MAL-ED     PERU                           1                 0      129     198  wasted           
24 months   ki0047075b-MAL-ED     PERU                           1                 1        2     198  wasted           
24 months   ki0047075b-MAL-ED     PERU                           0                 0       66     198  wasted           
24 months   ki0047075b-MAL-ED     PERU                           0                 1        1     198  wasted           
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                 0       59     228  wasted           
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                 1        1     228  wasted           
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                 0      168     228  wasted           
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                 1        0     228  wasted           
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 0       54     184  wasted           
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                 1        0     184  wasted           
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 0      126     184  wasted           
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                 1        4     184  wasted           
24 months   ki1000109-EE          PAKISTAN                       1                 0       17      20  wasted           
24 months   ki1000109-EE          PAKISTAN                       1                 1        3      20  wasted           
24 months   ki1000109-EE          PAKISTAN                       0                 0        0      20  wasted           
24 months   ki1000109-EE          PAKISTAN                       0                 1        0      20  wasted           
24 months   ki1113344-GMS-Nepal   NEPAL                          1                 0      258     384  wasted           
24 months   ki1113344-GMS-Nepal   NEPAL                          1                 1       64     384  wasted           
24 months   ki1113344-GMS-Nepal   NEPAL                          0                 0       53     384  wasted           
24 months   ki1113344-GMS-Nepal   NEPAL                          0                 1        9     384  wasted           
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                 0     3452    4833  wasted           
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                 1      965    4833  wasted           
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                 0      324    4833  wasted           
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                 1       92    4833  wasted           
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                 0      113     150  wasted           
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                 1       22     150  wasted           
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 0       12     150  wasted           
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                 1        3     150  wasted           


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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/015a26e4-d48e-4b49-bb64-94cf5cfc8255/40ac29bd-89ff-45b5-8e6f-a338a11408f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/015a26e4-d48e-4b49-bb64-94cf5cfc8255/40ac29bd-89ff-45b5-8e6f-a338a11408f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/015a26e4-d48e-4b49-bb64-94cf5cfc8255/40ac29bd-89ff-45b5-8e6f-a338a11408f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/015a26e4-d48e-4b49-bb64-94cf5cfc8255/40ac29bd-89ff-45b5-8e6f-a338a11408f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1646341   0.1077355   0.2215328
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1578947   0.0416694   0.2741201
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1988636   0.1571169   0.2406104
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1428571   0.0607857   0.2249285
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1119527   0.1051856   0.1187197
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0993976   0.0816509   0.1171442
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0544218   0.0176630   0.0911805
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1428571   0.0562424   0.2294719
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1008174   0.0699785   0.1316564
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0945946   0.0278402   0.1613490
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0877647   0.0810760   0.0944534
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0777778   0.0569976   0.0985579
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1294964   0.0735422   0.1854506
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.0952381   0.0225726   0.1679036
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1987578   0.1551132   0.2424023
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1451613   0.0573630   0.2329596
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2184741   0.2042001   0.2327481
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2211538   0.1674266   0.2748810


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1633663   0.1122571   0.2144755
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1895735   0.1521320   0.2270149
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1107768   0.1043978   0.1171557
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0809524   0.0439731   0.1179317
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0997732   0.0717702   0.1277763
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0868958   0.0805887   0.0932029
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1188119   0.0740803   0.1635435
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1901042   0.1508072   0.2294011
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2187047   0.2046312   0.2327783


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9590643   0.4252885   2.162777
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7183673   0.3896809   1.324293
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8878536   0.7360338   1.070989
6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 2.6250000   1.0591134   6.506031
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9382761   0.4348109   2.024701
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8862079   0.6694997   1.173062
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.7354498   0.3060169   1.767505
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7303427   0.3837740   1.389882
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0122658   0.7897996   1.297395


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0012678   -0.0256142   0.0230785
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0092902   -0.0246930   0.0061127
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0011759   -0.0029552   0.0006033
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.0265306   -0.0022268   0.0552880
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0010442   -0.0133851   0.0112967
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008689   -0.0027820   0.0010442
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0106845   -0.0393719   0.0180028
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0086536   -0.0246070   0.0072998
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002307   -0.0044942   0.0049555


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0077605   -0.1683589   0.1307626
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0490057   -0.1331673   0.0289051
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0106153   -0.0267641   0.0052794
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.3277311   -0.0921984   0.5862057
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0104657   -0.1420133   0.1059291
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0099993   -0.0322288   0.0117515
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0899280   -0.3581162   0.1253008
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0455203   -0.1326078   0.0348709
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0010547   -0.0207758   0.0224182
