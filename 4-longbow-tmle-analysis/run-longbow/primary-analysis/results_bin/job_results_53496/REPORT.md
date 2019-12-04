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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  -------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      207     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       58     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      183     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1       14     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       28     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        8     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      192     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       57     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      219     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      214     303
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1       54     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       25     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1       10     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      138     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       38     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      103     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       35     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      119     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1      133     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        6     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        4     262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     1933    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      218    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      205    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       19    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      207     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                     1       45     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       22     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        8     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                     0    15585   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                     1      619   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0      646   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1       47   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    10952   14016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1     2175   14016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      709   14016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      180   14016
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                     0      582    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                     1      527    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                     0       43    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                     1       55    1207
0-24 months   ki1135781-COHORTS          INDIA                          0                     0     4639    5384
0-24 months   ki1135781-COHORTS          INDIA                          0                     1      736    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                     0        7    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                     1        2    5384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                     0     1889    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                     1     1054    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     0       50    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                     1       25    3018
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     4312    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1     1103    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        8    5423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5423
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      244     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      186     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       30     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        6     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      230     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       19     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      230     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1       10     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      237     303
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1       31     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       28     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        7     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      161     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      124     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       14     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      215     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       37     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        9     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     262
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2057    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       94    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      215    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        9    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                     0      220     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                     1       18     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       21     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     1        6     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                     0    15977   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                     1      223   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0      676   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1       17   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    11942   13999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1     1170   13999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      780   13999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      107   13999
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                     0      816     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                     1       89     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                     0       57     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                     1       12     974
0-6 months    ki1135781-COHORTS          INDIA                          0                     0     4942    5203
0-6 months    ki1135781-COHORTS          INDIA                          0                     1      253    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                     0        8    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                     1        0    5203
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                     0     2762    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                     1      181    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                     0       68    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                     1        7    3018
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     4590    5115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      518    5115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0        7    5115
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5115


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/2d649d60-4162-4a18-9820-36609bba4f78/75d7d73c-7bdf-4809-804c-39637361263e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d649d60-4162-4a18-9820-36609bba4f78/75d7d73c-7bdf-4809-804c-39637361263e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d649d60-4162-4a18-9820-36609bba4f78/75d7d73c-7bdf-4809-804c-39637361263e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d649d60-4162-4a18-9820-36609bba4f78/75d7d73c-7bdf-4809-804c-39637361263e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0710660   0.0351099   0.1070221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2222222   0.0861240   0.3583204
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.2042078   0.1560749   0.2523406
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2833047   0.1298907   0.4367186
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2073000   0.1472541   0.2673459
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2664399   0.1938767   0.3390030
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1012619   0.0885093   0.1140145
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0793630   0.0431360   0.1155900
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1785714   0.1312007   0.2259422
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2666667   0.1081431   0.4251903
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0382622   0.0299907   0.0465337
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0633748   0.0367540   0.0899955
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1666972   0.1602943   0.1731000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1982380   0.1687281   0.2277478
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4760913   0.4465597   0.5056228
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6551938   0.5152391   0.7951485
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.3582254   0.3408295   0.3756213
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2919383   0.2007310   0.3831456
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0558376   0.0237057   0.0879694
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1666667   0.0446653   0.2886680
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1156716   0.0773169   0.1540264
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.2000000   0.0672630   0.3327370
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0854089   0.0440895   0.1267283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1049958   0.0542306   0.1557609
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0437006   0.0350597   0.0523415
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0401786   0.0144564   0.0659008
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0756303   0.0419751   0.1092854
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2222222   0.0651105   0.3793340
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0137855   0.0104284   0.0171426
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0241335   0.0101402   0.0381268
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0894566   0.0845555   0.0943577
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1180973   0.0940956   0.1420989
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0979066   0.0785040   0.1173092
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1844030   0.0966526   0.2721534
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0615019   0.0528192   0.0701845
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0933333   0.0278797   0.1587870


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0944206   0.0567935   0.1320477
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997895   0.0877329   0.1118460
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422658   0.2336207
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1680223   0.1618323   0.1742123
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4821872   0.4539860   0.5103885
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3575215   0.3404198   0.3746233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0729614   0.0394957   0.1064270
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0433684   0.0351750   0.0515619
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0905660   0.0559470   0.1251850
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912208   0.0864511   0.0959905
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1036961   0.0845403   0.1228519
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0622929   0.0536688   0.0709170


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 3.1269841   1.4129327   6.920379
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 1.3873354   0.7696612   2.500710
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2852863   0.8691214   1.900725
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7837399   0.4885222   1.257360
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4933333   0.7788347   2.863309
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.6563284   1.1193827   2.450836
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1892102   1.0199497   1.386559
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.3761936   1.1016983   1.719081
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8149571   0.5940604   1.117992
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 2.9848485   1.1763672   7.573588
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.7290323   0.8233744   3.630854
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2293306   0.6210147   2.433523
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9194054   0.4704504   1.796802
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.9382716   1.2743457   6.774802
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.7506440   1.0267680   2.984856
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3201619   1.0696893   1.629284
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.8834578   1.1271313   3.147294
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.5175691   0.7421172   3.103305


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0233546    0.0004972   0.0462121
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0070134   -0.0110003   0.0250271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0251841   -0.0156014   0.0659696
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0014724   -0.0050705   0.0021257
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0093718   -0.0085135   0.0272571
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0011531    0.0001308   0.0021754
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0013251   -0.0004610   0.0031111
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0060960   -0.0034206   0.0156125
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0007038   -0.0034915   0.0020838
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0171238   -0.0030390   0.0372866
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0097409   -0.0065060   0.0259878
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0069478   -0.0217067   0.0356023
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003322   -0.0028918   0.0022274
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0149358   -0.0022867   0.0321583
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004216   -0.0001357   0.0009788
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017642    0.0003294   0.0031989
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0057895   -0.0006961   0.0122751
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0007910   -0.0008691   0.0024512


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.2473466   -0.0142644   0.4414798
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0332039   -0.0556843   0.1146077
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1083260   -0.0854810   0.2675298
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0147552   -0.0514137   0.0206252
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0498652   -0.0497480   0.1400259
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0292549    0.0034320   0.0544086
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0078864   -0.0027979   0.0184568
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0126423   -0.0072872   0.0321775
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0019686   -0.0097945   0.0057965
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.2346969   -0.0710660   0.4531721
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0776709   -0.0596587   0.1972028
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0752278   -0.2921231   0.3381408
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0076596   -0.0684244   0.0496494
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1649160   -0.0375013   0.3278415
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0296721   -0.0087355   0.0666173
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0193394    0.0035100   0.0349174
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0558313   -0.0082944   0.1158787
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0126987   -0.0142640   0.0389447
