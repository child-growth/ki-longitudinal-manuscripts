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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_swasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                              0      287     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                              1       14     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              0       55     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              1       14     370  pers_wasted624   
CMIN             BANGLADESH                     0                              0      221     252  pers_wasted624   
CMIN             BANGLADESH                     0                              1       20     252  pers_wasted624   
CMIN             BANGLADESH                     1                              0        6     252  pers_wasted624   
CMIN             BANGLADESH                     1                              1        5     252  pers_wasted624   
COHORTS          GUATEMALA                      0                              0      914    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                              1       37    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                              0       62    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                              1        4    1017  pers_wasted624   
COHORTS          INDIA                          0                              0     5796    6892  pers_wasted624   
COHORTS          INDIA                          0                              1      488    6892  pers_wasted624   
COHORTS          INDIA                          1                              0      326    6892  pers_wasted624   
COHORTS          INDIA                          1                              1      282    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                              0     2431    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                              1      175    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                              0      151    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                              1       51    2808  pers_wasted624   
CONTENT          PERU                           0                              0      214     215  pers_wasted624   
CONTENT          PERU                           0                              1        0     215  pers_wasted624   
CONTENT          PERU                           1                              0        1     215  pers_wasted624   
CONTENT          PERU                           1                              1        0     215  pers_wasted624   
EE               PAKISTAN                       0                              0      298     374  pers_wasted624   
EE               PAKISTAN                       0                              1       37     374  pers_wasted624   
EE               PAKISTAN                       1                              0       27     374  pers_wasted624   
EE               PAKISTAN                       1                              1       12     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                              0      433     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                              1       83     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              0       48     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              1       26     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              0      270     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              0        0     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              1        1     274  pers_wasted624   
IRC              INDIA                          0                              0      265     410  pers_wasted624   
IRC              INDIA                          0                              1       19     410  pers_wasted624   
IRC              INDIA                          1                              0       97     410  pers_wasted624   
IRC              INDIA                          1                              1       29     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              0    13643   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              1     2864   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              0      372   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              1      381   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              0     4586    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              1      519    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              0       91    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              1       43    5239  pers_wasted624   
Keneba           GAMBIA                         0                              0     1935    2298  pers_wasted624   
Keneba           GAMBIA                         0                              1      144    2298  pers_wasted624   
Keneba           GAMBIA                         1                              0      160    2298  pers_wasted624   
Keneba           GAMBIA                         1                              1       59    2298  pers_wasted624   
LCNI-5           MALAWI                         0                              0      784     797  pers_wasted624   
LCNI-5           MALAWI                         0                              1       13     797  pers_wasted624   
LCNI-5           MALAWI                         1                              0        0     797  pers_wasted624   
LCNI-5           MALAWI                         1                              1        0     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                              0      211     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                              1       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              0       12     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              1        4     240  pers_wasted624   
MAL-ED           BRAZIL                         0                              0      203     207  pers_wasted624   
MAL-ED           BRAZIL                         0                              1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              0        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                              0      198     235  pers_wasted624   
MAL-ED           INDIA                          0                              1       16     235  pers_wasted624   
MAL-ED           INDIA                          1                              0        9     235  pers_wasted624   
MAL-ED           INDIA                          1                              1       12     235  pers_wasted624   
MAL-ED           NEPAL                          0                              0      227     235  pers_wasted624   
MAL-ED           NEPAL                          0                              1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                              0        6     235  pers_wasted624   
MAL-ED           NEPAL                          1                              1        1     235  pers_wasted624   
MAL-ED           PERU                           0                              0      266     270  pers_wasted624   
MAL-ED           PERU                           0                              1        3     270  pers_wasted624   
MAL-ED           PERU                           1                              0        1     270  pers_wasted624   
MAL-ED           PERU                           1                              1        0     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              0      251     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              1        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              0        6     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              1        1     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      240     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        5     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              0      445     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              1       45     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              0       36     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              1       16     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              0      645     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              1       37     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              0       41     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              1        7     730  pers_wasted624   
PROBIT           BELARUS                        0                              0    15281   16596  pers_wasted624   
PROBIT           BELARUS                        0                              1       13   16596  pers_wasted624   
PROBIT           BELARUS                        1                              0     1297   16596  pers_wasted624   
PROBIT           BELARUS                        1                              1        5   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                              0      557     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                              1       33     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              0       18     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              1        7     615  pers_wasted624   
ResPak           PAKISTAN                       0                              0      168     234  pers_wasted624   
ResPak           PAKISTAN                       0                              1       28     234  pers_wasted624   
ResPak           PAKISTAN                       1                              0       19     234  pers_wasted624   
ResPak           PAKISTAN                       1                              1       19     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                              0     1109    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                              1      182    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                              0       47    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                              1       46    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              0      315     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              1       59     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              0       11     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              1       17     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1871    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       72    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0       45    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       30    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              0     9623   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              1      359   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              0      651   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              1       98   10731  pers_wasted624   


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

* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/58b48f1a-4686-4ecd-a50b-c07d8a67848e/ac2ebd3e-a934-4679-9f78-1740faedca1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/58b48f1a-4686-4ecd-a50b-c07d8a67848e/ac2ebd3e-a934-4679-9f78-1740faedca1a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/58b48f1a-4686-4ecd-a50b-c07d8a67848e/ac2ebd3e-a934-4679-9f78-1740faedca1a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/58b48f1a-4686-4ecd-a50b-c07d8a67848e/ac2ebd3e-a934-4679-9f78-1740faedca1a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0465116   0.0226889   0.0703343
CMC-V-BCS-2002   INDIA                          1                    NA                0.2028986   0.1078802   0.2979169
CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
COHORTS          INDIA                          0                    NA                0.0776575   0.0710400   0.0842751
COHORTS          INDIA                          1                    NA                0.4638158   0.4241736   0.5034580
COHORTS          PHILIPPINES                    0                    NA                0.0671527   0.0575416   0.0767639
COHORTS          PHILIPPINES                    1                    NA                0.2524752   0.1925552   0.3123953
EE               PAKISTAN                       0                    NA                0.1104478   0.0768375   0.1440580
EE               PAKISTAN                       1                    NA                0.3076923   0.1626465   0.4527381
GMS-Nepal        NEPAL                          0                    NA                0.1608527   0.1291260   0.1925794
GMS-Nepal        NEPAL                          1                    NA                0.3513514   0.2424894   0.4602133
IRC              INDIA                          0                    NA                0.0669014   0.0378076   0.0959952
IRC              INDIA                          1                    NA                0.2301587   0.1565707   0.3037468
JiVitA-3         BANGLADESH                     0                    NA                0.1735022   0.1672191   0.1797852
JiVitA-3         BANGLADESH                     1                    NA                0.5059761   0.4654853   0.5464668
JiVitA-4         BANGLADESH                     0                    NA                0.1016650   0.0913042   0.1120259
JiVitA-4         BANGLADESH                     1                    NA                0.3208955   0.2239934   0.4177976
Keneba           GAMBIA                         0                    NA                0.0692641   0.0583476   0.0801805
Keneba           GAMBIA                         1                    NA                0.2694064   0.2106355   0.3281773
MAL-ED           INDIA                          0                    NA                0.0747664   0.0394524   0.1100803
MAL-ED           INDIA                          1                    NA                0.5714286   0.3593206   0.7835366
NIH-Birth        BANGLADESH                     0                    NA                0.0918367   0.0662426   0.1174309
NIH-Birth        BANGLADESH                     1                    NA                0.3076923   0.1821311   0.4332535
NIH-Crypto       BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
NIH-Crypto       BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
PROBIT           BELARUS                        0                    NA                0.0008500   0.0002192   0.0014809
PROBIT           BELARUS                        1                    NA                0.0038402   0.0006414   0.0070391
PROVIDE          BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
PROVIDE          BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ResPak           PAKISTAN                       0                    NA                0.1428571   0.0937632   0.1919511
ResPak           PAKISTAN                       1                    NA                0.5000000   0.3406851   0.6593149
SAS-CompFeed     INDIA                          0                    NA                0.1409760   0.1223961   0.1595559
SAS-CompFeed     INDIA                          1                    NA                0.4946237   0.4358492   0.5533981
SAS-FoodSuppl    INDIA                          0                    NA                0.1577540   0.1207658   0.1947422
SAS-FoodSuppl    INDIA                          1                    NA                0.6071429   0.4260202   0.7882655
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0370561   0.0286547   0.0454575
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4000000   0.2891002   0.5108998
ZVITAMBO         ZIMBABWE                       0                    NA                0.0359647   0.0323118   0.0396177
ZVITAMBO         ZIMBABWE                       1                    NA                0.1308411   0.1066893   0.1549929


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  4.362319   2.179285    8.732144
CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
COHORTS          INDIA                          1                    0                  5.972579   5.293536    6.738728
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  3.759717   2.849654    4.960418
EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN                       1                    0                  2.785863   1.589579    4.882446
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  2.184305   1.512866    3.153742
IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
IRC              INDIA                          1                    0                  3.440267   2.005288    5.902116
JiVitA-3         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.916253   2.674648    3.179682
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.156400   2.297882    4.335671
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  3.889555   2.971801    5.090730
MAL-ED           INDIA                          0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.642857   4.191447   13.936300
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  3.350427   2.044040    5.491752
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
PROBIT           BELARUS                        1                    0                  4.517901   1.371594   14.881545
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.500000   2.190481    5.592380
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.508567   2.924660    4.209050
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.848668   2.633448    5.624659
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.794444   7.544996   15.443351
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  3.638039   2.946909    4.491259


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0291640    0.0098677   0.0484604
CMIN             BANGLADESH                     0                    NA                0.0162188    0.0002139   0.0322237
COHORTS          INDIA                          0                    NA                0.0340662    0.0296779   0.0384545
COHORTS          PHILIPPINES                    0                    NA                0.0133316    0.0086203   0.0180429
EE               PAKISTAN                       0                    NA                0.0205683    0.0038806   0.0372559
GMS-Nepal        NEPAL                          0                    NA                0.0238930    0.0087859   0.0390002
IRC              INDIA                          0                    NA                0.0501718    0.0247815   0.0755620
JiVitA-3         BANGLADESH                     0                    NA                0.0145048    0.0122998   0.0167098
JiVitA-4         BANGLADESH                     0                    NA                0.0056073    0.0027645   0.0084502
Keneba           GAMBIA                         0                    NA                0.0190736    0.0128907   0.0252565
MAL-ED           INDIA                          0                    NA                0.0443826    0.0179485   0.0708166
NIH-Birth        BANGLADESH                     0                    NA                0.0207094    0.0072988   0.0341200
NIH-Crypto       BANGLADESH                     0                    NA                0.0060218   -0.0008431   0.0128867
PROBIT           BELARUS                        0                    NA                0.0002346    0.0000115   0.0004577
PROVIDE          BANGLADESH                     0                    NA                0.0091084    0.0011028   0.0171141
ResPak           PAKISTAN                       0                    NA                0.0579976    0.0260766   0.0899185
SAS-CompFeed     INDIA                          0                    NA                0.0237639    0.0167237   0.0308041
SAS-FoodSuppl    INDIA                          0                    NA                0.0313007    0.0142375   0.0483639
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134890    0.0083838   0.0185942
ZVITAMBO         ZIMBABWE                       0                    NA                0.0066222    0.0048570   0.0083874


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3853821    0.1220491   0.5697308
CMIN             BANGLADESH                     0                    NA                0.1634855   -0.0027793   0.3021829
COHORTS          INDIA                          0                    NA                0.3049146    0.2693539   0.3387445
COHORTS          PHILIPPINES                    0                    NA                0.1656423    0.1084479   0.2191675
EE               PAKISTAN                       0                    NA                0.1569906    0.0253246   0.2708702
GMS-Nepal        NEPAL                          0                    NA                0.1293294    0.0455709   0.2057373
IRC              INDIA                          0                    NA                0.4285505    0.2035296   0.5899978
JiVitA-3         BANGLADESH                     0                    NA                0.0771503    0.0658193   0.0883440
JiVitA-4         BANGLADESH                     0                    NA                0.0522720    0.0259201   0.0779111
Keneba           GAMBIA                         0                    NA                0.2159171    0.1482185   0.2782351
MAL-ED           INDIA                          0                    NA                0.3724967    0.1536730   0.5347420
NIH-Birth        BANGLADESH                     0                    NA                0.1840080    0.0631875   0.2892463
NIH-Crypto       BANGLADESH                     0                    NA                0.0999067   -0.0178485   0.2040388
PROBIT           BELARUS                        0                    NA                0.2162940   -0.0619533   0.4216364
PROVIDE          BANGLADESH                     0                    NA                0.1400424    0.0151570   0.2490913
ResPak           PAKISTAN                       0                    NA                0.2887538    0.1248986   0.4219285
SAS-CompFeed     INDIA                          0                    NA                0.1442510    0.1027265   0.1838539
SAS-FoodSuppl    INDIA                          0                    NA                0.1655643    0.0745783   0.2476047
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2668705    0.1726780   0.3503390
ZVITAMBO         ZIMBABWE                       0                    NA                0.1554976    0.1153544   0.1938193
