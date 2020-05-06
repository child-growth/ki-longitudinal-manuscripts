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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_swasted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ---------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                            0      287    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                            1       11    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                            0       57    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                            1       11    366  co_occurence     
CMIN             BANGLADESH                     0                            0      203    237  co_occurence     
CMIN             BANGLADESH                     0                            1       24    237  co_occurence     
CMIN             BANGLADESH                     1                            0        8    237  co_occurence     
CMIN             BANGLADESH                     1                            1        2    237  co_occurence     
COHORTS          GUATEMALA                      0                            0      691    774  co_occurence     
COHORTS          GUATEMALA                      0                            1       35    774  co_occurence     
COHORTS          GUATEMALA                      1                            0       45    774  co_occurence     
COHORTS          GUATEMALA                      1                            1        3    774  co_occurence     
COHORTS          PHILIPPINES                    0                            0     2163   2487  co_occurence     
COHORTS          PHILIPPINES                    0                            1      163   2487  co_occurence     
COHORTS          PHILIPPINES                    1                            0      137   2487  co_occurence     
COHORTS          PHILIPPINES                    1                            1       24   2487  co_occurence     
CONTENT          PERU                           0                            0      199    200  co_occurence     
CONTENT          PERU                           0                            1        0    200  co_occurence     
CONTENT          PERU                           1                            0        1    200  co_occurence     
CONTENT          PERU                           1                            1        0    200  co_occurence     
EE               PAKISTAN                       0                            0      246    346  co_occurence     
EE               PAKISTAN                       0                            1       64    346  co_occurence     
EE               PAKISTAN                       1                            0       26    346  co_occurence     
EE               PAKISTAN                       1                            1       10    346  co_occurence     
GMS-Nepal        NEPAL                          0                            0      429    550  co_occurence     
GMS-Nepal        NEPAL                          0                            1       50    550  co_occurence     
GMS-Nepal        NEPAL                          1                            0       61    550  co_occurence     
GMS-Nepal        NEPAL                          1                            1       10    550  co_occurence     
IRC              INDIA                          0                            0      268    405  co_occurence     
IRC              INDIA                          0                            1       15    405  co_occurence     
IRC              INDIA                          1                            0      112    405  co_occurence     
IRC              INDIA                          1                            1       10    405  co_occurence     
JiVitA-4         BANGLADESH                     0                            0     4011   4527  co_occurence     
JiVitA-4         BANGLADESH                     0                            1      406   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                            0       83   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                            1       27   4527  co_occurence     
Keneba           GAMBIA                         0                            0     1535   1775  co_occurence     
Keneba           GAMBIA                         0                            1       73   1775  co_occurence     
Keneba           GAMBIA                         1                            0      140   1775  co_occurence     
Keneba           GAMBIA                         1                            1       27   1775  co_occurence     
LCNI-5           MALAWI                         0                            0      675    693  co_occurence     
LCNI-5           MALAWI                         0                            1       18    693  co_occurence     
LCNI-5           MALAWI                         1                            0        0    693  co_occurence     
LCNI-5           MALAWI                         1                            1        0    693  co_occurence     
MAL-ED           BANGLADESH                     0                            0      194    221  co_occurence     
MAL-ED           BANGLADESH                     0                            1       12    221  co_occurence     
MAL-ED           BANGLADESH                     1                            0       13    221  co_occurence     
MAL-ED           BANGLADESH                     1                            1        2    221  co_occurence     
MAL-ED           BRAZIL                         0                            0      177    180  co_occurence     
MAL-ED           BRAZIL                         0                            1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                            0        2    180  co_occurence     
MAL-ED           BRAZIL                         1                            1        0    180  co_occurence     
MAL-ED           INDIA                          0                            0      195    228  co_occurence     
MAL-ED           INDIA                          0                            1       12    228  co_occurence     
MAL-ED           INDIA                          1                            0       16    228  co_occurence     
MAL-ED           INDIA                          1                            1        5    228  co_occurence     
MAL-ED           NEPAL                          0                            0      218    229  co_occurence     
MAL-ED           NEPAL                          0                            1        4    229  co_occurence     
MAL-ED           NEPAL                          1                            0        7    229  co_occurence     
MAL-ED           NEPAL                          1                            1        0    229  co_occurence     
MAL-ED           PERU                           0                            0      215    222  co_occurence     
MAL-ED           PERU                           0                            1        6    222  co_occurence     
MAL-ED           PERU                           1                            0        1    222  co_occurence     
MAL-ED           PERU                           1                            1        0    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                            0      231    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                            1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                            0        6    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                            1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      220    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        1    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0        4    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0    225  co_occurence     
NIH-Birth        BANGLADESH                     0                            0      375    462  co_occurence     
NIH-Birth        BANGLADESH                     0                            1       39    462  co_occurence     
NIH-Birth        BANGLADESH                     1                            0       36    462  co_occurence     
NIH-Birth        BANGLADESH                     1                            1       12    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                            0      560    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                            1       26    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                            0       45    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                            1        3    634  co_occurence     
PROBIT           BELARUS                        0                            0     2011   2146  co_occurence     
PROBIT           BELARUS                        0                            1        1   2146  co_occurence     
PROBIT           BELARUS                        1                            0      134   2146  co_occurence     
PROBIT           BELARUS                        1                            1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                            0      504    563  co_occurence     
PROVIDE          BANGLADESH                     0                            1       35    563  co_occurence     
PROVIDE          BANGLADESH                     1                            0       22    563  co_occurence     
PROVIDE          BANGLADESH                     1                            1        2    563  co_occurence     
ResPak           PAKISTAN                       0                            0        6      9  co_occurence     
ResPak           PAKISTAN                       0                            1        0      9  co_occurence     
ResPak           PAKISTAN                       1                            0        2      9  co_occurence     
ResPak           PAKISTAN                       1                            1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                            0     1064   1256  co_occurence     
SAS-CompFeed     INDIA                          0                            1      107   1256  co_occurence     
SAS-CompFeed     INDIA                          1                            0       64   1256  co_occurence     
SAS-CompFeed     INDIA                          1                            1       21   1256  co_occurence     
SAS-FoodSuppl    INDIA                          0                            0      250    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                            1       51    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                            0       13    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                            1        9    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      932    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1       20    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0       27    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1        1    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                            0     1489   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       0                            1       78   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                            0      103   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                            1       10   1680  co_occurence     


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
* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Crypto, country: BANGLADESH
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
![](/tmp/72a8cd92-c8a2-4364-9ca1-81da23a92514/a23b81b0-d06d-4ca1-aa34-c64dd240c962/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/72a8cd92-c8a2-4364-9ca1-81da23a92514/a23b81b0-d06d-4ca1-aa34-c64dd240c962/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/72a8cd92-c8a2-4364-9ca1-81da23a92514/a23b81b0-d06d-4ca1-aa34-c64dd240c962/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/72a8cd92-c8a2-4364-9ca1-81da23a92514/a23b81b0-d06d-4ca1-aa34-c64dd240c962/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0369128   0.0154762   0.0583493
CMC-V-BCS-2002   INDIA         1                    NA                0.1617647   0.0741226   0.2494068
COHORTS          PHILIPPINES   0                    NA                0.0700774   0.0597011   0.0804537
COHORTS          PHILIPPINES   1                    NA                0.1490683   0.0940430   0.2040936
EE               PAKISTAN      0                    NA                0.2064516   0.1613293   0.2515740
EE               PAKISTAN      1                    NA                0.2777778   0.1312535   0.4243020
GMS-Nepal        NEPAL         0                    NA                0.1043841   0.0769776   0.1317906
GMS-Nepal        NEPAL         1                    NA                0.1408451   0.0598571   0.2218331
IRC              INDIA         0                    NA                0.0530035   0.0268688   0.0791383
IRC              INDIA         1                    NA                0.0819672   0.0332307   0.1307037
JiVitA-4         BANGLADESH    0                    NA                0.0919176   0.0825271   0.1013081
JiVitA-4         BANGLADESH    1                    NA                0.2454545   0.1136645   0.3772446
Keneba           GAMBIA        0                    NA                0.0453980   0.0352201   0.0555759
Keneba           GAMBIA        1                    NA                0.1616766   0.1058243   0.2175290
MAL-ED           INDIA         0                    NA                0.0579710   0.0260663   0.0898757
MAL-ED           INDIA         1                    NA                0.2380952   0.0555298   0.4206607
NIH-Birth        BANGLADESH    0                    NA                0.0942029   0.0660342   0.1223715
NIH-Birth        BANGLADESH    1                    NA                0.2500000   0.1273695   0.3726305
SAS-CompFeed     INDIA         0                    NA                0.0913749   0.0799866   0.1027631
SAS-CompFeed     INDIA         1                    NA                0.2470588   0.1425705   0.3515471
SAS-FoodSuppl    INDIA         0                    NA                0.1694352   0.1269902   0.2118802
SAS-FoodSuppl    INDIA         1                    NA                0.4090909   0.2033217   0.6148601
ZVITAMBO         ZIMBABWE      0                    NA                0.0497766   0.0390053   0.0605480
ZVITAMBO         ZIMBABWE      1                    NA                0.0884956   0.0361140   0.1408771


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
SAS-CompFeed     INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ---------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 4.382353   1.9805297    9.696909
COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES   1                    0                 2.127196   1.4291587    3.166172
EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN      1                    0                 1.345486   0.7601655    2.381499
GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL         1                    0                 1.349296   0.7171014    2.538831
IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
IRC              INDIA         1                    0                 1.546448   0.7142847    3.348107
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 2.670376   1.5550701    4.585587
Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA        1                    0                 3.561316   2.3591501    5.376076
MAL-ED           INDIA         0                    0                 1.000000   1.0000000    1.000000
MAL-ED           INDIA         1                    0                 4.107143   1.5982135   10.554674
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 2.653846   1.4941111    4.713772
SAS-CompFeed     INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA         1                    0                 2.703793   1.6785283    4.355302
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 2.414439   1.3765027    4.235018
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 1.777853   0.9466560    3.338872


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0231965    0.0057087   0.0406843
COHORTS          PHILIPPINES   0                    NA                0.0051136    0.0014090   0.0088182
EE               PAKISTAN      0                    NA                0.0074212   -0.0086953   0.0235377
GMS-Nepal        NEPAL         0                    NA                0.0047068   -0.0063777   0.0157913
IRC              INDIA         0                    NA                0.0087249   -0.0079842   0.0254339
JiVitA-4         BANGLADESH    0                    NA                0.0037307   -0.0000142   0.0074756
Keneba           GAMBIA        0                    NA                0.0109400    0.0053699   0.0165101
MAL-ED           INDIA         0                    NA                0.0165904   -0.0017754   0.0349561
NIH-Birth        BANGLADESH    0                    NA                0.0161867    0.0024126   0.0299608
SAS-CompFeed     INDIA         0                    NA                0.0105359    0.0030595   0.0180124
SAS-FoodSuppl    INDIA         0                    NA                0.0163233    0.0005665   0.0320801
ZVITAMBO         ZIMBABWE      0                    NA                0.0026043   -0.0010225   0.0062311


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.3859060    0.0786732   0.5906866
COHORTS          PHILIPPINES   0                    NA                0.0680082    0.0182176   0.1152737
EE               PAKISTAN      0                    NA                0.0346992   -0.0435076   0.1070447
GMS-Nepal        NEPAL         0                    NA                0.0431454   -0.0636069   0.1391832
IRC              INDIA         0                    NA                0.1413428   -0.1703473   0.3700227
JiVitA-4         BANGLADESH    0                    NA                0.0390048    0.0003720   0.0761445
Keneba           GAMBIA        0                    NA                0.1941853    0.0962720   0.2814903
MAL-ED           INDIA         0                    NA                0.2225064   -0.0412448   0.4194484
NIH-Birth        BANGLADESH    0                    NA                0.1466326    0.0176362   0.2586901
SAS-CompFeed     INDIA         0                    NA                0.1033839    0.0306314   0.1706762
SAS-FoodSuppl    INDIA         0                    NA                0.0878738    0.0005171   0.1675953
ZVITAMBO         ZIMBABWE      0                    NA                0.0497186   -0.0213905   0.1158771
