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

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_underweight06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  -------------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                                0      188    369  co_occurence     
CMC-V-BCS-2002   INDIA                          0                                1        1    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                0      159    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                1       21    369  co_occurence     
CMIN             BANGLADESH                     0                                0      109    237  co_occurence     
CMIN             BANGLADESH                     0                                1        2    237  co_occurence     
CMIN             BANGLADESH                     1                                0      102    237  co_occurence     
CMIN             BANGLADESH                     1                                1       24    237  co_occurence     
COHORTS          GUATEMALA                      0                                0      554    779  co_occurence     
COHORTS          GUATEMALA                      0                                1       11    779  co_occurence     
COHORTS          GUATEMALA                      1                                0      187    779  co_occurence     
COHORTS          GUATEMALA                      1                                1       27    779  co_occurence     
COHORTS          PHILIPPINES                    0                                0     1871   2487  co_occurence     
COHORTS          PHILIPPINES                    0                                1       77   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                0      429   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                1      110   2487  co_occurence     
CONTENT          PERU                           0                                0      192    200  co_occurence     
CONTENT          PERU                           0                                1        0    200  co_occurence     
CONTENT          PERU                           1                                0        8    200  co_occurence     
CONTENT          PERU                           1                                1        0    200  co_occurence     
EE               PAKISTAN                       0                                0       94    346  co_occurence     
EE               PAKISTAN                       0                                1        4    346  co_occurence     
EE               PAKISTAN                       1                                0      178    346  co_occurence     
EE               PAKISTAN                       1                                1       70    346  co_occurence     
GMS-Nepal        NEPAL                          0                                0      283    550  co_occurence     
GMS-Nepal        NEPAL                          0                                1       12    550  co_occurence     
GMS-Nepal        NEPAL                          1                                0      207    550  co_occurence     
GMS-Nepal        NEPAL                          1                                1       48    550  co_occurence     
IRC              INDIA                          0                                0      209    405  co_occurence     
IRC              INDIA                          0                                1        2    405  co_occurence     
IRC              INDIA                          1                                0      171    405  co_occurence     
IRC              INDIA                          1                                1       23    405  co_occurence     
JiVitA-4         BANGLADESH                     0                                0     2944   4547  co_occurence     
JiVitA-4         BANGLADESH                     0                                1       70   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                0     1166   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                1      367   4547  co_occurence     
Keneba           GAMBIA                         0                                0     1427   1863  co_occurence     
Keneba           GAMBIA                         0                                1       39   1863  co_occurence     
Keneba           GAMBIA                         1                                0      327   1863  co_occurence     
Keneba           GAMBIA                         1                                1       70   1863  co_occurence     
LCNI-5           MALAWI                         0                                0      606    692  co_occurence     
LCNI-5           MALAWI                         0                                1        5    692  co_occurence     
LCNI-5           MALAWI                         1                                0       68    692  co_occurence     
LCNI-5           MALAWI                         1                                1       13    692  co_occurence     
MAL-ED           BANGLADESH                     0                                0      147    221  co_occurence     
MAL-ED           BANGLADESH                     0                                1        3    221  co_occurence     
MAL-ED           BANGLADESH                     1                                0       60    221  co_occurence     
MAL-ED           BANGLADESH                     1                                1       11    221  co_occurence     
MAL-ED           BRAZIL                         0                                0      168    180  co_occurence     
MAL-ED           BRAZIL                         0                                1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                                0       11    180  co_occurence     
MAL-ED           BRAZIL                         1                                1        1    180  co_occurence     
MAL-ED           INDIA                          0                                0      130    228  co_occurence     
MAL-ED           INDIA                          0                                1        0    228  co_occurence     
MAL-ED           INDIA                          1                                0       81    228  co_occurence     
MAL-ED           INDIA                          1                                1       17    228  co_occurence     
MAL-ED           NEPAL                          0                                0      190    229  co_occurence     
MAL-ED           NEPAL                          0                                1        0    229  co_occurence     
MAL-ED           NEPAL                          1                                0       35    229  co_occurence     
MAL-ED           NEPAL                          1                                1        4    229  co_occurence     
MAL-ED           PERU                           0                                0      180    222  co_occurence     
MAL-ED           PERU                           0                                1        1    222  co_occurence     
MAL-ED           PERU                           1                                0       36    222  co_occurence     
MAL-ED           PERU                           1                                1        5    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                0      199    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                1        2    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                0       38    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                1        2    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                0      187    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                0       37    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                                0      248    462  co_occurence     
NIH-Birth        BANGLADESH                     0                                1        6    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                0      163    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                1       45    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                                0      419    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                                1        5    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                0      186    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                1       24    634  co_occurence     
PROBIT           BELARUS                        0                                0     2061   2146  co_occurence     
PROBIT           BELARUS                        0                                1        1   2146  co_occurence     
PROBIT           BELARUS                        1                                0       84   2146  co_occurence     
PROBIT           BELARUS                        1                                1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                                0      369    563  co_occurence     
PROVIDE          BANGLADESH                     0                                1       12    563  co_occurence     
PROVIDE          BANGLADESH                     1                                0      157    563  co_occurence     
PROVIDE          BANGLADESH                     1                                1       25    563  co_occurence     
ResPak           PAKISTAN                       0                                0        3      9  co_occurence     
ResPak           PAKISTAN                       0                                1        0      9  co_occurence     
ResPak           PAKISTAN                       1                                0        5      9  co_occurence     
ResPak           PAKISTAN                       1                                1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                                0      716   1260  co_occurence     
SAS-CompFeed     INDIA                          0                                1       18   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                0      416   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                1      110   1260  co_occurence     
SAS-FoodSuppl    INDIA                          0                                0      144    321  co_occurence     
SAS-FoodSuppl    INDIA                          0                                1       10    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                0      117    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                1       50    321  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                0      867    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                1        7    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                0       92    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                1       14    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                0     1258   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                1       37   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                0      343   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                1       54   1692  co_occurence     


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: IRC, country: INDIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/1075df93-ce91-4e22-a926-1b929748310a/b63ed99f-7000-4b1d-aa9b-270564db41e5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1075df93-ce91-4e22-a926-1b929748310a/b63ed99f-7000-4b1d-aa9b-270564db41e5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1075df93-ce91-4e22-a926-1b929748310a/b63ed99f-7000-4b1d-aa9b-270564db41e5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1075df93-ce91-4e22-a926-1b929748310a/b63ed99f-7000-4b1d-aa9b-270564db41e5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0194690   0.0080690   0.0308690
COHORTS          GUATEMALA                      1                    NA                0.1261682   0.0816530   0.1706835
COHORTS          PHILIPPINES                    0                    NA                0.0395277   0.0308734   0.0481821
COHORTS          PHILIPPINES                    1                    NA                0.2040816   0.1700504   0.2381128
GMS-Nepal        NEPAL                          0                    NA                0.0406780   0.0181151   0.0632408
GMS-Nepal        NEPAL                          1                    NA                0.1882353   0.1402135   0.2362571
JiVitA-4         BANGLADESH                     0                    NA                0.0232250   0.0164144   0.0300355
JiVitA-4         BANGLADESH                     1                    NA                0.2393999   0.2150543   0.2637454
Keneba           GAMBIA                         0                    NA                0.0266030   0.0183634   0.0348426
Keneba           GAMBIA                         1                    NA                0.1763224   0.1388250   0.2138199
LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
LCNI-5           MALAWI                         1                    NA                0.1604938   0.0804992   0.2404884
NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
NIH-Crypto       BANGLADESH                     0                    NA                0.0117925   0.0015091   0.0220758
NIH-Crypto       BANGLADESH                     1                    NA                0.1142857   0.0712208   0.1573507
PROVIDE          BANGLADESH                     0                    NA                0.0314961   0.0139431   0.0490490
PROVIDE          BANGLADESH                     1                    NA                0.1373626   0.0873077   0.1874176
SAS-CompFeed     INDIA                          0                    NA                0.0245232   0.0163714   0.0326750
SAS-CompFeed     INDIA                          1                    NA                0.2091255   0.1844653   0.2337856
SAS-FoodSuppl    INDIA                          0                    NA                0.0649351   0.0259565   0.1039136
SAS-FoodSuppl    INDIA                          1                    NA                0.2994012   0.2298301   0.3689723
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ZVITAMBO         ZIMBABWE                       0                    NA                0.0285714   0.0194950   0.0376478
ZVITAMBO         ZIMBABWE                       1                    NA                0.1360202   0.1022887   0.1697516


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0336441   0.0639169
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
JiVitA-4         BANGLADESH                     NA                   NA                0.0961073   0.0860713   0.1061434
Keneba           GAMBIA                         NA                   NA                0.0585078   0.0478474   0.0691682
LCNI-5           MALAWI                         NA                   NA                0.0260116   0.0141438   0.0378793
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA                          NA                   NA                0.1015873   0.0902183   0.1129563
SAS-FoodSuppl    INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0537825   0.0430304   0.0645346


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  6.480459   3.271215   12.838151
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.163000   3.920831    6.798705
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.627451   2.513005    8.520996
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                 10.307874   7.552656   14.068200
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.627915   4.552073    9.650384
LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 19.612346   7.173595   53.619435
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  9.691429   3.748225   25.058208
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  4.361264   2.240940    8.487786
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  8.527672   5.619662   12.940493
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  4.610778   2.422308    8.776454
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.760705   3.181614    7.123527


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0293115   0.0162519   0.0423710
COHORTS          PHILIPPINES                    0                    NA                0.0356633   0.0275999   0.0437267
GMS-Nepal        NEPAL                          0                    NA                0.0684129   0.0430548   0.0937710
JiVitA-4         BANGLADESH                     0                    NA                0.0728824   0.0635760   0.0821888
Keneba           GAMBIA                         0                    NA                0.0319048   0.0232626   0.0405470
LCNI-5           MALAWI                         0                    NA                0.0178283   0.0077434   0.0279131
NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
NIH-Crypto       BANGLADESH                     0                    NA                0.0339489   0.0188096   0.0490881
PROVIDE          BANGLADESH                     0                    NA                0.0342233   0.0165941   0.0518525
SAS-CompFeed     INDIA                          0                    NA                0.0770641   0.0614931   0.0926352
SAS-FoodSuppl    INDIA                          0                    NA                0.1219808   0.0785531   0.1654085
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ZVITAMBO         ZIMBABWE                       0                    NA                0.0252111   0.0167326   0.0336896


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.6008850   0.3481542   0.7556280
COHORTS          PHILIPPINES                    0                    NA                0.4743025   0.3795460   0.5545876
GMS-Nepal        NEPAL                          0                    NA                0.6271186   0.3903225   0.7719442
JiVitA-4         BANGLADESH                     0                    NA                0.7583436   0.6852745   0.8144484
Keneba           GAMBIA                         0                    NA                0.5453083   0.4185359   0.6444415
LCNI-5           MALAWI                         0                    NA                0.6853973   0.3407366   0.8498706
NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
NIH-Crypto       BANGLADESH                     0                    NA                0.7421926   0.4316899   0.8830486
PROVIDE          BANGLADESH                     0                    NA                0.5207491   0.2452204   0.6956974
SAS-CompFeed     INDIA                          0                    NA                0.7586001   0.6482211   0.8343451
SAS-FoodSuppl    INDIA                          0                    NA                0.6525974   0.4033936   0.7977082
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ZVITAMBO         ZIMBABWE                       0                    NA                0.4687598   0.3229522   0.5831666
