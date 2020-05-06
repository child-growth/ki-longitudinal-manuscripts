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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_wasted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  --------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                           0      171    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                           1        4    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                           0      173    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                           1       18    366  co_occurence     
CMIN             BANGLADESH                     0                           0      179    237  co_occurence     
CMIN             BANGLADESH                     0                           1       17    237  co_occurence     
CMIN             BANGLADESH                     1                           0       32    237  co_occurence     
CMIN             BANGLADESH                     1                           1        9    237  co_occurence     
COHORTS          GUATEMALA                      0                           0      594    774  co_occurence     
COHORTS          GUATEMALA                      0                           1       26    774  co_occurence     
COHORTS          GUATEMALA                      1                           0      142    774  co_occurence     
COHORTS          GUATEMALA                      1                           1       12    774  co_occurence     
COHORTS          PHILIPPINES                    0                           0     1777   2487  co_occurence     
COHORTS          PHILIPPINES                    0                           1      112   2487  co_occurence     
COHORTS          PHILIPPINES                    1                           0      523   2487  co_occurence     
COHORTS          PHILIPPINES                    1                           1       75   2487  co_occurence     
CONTENT          PERU                           0                           0      197    200  co_occurence     
CONTENT          PERU                           0                           1        0    200  co_occurence     
CONTENT          PERU                           1                           0        3    200  co_occurence     
CONTENT          PERU                           1                           1        0    200  co_occurence     
EE               PAKISTAN                       0                           0      190    346  co_occurence     
EE               PAKISTAN                       0                           1       35    346  co_occurence     
EE               PAKISTAN                       1                           0       82    346  co_occurence     
EE               PAKISTAN                       1                           1       39    346  co_occurence     
GMS-Nepal        NEPAL                          0                           0      302    550  co_occurence     
GMS-Nepal        NEPAL                          0                           1       28    550  co_occurence     
GMS-Nepal        NEPAL                          1                           0      188    550  co_occurence     
GMS-Nepal        NEPAL                          1                           1       32    550  co_occurence     
IRC              INDIA                          0                           0      175    405  co_occurence     
IRC              INDIA                          0                           1       10    405  co_occurence     
IRC              INDIA                          1                           0      205    405  co_occurence     
IRC              INDIA                          1                           1       15    405  co_occurence     
JiVitA-4         BANGLADESH                     0                           0     3657   4527  co_occurence     
JiVitA-4         BANGLADESH                     0                           1      288   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                           0      437   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                           1      145   4527  co_occurence     
Keneba           GAMBIA                         0                           0     1218   1775  co_occurence     
Keneba           GAMBIA                         0                           1       45   1775  co_occurence     
Keneba           GAMBIA                         1                           0      457   1775  co_occurence     
Keneba           GAMBIA                         1                           1       55   1775  co_occurence     
LCNI-5           MALAWI                         0                           0      666    693  co_occurence     
LCNI-5           MALAWI                         0                           1       17    693  co_occurence     
LCNI-5           MALAWI                         1                           0        9    693  co_occurence     
LCNI-5           MALAWI                         1                           1        1    693  co_occurence     
MAL-ED           BANGLADESH                     0                           0      165    221  co_occurence     
MAL-ED           BANGLADESH                     0                           1        4    221  co_occurence     
MAL-ED           BANGLADESH                     1                           0       42    221  co_occurence     
MAL-ED           BANGLADESH                     1                           1       10    221  co_occurence     
MAL-ED           BRAZIL                         0                           0      166    180  co_occurence     
MAL-ED           BRAZIL                         0                           1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                           0       13    180  co_occurence     
MAL-ED           BRAZIL                         1                           1        0    180  co_occurence     
MAL-ED           INDIA                          0                           0      147    228  co_occurence     
MAL-ED           INDIA                          0                           1        4    228  co_occurence     
MAL-ED           INDIA                          1                           0       64    228  co_occurence     
MAL-ED           INDIA                          1                           1       13    228  co_occurence     
MAL-ED           NEPAL                          0                           0      181    229  co_occurence     
MAL-ED           NEPAL                          0                           1        2    229  co_occurence     
MAL-ED           NEPAL                          1                           0       44    229  co_occurence     
MAL-ED           NEPAL                          1                           1        2    229  co_occurence     
MAL-ED           PERU                           0                           0      208    222  co_occurence     
MAL-ED           PERU                           0                           1        5    222  co_occurence     
MAL-ED           PERU                           1                           0        8    222  co_occurence     
MAL-ED           PERU                           1                           1        1    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                           0      212    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                           1        2    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                           0       25    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                           1        2    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      211    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0       13    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225  co_occurence     
NIH-Birth        BANGLADESH                     0                           0      281    462  co_occurence     
NIH-Birth        BANGLADESH                     0                           1       14    462  co_occurence     
NIH-Birth        BANGLADESH                     1                           0      130    462  co_occurence     
NIH-Birth        BANGLADESH                     1                           1       37    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                           0      440    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                           1       14    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                           0      165    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                           1       15    634  co_occurence     
PROBIT           BELARUS                        0                           0     1618   2146  co_occurence     
PROBIT           BELARUS                        0                           1        1   2146  co_occurence     
PROBIT           BELARUS                        1                           0      527   2146  co_occurence     
PROBIT           BELARUS                        1                           1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                           0      398    563  co_occurence     
PROVIDE          BANGLADESH                     0                           1       23    563  co_occurence     
PROVIDE          BANGLADESH                     1                           0      128    563  co_occurence     
PROVIDE          BANGLADESH                     1                           1       14    563  co_occurence     
ResPak           PAKISTAN                       0                           0        4      9  co_occurence     
ResPak           PAKISTAN                       0                           1        0      9  co_occurence     
ResPak           PAKISTAN                       1                           0        4      9  co_occurence     
ResPak           PAKISTAN                       1                           1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                           0      899   1256  co_occurence     
SAS-CompFeed     INDIA                          0                           1       72   1256  co_occurence     
SAS-CompFeed     INDIA                          1                           0      229   1256  co_occurence     
SAS-CompFeed     INDIA                          1                           1       56   1256  co_occurence     
SAS-FoodSuppl    INDIA                          0                           0      218    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                           1       35    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                           0       45    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                           1       25    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      829    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       14    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      130    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        7    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                           0     1305   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       0                           1       56   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                           0      287   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                           1       32   1680  co_occurence     


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
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/e6366dd6-7dea-4b83-9c29-1e99cb2e6d65/c67329ac-6742-4d2b-a416-85432b977379/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e6366dd6-7dea-4b83-9c29-1e99cb2e6d65/c67329ac-6742-4d2b-a416-85432b977379/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e6366dd6-7dea-4b83-9c29-1e99cb2e6d65/c67329ac-6742-4d2b-a416-85432b977379/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e6366dd6-7dea-4b83-9c29-1e99cb2e6d65/c67329ac-6742-4d2b-a416-85432b977379/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0867347   0.0472496   0.1262198
CMIN             BANGLADESH                     1                    NA                0.2195122   0.0925464   0.3464780
COHORTS          GUATEMALA                      0                    NA                0.0419355   0.0261477   0.0577233
COHORTS          GUATEMALA                      1                    NA                0.0779221   0.0355595   0.1202847
COHORTS          PHILIPPINES                    0                    NA                0.0592906   0.0486384   0.0699429
COHORTS          PHILIPPINES                    1                    NA                0.1254181   0.0988680   0.1519681
EE               PAKISTAN                       0                    NA                0.1555556   0.1081299   0.2029812
EE               PAKISTAN                       1                    NA                0.3223140   0.2389195   0.4057086
GMS-Nepal        NEPAL                          0                    NA                0.0848485   0.0547562   0.1149407
GMS-Nepal        NEPAL                          1                    NA                0.1454545   0.0988248   0.1920843
IRC              INDIA                          0                    NA                0.0540541   0.0214294   0.0866787
IRC              INDIA                          1                    NA                0.0681818   0.0348335   0.1015301
JiVitA-4         BANGLADESH                     0                    NA                0.0730038   0.0639461   0.0820615
JiVitA-4         BANGLADESH                     1                    NA                0.2491409   0.2054610   0.2928208
Keneba           GAMBIA                         0                    NA                0.0356295   0.0254037   0.0458552
Keneba           GAMBIA                         1                    NA                0.1074219   0.0805928   0.1342509
NIH-Birth        BANGLADESH                     0                    NA                0.0474576   0.0231690   0.0717462
NIH-Birth        BANGLADESH                     1                    NA                0.2215569   0.1585023   0.2846114
NIH-Crypto       BANGLADESH                     0                    NA                0.0308370   0.0149223   0.0467517
NIH-Crypto       BANGLADESH                     1                    NA                0.0833333   0.0429251   0.1237416
PROVIDE          BANGLADESH                     0                    NA                0.0546318   0.0329040   0.0763597
PROVIDE          BANGLADESH                     1                    NA                0.0985915   0.0495154   0.1476677
SAS-CompFeed     INDIA                          0                    NA                0.0741504   0.0625981   0.0857026
SAS-CompFeed     INDIA                          1                    NA                0.1964912   0.1565406   0.2364418
SAS-FoodSuppl    INDIA                          0                    NA                0.1383399   0.0957308   0.1809491
SAS-FoodSuppl    INDIA                          1                    NA                0.3571429   0.2447210   0.4695647
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0166074   0.0079762   0.0252385
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0510949   0.0142048   0.0879850
ZVITAMBO         ZIMBABWE                       0                    NA                0.0411462   0.0305905   0.0517020
ZVITAMBO         ZIMBABWE                       1                    NA                0.1003135   0.0673368   0.1332902


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA                      NA                   NA                0.0490956   0.0338639   0.0643273
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH                     NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA                         NA                   NA                0.0563380   0.0456085   0.0670675
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA                          NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
CMIN             BANGLADESH                     1                    0                 2.530846   1.2122647   5.283651
COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 1.858142   0.9591522   3.599732
COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.115310   1.6024719   2.792271
EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 2.072019   1.3890959   3.090688
GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 1.714286   1.0628172   2.765081
IRC              INDIA                          0                    0                 1.000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 1.261364   0.5800366   2.742996
JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 3.412711   2.7620845   4.216597
Keneba           GAMBIA                         0                    0                 1.000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 3.014974   2.0608821   4.410766
NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 4.668520   2.5992923   8.385005
NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.702381   1.3310711   5.486456
PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
PROVIDE          BANGLADESH                     1                    0                 1.804654   0.9543010   3.412735
SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 2.649903   1.9906236   3.527529
SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 2.581633   1.6619986   4.010128
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.076642   1.2639518   7.488995
ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.437976   1.6066908   3.699359


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0229699   -0.0009080   0.0468479
COHORTS          GUATEMALA                      0                    NA                0.0071601   -0.0018918   0.0162120
COHORTS          PHILIPPINES                    0                    NA                0.0159004    0.0089326   0.0228681
EE               PAKISTAN                       0                    NA                0.0583173    0.0237337   0.0929009
GMS-Nepal        NEPAL                          0                    NA                0.0242424    0.0019053   0.0465796
IRC              INDIA                          0                    NA                0.0076743   -0.0176772   0.0330259
JiVitA-4         BANGLADESH                     0                    NA                0.0226445    0.0166078   0.0286812
Keneba           GAMBIA                         0                    NA                0.0207086    0.0122895   0.0291277
NIH-Birth        BANGLADESH                     0                    NA                0.0629320    0.0373415   0.0885225
NIH-Crypto       BANGLADESH                     0                    NA                0.0149043    0.0024371   0.0273715
PROVIDE          BANGLADESH                     0                    NA                0.0110875   -0.0025411   0.0247161
SAS-CompFeed     INDIA                          0                    NA                0.0277605    0.0145554   0.0409655
SAS-FoodSuppl    INDIA                          0                    NA                0.0474186    0.0195650   0.0752722
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048212   -0.0005279   0.0101703
ZVITAMBO         ZIMBABWE                       0                    NA                0.0112347    0.0045671   0.0179024


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMIN             BANGLADESH                     0                    NA                0.2093799   -0.0268154   0.3912439
COHORTS          GUATEMALA                      0                    NA                0.1458404   -0.0535920   0.3075226
COHORTS          PHILIPPINES                    0                    NA                0.2114663    0.1177200   0.2952517
EE               PAKISTAN                       0                    NA                0.2726727    0.0987881   0.4130070
GMS-Nepal        NEPAL                          0                    NA                0.2222222   -0.0046834   0.3978817
IRC              INDIA                          0                    NA                0.1243243   -0.3958276   0.4506428
JiVitA-4         BANGLADESH                     0                    NA                0.2367478    0.1783620   0.2909847
Keneba           GAMBIA                         0                    NA                0.3675772    0.2190375   0.4878645
NIH-Birth        BANGLADESH                     0                    NA                0.5700897    0.3388247   0.7204632
NIH-Crypto       BANGLADESH                     0                    NA                0.3258393    0.0254612   0.5336331
PROVIDE          BANGLADESH                     0                    NA                0.1687103   -0.0591835   0.3475705
SAS-CompFeed     INDIA                          0                    NA                0.2723996    0.1484493   0.3783079
SAS-FoodSuppl    INDIA                          0                    NA                0.2552701    0.0985319   0.3847562
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2249901   -0.0446753   0.4250459
ZVITAMBO         ZIMBABWE                       0                    NA                0.2144813    0.0845177   0.3259951
