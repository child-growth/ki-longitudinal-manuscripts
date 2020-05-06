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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sstunted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ----------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      261    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                             1       11    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             0       83    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                             1       11    366  co_occurence     
CMIN             BANGLADESH                     0                             0      166    237  co_occurence     
CMIN             BANGLADESH                     0                             1       15    237  co_occurence     
CMIN             BANGLADESH                     1                             0       45    237  co_occurence     
CMIN             BANGLADESH                     1                             1       11    237  co_occurence     
COHORTS          GUATEMALA                      0                             0      637    778  co_occurence     
COHORTS          GUATEMALA                      0                             1       29    778  co_occurence     
COHORTS          GUATEMALA                      1                             0      103    778  co_occurence     
COHORTS          GUATEMALA                      1                             1        9    778  co_occurence     
COHORTS          PHILIPPINES                    0                             0     2166   2487  co_occurence     
COHORTS          PHILIPPINES                    0                             1      152   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             0      134   2487  co_occurence     
COHORTS          PHILIPPINES                    1                             1       35   2487  co_occurence     
CONTENT          PERU                           0                             0      193    200  co_occurence     
CONTENT          PERU                           0                             1        0    200  co_occurence     
CONTENT          PERU                           1                             0        7    200  co_occurence     
CONTENT          PERU                           1                             1        0    200  co_occurence     
EE               PAKISTAN                       0                             0      169    346  co_occurence     
EE               PAKISTAN                       0                             1       27    346  co_occurence     
EE               PAKISTAN                       1                             0      103    346  co_occurence     
EE               PAKISTAN                       1                             1       47    346  co_occurence     
GMS-Nepal        NEPAL                          0                             0      462    550  co_occurence     
GMS-Nepal        NEPAL                          0                             1       47    550  co_occurence     
GMS-Nepal        NEPAL                          1                             0       28    550  co_occurence     
GMS-Nepal        NEPAL                          1                             1       13    550  co_occurence     
IRC              INDIA                          0                             0      331    405  co_occurence     
IRC              INDIA                          0                             1       13    405  co_occurence     
IRC              INDIA                          1                             0       49    405  co_occurence     
IRC              INDIA                          1                             1       12    405  co_occurence     
JiVitA-4         BANGLADESH                     0                             0     3719   4541  co_occurence     
JiVitA-4         BANGLADESH                     0                             1      311   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             0      386   4541  co_occurence     
JiVitA-4         BANGLADESH                     1                             1      125   4541  co_occurence     
Keneba           GAMBIA                         0                             0     1489   1776  co_occurence     
Keneba           GAMBIA                         0                             1       72   1776  co_occurence     
Keneba           GAMBIA                         1                             0      187   1776  co_occurence     
Keneba           GAMBIA                         1                             1       28   1776  co_occurence     
LCNI-5           MALAWI                         0                             0      630    693  co_occurence     
LCNI-5           MALAWI                         0                             1       14    693  co_occurence     
LCNI-5           MALAWI                         1                             0       45    693  co_occurence     
LCNI-5           MALAWI                         1                             1        4    693  co_occurence     
MAL-ED           BANGLADESH                     0                             0      193    221  co_occurence     
MAL-ED           BANGLADESH                     0                             1       12    221  co_occurence     
MAL-ED           BANGLADESH                     1                             0       14    221  co_occurence     
MAL-ED           BANGLADESH                     1                             1        2    221  co_occurence     
MAL-ED           BRAZIL                         0                             0      165    180  co_occurence     
MAL-ED           BRAZIL                         0                             1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                             0       14    180  co_occurence     
MAL-ED           BRAZIL                         1                             1        1    180  co_occurence     
MAL-ED           INDIA                          0                             0      195    228  co_occurence     
MAL-ED           INDIA                          0                             1       14    228  co_occurence     
MAL-ED           INDIA                          1                             0       16    228  co_occurence     
MAL-ED           INDIA                          1                             1        3    228  co_occurence     
MAL-ED           NEPAL                          0                             0      217    229  co_occurence     
MAL-ED           NEPAL                          0                             1        3    229  co_occurence     
MAL-ED           NEPAL                          1                             0        8    229  co_occurence     
MAL-ED           NEPAL                          1                             1        1    229  co_occurence     
MAL-ED           PERU                           0                             0      188    222  co_occurence     
MAL-ED           PERU                           0                             1        2    222  co_occurence     
MAL-ED           PERU                           1                             0       28    222  co_occurence     
MAL-ED           PERU                           1                             1        4    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             0      213    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                             1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             0       24    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                             1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      191    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       33    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                             0      368    462  co_occurence     
NIH-Birth        BANGLADESH                     0                             1       41    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             0       43    462  co_occurence     
NIH-Birth        BANGLADESH                     1                             1       10    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                             0      565    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                             1       23    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             0       40    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                             1        6    634  co_occurence     
PROBIT           BELARUS                        0                             0     2127   2146  co_occurence     
PROBIT           BELARUS                        0                             1        1   2146  co_occurence     
PROBIT           BELARUS                        1                             0       18   2146  co_occurence     
PROBIT           BELARUS                        1                             1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                             0      503    563  co_occurence     
PROVIDE          BANGLADESH                     0                             1       33    563  co_occurence     
PROVIDE          BANGLADESH                     1                             0       23    563  co_occurence     
PROVIDE          BANGLADESH                     1                             1        4    563  co_occurence     
ResPak           PAKISTAN                       0                             0        3      9  co_occurence     
ResPak           PAKISTAN                       0                             1        0      9  co_occurence     
ResPak           PAKISTAN                       1                             0        5      9  co_occurence     
ResPak           PAKISTAN                       1                             1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                             0      990   1259  co_occurence     
SAS-CompFeed     INDIA                          0                             1       84   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             0      141   1259  co_occurence     
SAS-CompFeed     INDIA                          1                             1       44   1259  co_occurence     
SAS-FoodSuppl    INDIA                          0                             0      228    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                             1       46    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             0       35    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                             1       14    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             0     1363   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       0                             1       63   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             0      238   1691  co_occurence     
ZVITAMBO         ZIMBABWE                       1                             1       27   1691  co_occurence     


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
* studyid: PROVIDE, country: BANGLADESH
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
![](/tmp/8d3488a5-d0e5-4523-abfe-724f0b425158/8cebe8cb-74cb-403b-81ca-f6d28fde3330/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d3488a5-d0e5-4523-abfe-724f0b425158/8cebe8cb-74cb-403b-81ca-f6d28fde3330/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d3488a5-d0e5-4523-abfe-724f0b425158/8cebe8cb-74cb-403b-81ca-f6d28fde3330/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d3488a5-d0e5-4523-abfe-724f0b425158/8cebe8cb-74cb-403b-81ca-f6d28fde3330/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0404412   0.0169986   0.0638838
CMC-V-BCS-2002   INDIA                          1                    NA                0.1170213   0.0519505   0.1820920
CMIN             BANGLADESH                     0                    NA                0.0828729   0.0426246   0.1231213
CMIN             BANGLADESH                     1                    NA                0.1964286   0.0921520   0.3007052
COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
COHORTS          PHILIPPINES                    0                    NA                0.0655738   0.0554948   0.0756527
COHORTS          PHILIPPINES                    1                    NA                0.2071006   0.1459935   0.2682077
EE               PAKISTAN                       0                    NA                0.1377551   0.0894361   0.1860741
EE               PAKISTAN                       1                    NA                0.3133333   0.2389960   0.3876707
GMS-Nepal        NEPAL                          0                    NA                0.0923379   0.0671648   0.1175110
GMS-Nepal        NEPAL                          1                    NA                0.3170732   0.1745064   0.4596399
IRC              INDIA                          0                    NA                0.0377907   0.0176148   0.0579666
IRC              INDIA                          1                    NA                0.1967213   0.0968412   0.2966014
JiVitA-4         BANGLADESH                     0                    NA                0.0771712   0.0679568   0.0863857
JiVitA-4         BANGLADESH                     1                    NA                0.2446184   0.1977399   0.2914969
Keneba           GAMBIA                         0                    NA                0.0461243   0.0357160   0.0565326
Keneba           GAMBIA                         1                    NA                0.1302326   0.0852326   0.1752326
NIH-Birth        BANGLADESH                     0                    NA                0.1002445   0.0711072   0.1293818
NIH-Birth        BANGLADESH                     1                    NA                0.1886792   0.0832311   0.2941274
NIH-Crypto       BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
NIH-Crypto       BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
SAS-CompFeed     INDIA                          0                    NA                0.0782123   0.0668412   0.0895834
SAS-CompFeed     INDIA                          1                    NA                0.2378378   0.1826114   0.2930643
SAS-FoodSuppl    INDIA                          0                    NA                0.1678832   0.1235589   0.2122075
SAS-FoodSuppl    INDIA                          1                    NA                0.2857143   0.1590292   0.4123993
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ZVITAMBO         ZIMBABWE                       0                    NA                0.0441795   0.0335107   0.0548483
ZVITAMBO         ZIMBABWE                       1                    NA                0.1018868   0.0654552   0.1383184


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0601093   0.0357249   0.0844936
CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA                      NA                   NA                0.0488432   0.0336878   0.0639985
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH                     NA                   NA                0.0960141   0.0859500   0.1060782
Keneba           GAMBIA                         NA                   NA                0.0563063   0.0455826   0.0670300
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
SAS-CompFeed     INDIA                          NA                   NA                0.1016680   0.0902317   0.1131043
SAS-FoodSuppl    INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0532229   0.0425206   0.0639253


### Parameter: RR


studyid          country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 2.893617   1.2959593    6.460866
CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
CMIN             BANGLADESH                     1                    0                 2.370238   1.1542927    4.867075
COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973427    3.795274
COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES                    1                    0                 3.158284   2.2644561    4.404924
EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN                       1                    0                 2.274568   1.4893350    3.473805
GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL                          1                    0                 3.433835   2.0296292    5.809545
IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
IRC              INDIA                          1                    0                 5.205548   2.4916969   10.875213
JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                 3.169814   2.5274987    3.975361
Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA                         1                    0                 2.823514   1.8687847    4.265998
NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                 1.882191   1.0024979    3.533814
NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA                          1                    0                 3.040927   2.1956596    4.211598
SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.701863   1.0157975    2.851296
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177450   15.234013
ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.306199   1.4979904    3.550461


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0196681    0.0015759   0.0377603
CMIN             BANGLADESH                     0                    NA                0.0268317   -0.0002867   0.0539502
COHORTS          GUATEMALA                      0                    NA                0.0052996   -0.0023428   0.0129421
COHORTS          PHILIPPINES                    0                    NA                0.0096172    0.0051819   0.0140525
EE               PAKISTAN                       0                    NA                0.0761177    0.0365995   0.1156359
GMS-Nepal        NEPAL                          0                    NA                0.0167530    0.0048850   0.0286210
IRC              INDIA                          0                    NA                0.0239377    0.0076198   0.0402556
JiVitA-4         BANGLADESH                     0                    NA                0.0188429    0.0130036   0.0246822
Keneba           GAMBIA                         0                    NA                0.0101820    0.0044468   0.0159173
NIH-Birth        BANGLADESH                     0                    NA                0.0101451   -0.0026660   0.0229563
NIH-Crypto       BANGLADESH                     0                    NA                0.0066257   -0.0007663   0.0140176
SAS-CompFeed     INDIA                          0                    NA                0.0234557    0.0130952   0.0338162
SAS-FoodSuppl    INDIA                          0                    NA                0.0178753   -0.0030024   0.0387530
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0042243   -0.0001918   0.0086404
ZVITAMBO         ZIMBABWE                       0                    NA                0.0090434    0.0030109   0.0150760


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3272059   -0.0093948   0.5515611
CMIN             BANGLADESH                     0                    NA                0.2445814   -0.0294740   0.4456807
COHORTS          GUATEMALA                      0                    NA                0.1085032   -0.0585805   0.2492149
COHORTS          PHILIPPINES                    0                    NA                0.1279039    0.0693409   0.1827818
EE               PAKISTAN                       0                    NA                0.3559018    0.1542615   0.5094672
GMS-Nepal        NEPAL                          0                    NA                0.1535691    0.0431766   0.2512252
IRC              INDIA                          0                    NA                0.3877907    0.1182202   0.5749503
JiVitA-4         BANGLADESH                     0                    NA                0.1962512    0.1391091   0.2496004
Keneba           GAMBIA                         0                    NA                0.1808328    0.0784612   0.2718322
NIH-Birth        BANGLADESH                     0                    NA                0.0919028   -0.0297267   0.1991656
NIH-Crypto       BANGLADESH                     0                    NA                0.1448510   -0.0237354   0.2856751
SAS-CompFeed     INDIA                          0                    NA                0.2307088    0.1319746   0.3182124
SAS-FoodSuppl    INDIA                          0                    NA                0.0962287   -0.0220097   0.2007879
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1971326   -0.0160720   0.3656001
ZVITAMBO         ZIMBABWE                       0                    NA                0.1699158    0.0539201   0.2716897
