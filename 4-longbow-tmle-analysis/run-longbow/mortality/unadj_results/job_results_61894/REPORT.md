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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sunderweight06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  --------------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                                 0      286    369  co_occurence     
CMC-V-BCS-2002   INDIA                          0                                 1        8    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                 0       61    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                 1       14    369  co_occurence     
CMIN             BANGLADESH                     0                                 0      178    237  co_occurence     
CMIN             BANGLADESH                     0                                 1       15    237  co_occurence     
CMIN             BANGLADESH                     1                                 0       33    237  co_occurence     
CMIN             BANGLADESH                     1                                 1       11    237  co_occurence     
COHORTS          GUATEMALA                      0                                 0      693    779  co_occurence     
COHORTS          GUATEMALA                      0                                 1       27    779  co_occurence     
COHORTS          GUATEMALA                      1                                 0       48    779  co_occurence     
COHORTS          GUATEMALA                      1                                 1       11    779  co_occurence     
COHORTS          PHILIPPINES                    0                                 0     2203   2487  co_occurence     
COHORTS          PHILIPPINES                    0                                 1      146   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                 0       97   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                 1       41   2487  co_occurence     
CONTENT          PERU                           0                                 0      198    200  co_occurence     
CONTENT          PERU                           0                                 1        0    200  co_occurence     
CONTENT          PERU                           1                                 0        2    200  co_occurence     
CONTENT          PERU                           1                                 1        0    200  co_occurence     
EE               PAKISTAN                       0                                 0      180    346  co_occurence     
EE               PAKISTAN                       0                                 1       22    346  co_occurence     
EE               PAKISTAN                       1                                 0       92    346  co_occurence     
EE               PAKISTAN                       1                                 1       52    346  co_occurence     
GMS-Nepal        NEPAL                          0                                 0      438    550  co_occurence     
GMS-Nepal        NEPAL                          0                                 1       37    550  co_occurence     
GMS-Nepal        NEPAL                          1                                 0       52    550  co_occurence     
GMS-Nepal        NEPAL                          1                                 1       23    550  co_occurence     
IRC              INDIA                          0                                 0      327    405  co_occurence     
IRC              INDIA                          0                                 1       15    405  co_occurence     
IRC              INDIA                          1                                 0       53    405  co_occurence     
IRC              INDIA                          1                                 1       10    405  co_occurence     
JiVitA-4         BANGLADESH                     0                                 0     3809   4547  co_occurence     
JiVitA-4         BANGLADESH                     0                                 1      286   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                 0      301   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                 1      151   4547  co_occurence     
Keneba           GAMBIA                         0                                 0     1668   1863  co_occurence     
Keneba           GAMBIA                         0                                 1       75   1863  co_occurence     
Keneba           GAMBIA                         1                                 0       86   1863  co_occurence     
Keneba           GAMBIA                         1                                 1       34   1863  co_occurence     
LCNI-5           MALAWI                         0                                 0      669    692  co_occurence     
LCNI-5           MALAWI                         0                                 1       14    692  co_occurence     
LCNI-5           MALAWI                         1                                 0        5    692  co_occurence     
LCNI-5           MALAWI                         1                                 1        4    692  co_occurence     
MAL-ED           BANGLADESH                     0                                 0      196    221  co_occurence     
MAL-ED           BANGLADESH                     0                                 1       11    221  co_occurence     
MAL-ED           BANGLADESH                     1                                 0       11    221  co_occurence     
MAL-ED           BANGLADESH                     1                                 1        3    221  co_occurence     
MAL-ED           BRAZIL                         0                                 0      176    180  co_occurence     
MAL-ED           BRAZIL                         0                                 1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                                 0        3    180  co_occurence     
MAL-ED           BRAZIL                         1                                 1        0    180  co_occurence     
MAL-ED           INDIA                          0                                 0      187    228  co_occurence     
MAL-ED           INDIA                          0                                 1       10    228  co_occurence     
MAL-ED           INDIA                          1                                 0       24    228  co_occurence     
MAL-ED           INDIA                          1                                 1        7    228  co_occurence     
MAL-ED           NEPAL                          0                                 0      215    229  co_occurence     
MAL-ED           NEPAL                          0                                 1        2    229  co_occurence     
MAL-ED           NEPAL                          1                                 0       10    229  co_occurence     
MAL-ED           NEPAL                          1                                 1        2    229  co_occurence     
MAL-ED           PERU                           0                                 0      210    222  co_occurence     
MAL-ED           PERU                           0                                 1        4    222  co_occurence     
MAL-ED           PERU                           1                                 0        6    222  co_occurence     
MAL-ED           PERU                           1                                 1        2    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                 0      227    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                 1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                 0       10    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                 1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 0      217    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 0        7    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                                 0      362    462  co_occurence     
NIH-Birth        BANGLADESH                     0                                 1       30    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                 0       49    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                 1       21    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                                 0      565    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                                 1       17    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                 0       40    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                 1       12    634  co_occurence     
PROBIT           BELARUS                        0                                 0     2138   2146  co_occurence     
PROBIT           BELARUS                        0                                 1        1   2146  co_occurence     
PROBIT           BELARUS                        1                                 0        7   2146  co_occurence     
PROBIT           BELARUS                        1                                 1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                                 0      497    563  co_occurence     
PROVIDE          BANGLADESH                     0                                 1       26    563  co_occurence     
PROVIDE          BANGLADESH                     1                                 0       29    563  co_occurence     
PROVIDE          BANGLADESH                     1                                 1       11    563  co_occurence     
ResPak           PAKISTAN                       0                                 0        6      9  co_occurence     
ResPak           PAKISTAN                       0                                 1        0      9  co_occurence     
ResPak           PAKISTAN                       1                                 0        2      9  co_occurence     
ResPak           PAKISTAN                       1                                 1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                                 0      992   1260  co_occurence     
SAS-CompFeed     INDIA                          0                                 1       73   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                 0      140   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                 1       55   1260  co_occurence     
SAS-FoodSuppl    INDIA                          0                                 0      207    321  co_occurence     
SAS-FoodSuppl    INDIA                          0                                 1       32    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                 0       54    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                 1       28    321  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 0      942    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 0       17    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                 0     1512   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                 1       70   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                 0       89   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                 1       21   1692  co_occurence     


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/45053613-21d5-4173-96cd-5cfb666fa302/e77ed057-4e5d-4a64-8ac2-5fdc9ee0093f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45053613-21d5-4173-96cd-5cfb666fa302/e77ed057-4e5d-4a64-8ac2-5fdc9ee0093f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45053613-21d5-4173-96cd-5cfb666fa302/e77ed057-4e5d-4a64-8ac2-5fdc9ee0093f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45053613-21d5-4173-96cd-5cfb666fa302/e77ed057-4e5d-4a64-8ac2-5fdc9ee0093f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
CMIN             BANGLADESH    0                    NA                0.0777202   0.0398685   0.1155720
CMIN             BANGLADESH    1                    NA                0.2500000   0.1217845   0.3782155
COHORTS          GUATEMALA     0                    NA                0.0375000   0.0236140   0.0513860
COHORTS          GUATEMALA     1                    NA                0.1864407   0.0869996   0.2858818
COHORTS          PHILIPPINES   0                    NA                0.0621541   0.0523886   0.0719196
COHORTS          PHILIPPINES   1                    NA                0.2971014   0.2208418   0.3733611
EE               PAKISTAN      0                    NA                0.1089109   0.0658882   0.1519335
EE               PAKISTAN      1                    NA                0.3611111   0.2825462   0.4396760
GMS-Nepal        NEPAL         0                    NA                0.0778947   0.0537712   0.1020183
GMS-Nepal        NEPAL         1                    NA                0.3066667   0.2022146   0.4111187
IRC              INDIA         0                    NA                0.0438596   0.0221294   0.0655899
IRC              INDIA         1                    NA                0.1587302   0.0683835   0.2490768
JiVitA-4         BANGLADESH    0                    NA                0.0698413   0.0613720   0.0783105
JiVitA-4         BANGLADESH    1                    NA                0.3340708   0.2810726   0.3870690
Keneba           GAMBIA        0                    NA                0.0430293   0.0335003   0.0525583
Keneba           GAMBIA        1                    NA                0.2833333   0.2026876   0.3639791
MAL-ED           INDIA         0                    NA                0.0507614   0.0200412   0.0814816
MAL-ED           INDIA         1                    NA                0.2258065   0.0782988   0.3733141
NIH-Birth        BANGLADESH    0                    NA                0.0765306   0.0501852   0.1028760
NIH-Birth        BANGLADESH    1                    NA                0.3000000   0.1925320   0.4074680
NIH-Crypto       BANGLADESH    0                    NA                0.0292096   0.0155180   0.0429012
NIH-Crypto       BANGLADESH    1                    NA                0.2307692   0.1161635   0.3453750
PROVIDE          BANGLADESH    0                    NA                0.0497132   0.0310689   0.0683575
PROVIDE          BANGLADESH    1                    NA                0.2750000   0.1365033   0.4134967
SAS-CompFeed     INDIA         0                    NA                0.0685446   0.0572700   0.0798192
SAS-CompFeed     INDIA         1                    NA                0.2820513   0.2183257   0.3457769
SAS-FoodSuppl    INDIA         0                    NA                0.1338912   0.0906509   0.1771315
SAS-FoodSuppl    INDIA         1                    NA                0.3414634   0.2386663   0.4442605
ZVITAMBO         ZIMBABWE      0                    NA                0.0442478   0.0341112   0.0543844
ZVITAMBO         ZIMBABWE      1                    NA                0.1909091   0.1174421   0.2643761


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0596206   0.0354285   0.0838127
CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA     NA                   NA                0.0487805   0.0336441   0.0639169
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH    NA                   NA                0.0961073   0.0860713   0.1061434
Keneba           GAMBIA        NA                   NA                0.0585078   0.0478474   0.0691682
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA         NA                   NA                0.1015873   0.0902183   0.1129563
SAS-FoodSuppl    INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ZVITAMBO         ZIMBABWE      NA                   NA                0.0537825   0.0430304   0.0645346


