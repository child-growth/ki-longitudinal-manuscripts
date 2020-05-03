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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_wasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      175     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                             1        3     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             0      167     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             1       25     370  pers_wasted624   
CMIN             BANGLADESH                     0                             0      196     252  pers_wasted624   
CMIN             BANGLADESH                     0                             1       11     252  pers_wasted624   
CMIN             BANGLADESH                     1                             0       31     252  pers_wasted624   
CMIN             BANGLADESH                     1                             1       14     252  pers_wasted624   
COHORTS          GUATEMALA                      0                             0      786    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                             1       25    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             0      190    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             1       16    1017  pers_wasted624   
COHORTS          INDIA                          0                             0     4756    6892  pers_wasted624   
COHORTS          INDIA                          0                             1      113    6892  pers_wasted624   
COHORTS          INDIA                          1                             0     1366    6892  pers_wasted624   
COHORTS          INDIA                          1                             1      657    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                             0     2013    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                             1       98    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             0      569    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             1      128    2808  pers_wasted624   
CONTENT          PERU                           0                             0      211     215  pers_wasted624   
CONTENT          PERU                           0                             1        0     215  pers_wasted624   
CONTENT          PERU                           1                             0        4     215  pers_wasted624   
CONTENT          PERU                           1                             1        0     215  pers_wasted624   
EE               PAKISTAN                       0                             0      234     374  pers_wasted624   
EE               PAKISTAN                       0                             1       12     374  pers_wasted624   
EE               PAKISTAN                       1                             0       91     374  pers_wasted624   
EE               PAKISTAN                       1                             1       37     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                             0      319     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                             1       34     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             0      162     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             1       75     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             0      263     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             0        7     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
IRC              INDIA                          0                             0      179     410  pers_wasted624   
IRC              INDIA                          0                             1        6     410  pers_wasted624   
IRC              INDIA                          1                             0      183     410  pers_wasted624   
IRC              INDIA                          1                             1       42     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             0    12238   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             1     1503   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             0     1777   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             1     1742   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             0     4245    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             1      304    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             0      432    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             1      258    5239  pers_wasted624   
Keneba           GAMBIA                         0                             0     1576    2298  pers_wasted624   
Keneba           GAMBIA                         0                             1       76    2298  pers_wasted624   
Keneba           GAMBIA                         1                             0      519    2298  pers_wasted624   
Keneba           GAMBIA                         1                             1      127    2298  pers_wasted624   
LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                             0      180     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                             1        4     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             0       43     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             1       13     240  pers_wasted624   
MAL-ED           BRAZIL                         0                             0      191     207  pers_wasted624   
MAL-ED           BRAZIL                         0                             1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             0       14     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                             0      151     235  pers_wasted624   
MAL-ED           INDIA                          0                             1        6     235  pers_wasted624   
MAL-ED           INDIA                          1                             0       56     235  pers_wasted624   
MAL-ED           INDIA                          1                             1       22     235  pers_wasted624   
MAL-ED           NEPAL                          0                             0      188     235  pers_wasted624   
MAL-ED           NEPAL                          0                             1        0     235  pers_wasted624   
MAL-ED           NEPAL                          1                             0       45     235  pers_wasted624   
MAL-ED           NEPAL                          1                             1        2     235  pers_wasted624   
MAL-ED           PERU                           0                             0      258     270  pers_wasted624   
MAL-ED           PERU                           0                             1        2     270  pers_wasted624   
MAL-ED           PERU                           1                             0        9     270  pers_wasted624   
MAL-ED           PERU                           1                             1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             0      230     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             0       27     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      231     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       14     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             0      329     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             1       14     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             0      152     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             1       47     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             0      517     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             1       17     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             0      169     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             1       27     730  pers_wasted624   
PROBIT           BELARUS                        0                             0    12381   16596  pers_wasted624   
PROBIT           BELARUS                        0                             1        3   16596  pers_wasted624   
PROBIT           BELARUS                        1                             0     4197   16596  pers_wasted624   
PROBIT           BELARUS                        1                             1       15   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                             0      438     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                             1       19     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             0      137     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             1       21     615  pers_wasted624   
ResPak           PAKISTAN                       0                             0      126     234  pers_wasted624   
ResPak           PAKISTAN                       0                             1       15     234  pers_wasted624   
ResPak           PAKISTAN                       1                             0       61     234  pers_wasted624   
ResPak           PAKISTAN                       1                             1       32     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                             0      957    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                             1      107    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             0      199    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             1      121    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             0      281     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             1       25     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             0       45     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             1       51     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1669    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       30    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0      247    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       72    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             0     8482   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             1      217   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             0     1792   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             1      240   10731  pers_wasted624   


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
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
![](/tmp/4d5b8b4c-5a51-4b39-8996-4d9e9481f38c/db83409f-328a-4479-9ffc-703cb170e6cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d5b8b4c-5a51-4b39-8996-4d9e9481f38c/db83409f-328a-4479-9ffc-703cb170e6cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4d5b8b4c-5a51-4b39-8996-4d9e9481f38c/db83409f-328a-4479-9ffc-703cb170e6cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4d5b8b4c-5a51-4b39-8996-4d9e9481f38c/db83409f-328a-4479-9ffc-703cb170e6cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0531401   0.0225218   0.0837583
CMIN             BANGLADESH                     1                    NA                0.3111111   0.1755804   0.4466418
COHORTS          GUATEMALA                      0                    NA                0.0308261   0.0189244   0.0427279
COHORTS          GUATEMALA                      1                    NA                0.0776699   0.0411022   0.1142376
COHORTS          INDIA                          0                    NA                0.0232081   0.0189786   0.0274375
COHORTS          INDIA                          1                    NA                0.3247652   0.3043575   0.3451729
COHORTS          PHILIPPINES                    0                    NA                0.0464235   0.0374466   0.0554004
COHORTS          PHILIPPINES                    1                    NA                0.1836442   0.1548942   0.2123942
EE               PAKISTAN                       0                    NA                0.0487805   0.0218264   0.0757346
EE               PAKISTAN                       1                    NA                0.2890625   0.2104238   0.3677012
GMS-Nepal        NEPAL                          0                    NA                0.0963173   0.0655146   0.1271200
GMS-Nepal        NEPAL                          1                    NA                0.3164557   0.2571929   0.3757185
IRC              INDIA                          0                    NA                0.0324324   0.0068747   0.0579902
IRC              INDIA                          1                    NA                0.1866667   0.1356920   0.2376414
JiVitA-3         BANGLADESH                     0                    NA                0.1093807   0.1038966   0.1148648
JiVitA-3         BANGLADESH                     1                    NA                0.4950270   0.4770776   0.5129764
JiVitA-4         BANGLADESH                     0                    NA                0.0668279   0.0576497   0.0760060
JiVitA-4         BANGLADESH                     1                    NA                0.3739130   0.3292080   0.4186181
Keneba           GAMBIA                         0                    NA                0.0460048   0.0359004   0.0561093
Keneba           GAMBIA                         1                    NA                0.1965944   0.1659410   0.2272479
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0382166   0.0081635   0.0682696
MAL-ED           INDIA                          1                    NA                0.2820513   0.1819735   0.3821290
NIH-Birth        BANGLADESH                     0                    NA                0.0408163   0.0198574   0.0617753
NIH-Birth        BANGLADESH                     1                    NA                0.2361809   0.1771145   0.2952473
NIH-Crypto       BANGLADESH                     0                    NA                0.0318352   0.0169346   0.0467358
NIH-Crypto       BANGLADESH                     1                    NA                0.1377551   0.0894729   0.1860373
PROVIDE          BANGLADESH                     0                    NA                0.0415755   0.0232591   0.0598919
PROVIDE          BANGLADESH                     1                    NA                0.1329114   0.0799346   0.1858882
ResPak           PAKISTAN                       0                    NA                0.1063830   0.0553818   0.1573842
ResPak           PAKISTAN                       1                    NA                0.3440860   0.2473265   0.4408455
SAS-CompFeed     INDIA                          0                    NA                0.1005639   0.0828777   0.1182501
SAS-CompFeed     INDIA                          1                    NA                0.3781250   0.3335372   0.4227128
SAS-FoodSuppl    INDIA                          0                    NA                0.0816993   0.0509717   0.1124270
SAS-FoodSuppl    INDIA                          1                    NA                0.5312500   0.4313022   0.6311978
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176574   0.0113934   0.0239215
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2257053   0.1798189   0.2715918
ZVITAMBO         ZIMBABWE                       0                    NA                0.0249454   0.0216679   0.0282229
ZVITAMBO         ZIMBABWE                       1                    NA                0.1181102   0.1040770   0.1321435


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
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
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.854546    2.843082   12.055828
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  2.519612    1.370573    4.631961
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 13.993644   11.540178   16.968722
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  3.955846    3.084519    5.073309
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.925781    3.200840   10.970522
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.285555    2.268081    4.759472
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  5.755556    2.499673   13.252299
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.525726    4.264763    4.802657
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  5.595166    4.676181    6.694754
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  4.273342    3.264282    5.594325
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.380342    3.114563   17.488630
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  5.786432    3.268587   10.243814
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.327131    2.411299    7.765134
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  3.196869    1.764847    5.790851
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.234409    1.855301    5.638653
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.760047    3.035572    4.657425
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.502500    4.270150    9.901879
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.782445    8.492590   19.239232
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.734751    3.966113    5.652352


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0460663   0.0184072   0.0737253
COHORTS          GUATEMALA                      0                    NA                0.0094885   0.0016135   0.0173635
COHORTS          INDIA                          0                    NA                0.0885157   0.0815921   0.0954393
COHORTS          PHILIPPINES                    0                    NA                0.0340608   0.0262698   0.0418519
EE               PAKISTAN                       0                    NA                0.0822356   0.0515223   0.1129488
GMS-Nepal        NEPAL                          0                    NA                0.0884285   0.0602192   0.1166378
IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
JiVitA-3         BANGLADESH                     0                    NA                0.0786263   0.0740956   0.0831569
JiVitA-4         BANGLADESH                     0                    NA                0.0404445   0.0336765   0.0472125
Keneba           GAMBIA                         0                    NA                0.0423328   0.0328467   0.0518190
LCNI-5           MALAWI                         0                    NA                0.0061071   0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0809324   0.0432584   0.1186063
NIH-Birth        BANGLADESH                     0                    NA                0.0717298   0.0473884   0.0960712
NIH-Crypto       BANGLADESH                     0                    NA                0.0284388   0.0144506   0.0424269
PROVIDE          BANGLADESH                     0                    NA                0.0234652   0.0087224   0.0382079
ResPak           PAKISTAN                       0                    NA                0.0944717   0.0485066   0.1404368
SAS-CompFeed     INDIA                          0                    NA                0.0641760   0.0508857   0.0774662
SAS-FoodSuppl    INDIA                          0                    NA                0.1073554   0.0761231   0.1385877
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0328876   0.0248523   0.0409230
ZVITAMBO         ZIMBABWE                       0                    NA                0.0176415   0.0148266   0.0204564


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.4643478   0.1824295   0.6490538
COHORTS          GUATEMALA                      0                    NA                0.2353613   0.0285962   0.3981161
COHORTS          INDIA                          0                    NA                0.7922729   0.7545128   0.8242248
COHORTS          PHILIPPINES                    0                    NA                0.4231983   0.3341790   0.5003159
EE               PAKISTAN                       0                    NA                0.6276755   0.4022682   0.7680807
GMS-Nepal        NEPAL                          0                    NA                0.4786496   0.3242992   0.5977417
IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
JiVitA-3         BANGLADESH                     0                    NA                0.4182094   0.3978900   0.4378430
JiVitA-4         BANGLADESH                     0                    NA                0.3770263   0.3200213   0.4292523
Keneba           GAMBIA                         0                    NA                0.4792161   0.3818457   0.5612490
LCNI-5           MALAWI                         0                    NA                0.3744113   0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.6792539   0.3611538   0.8389627
NIH-Birth        BANGLADESH                     0                    NA                0.6373369   0.4336799   0.7677559
NIH-Crypto       BANGLADESH                     0                    NA                0.4718250   0.2404918   0.6326981
PROVIDE          BANGLADESH                     0                    NA                0.3607768   0.1235205   0.5338097
ResPak           PAKISTAN                       0                    NA                0.4703486   0.2211076   0.6398339
SAS-CompFeed     INDIA                          0                    NA                0.3895594   0.3139197   0.4568599
SAS-FoodSuppl    INDIA                          0                    NA                0.5678535   0.4171645   0.6795826
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6506596   0.5303380   0.7401562
ZVITAMBO         ZIMBABWE                       0                    NA                0.4142472   0.3562375   0.4670295
