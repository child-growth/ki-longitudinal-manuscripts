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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sstunted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                               0      260     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                               1       16     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                               0       82     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                               1       12     370  pers_wasted624   
CMIN             BANGLADESH                     0                               0      181     252  pers_wasted624   
CMIN             BANGLADESH                     0                               1       12     252  pers_wasted624   
CMIN             BANGLADESH                     1                               0       46     252  pers_wasted624   
CMIN             BANGLADESH                     1                               1       13     252  pers_wasted624   
COHORTS          GUATEMALA                      0                               0      843    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                               1       24    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                               0      139    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                               1       17    1023  pers_wasted624   
COHORTS          INDIA                          0                               0     5774    6893  pers_wasted624   
COHORTS          INDIA                          0                               1      648    6893  pers_wasted624   
COHORTS          INDIA                          1                               0      348    6893  pers_wasted624   
COHORTS          INDIA                          1                               1      123    6893  pers_wasted624   
COHORTS          PHILIPPINES                    0                               0     2411    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                               1      184    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                               0      172    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                               1       42    2809  pers_wasted624   
CONTENT          PERU                           0                               0      207     215  pers_wasted624   
CONTENT          PERU                           0                               1        0     215  pers_wasted624   
CONTENT          PERU                           1                               0        8     215  pers_wasted624   
CONTENT          PERU                           1                               1        0     215  pers_wasted624   
EE               PAKISTAN                       0                               0      188     373  pers_wasted624   
EE               PAKISTAN                       0                               1       24     373  pers_wasted624   
EE               PAKISTAN                       1                               0      136     373  pers_wasted624   
EE               PAKISTAN                       1                               1       25     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                               0      454     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                               1       88     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                               0       27     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                               1       21     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                               0      246     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                               1        2     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                               0       24     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                               1        2     274  pers_wasted624   
IRC              INDIA                          0                               0      310     410  pers_wasted624   
IRC              INDIA                          0                               1       38     410  pers_wasted624   
IRC              INDIA                          1                               0       52     410  pers_wasted624   
IRC              INDIA                          1                               1       10     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                               0    12183   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     0                               1     2582   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                               0     1840   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                               1      660   17265  pers_wasted624   
JiVitA-4         BANGLADESH                     0                               0     4209    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     0                               1      449    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                               0      484    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                               1      115    5257  pers_wasted624   
Keneba           GAMBIA                         0                               0     1862    2299  pers_wasted624   
Keneba           GAMBIA                         0                               1      164    2299  pers_wasted624   
Keneba           GAMBIA                         1                               0      234    2299  pers_wasted624   
Keneba           GAMBIA                         1                               1       39    2299  pers_wasted624   
LCNI-5           MALAWI                         0                               0      720     797  pers_wasted624   
LCNI-5           MALAWI                         0                               1       10     797  pers_wasted624   
LCNI-5           MALAWI                         1                               0       64     797  pers_wasted624   
LCNI-5           MALAWI                         1                               1        3     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                               0      207     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                               1       15     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                               0       16     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                               1        2     240  pers_wasted624   
MAL-ED           BRAZIL                         0                               0      188     207  pers_wasted624   
MAL-ED           BRAZIL                         0                               1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                               0       17     207  pers_wasted624   
MAL-ED           BRAZIL                         1                               1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                               0      193     235  pers_wasted624   
MAL-ED           INDIA                          0                               1       22     235  pers_wasted624   
MAL-ED           INDIA                          1                               0       14     235  pers_wasted624   
MAL-ED           INDIA                          1                               1        6     235  pers_wasted624   
MAL-ED           NEPAL                          0                               0      224     235  pers_wasted624   
MAL-ED           NEPAL                          0                               1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                               0        9     235  pers_wasted624   
MAL-ED           NEPAL                          1                               1        1     235  pers_wasted624   
MAL-ED           PERU                           0                               0      234     270  pers_wasted624   
MAL-ED           PERU                           0                               1        1     270  pers_wasted624   
MAL-ED           PERU                           1                               0       33     270  pers_wasted624   
MAL-ED           PERU                           1                               1        2     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                               0      230     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                               1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                               0       27     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                               1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      208     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       37     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                               0      427     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                               1       48     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                               0       54     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                               1       13     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                               0      641     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                               1       36     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                               0       45     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                               1        8     730  pers_wasted624   
PROBIT           BELARUS                        0                               0    16294   16595  pers_wasted624   
PROBIT           BELARUS                        0                               1       16   16595  pers_wasted624   
PROBIT           BELARUS                        1                               0      283   16595  pers_wasted624   
PROBIT           BELARUS                        1                               1        2   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                               0      549     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                               1       37     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                               0       26     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                               1        3     615  pers_wasted624   
ResPak           PAKISTAN                       0                               0      114     234  pers_wasted624   
ResPak           PAKISTAN                       0                               1       32     234  pers_wasted624   
ResPak           PAKISTAN                       1                               0       73     234  pers_wasted624   
ResPak           PAKISTAN                       1                               1       15     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                               0     1018    1388  pers_wasted624   
SAS-CompFeed     INDIA                          0                               1      163    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                               0      140    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                               1       67    1388  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                               0      283     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                               1       55     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                               0       43     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                               1       21     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               0     1828    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               1       90    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               0       88    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               1       12    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                               0     9267   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                               1      375   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                               0     1068   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                               1       92   10802  pers_wasted624   


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

* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/b772cb1d-d190-486d-9318-bec06482b758/172ce7d9-82d2-4835-a1b9-b00d6d5b83e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b772cb1d-d190-486d-9318-bec06482b758/172ce7d9-82d2-4835-a1b9-b00d6d5b83e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b772cb1d-d190-486d-9318-bec06482b758/172ce7d9-82d2-4835-a1b9-b00d6d5b83e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b772cb1d-d190-486d-9318-bec06482b758/172ce7d9-82d2-4835-a1b9-b00d6d5b83e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0579710   0.0303640   0.0855780
CMC-V-BCS-2002   INDIA                          1                    NA                0.1276596   0.0601071   0.1952121
CMIN             BANGLADESH                     0                    NA                0.0621762   0.0280407   0.0963116
CMIN             BANGLADESH                     1                    NA                0.2203390   0.1143687   0.3263093
COHORTS          GUATEMALA                      0                    NA                0.0276817   0.0167559   0.0386074
COHORTS          GUATEMALA                      1                    NA                0.1089744   0.0600522   0.1578965
COHORTS          INDIA                          0                    NA                0.1009031   0.0935360   0.1082703
COHORTS          INDIA                          1                    NA                0.2611465   0.2214739   0.3008191
COHORTS          PHILIPPINES                    0                    NA                0.0709056   0.0610285   0.0807826
COHORTS          PHILIPPINES                    1                    NA                0.1962617   0.1430394   0.2494840
EE               PAKISTAN                       0                    NA                0.1132075   0.0704993   0.1559158
EE               PAKISTAN                       1                    NA                0.1552795   0.0992610   0.2112980
GMS-Nepal        NEPAL                          0                    NA                0.1623616   0.1312884   0.1934349
GMS-Nepal        NEPAL                          1                    NA                0.4375000   0.2970421   0.5779579
IRC              INDIA                          0                    NA                0.1091954   0.0763872   0.1420036
IRC              INDIA                          1                    NA                0.1612903   0.0696277   0.2529530
JiVitA-3         BANGLADESH                     0                    NA                0.1748730   0.1679898   0.1817562
JiVitA-3         BANGLADESH                     1                    NA                0.2640000   0.2453488   0.2826512
JiVitA-4         BANGLADESH                     0                    NA                0.0963933   0.0854268   0.1073598
JiVitA-4         BANGLADESH                     1                    NA                0.1919866   0.1561103   0.2278630
Keneba           GAMBIA                         0                    NA                0.0809477   0.0690683   0.0928271
Keneba           GAMBIA                         1                    NA                0.1428571   0.1013389   0.1843754
MAL-ED           INDIA                          0                    NA                0.1023256   0.0617274   0.1429237
MAL-ED           INDIA                          1                    NA                0.3000000   0.0987348   0.5012652
NIH-Birth        BANGLADESH                     0                    NA                0.1010526   0.0739230   0.1281822
NIH-Birth        BANGLADESH                     1                    NA                0.1940299   0.0992523   0.2888074
NIH-Crypto       BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
NIH-Crypto       BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ResPak           PAKISTAN                       0                    NA                0.2191781   0.1519306   0.2864256
ResPak           PAKISTAN                       1                    NA                0.1704545   0.0917208   0.2491883
SAS-CompFeed     INDIA                          0                    NA                0.1380186   0.1151684   0.1608688
SAS-CompFeed     INDIA                          1                    NA                0.3236715   0.2311487   0.4161943
SAS-FoodSuppl    INDIA                          0                    NA                0.1627219   0.1233226   0.2021212
SAS-FoodSuppl    INDIA                          1                    NA                0.3281250   0.2129488   0.4433012
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469239   0.0374573   0.0563904
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1200000   0.0562929   0.1837071
ZVITAMBO         ZIMBABWE                       0                    NA                0.0388923   0.0350331   0.0427516
ZVITAMBO         ZIMBABWE                       1                    NA                0.0793103   0.0637593   0.0948614


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
JiVitA-4         BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252
Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 2.2021277   1.0806113   4.487614
CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
CMIN             BANGLADESH                     1                    0                 3.5437853   1.7079938   7.352728
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 3.9366987   2.1653406   7.157117
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.5880907   2.1866466   3.063236
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.7679297   2.0405807   3.754537
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.3716356   0.8138475   2.311716
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 2.6946023   1.8542646   3.915774
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 1.4770798   0.7766418   2.809229
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.5096669   1.3934896   1.635530
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 1.9917011   1.5970639   2.483854
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 1.7648084   1.2743851   2.443962
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 2.9318182   1.3447391   6.391989
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 1.9200871   1.0996430   3.352665
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 0.7776989   0.4466696   1.354056
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 2.3451291   1.5816306   3.477190
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 2.0164773   1.3164388   3.088773
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.5573333   1.4492309   4.512707
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.0392276   1.6369155   2.540418


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0177047   -0.0010918   0.0365011
CMIN             BANGLADESH                     0                    NA                 0.0370302    0.0096791   0.0643813
COHORTS          GUATEMALA                      0                    NA                 0.0123965    0.0045453   0.0202478
COHORTS          INDIA                          0                    NA                 0.0109495    0.0080317   0.0138672
COHORTS          PHILIPPINES                    0                    NA                 0.0095501    0.0052467   0.0138535
EE               PAKISTAN                       0                    NA                 0.0181597   -0.0123191   0.0486386
GMS-Nepal        NEPAL                          0                    NA                 0.0223841    0.0091982   0.0355701
IRC              INDIA                          0                    NA                 0.0078778   -0.0069552   0.0227108
JiVitA-3         BANGLADESH                     0                    NA                 0.0129057    0.0100057   0.0158058
JiVitA-4         BANGLADESH                     0                    NA                 0.0108922    0.0064960   0.0152884
Keneba           GAMBIA                         0                    NA                 0.0073516    0.0021586   0.0125446
MAL-ED           INDIA                          0                    NA                 0.0168234   -0.0020257   0.0356724
NIH-Birth        BANGLADESH                     0                    NA                 0.0114935   -0.0009629   0.0239499
NIH-Crypto       BANGLADESH                     0                    NA                 0.0070982   -0.0002455   0.0144419
ResPak           PAKISTAN                       0                    NA                -0.0183234   -0.0573805   0.0207338
SAS-CompFeed     INDIA                          0                    NA                 0.0276874    0.0087698   0.0466051
SAS-FoodSuppl    INDIA                          0                    NA                 0.0263328    0.0060682   0.0465974
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036212    0.0003554   0.0068870
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0043404    0.0026036   0.0060771


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.2339545   -0.0421801   0.4369248
CMIN             BANGLADESH                     0                    NA                 0.3732642    0.0756035   0.5750766
COHORTS          GUATEMALA                      0                    NA                 0.3093088    0.1114899   0.4630851
COHORTS          INDIA                          0                    NA                 0.0978919    0.0720799   0.1229858
COHORTS          PHILIPPINES                    0                    NA                 0.1187000    0.0654352   0.1689290
EE               PAKISTAN                       0                    NA                 0.1382364   -0.1252807   0.3400434
GMS-Nepal        NEPAL                          0                    NA                 0.1211619    0.0487645   0.1880491
IRC              INDIA                          0                    NA                 0.0672893   -0.0673230   0.1849241
JiVitA-3         BANGLADESH                     0                    NA                 0.0687284    0.0532069   0.0839954
JiVitA-4         BANGLADESH                     0                    NA                 0.1015256    0.0594728   0.1416980
Keneba           GAMBIA                         0                    NA                 0.0832576    0.0234170   0.1394314
MAL-ED           INDIA                          0                    NA                 0.1411960   -0.0253403   0.2806834
NIH-Birth        BANGLADESH                     0                    NA                 0.1021225   -0.0133432   0.2044315
NIH-Crypto       BANGLADESH                     0                    NA                 0.1177655   -0.0080550   0.2278818
ResPak           PAKISTAN                       0                    NA                -0.0912270   -0.3033258   0.0863555
SAS-CompFeed     INDIA                          0                    NA                 0.1670876    0.0484982   0.2708967
SAS-FoodSuppl    INDIA                          0                    NA                 0.1392868    0.0276824   0.2380811
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0716433    0.0061162   0.1328501
ZVITAMBO         ZIMBABWE                       0                    NA                 0.1003959    0.0602722   0.1388064
