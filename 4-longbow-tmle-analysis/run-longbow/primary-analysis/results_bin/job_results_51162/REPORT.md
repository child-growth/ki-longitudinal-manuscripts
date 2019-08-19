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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      208     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       57     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      186     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       29     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        7     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      195     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       54     249
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      139     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1       37     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      103     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       35     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      120     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1      132     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        3     262
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
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    11046   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1     2080   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      713   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      176   14015
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
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      244     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      187     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1       10     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       31     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        5     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      231     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       18     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      231     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        9     240
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      216     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       36     262
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
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    11940   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1     1166   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      781   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      106   13993
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA

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
![](/tmp/06618705-0d8f-4916-b13a-8edb461701a9/e88993d2-2275-4293-91ca-a94b6979696e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06618705-0d8f-4916-b13a-8edb461701a9/e88993d2-2275-4293-91ca-a94b6979696e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06618705-0d8f-4916-b13a-8edb461701a9/e88993d2-2275-4293-91ca-a94b6979696e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06618705-0d8f-4916-b13a-8edb461701a9/e88993d2-2275-4293-91ca-a94b6979696e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0558376   0.0237057   0.0879694
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1944444   0.0648828   0.3240061
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.2045944   0.1562861   0.2529027
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2605797   0.1071774   0.4139820
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2025775   0.1428499   0.2623052
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2637946   0.1911011   0.3364880
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1013822   0.0886293   0.1141351
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0830389   0.0470302   0.1190476
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1785714   0.1312007   0.2259422
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2666667   0.1081431   0.4251903
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0382806   0.0299913   0.0465699
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0644722   0.0385777   0.0903667
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1593413   0.1530466   0.1656360
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1993580   0.1699676   0.2287485
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4749235   0.4452579   0.5045891
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6659280   0.5348622   0.7969937
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.3583856   0.3409564   0.3758149
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2813660   0.1946441   0.3680880
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0507614   0.0200427   0.0814802
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.1388889   0.0256764   0.2521013
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1156716   0.0773169   0.1540264
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.2000000   0.0672630   0.3327370
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0843453   0.0429375   0.1257531
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1031074   0.0523429   0.1538720
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0437006   0.0350597   0.0523415
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0401786   0.0144564   0.0659008
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0756303   0.0419751   0.1092854
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2222222   0.0651105   0.3793340
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0137890   0.0104299   0.0171482
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0236807   0.0089359   0.0384256
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0890051   0.0841130   0.0938972
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1221882   0.0976409   0.1467355
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0980275   0.0786264   0.1174286
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1920361   0.1042470   0.2798253
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0615019   0.0528192   0.0701845
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0933333   0.0278797   0.1587870


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0772532   0.0428971   0.1116093
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2292994   0.1827279   0.2758709
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997895   0.0877329   0.1118460
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422658   0.2336207
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1609704   0.1548858   0.1670549
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4821872   0.4539860   0.5103885
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3575215   0.3404198   0.3746233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.0643777   0.0327970   0.0959584
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0433684   0.0351750   0.0515619
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0905660   0.0559470   0.1251850
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0909026   0.0861394   0.0956658
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1036961   0.0845403   0.1228519
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0622929   0.0536688   0.0709170


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 3.4823232   1.4438150   8.398981
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 1.2736403   0.6774579   2.394480
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.3021906   0.8747624   1.938470
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8190677   0.5218957   1.285452
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4933333   0.7788347   2.863309
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.6842003   1.1719459   2.420360
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2511387   1.0742444   1.457162
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.4021794   1.1406031   1.723743
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7850929   0.5746573   1.072588
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 2.7361111   0.9913638   7.551521
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.7290323   0.8233744   3.630854
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2224443   0.6112557   2.444755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9194054   0.4704504   1.796802
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.9382716   1.2743457   6.774802
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.7173603   0.9641389   3.059026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3728214   1.1147991   1.690563
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.9590025   1.1924982   3.218194
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.5175691   0.7421172   3.103305


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0214157   -0.0001929   0.0430242
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0066267   -0.0114021   0.0246555
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0267218   -0.0144244   0.0678681
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0015927   -0.0051818   0.0019963
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0093718   -0.0085135   0.0272571
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0011347    0.0001325   0.0021369
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0016291   -0.0001424   0.0034007
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0072637   -0.0024885   0.0170159
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0008641   -0.0036659   0.0019377
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0136163   -0.0049659   0.0321985
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0097409   -0.0065060   0.0259878
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0080114   -0.0207363   0.0367591
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003322   -0.0028918   0.0022274
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0149358   -0.0022867   0.0321583
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004180   -0.0001401   0.0009762
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0018975    0.0004685   0.0033264
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0056686   -0.0008303   0.0121675
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0007910   -0.0008691   0.0024512


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.2772138   -0.0281511   0.4918841
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0313733   -0.0576570   0.1129093
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1165369   -0.0821132   0.2787196
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0159611   -0.0525231   0.0193309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0498652   -0.0497480   0.1400259
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0287878    0.0033754   0.0535522
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0101206   -0.0009433   0.0210622
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0150641   -0.0053726   0.0350854
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0024169   -0.0102809   0.0053859
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.2115059   -0.1126119   0.4412041
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0776709   -0.0596587   0.1972028
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0867440   -0.2829649   0.3499147
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0076596   -0.0684244   0.0496494
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1649160   -0.0375013   0.3278415
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0294240   -0.0090876   0.0664658
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0208735    0.0050536   0.0364418
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0546655   -0.0095777   0.1148206
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0126987   -0.0142640   0.0389447
