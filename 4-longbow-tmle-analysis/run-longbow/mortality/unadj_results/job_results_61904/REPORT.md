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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_co06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                         0      317     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                         1       22     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                         0       25     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                         1        6     370  pers_wasted624   
CMIN             BANGLADESH                     0                         0      222     252  pers_wasted624   
CMIN             BANGLADESH                     0                         1       17     252  pers_wasted624   
CMIN             BANGLADESH                     1                         0        5     252  pers_wasted624   
CMIN             BANGLADESH                     1                         1        8     252  pers_wasted624   
COHORTS          GUATEMALA                      0                         0      956    1016  pers_wasted624   
COHORTS          GUATEMALA                      0                         1       33    1016  pers_wasted624   
COHORTS          GUATEMALA                      1                         0       19    1016  pers_wasted624   
COHORTS          GUATEMALA                      1                         1        8    1016  pers_wasted624   
COHORTS          INDIA                          0                         0     6006    6888  pers_wasted624   
COHORTS          INDIA                          0                         1      550    6888  pers_wasted624   
COHORTS          INDIA                          1                         0      112    6888  pers_wasted624   
COHORTS          INDIA                          1                         1      220    6888  pers_wasted624   
COHORTS          PHILIPPINES                    0                         0     2537    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                         1      184    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                         0       45    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                         1       42    2808  pers_wasted624   
CONTENT          PERU                           0                         0      215     215  pers_wasted624   
CONTENT          PERU                           0                         1        0     215  pers_wasted624   
CONTENT          PERU                           1                         0        0     215  pers_wasted624   
CONTENT          PERU                           1                         1        0     215  pers_wasted624   
EE               PAKISTAN                       0                         0      288     373  pers_wasted624   
EE               PAKISTAN                       0                         1       24     373  pers_wasted624   
EE               PAKISTAN                       1                         0       36     373  pers_wasted624   
EE               PAKISTAN                       1                         1       25     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                         0      463     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                         1       93     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                         0       18     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                         1       16     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                         0      265     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                         1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                         0        5     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                         1        1     274  pers_wasted624   
IRC              INDIA                          0                         0      342     409  pers_wasted624   
IRC              INDIA                          0                         1       42     409  pers_wasted624   
IRC              INDIA                          1                         0       19     409  pers_wasted624   
IRC              INDIA                          1                         1        6     409  pers_wasted624   
JiVitA-3         BANGLADESH                     0                         0    13651   17247  pers_wasted624   
JiVitA-3         BANGLADESH                     0                         1     2747   17247  pers_wasted624   
JiVitA-3         BANGLADESH                     1                         0      357   17247  pers_wasted624   
JiVitA-3         BANGLADESH                     1                         1      492   17247  pers_wasted624   
JiVitA-4         BANGLADESH                     0                         0     4578    5234  pers_wasted624   
JiVitA-4         BANGLADESH                     0                         1      471    5234  pers_wasted624   
JiVitA-4         BANGLADESH                     1                         0       98    5234  pers_wasted624   
JiVitA-4         BANGLADESH                     1                         1       87    5234  pers_wasted624   
Keneba           GAMBIA                         0                         0     2062    2298  pers_wasted624   
Keneba           GAMBIA                         0                         1      174    2298  pers_wasted624   
Keneba           GAMBIA                         1                         0       33    2298  pers_wasted624   
Keneba           GAMBIA                         1                         1       29    2298  pers_wasted624   
LCNI-5           MALAWI                         0                         0      782     797  pers_wasted624   
LCNI-5           MALAWI                         0                         1       10     797  pers_wasted624   
LCNI-5           MALAWI                         1                         0        2     797  pers_wasted624   
LCNI-5           MALAWI                         1                         1        3     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                         0      216     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                         1       15     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                         0        7     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                         1        2     240  pers_wasted624   
MAL-ED           BRAZIL                         0                         0      204     207  pers_wasted624   
MAL-ED           BRAZIL                         0                         1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                         0        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                         1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                         0      196     235  pers_wasted624   
MAL-ED           INDIA                          0                         1       21     235  pers_wasted624   
MAL-ED           INDIA                          1                         0       11     235  pers_wasted624   
MAL-ED           INDIA                          1                         1        7     235  pers_wasted624   
MAL-ED           NEPAL                          0                         0      226     235  pers_wasted624   
MAL-ED           NEPAL                          0                         1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                         0        7     235  pers_wasted624   
MAL-ED           NEPAL                          1                         1        1     235  pers_wasted624   
MAL-ED           PERU                           0                         0      267     270  pers_wasted624   
MAL-ED           PERU                           0                         1        2     270  pers_wasted624   
MAL-ED           PERU                           1                         0        0     270  pers_wasted624   
MAL-ED           PERU                           1                         1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                         0      252     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                         1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                         0        5     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                         1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      241     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        4     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                         0      453     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                         1       42     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                         0       28     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                         1       19     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                         0      673     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                         1       34     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                         0       13     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                         1       10     730  pers_wasted624   
PROBIT           BELARUS                        0                         0    16563   16595  pers_wasted624   
PROBIT           BELARUS                        0                         1       17   16595  pers_wasted624   
PROBIT           BELARUS                        1                         0       14   16595  pers_wasted624   
PROBIT           BELARUS                        1                         1        1   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                         0      557     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                         1       30     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                         0       18     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                         1       10     615  pers_wasted624   
ResPak           PAKISTAN                       0                         0      179     234  pers_wasted624   
ResPak           PAKISTAN                       0                         1       41     234  pers_wasted624   
ResPak           PAKISTAN                       1                         0        8     234  pers_wasted624   
ResPak           PAKISTAN                       1                         1        6     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                         0     1112    1383  pers_wasted624   
SAS-CompFeed     INDIA                          0                         1      172    1383  pers_wasted624   
SAS-CompFeed     INDIA                          1                         0       43    1383  pers_wasted624   
SAS-CompFeed     INDIA                          1                         1       56    1383  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                         0      298     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                         1       51     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                         0       28     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                         1       25     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     1907    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1       91    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0        9    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1       11    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                         0    10182   10730  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                         1      399   10730  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                         0       91   10730  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                         1       58   10730  pers_wasted624   


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: INDIA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: IRC, country: INDIA
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/184b7aac-9e35-41b1-b657-aff5e92f9f40/6b967537-532c-4d99-9d35-ae191447369b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/184b7aac-9e35-41b1-b657-aff5e92f9f40/6b967537-532c-4d99-9d35-ae191447369b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/184b7aac-9e35-41b1-b657-aff5e92f9f40/6b967537-532c-4d99-9d35-ae191447369b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/184b7aac-9e35-41b1-b657-aff5e92f9f40/6b967537-532c-4d99-9d35-ae191447369b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0648968   0.0386378   0.0911557
CMC-V-BCS-2002   INDIA                          1                    NA                0.1935484   0.0542844   0.3328124
CMIN             BANGLADESH                     0                    NA                0.0711297   0.0384773   0.1037821
CMIN             BANGLADESH                     1                    NA                0.6153846   0.3503965   0.8803728
COHORTS          GUATEMALA                      0                    NA                0.0333670   0.0221687   0.0445654
COHORTS          GUATEMALA                      1                    NA                0.2962963   0.1239753   0.4686172
COHORTS          INDIA                          0                    NA                0.0838926   0.0771815   0.0906037
COHORTS          INDIA                          1                    NA                0.6626506   0.6117887   0.7135125
COHORTS          PHILIPPINES                    0                    NA                0.0676222   0.0581859   0.0770585
COHORTS          PHILIPPINES                    1                    NA                0.4827586   0.3777373   0.5877799
EE               PAKISTAN                       0                    NA                0.0769231   0.0473156   0.1065305
EE               PAKISTAN                       1                    NA                0.4098361   0.2862534   0.5334187
GMS-Nepal        NEPAL                          0                    NA                0.1672662   0.1362180   0.1983144
GMS-Nepal        NEPAL                          1                    NA                0.4705882   0.3026714   0.6385051
IRC              INDIA                          0                    NA                0.1093750   0.0781199   0.1406301
IRC              INDIA                          1                    NA                0.2400000   0.0723815   0.4076185
JiVitA-3         BANGLADESH                     0                    NA                0.1675204   0.1611790   0.1738618
JiVitA-3         BANGLADESH                     1                    NA                0.5795053   0.5429642   0.6160464
JiVitA-4         BANGLADESH                     0                    NA                0.0932858   0.0830805   0.1034911
JiVitA-4         BANGLADESH                     1                    NA                0.4702703   0.3811003   0.5594403
Keneba           GAMBIA                         0                    NA                0.0778175   0.0667116   0.0889234
Keneba           GAMBIA                         1                    NA                0.4677419   0.3435164   0.5919675
MAL-ED           INDIA                          0                    NA                0.0967742   0.0573537   0.1361947
MAL-ED           INDIA                          1                    NA                0.3888889   0.1631997   0.6145780
NIH-Birth        BANGLADESH                     0                    NA                0.0848485   0.0602779   0.1094190
NIH-Birth        BANGLADESH                     1                    NA                0.4042553   0.2638259   0.5446847
NIH-Crypto       BANGLADESH                     0                    NA                0.0480905   0.0323085   0.0638726
NIH-Crypto       BANGLADESH                     1                    NA                0.4347826   0.2320490   0.6375162
PROVIDE          BANGLADESH                     0                    NA                0.0511073   0.0332781   0.0689366
PROVIDE          BANGLADESH                     1                    NA                0.3571429   0.1795193   0.5347665
ResPak           PAKISTAN                       0                    NA                0.1863636   0.1347978   0.2379295
ResPak           PAKISTAN                       1                    NA                0.4285714   0.1687909   0.6883520
SAS-CompFeed     INDIA                          0                    NA                0.1339564   0.1158737   0.1520390
SAS-CompFeed     INDIA                          1                    NA                0.5656566   0.5151953   0.6161179
SAS-FoodSuppl    INDIA                          0                    NA                0.1461318   0.1090258   0.1832378
SAS-FoodSuppl    INDIA                          1                    NA                0.4716981   0.3371356   0.6062606
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0455455   0.0362596   0.0548315
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5500000   0.4635436   0.6364564
ZVITAMBO         ZIMBABWE                       0                    NA                0.0377091   0.0340379   0.0413803
ZVITAMBO         ZIMBABWE                       1                    NA                0.3892617   0.3457737   0.4327498


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0403543   0.0282479   0.0524607
COHORTS          INDIA                          NA                   NA                0.1117886   0.1043466   0.1192306
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1173594   0.0861296   0.1485892
JiVitA-3         BANGLADESH                     NA                   NA                0.1878008   0.1812627   0.1943389
JiVitA-4         BANGLADESH                     NA                   NA                0.1066106   0.0960765   0.1171447
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1648590   0.1452632   0.1844548
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425909   0.0387699   0.0464119


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  2.982405   1.306343    6.808882
CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  8.651584   4.610498   16.234669
COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  8.879910   4.537246   17.379001
COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
COHORTS          INDIA                          1                    0                  7.898795   7.069899    8.824873
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  7.139056   5.513101    9.244546
EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.327869   3.267419    8.687648
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  2.813409   1.881709    4.206427
IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
IRC              INDIA                          1                    0                  2.194286   1.031740    4.666768
JiVitA-3         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  3.459311   3.216492    3.720461
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  5.041177   4.049116    6.276300
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.010753   4.446188    8.125870
MAL-ED           INDIA                          0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA                          1                    0                  4.018518   1.977591    8.165737
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  4.764438   3.031115    7.488948
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  9.040921   5.111876   15.989874
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  6.988095   3.806495   12.828988
ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  2.299652   1.181089    4.477561
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  4.222692   3.495487    5.101185
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.227895   2.203217    4.729133
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.075824   9.334897   15.621547
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 10.322753   8.901005   11.971595


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0107789   -0.0016393   0.0231971
CMIN             BANGLADESH                     0                    NA                0.0280766    0.0077909   0.0483623
COHORTS          GUATEMALA                      0                    NA                0.0069873    0.0017121   0.0122625
COHORTS          INDIA                          0                    NA                0.0278960    0.0240638   0.0317282
COHORTS          PHILIPPINES                    0                    NA                0.0128621    0.0086486   0.0170757
EE               PAKISTAN                       0                    NA                0.0544442    0.0301858   0.0787027
GMS-Nepal        NEPAL                          0                    NA                0.0174796    0.0061031   0.0288560
IRC              INDIA                          0                    NA                0.0079844   -0.0028711   0.0188399
JiVitA-3         BANGLADESH                     0                    NA                0.0202803    0.0180300   0.0225307
JiVitA-4         BANGLADESH                     0                    NA                0.0133248    0.0092397   0.0174099
Keneba           GAMBIA                         0                    NA                0.0105202    0.0062777   0.0147626
MAL-ED           INDIA                          0                    NA                0.0223747    0.0021997   0.0425498
NIH-Birth        BANGLADESH                     0                    NA                0.0276976    0.0131993   0.0421960
NIH-Crypto       BANGLADESH                     0                    NA                0.0121834    0.0041155   0.0202514
PROVIDE          BANGLADESH                     0                    NA                0.0139333    0.0043667   0.0235000
ResPak           PAKISTAN                       0                    NA                0.0144911   -0.0029872   0.0319693
SAS-CompFeed     INDIA                          0                    NA                0.0309026    0.0233631   0.0384421
SAS-FoodSuppl    INDIA                          0                    NA                0.0429229    0.0215948   0.0642511
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0049995    0.0019204   0.0080787
ZVITAMBO         ZIMBABWE                       0                    NA                0.0048818    0.0035415   0.0062221


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.1424357   -0.0300892   0.2860653
CMIN             BANGLADESH                     0                    NA                0.2830126    0.0782623   0.4422806
COHORTS          GUATEMALA                      0                    NA                0.1731485    0.0431505   0.2854850
COHORTS          INDIA                          0                    NA                0.2495424    0.2180558   0.2797611
COHORTS          PHILIPPINES                    0                    NA                0.1598092    0.1093607   0.2074000
EE               PAKISTAN                       0                    NA                0.4144427    0.2352159   0.5516678
GMS-Nepal        NEPAL                          0                    NA                0.0946142    0.0322257   0.1529808
IRC              INDIA                          0                    NA                0.0680339   -0.0277289   0.1548735
JiVitA-3         BANGLADESH                     0                    NA                0.1079886    0.0963175   0.1195091
JiVitA-4         BANGLADESH                     0                    NA                0.1249859    0.0872872   0.1611274
Keneba           GAMBIA                         0                    NA                0.1190902    0.0720123   0.1637798
MAL-ED           INDIA                          0                    NA                0.1877880    0.0119633   0.3323241
NIH-Birth        BANGLADESH                     0                    NA                0.2461003    0.1187205   0.3550688
NIH-Crypto       BANGLADESH                     0                    NA                0.2021345    0.0702192   0.3153340
PROVIDE          BANGLADESH                     0                    NA                0.2142249    0.0681100   0.3374298
ResPak           PAKISTAN                       0                    NA                0.0721470   -0.0179275   0.1542510
SAS-CompFeed     INDIA                          0                    NA                0.1874488    0.1438622   0.2288163
SAS-FoodSuppl    INDIA                          0                    NA                0.2270397    0.1126917   0.3266515
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0989126    0.0378212   0.1561252
ZVITAMBO         ZIMBABWE                       0                    NA                0.1146200    0.0839066   0.1443037
