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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        pers_wasted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  --------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                           0      308    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                           1        7    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                           0       36    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                           1       15    366  co_occurence     
CMIN             BANGLADESH                     0                           0      205    237  co_occurence     
CMIN             BANGLADESH                     0                           1       23    237  co_occurence     
CMIN             BANGLADESH                     1                           0        6    237  co_occurence     
CMIN             BANGLADESH                     1                           1        3    237  co_occurence     
COHORTS          GUATEMALA                      0                           0      706    774  co_occurence     
COHORTS          GUATEMALA                      0                           1       31    774  co_occurence     
COHORTS          GUATEMALA                      1                           0       30    774  co_occurence     
COHORTS          GUATEMALA                      1                           1        7    774  co_occurence     
COHORTS          PHILIPPINES                    0                           0     2191   2487  co_occurence     
COHORTS          PHILIPPINES                    0                           1      154   2487  co_occurence     
COHORTS          PHILIPPINES                    1                           0      109   2487  co_occurence     
COHORTS          PHILIPPINES                    1                           1       33   2487  co_occurence     
CONTENT          PERU                           0                           0      200    200  co_occurence     
CONTENT          PERU                           0                           1        0    200  co_occurence     
CONTENT          PERU                           1                           0        0    200  co_occurence     
CONTENT          PERU                           1                           1        0    200  co_occurence     
EE               PAKISTAN                       0                           0      258    346  co_occurence     
EE               PAKISTAN                       0                           1       63    346  co_occurence     
EE               PAKISTAN                       1                           0       14    346  co_occurence     
EE               PAKISTAN                       1                           1       11    346  co_occurence     
GMS-Nepal        NEPAL                          0                           0      440    550  co_occurence     
GMS-Nepal        NEPAL                          0                           1       47    550  co_occurence     
GMS-Nepal        NEPAL                          1                           0       50    550  co_occurence     
GMS-Nepal        NEPAL                          1                           1       13    550  co_occurence     
IRC              INDIA                          0                           0      325    405  co_occurence     
IRC              INDIA                          0                           1       22    405  co_occurence     
IRC              INDIA                          1                           0       55    405  co_occurence     
IRC              INDIA                          1                           1        3    405  co_occurence     
JiVitA-4         BANGLADESH                     0                           0     3914   4527  co_occurence     
JiVitA-4         BANGLADESH                     0                           1      337   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                           0      180   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                           1       96   4527  co_occurence     
Keneba           GAMBIA                         0                           0     1629   1775  co_occurence     
Keneba           GAMBIA                         0                           1       85   1775  co_occurence     
Keneba           GAMBIA                         1                           0       46   1775  co_occurence     
Keneba           GAMBIA                         1                           1       15   1775  co_occurence     
LCNI-5           MALAWI                         0                           0      666    693  co_occurence     
LCNI-5           MALAWI                         0                           1       17    693  co_occurence     
LCNI-5           MALAWI                         1                           0        9    693  co_occurence     
LCNI-5           MALAWI                         1                           1        1    693  co_occurence     
MAL-ED           BANGLADESH                     0                           0      202    221  co_occurence     
MAL-ED           BANGLADESH                     0                           1       13    221  co_occurence     
MAL-ED           BANGLADESH                     1                           0        5    221  co_occurence     
MAL-ED           BANGLADESH                     1                           1        1    221  co_occurence     
MAL-ED           BRAZIL                         0                           0      178    180  co_occurence     
MAL-ED           BRAZIL                         0                           1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                           0        1    180  co_occurence     
MAL-ED           BRAZIL                         1                           1        0    180  co_occurence     
MAL-ED           INDIA                          0                           0      200    228  co_occurence     
MAL-ED           INDIA                          0                           1       13    228  co_occurence     
MAL-ED           INDIA                          1                           0       11    228  co_occurence     
MAL-ED           INDIA                          1                           1        4    228  co_occurence     
MAL-ED           NEPAL                          0                           0      222    229  co_occurence     
MAL-ED           NEPAL                          0                           1        4    229  co_occurence     
MAL-ED           NEPAL                          1                           0        3    229  co_occurence     
MAL-ED           NEPAL                          1                           1        0    229  co_occurence     
MAL-ED           PERU                           0                           0      216    222  co_occurence     
MAL-ED           PERU                           0                           1        6    222  co_occurence     
MAL-ED           PERU                           1                           0        0    222  co_occurence     
MAL-ED           PERU                           1                           1        0    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                           0      235    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                           1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                           0        2    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                           1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      224    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225  co_occurence     
NIH-Birth        BANGLADESH                     0                           0      383    462  co_occurence     
NIH-Birth        BANGLADESH                     0                           1       35    462  co_occurence     
NIH-Birth        BANGLADESH                     1                           0       28    462  co_occurence     
NIH-Birth        BANGLADESH                     1                           1       16    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                           0      592    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                           1       24    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                           0       13    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                           1        5    634  co_occurence     
PROBIT           BELARUS                        0                           0     2088   2146  co_occurence     
PROBIT           BELARUS                        0                           1        1   2146  co_occurence     
PROBIT           BELARUS                        1                           0       57   2146  co_occurence     
PROBIT           BELARUS                        1                           1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                           0      516    563  co_occurence     
PROVIDE          BANGLADESH                     0                           1       34    563  co_occurence     
PROVIDE          BANGLADESH                     1                           0       10    563  co_occurence     
PROVIDE          BANGLADESH                     1                           1        3    563  co_occurence     
ResPak           PAKISTAN                       0                           0        7      9  co_occurence     
ResPak           PAKISTAN                       0                           1        0      9  co_occurence     
ResPak           PAKISTAN                       1                           0        1      9  co_occurence     
ResPak           PAKISTAN                       1                           1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                           0     1052   1256  co_occurence     
SAS-CompFeed     INDIA                          0                           1       96   1256  co_occurence     
SAS-CompFeed     INDIA                          1                           0       76   1256  co_occurence     
SAS-CompFeed     INDIA                          1                           1       32   1256  co_occurence     
SAS-FoodSuppl    INDIA                          0                           0      218    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                           1       35    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                           0       45    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                           1       25    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      937    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       19    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       22    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        2    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                           0     1534   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       0                           1       73   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                           0       58   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                           1       15   1680  co_occurence     


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
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
* studyid: IRC, country: INDIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/e3e0c446-b6ec-483f-8ab1-2edad8d95c8e/f4ecb771-3b7a-4b1f-bd59-5272824e3353/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3e0c446-b6ec-483f-8ab1-2edad8d95c8e/f4ecb771-3b7a-4b1f-bd59-5272824e3353/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3e0c446-b6ec-483f-8ab1-2edad8d95c8e/f4ecb771-3b7a-4b1f-bd59-5272824e3353/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3e0c446-b6ec-483f-8ab1-2edad8d95c8e/f4ecb771-3b7a-4b1f-bd59-5272824e3353/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0222222   0.0059217   0.0385227
CMC-V-BCS-2002   INDIA         1                    NA                0.2941176   0.1688947   0.4193406
COHORTS          GUATEMALA     0                    NA                0.0420624   0.0275610   0.0565638
COHORTS          GUATEMALA     1                    NA                0.1891892   0.0629088   0.3154696
COHORTS          PHILIPPINES   0                    NA                0.0656716   0.0556439   0.0756994
COHORTS          PHILIPPINES   1                    NA                0.2323944   0.1629122   0.3018765
EE               PAKISTAN      0                    NA                0.1962617   0.1527507   0.2397727
EE               PAKISTAN      1                    NA                0.4400000   0.2451381   0.6348619
GMS-Nepal        NEPAL         0                    NA                0.0965092   0.0702595   0.1227590
GMS-Nepal        NEPAL         1                    NA                0.2063492   0.1063287   0.3063697
JiVitA-4         BANGLADESH    0                    NA                0.0792755   0.0701812   0.0883698
JiVitA-4         BANGLADESH    1                    NA                0.3478261   0.2745684   0.4210837
Keneba           GAMBIA        0                    NA                0.0495916   0.0393109   0.0598723
Keneba           GAMBIA        1                    NA                0.2459016   0.1378080   0.3539953
NIH-Birth        BANGLADESH    0                    NA                0.0837321   0.0571501   0.1103141
NIH-Birth        BANGLADESH    1                    NA                0.3636364   0.2213450   0.5059277
NIH-Crypto       BANGLADESH    0                    NA                0.0389610   0.0236683   0.0542538
NIH-Crypto       BANGLADESH    1                    NA                0.2777778   0.0706975   0.4848581
SAS-CompFeed     INDIA         0                    NA                0.0836237   0.0731686   0.0940788
SAS-CompFeed     INDIA         1                    NA                0.2962963   0.2402584   0.3523342
SAS-FoodSuppl    INDIA         0                    NA                0.1383399   0.0957308   0.1809491
SAS-FoodSuppl    INDIA         1                    NA                0.3571429   0.2447210   0.4695647
ZVITAMBO         ZIMBABWE      0                    NA                0.0454263   0.0352420   0.0556105
ZVITAMBO         ZIMBABWE      1                    NA                0.2054795   0.1127639   0.2981950


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
COHORTS          GUATEMALA     NA                   NA                0.0490956   0.0338639   0.0643273
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
JiVitA-4         BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
SAS-CompFeed     INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country       intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 13.235294   5.667550   30.908064
COHORTS          GUATEMALA     0                    0                  1.000000   1.000000    1.000000
COHORTS          GUATEMALA     1                    0                  4.497820   2.121945    9.533891
COHORTS          PHILIPPINES   0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES   1                    0                  3.538732   2.529571    4.950493
EE               PAKISTAN      0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN      1                    0                  2.241905   1.366245    3.678797
GMS-Nepal        NEPAL         0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL         1                    0                  2.138129   1.226443    3.727524
JiVitA-4         BANGLADESH    0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH    1                    0                  4.387563   3.462483    5.559799
Keneba           GAMBIA        0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA        1                    0                  4.958534   3.049866    8.061685
NIH-Birth        BANGLADESH    0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH    1                    0                  4.342857   2.623861    7.188037
NIH-Crypto       BANGLADESH    0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                  7.129630   3.070223   16.556328
SAS-CompFeed     INDIA         0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA         1                    0                  3.543210   2.845691    4.411700
SAS-FoodSuppl    INDIA         0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                  2.581633   1.661999    4.010128
ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                  4.523363   2.733035    7.486481


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0378871   0.0178137   0.0579604
COHORTS          GUATEMALA     0                    NA                0.0070332   0.0005665   0.0134999
COHORTS          PHILIPPINES   0                    NA                0.0095194   0.0052323   0.0138064
EE               PAKISTAN      0                    NA                0.0176112   0.0017221   0.0335002
GMS-Nepal        NEPAL         0                    NA                0.0125817   0.0003807   0.0247826
JiVitA-4         BANGLADESH    0                    NA                0.0163729   0.0111669   0.0215789
Keneba           GAMBIA        0                    NA                0.0067464   0.0026606   0.0108322
NIH-Birth        BANGLADESH    0                    NA                0.0266576   0.0109633   0.0423518
NIH-Crypto       BANGLADESH    0                    NA                0.0067803   0.0001243   0.0134362
SAS-CompFeed     INDIA         0                    NA                0.0182871   0.0123348   0.0242395
SAS-FoodSuppl    INDIA         0                    NA                0.0474186   0.0195650   0.0752722
ZVITAMBO         ZIMBABWE      0                    NA                0.0069547   0.0026116   0.0112978


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.6303030    0.3262436   0.7971435
COHORTS          GUATEMALA     0                    NA                0.1432550    0.0090294   0.2593000
COHORTS          PHILIPPINES   0                    NA                0.1266023    0.0701788   0.1796018
EE               PAKISTAN      0                    NA                0.0823440    0.0059818   0.1528399
GMS-Nepal        NEPAL         0                    NA                0.1153320   -0.0008347   0.2180152
JiVitA-4         BANGLADESH    0                    NA                0.1711778    0.1203441   0.2190739
Keneba           GAMBIA        0                    NA                0.1197491    0.0477138   0.1863354
NIH-Birth        BANGLADESH    0                    NA                0.2414861    0.0990716   0.3613883
NIH-Crypto       BANGLADESH    0                    NA                0.1482311    0.0002406   0.2743151
SAS-CompFeed     INDIA         0                    NA                0.1794425    0.1253465   0.2301927
SAS-FoodSuppl    INDIA         0                    NA                0.2552701    0.0985319   0.3847562
ZVITAMBO         ZIMBABWE      0                    NA                0.1327714    0.0502420   0.2081294
