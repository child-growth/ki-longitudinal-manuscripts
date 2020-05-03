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

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        pers_wasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      307     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                             1       11     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             0       35     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             1       17     370  pers_wasted624   
CMIN             BANGLADESH                     0                             0      223     252  pers_wasted624   
CMIN             BANGLADESH                     0                             1       19     252  pers_wasted624   
CMIN             BANGLADESH                     1                             0        4     252  pers_wasted624   
CMIN             BANGLADESH                     1                             1        6     252  pers_wasted624   
COHORTS          GUATEMALA                      0                             0      934    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                             1       31    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             0       42    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             1       10    1017  pers_wasted624   
COHORTS          INDIA                          0                             0     5684    6892  pers_wasted624   
COHORTS          INDIA                          0                             1      277    6892  pers_wasted624   
COHORTS          INDIA                          1                             0      438    6892  pers_wasted624   
COHORTS          INDIA                          1                             1      493    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                             0     2467    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                             1      161    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             0      115    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             1       65    2808  pers_wasted624   
CONTENT          PERU                           0                             0      215     215  pers_wasted624   
CONTENT          PERU                           0                             1        0     215  pers_wasted624   
CONTENT          PERU                           1                             0        0     215  pers_wasted624   
CONTENT          PERU                           1                             1        0     215  pers_wasted624   
EE               PAKISTAN                       0                             0      313     374  pers_wasted624   
EE               PAKISTAN                       0                             1       35     374  pers_wasted624   
EE               PAKISTAN                       1                             0       12     374  pers_wasted624   
EE               PAKISTAN                       1                             1       14     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                             0      452     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                             1       70     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             0       29     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             1       39     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             0      264     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             0        6     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
IRC              INDIA                          0                             0      323     410  pers_wasted624   
IRC              INDIA                          0                             1       26     410  pers_wasted624   
IRC              INDIA                          1                             0       39     410  pers_wasted624   
IRC              INDIA                          1                             1       22     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             0    13683   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             1     2538   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             0      332   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             1      707   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             0     4506    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             1      393    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             0      171    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             1      169    5239  pers_wasted624   
Keneba           GAMBIA                         0                             0     2056    2298  pers_wasted624   
Keneba           GAMBIA                         0                             1      161    2298  pers_wasted624   
Keneba           GAMBIA                         1                             0       39    2298  pers_wasted624   
Keneba           GAMBIA                         1                             1       42    2298  pers_wasted624   
LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                             0      219     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                             1       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             0        4     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             1        4     240  pers_wasted624   
MAL-ED           BRAZIL                         0                             0      205     207  pers_wasted624   
MAL-ED           BRAZIL                         0                             1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             0        0     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                             0      202     235  pers_wasted624   
MAL-ED           INDIA                          0                             1       18     235  pers_wasted624   
MAL-ED           INDIA                          1                             0        5     235  pers_wasted624   
MAL-ED           INDIA                          1                             1       10     235  pers_wasted624   
MAL-ED           NEPAL                          0                             0      231     235  pers_wasted624   
MAL-ED           NEPAL                          0                             1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                             0        2     235  pers_wasted624   
MAL-ED           NEPAL                          1                             1        1     235  pers_wasted624   
MAL-ED           PERU                           0                             0      267     270  pers_wasted624   
MAL-ED           PERU                           0                             1        3     270  pers_wasted624   
MAL-ED           PERU                           1                             0        0     270  pers_wasted624   
MAL-ED           PERU                           1                             1        0     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             0      256     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             0        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      245     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             0      456     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             1       36     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             0       25     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             1       25     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             0      671     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             1       39     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             0       15     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             1        5     730  pers_wasted624   
PROBIT           BELARUS                        0                             0    15915   16596  pers_wasted624   
PROBIT           BELARUS                        0                             1        9   16596  pers_wasted624   
PROBIT           BELARUS                        1                             0      663   16596  pers_wasted624   
PROBIT           BELARUS                        1                             1        9   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                             0      568     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                             1       33     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             0        7     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             1        7     615  pers_wasted624   
ResPak           PAKISTAN                       0                             0      178     234  pers_wasted624   
ResPak           PAKISTAN                       0                             1       32     234  pers_wasted624   
ResPak           PAKISTAN                       1                             0        9     234  pers_wasted624   
ResPak           PAKISTAN                       1                             1       15     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                             0     1095    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                             1      162    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             0       61    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             1       66    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             0      281     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             1       25     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             0       45     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             1       51     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             0     9865   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             1      346   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             0      409   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             1      111   10731  pers_wasted624   


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

* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
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
![](/tmp/e468d409-f511-4350-bf4d-6da0d3bb3a09/d507cef8-73c3-43c7-b524-f6af86dc375f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e468d409-f511-4350-bf4d-6da0d3bb3a09/d507cef8-73c3-43c7-b524-f6af86dc375f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e468d409-f511-4350-bf4d-6da0d3bb3a09/d507cef8-73c3-43c7-b524-f6af86dc375f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e468d409-f511-4350-bf4d-6da0d3bb3a09/d507cef8-73c3-43c7-b524-f6af86dc375f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0345912   0.0144789   0.0547034
CMC-V-BCS-2002   INDIA                          1                    NA                0.3269231   0.1992530   0.4545932
COHORTS          GUATEMALA                      0                    NA                0.0321244   0.0209936   0.0432551
COHORTS          GUATEMALA                      1                    NA                0.1923077   0.0851357   0.2994797
COHORTS          INDIA                          0                    NA                0.0464687   0.0411247   0.0518127
COHORTS          INDIA                          1                    NA                0.5295381   0.4974743   0.5616020
COHORTS          PHILIPPINES                    0                    NA                0.0612633   0.0520930   0.0704336
COHORTS          PHILIPPINES                    1                    NA                0.3611111   0.2909297   0.4312926
EE               PAKISTAN                       0                    NA                0.1005747   0.0689325   0.1322169
EE               PAKISTAN                       1                    NA                0.5384615   0.3465840   0.7303391
GMS-Nepal        NEPAL                          0                    NA                0.1340996   0.1048427   0.1633566
GMS-Nepal        NEPAL                          1                    NA                0.5735294   0.4558815   0.6911774
IRC              INDIA                          0                    NA                0.0744986   0.0469164   0.1020807
IRC              INDIA                          1                    NA                0.3606557   0.2400058   0.4813057
JiVitA-3         BANGLADESH                     0                    NA                0.1564638   0.1502954   0.1626323
JiVitA-3         BANGLADESH                     1                    NA                0.6804620   0.6486724   0.7122516
JiVitA-4         BANGLADESH                     0                    NA                0.0802205   0.0708850   0.0895559
JiVitA-4         BANGLADESH                     1                    NA                0.4970588   0.4303387   0.5637789
Keneba           GAMBIA                         0                    NA                0.0726207   0.0618158   0.0834255
Keneba           GAMBIA                         1                    NA                0.5185185   0.4096827   0.6273544
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
MAL-ED           INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
NIH-Birth        BANGLADESH                     0                    NA                0.0731707   0.0501385   0.0962029
NIH-Birth        BANGLADESH                     1                    NA                0.5000000   0.3612816   0.6387184
NIH-Crypto       BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
NIH-Crypto       BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
PROBIT           BELARUS                        0                    NA                0.0005652   0.0000742   0.0010561
PROBIT           BELARUS                        1                    NA                0.0133929   0.0041540   0.0226317
PROVIDE          BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
PROVIDE          BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
SAS-CompFeed     INDIA                          0                    NA                0.1288783   0.1140339   0.1437227
SAS-CompFeed     INDIA                          1                    NA                0.5196850   0.4595908   0.5797792
SAS-FoodSuppl    INDIA                          0                    NA                0.0816993   0.0509717   0.1124270
SAS-FoodSuppl    INDIA                          1                    NA                0.5312500   0.4313022   0.6311978
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366226   0.0283176   0.0449275
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5769231   0.4426086   0.7112375
ZVITAMBO         ZIMBABWE                       0                    NA                0.0338850   0.0303755   0.0373946
ZVITAMBO         ZIMBABWE                       1                    NA                0.2134615   0.1782418   0.2486813


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
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


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  9.451049    4.691365   19.039732
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  5.986352    3.105754   11.538717
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 11.395584   10.006721   12.977212
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.894410    4.612146    7.533168
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.353846    3.328293    8.612123
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.276891    3.170102    5.770096
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  4.841110    2.939264    7.973541
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.349005    4.100465    4.612609
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.196161    5.193511    7.392380
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  7.140097    5.520368    9.235070
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  8.148148    4.606020   14.414249
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  6.833333    4.491674   10.395777
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
PROBIT           BELARUS                        1                    0                 23.696429    8.189156   68.568818
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  4.032371    3.444208    4.720973
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.502500    4.270150    9.901879
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.753205   11.382097   21.802966
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  6.299583    5.184511    7.654482


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0410845    0.0201705   0.0619985
COHORTS          GUATEMALA                      0                    NA                0.0081903    0.0022693   0.0141113
COHORTS          INDIA                          0                    NA                0.0652550    0.0593830   0.0711270
COHORTS          PHILIPPINES                    0                    NA                0.0192210    0.0139327   0.0245094
EE               PAKISTAN                       0                    NA                0.0304413    0.0128201   0.0480626
GMS-Nepal        NEPAL                          0                    NA                0.0506461    0.0326559   0.0686364
IRC              INDIA                          0                    NA                0.0425746    0.0216830   0.0634662
JiVitA-3         BANGLADESH                     0                    NA                0.0315431    0.0286849   0.0344013
JiVitA-4         BANGLADESH                     0                    NA                0.0270519    0.0212072   0.0328966
Keneba           GAMBIA                         0                    NA                0.0157170    0.0106015   0.0208326
LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
NIH-Birth        BANGLADESH                     0                    NA                0.0393754    0.0227440   0.0560068
NIH-Crypto       BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
PROBIT           BELARUS                        0                    NA                0.0005194    0.0002130   0.0008258
PROVIDE          BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
SAS-CompFeed     INDIA                          0                    NA                0.0358616    0.0252457   0.0464775
SAS-FoodSuppl    INDIA                          0                    NA                0.1073554    0.0761231   0.1385877
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139225    0.0088253   0.0190198
ZVITAMBO         ZIMBABWE                       0                    NA                0.0087019    0.0068380   0.0105657


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.5429021    0.2854446   0.7075965
COHORTS          GUATEMALA                      0                    NA                0.2031594    0.0565772   0.3269666
COHORTS          INDIA                          0                    NA                0.5840748    0.5447988   0.6199620
COHORTS          PHILIPPINES                    0                    NA                0.2388168    0.1768914   0.2960834
EE               PAKISTAN                       0                    NA                0.2323481    0.0983443   0.3464363
GMS-Nepal        NEPAL                          0                    NA                0.2741397    0.1787558   0.3584452
IRC              INDIA                          0                    NA                0.3636581    0.1880171   0.5013059
JiVitA-3         BANGLADESH                     0                    NA                0.1677763    0.1533785   0.1819293
JiVitA-4         BANGLADESH                     0                    NA                0.2521798    0.2025212   0.2987462
Keneba           GAMBIA                         0                    NA                0.1779198    0.1223229   0.2299949
LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
NIH-Birth        BANGLADESH                     0                    NA                0.3498601    0.2096789   0.4651769
NIH-Crypto       BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
PROBIT           BELARUS                        0                    NA                0.4788998    0.1448179   0.6824706
PROVIDE          BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
SAS-CompFeed     INDIA                          0                    NA                0.2176862    0.1650298   0.2670219
SAS-FoodSuppl    INDIA                          0                    NA                0.5678535    0.4171645   0.6795826
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2754473    0.1823889   0.3579140
ZVITAMBO         ZIMBABWE                       0                    NA                0.2043321    0.1632674   0.2433815