### Parameter: RR


studyid          country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ---------  ---------  ----------
CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 6.860000   2.985432   15.763079
CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
CMIN             BANGLADESH    1                    0                 3.216667   1.585789    6.524792
COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
COHORTS          GUATEMALA     1                    0                 4.971751   2.597288    9.516970
COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
COHORTS          PHILIPPINES   1                    0                 4.780077   3.537812    6.458551
EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
EE               PAKISTAN      1                    0                 3.315657   2.112092    5.205065
GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
GMS-Nepal        NEPAL         1                    0                 3.936937   2.484455    6.238580
IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
IRC              INDIA         1                    0                 3.619048   1.701649    7.696951
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 4.783286   3.928373    5.824251
Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
Keneba           GAMBIA        1                    0                 6.584667   4.591052    9.443987
MAL-ED           INDIA         0                    0                 1.000000   1.000000    1.000000
MAL-ED           INDIA         1                    0                 4.448387   1.825847   10.837790
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 3.920000   2.385169    6.442479
NIH-Crypto       BANGLADESH    0                    0                 1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                 7.900453   3.990918   15.639797
PROVIDE          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
PROVIDE          BANGLADESH    1                    0                 5.531731   2.952272   10.364915
SAS-CompFeed     INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed     INDIA         1                    0                 4.114858   2.914530    5.809532
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 2.550305   1.640017    3.965845
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 4.314546   2.756988    6.752044


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0324097   0.0129308   0.0518887
CMIN             BANGLADESH    0                    NA                0.0319844   0.0057348   0.0582340
COHORTS          GUATEMALA     0                    NA                0.0112805   0.0031875   0.0193735
COHORTS          PHILIPPINES   0                    NA                0.0130369   0.0082756   0.0177982
EE               PAKISTAN      0                    NA                0.1049619   0.0654422   0.1444817
GMS-Nepal        NEPAL         0                    NA                0.0311962   0.0151704   0.0472219
IRC              INDIA         0                    NA                0.0178687   0.0028547   0.0328827
JiVitA-4         BANGLADESH    0                    NA                0.0262661   0.0200005   0.0325316
Keneba           GAMBIA        0                    NA                0.0154785   0.0096015   0.0213556
MAL-ED           INDIA         0                    NA                0.0238000   0.0018774   0.0457226
NIH-Birth        BANGLADESH    0                    NA                0.0338590   0.0155678   0.0521502
NIH-Crypto       BANGLADESH    0                    NA                0.0165317   0.0061307   0.0269327
PROVIDE          BANGLADESH    0                    NA                0.0160062   0.0049846   0.0270278
SAS-CompFeed     INDIA         0                    NA                0.0330427   0.0220282   0.0440572
SAS-FoodSuppl    INDIA         0                    NA                0.0530247   0.0228592   0.0831902
ZVITAMBO         ZIMBABWE      0                    NA                0.0095347   0.0044145   0.0146549


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.5435993   0.2162412   0.7342274
CMIN             BANGLADESH    0                    NA                0.2915504   0.0348528   0.4799748
COHORTS          GUATEMALA     0                    NA                0.2312500   0.0644757   0.3682937
COHORTS          PHILIPPINES   0                    NA                0.1733836   0.1119163   0.2305965
EE               PAKISTAN      0                    NA                0.4907680   0.2967678   0.6312495
GMS-Nepal        NEPAL         0                    NA                0.2859649   0.1396107   0.4074239
IRC              INDIA         0                    NA                0.2894737   0.0322894   0.4783072
JiVitA-4         BANGLADESH    0                    NA                0.2732992   0.2159668   0.3264392
Keneba           GAMBIA        0                    NA                0.2645549   0.1695795   0.3486680
MAL-ED           INDIA         0                    NA                0.3191998   0.0031572   0.5350431
NIH-Birth        BANGLADESH    0                    NA                0.3067227   0.1404009   0.4408633
NIH-Crypto       BANGLADESH    0                    NA                0.3614172   0.1398427   0.5259147
PROVIDE          BANGLADESH    0                    NA                0.2435533   0.0757253   0.3809074
SAS-CompFeed     INDIA         0                    NA                0.3252641   0.2222568   0.4146287
SAS-FoodSuppl    INDIA         0                    NA                0.2836820   0.1138521   0.4209641
ZVITAMBO         ZIMBABWE      0                    NA                0.1772829   0.0832664   0.2616574
