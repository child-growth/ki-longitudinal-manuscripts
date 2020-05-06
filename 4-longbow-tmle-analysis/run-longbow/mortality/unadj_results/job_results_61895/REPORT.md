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

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_co06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ----------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                       0      319    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                       1       16    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                       0       25    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                       1        6    366  co_occurence     
CMIN             BANGLADESH                     0                       0      204    237  co_occurence     
CMIN             BANGLADESH                     0                       1       21    237  co_occurence     
CMIN             BANGLADESH                     1                       0        7    237  co_occurence     
CMIN             BANGLADESH                     1                       1        5    237  co_occurence     
COHORTS          GUATEMALA                      0                       0      723    774  co_occurence     
COHORTS          GUATEMALA                      0                       1       35    774  co_occurence     
COHORTS          GUATEMALA                      1                       0       13    774  co_occurence     
COHORTS          GUATEMALA                      1                       1        3    774  co_occurence     
COHORTS          PHILIPPINES                    0                       0     2265   2487  co_occurence     
COHORTS          PHILIPPINES                    0                       1      168   2487  co_occurence     
COHORTS          PHILIPPINES                    1                       0       35   2487  co_occurence     
COHORTS          PHILIPPINES                    1                       1       19   2487  co_occurence     
CONTENT          PERU                           0                       0      200    200  co_occurence     
CONTENT          PERU                           0                       1        0    200  co_occurence     
CONTENT          PERU                           1                       0        0    200  co_occurence     
CONTENT          PERU                           1                       1        0    200  co_occurence     
EE               PAKISTAN                       0                       0      241    346  co_occurence     
EE               PAKISTAN                       0                       1       50    346  co_occurence     
EE               PAKISTAN                       1                       0       31    346  co_occurence     
EE               PAKISTAN                       1                       1       24    346  co_occurence     
GMS-Nepal        NEPAL                          0                       0      469    550  co_occurence     
GMS-Nepal        NEPAL                          0                       1       52    550  co_occurence     
GMS-Nepal        NEPAL                          1                       0       21    550  co_occurence     
GMS-Nepal        NEPAL                          1                       1        8    550  co_occurence     
IRC              INDIA                          0                       0      362    404  co_occurence     
IRC              INDIA                          0                       1       20    404  co_occurence     
IRC              INDIA                          1                       0       17    404  co_occurence     
IRC              INDIA                          1                       1        5    404  co_occurence     
JiVitA-4         BANGLADESH                     0                       0     4011   4523  co_occurence     
JiVitA-4         BANGLADESH                     0                       1      361   4523  co_occurence     
JiVitA-4         BANGLADESH                     1                       0       82   4523  co_occurence     
JiVitA-4         BANGLADESH                     1                       1       69   4523  co_occurence     
Keneba           GAMBIA                         0                       0     1644   1775  co_occurence     
Keneba           GAMBIA                         0                       1       83   1775  co_occurence     
Keneba           GAMBIA                         1                       0       31   1775  co_occurence     
Keneba           GAMBIA                         1                       1       17   1775  co_occurence     
LCNI-5           MALAWI                         0                       0      673    693  co_occurence     
LCNI-5           MALAWI                         0                       1       17    693  co_occurence     
LCNI-5           MALAWI                         1                       0        2    693  co_occurence     
LCNI-5           MALAWI                         1                       1        1    693  co_occurence     
MAL-ED           BANGLADESH                     0                       0      202    221  co_occurence     
MAL-ED           BANGLADESH                     0                       1       12    221  co_occurence     
MAL-ED           BANGLADESH                     1                       0        5    221  co_occurence     
MAL-ED           BANGLADESH                     1                       1        2    221  co_occurence     
MAL-ED           BRAZIL                         0                       0      178    180  co_occurence     
MAL-ED           BRAZIL                         0                       1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                       0        1    180  co_occurence     
MAL-ED           BRAZIL                         1                       1        0    180  co_occurence     
MAL-ED           INDIA                          0                       0      198    228  co_occurence     
MAL-ED           INDIA                          0                       1       12    228  co_occurence     
MAL-ED           INDIA                          1                       0       13    228  co_occurence     
MAL-ED           INDIA                          1                       1        5    228  co_occurence     
MAL-ED           NEPAL                          0                       0      219    229  co_occurence     
MAL-ED           NEPAL                          0                       1        3    229  co_occurence     
MAL-ED           NEPAL                          1                       0        6    229  co_occurence     
MAL-ED           NEPAL                          1                       1        1    229  co_occurence     
MAL-ED           PERU                           0                       0      216    222  co_occurence     
MAL-ED           PERU                           0                       1        5    222  co_occurence     
MAL-ED           PERU                           1                       0        0    222  co_occurence     
MAL-ED           PERU                           1                       1        1    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                       0      232    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                       1        4    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                       0        5    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                       1        0    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      220    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        1    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        4    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0    225  co_occurence     
NIH-Birth        BANGLADESH                     0                       0      385    462  co_occurence     
NIH-Birth        BANGLADESH                     0                       1       36    462  co_occurence     
NIH-Birth        BANGLADESH                     1                       0       26    462  co_occurence     
NIH-Birth        BANGLADESH                     1                       1       15    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                       0      593    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                       1       20    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                       0       12    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                       1        9    634  co_occurence     
PROBIT           BELARUS                        0                       0     2143   2146  co_occurence     
PROBIT           BELARUS                        0                       1        1   2146  co_occurence     
PROBIT           BELARUS                        1                       0        2   2146  co_occurence     
PROBIT           BELARUS                        1                       1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                       0      506    563  co_occurence     
PROVIDE          BANGLADESH                     0                       1       32    563  co_occurence     
PROVIDE          BANGLADESH                     1                       0       20    563  co_occurence     
PROVIDE          BANGLADESH                     1                       1        5    563  co_occurence     
ResPak           PAKISTAN                       0                       0        7      9  co_occurence     
ResPak           PAKISTAN                       0                       1        0      9  co_occurence     
ResPak           PAKISTAN                       1                       0        1      9  co_occurence     
ResPak           PAKISTAN                       1                       1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                       0     1069   1256  co_occurence     
SAS-CompFeed     INDIA                          0                       1       99   1256  co_occurence     
SAS-CompFeed     INDIA                          1                       0       59   1256  co_occurence     
SAS-CompFeed     INDIA                          1                       1       29   1256  co_occurence     
SAS-FoodSuppl    INDIA                          0                       0      238    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                       1       47    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                       0       25    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                       1       13    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0      956    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1       18    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0        3    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        3    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                       0     1571   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       0                       1       80   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                       0       21   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                       1        8   1680  co_occurence     


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

* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/bd4e6738-50e9-4268-9901-947e94d07590/1a80592c-156a-460f-95e2-258a0b3cac3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd4e6738-50e9-4268-9901-947e94d07590/1a80592c-156a-460f-95e2-258a0b3cac3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd4e6738-50e9-4268-9901-947e94d07590/1a80592c-156a-460f-95e2-258a0b3cac3d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd4e6738-50e9-4268-9901-947e94d07590/1a80592c-156a-460f-95e2-258a0b3cac3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0477612   0.0248931   0.0706293
CMC-V-BCS-2002   INDIA         1                    NA                0.1935484   0.0542823   0.3328144
CMIN             BANGLADESH    0                    NA                0.0933333   0.0552428   0.1314239
CMIN             BANGLADESH    1                    NA                0.4166667   0.1371367   0.6961967
COHORTS          PHILIPPINES   0                    NA                0.0690506   0.0589401   0.0791611
COHORTS          PHILIPPINES   1                    NA                0.3518519   0.2412064   0.4624973
EE               PAKISTAN      0                    NA                0.1718213   0.1284172   0.2152254
EE               PAKISTAN      1                    NA                0.4363636   0.3051077   0.5676196
GMS-Nepal        NEPAL         0                    NA                0.0998081   0.0740463   0.1255698
GMS-Nepal        NEPAL         1                    NA                0.2758621   0.1130446   0.4386795
IRC              INDIA         0                    NA                0.0523560   0.0299915   0.0747206
IRC              INDIA         1                    NA                0.2272727   0.0519405   0.4026049
JiVitA-4         BANGLADESH    0                    NA                0.0825709   0.0734793   0.0916625
JiVitA-4         BANGLADESH    1                    NA                0.4569536   0.3474502   0.5664571
Keneba           GAMBIA        0                    NA                0.0480602   0.0379695   0.0581509
Keneba           GAMBIA        1                    NA                0.3541667   0.2188305   0.4895028
MAL-ED           INDIA         0                    NA                0.0571429   0.0256801   0.0886056
MAL-ED           INDIA         1                    NA                0.2777778   0.0704056   0.4851500
NIH-Birth        BANGLADESH    0                    NA                0.0855107   0.0587697   0.1122517
NIH-Birth        BANGLADESH    1                    NA                0.3658537   0.2182575   0.5134498
NIH-Crypto       BANGLADESH    0                    NA                0.0326264   0.0185516   0.0467012
NIH-Crypto       BANGLADESH    1                    NA                0.4285714   0.2167481   0.6403948
PROVIDE          BANGLADESH    0                    NA                0.0594796   0.0394758   0.0794833
PROVIDE          BANGLADESH    1                    NA                0.2000000   0.0430634   0.3569366
SAS-CompFeed     INDIA         0                    NA                0.0847603   0.0753715   0.0941490
SAS-CompFeed     INDIA         1                    NA                0.3295455   0.2493607   0.4097302
SAS-FoodSuppl    INDIA         0                    NA                0.1649123   0.1217612   0.2080633
SAS-FoodSuppl    INDIA         1                    NA                0.3421053   0.1910320   0.4931786
ZVITAMBO         ZIMBABWE      0                    NA                0.0484555   0.0380125   0.0588984
ZVITAMBO         ZIMBABWE      1                    NA                0.2758621   0.1635093   0.3882148


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0618812   0.0383576   0.0854048
JiVitA-4         BANGLADESH    NA                   NA                0.0950696   0.0850280   0.1051113
Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country       intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                  4.052419   1.707496    9.617651
CMIN             BANGLADESH    0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH    1                    0                  4.464286   2.035729    9.790027
COHORTS          PHILIPPINES   0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES   1                    0                  5.095569   3.601995    7.208456
EE               PAKISTAN      0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN      1                    0                  2.539636   1.714674    3.761504
GMS-Nepal        NEPAL         0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL         1                    0                  2.763926   1.451311    5.263712
IRC              INDIA         0                    0                  1.000000   1.000000    1.000000
IRC              INDIA         1                    0                  4.340909   1.797246   10.484651
JiVitA-4         BANGLADESH    0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH    1                    0                  5.534076   4.253294    7.200536
Keneba           GAMBIA        0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA        1                    0                  7.369227   4.765034   11.396668
MAL-ED           INDIA         0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA         1                    0                  4.861111   1.922538   12.291252
NIH-Birth        BANGLADESH    0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH    1                    0                  4.278455   2.568062    7.128014
NIH-Crypto       BANGLADESH    0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 13.135714   6.816156   25.314412
PROVIDE          BANGLADESH    0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH    1                    0                  3.362500   1.431850    7.896362
SAS-CompFeed     INDIA         0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA         1                    0                  3.887971   2.892059    5.226835
SAS-FoodSuppl    INDIA         0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                  2.074468   1.241606    3.466009
ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                  5.693103   3.591141    9.025384


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0123481   -0.0003102   0.0250064
CMIN             BANGLADESH    0                    NA                0.0163713   -0.0005355   0.0332781
COHORTS          PHILIPPINES   0                    NA                0.0061404    0.0029248   0.0093561
EE               PAKISTAN      0                    NA                0.0420515    0.0178213   0.0662817
GMS-Nepal        NEPAL         0                    NA                0.0092828   -0.0000111   0.0185768
IRC              INDIA         0                    NA                0.0095252   -0.0008508   0.0199011
JiVitA-4         BANGLADESH    0                    NA                0.0124987    0.0076075   0.0173900
Keneba           GAMBIA        0                    NA                0.0082778    0.0039411   0.0126145
MAL-ED           INDIA         0                    NA                0.0174185   -0.0008598   0.0356969
NIH-Birth        BANGLADESH    0                    NA                0.0248789    0.0097079   0.0400499
NIH-Crypto       BANGLADESH    0                    NA                0.0131149    0.0041754   0.0220544
PROVIDE          BANGLADESH    0                    NA                0.0062398   -0.0011818   0.0136614
SAS-CompFeed     INDIA         0                    NA                0.0171506    0.0079765   0.0263246
SAS-FoodSuppl    INDIA         0                    NA                0.0208462    0.0013387   0.0403538
ZVITAMBO         ZIMBABWE      0                    NA                0.0039255    0.0007688   0.0070822


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.2054274   -0.0158579   0.3785099
CMIN             BANGLADESH    0                    NA                0.1492308   -0.0104896   0.2837053
COHORTS          PHILIPPINES   0                    NA                0.0816645    0.0391045   0.1223395
EE               PAKISTAN      0                    NA                0.1966193    0.0795450   0.2988027
GMS-Nepal        NEPAL         0                    NA                0.0850928   -0.0021055   0.1647035
IRC              INDIA         0                    NA                0.1539267   -0.0202056   0.2983375
JiVitA-4         BANGLADESH    0                    NA                0.1314693    0.0829680   0.1774053
Keneba           GAMBIA        0                    NA                0.1469311    0.0715176   0.2162193
MAL-ED           INDIA         0                    NA                0.2336134   -0.0261772   0.4276346
NIH-Birth        BANGLADESH    0                    NA                0.2253738    0.0873549   0.3425201
NIH-Crypto       BANGLADESH    0                    NA                0.2867188    0.0962517   0.4370445
PROVIDE          BANGLADESH    0                    NA                0.0949462   -0.0214436   0.1980739
SAS-CompFeed     INDIA         0                    NA                0.1682898    0.0848623   0.2441117
SAS-FoodSuppl    INDIA         0                    NA                0.1122222    0.0028593   0.2095906
ZVITAMBO         ZIMBABWE      0                    NA                0.0749408    0.0141286   0.1320019
