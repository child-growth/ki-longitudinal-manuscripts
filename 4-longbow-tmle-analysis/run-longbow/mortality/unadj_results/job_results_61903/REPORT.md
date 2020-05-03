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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sunderweight06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                                   0      285     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                                   1       12     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   0       60     373  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                                   1       16     373  pers_wasted624   
CMIN             BANGLADESH                     0                                   0      194     252  pers_wasted624   
CMIN             BANGLADESH                     0                                   1       11     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   0       33     252  pers_wasted624   
CMIN             BANGLADESH                     1                                   1       14     252  pers_wasted624   
COHORTS          GUATEMALA                      0                                   0      904    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                                   1       20    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   0       78    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                                   1       21    1023  pers_wasted624   
COHORTS          INDIA                          0                                   0     5698    6897  pers_wasted624   
COHORTS          INDIA                          0                                   1      423    6897  pers_wasted624   
COHORTS          INDIA                          1                                   0      428    6897  pers_wasted624   
COHORTS          INDIA                          1                                   1      348    6897  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   0     2460    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                                   1      154    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   0      123    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                                   1       72    2809  pers_wasted624   
CONTENT          PERU                           0                                   0      213     215  pers_wasted624   
CONTENT          PERU                           0                                   1        0     215  pers_wasted624   
CONTENT          PERU                           1                                   0        2     215  pers_wasted624   
CONTENT          PERU                           1                                   1        0     215  pers_wasted624   
EE               PAKISTAN                       0                                   0      207     374  pers_wasted624   
EE               PAKISTAN                       0                                   1        9     374  pers_wasted624   
EE               PAKISTAN                       1                                   0      118     374  pers_wasted624   
EE               PAKISTAN                       1                                   1       40     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   0      437     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                                   1       70     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   0       44     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                                   1       39     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   0      260     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                                   1        2     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   0       10     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                                   1        2     274  pers_wasted624   
IRC              INDIA                          0                                   0      307     410  pers_wasted624   
IRC              INDIA                          0                                   1       37     410  pers_wasted624   
IRC              INDIA                          1                                   0       55     410  pers_wasted624   
IRC              INDIA                          1                                   1       11     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   0    12391   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     0                                   1     2246   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   0     1637   17274  pers_wasted624   
JiVitA-3         BANGLADESH                     1                                   1     1000   17274  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   0     4334    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     0                                   1      403    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   0      364    5263  pers_wasted624   
JiVitA-4         BANGLADESH                     1                                   1      162    5263  pers_wasted624   
Keneba           GAMBIA                         0                                   0     2125    2441  pers_wasted624   
Keneba           GAMBIA                         0                                   1      156    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   0       99    2441  pers_wasted624   
Keneba           GAMBIA                         1                                   1       61    2441  pers_wasted624   
LCNI-5           MALAWI                         0                                   0      770     796  pers_wasted624   
LCNI-5           MALAWI                         0                                   1        8     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   0       13     796  pers_wasted624   
LCNI-5           MALAWI                         1                                   1        5     796  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   0      210     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                                   1       14     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   0       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                                   1        3     240  pers_wasted624   
MAL-ED           BRAZIL                         0                                   0      201     207  pers_wasted624   
MAL-ED           BRAZIL                         0                                   1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   0        4     207  pers_wasted624   
MAL-ED           BRAZIL                         1                                   1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                                   0      187     235  pers_wasted624   
MAL-ED           INDIA                          0                                   1       17     235  pers_wasted624   
MAL-ED           INDIA                          1                                   0       20     235  pers_wasted624   
MAL-ED           INDIA                          1                                   1       11     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   0      221     235  pers_wasted624   
MAL-ED           NEPAL                          0                                   1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   0       12     235  pers_wasted624   
MAL-ED           NEPAL                          1                                   1        1     235  pers_wasted624   
MAL-ED           PERU                           0                                   0      259     270  pers_wasted624   
MAL-ED           PERU                           0                                   1        2     270  pers_wasted624   
MAL-ED           PERU                           1                                   0        8     270  pers_wasted624   
MAL-ED           PERU                           1                                   1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   0      246     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                                   1        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   0       11     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                                   1        1     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   0      428     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                                   1       34     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   0       53     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                                   1       27     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   0      645     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                                   1       29     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   0       41     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                                   1       15     730  pers_wasted624   
PROBIT           BELARUS                        0                                   0    16508   16596  pers_wasted624   
PROBIT           BELARUS                        0                                   1       15   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   0       70   16596  pers_wasted624   
PROBIT           BELARUS                        1                                   1        3   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   0      546     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                                   1       26     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   0       29     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                                   1       14     615  pers_wasted624   
ResPak           PAKISTAN                       0                                   0      157     234  pers_wasted624   
ResPak           PAKISTAN                       0                                   1       33     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   0       30     234  pers_wasted624   
ResPak           PAKISTAN                       1                                   1       14     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   0     1039    1389  pers_wasted624   
SAS-CompFeed     INDIA                          0                                   1      130    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   0      119    1389  pers_wasted624   
SAS-CompFeed     INDIA                          1                                   1      101    1389  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   0      261     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                                   1       31     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   0       63     400  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                                   1       45     400  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   0     9894   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                                   1      345   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   0      452   10814  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                                   1      123   10814  pers_wasted624   


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/57fdf17e-755c-4c21-b918-5ec9e37af592/1c85fe83-4413-41d9-82ed-ea9a8d5c1c68/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57fdf17e-755c-4c21-b918-5ec9e37af592/1c85fe83-4413-41d9-82ed-ea9a8d5c1c68/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57fdf17e-755c-4c21-b918-5ec9e37af592/1c85fe83-4413-41d9-82ed-ea9a8d5c1c68/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57fdf17e-755c-4c21-b918-5ec9e37af592/1c85fe83-4413-41d9-82ed-ea9a8d5c1c68/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0404040   0.0179802   0.0628279
CMC-V-BCS-2002   INDIA                          1                    NA                0.2105263   0.1187467   0.3023059
CMIN             BANGLADESH                     0                    NA                0.0536585   0.0227500   0.0845670
CMIN             BANGLADESH                     1                    NA                0.2978723   0.1668680   0.4288767
COHORTS          GUATEMALA                      0                    NA                0.0216450   0.0122575   0.0310326
COHORTS          GUATEMALA                      1                    NA                0.2121212   0.1315528   0.2926896
COHORTS          INDIA                          0                    NA                0.0691064   0.0627519   0.0754608
COHORTS          INDIA                          1                    NA                0.4484536   0.4134592   0.4834480
COHORTS          PHILIPPINES                    0                    NA                0.0589135   0.0498855   0.0679416
COHORTS          PHILIPPINES                    1                    NA                0.3692308   0.3014834   0.4369781
EE               PAKISTAN                       0                    NA                0.0416667   0.0149824   0.0683509
EE               PAKISTAN                       1                    NA                0.2531646   0.1852731   0.3210560
GMS-Nepal        NEPAL                          0                    NA                0.1380671   0.1080136   0.1681205
GMS-Nepal        NEPAL                          1                    NA                0.4698795   0.3624168   0.5773423
IRC              INDIA                          0                    NA                0.1075581   0.0747780   0.1403383
IRC              INDIA                          1                    NA                0.1666667   0.0766464   0.2566869
JiVitA-3         BANGLADESH                     0                    NA                0.1534467   0.1469673   0.1599261
JiVitA-3         BANGLADESH                     1                    NA                0.3792188   0.3589191   0.3995186
JiVitA-4         BANGLADESH                     0                    NA                0.0850749   0.0751510   0.0949989
JiVitA-4         BANGLADESH                     1                    NA                0.3079848   0.2650750   0.3508946
Keneba           GAMBIA                         0                    NA                0.0683911   0.0580303   0.0787518
Keneba           GAMBIA                         1                    NA                0.3812500   0.3059769   0.4565231
LCNI-5           MALAWI                         0                    NA                0.0102828   0.0031722   0.0173933
LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
MAL-ED           INDIA                          0                    NA                0.0833333   0.0453254   0.1213413
MAL-ED           INDIA                          1                    NA                0.3548387   0.1860502   0.5236272
NIH-Birth        BANGLADESH                     0                    NA                0.0735931   0.0497618   0.0974244
NIH-Birth        BANGLADESH                     1                    NA                0.3375000   0.2337868   0.4412132
NIH-Crypto       BANGLADESH                     0                    NA                0.0430267   0.0276970   0.0583564
NIH-Crypto       BANGLADESH                     1                    NA                0.2678571   0.1517921   0.3839221
PROVIDE          BANGLADESH                     0                    NA                0.0454545   0.0283705   0.0625386
PROVIDE          BANGLADESH                     1                    NA                0.3255814   0.1854092   0.4657536
ResPak           PAKISTAN                       0                    NA                0.1736842   0.1197015   0.2276669
ResPak           PAKISTAN                       1                    NA                0.3181818   0.1802629   0.4561007
SAS-CompFeed     INDIA                          0                    NA                0.1112062   0.0952555   0.1271569
SAS-CompFeed     INDIA                          1                    NA                0.4590909   0.3949503   0.5232315
SAS-FoodSuppl    INDIA                          0                    NA                0.1061644   0.0707876   0.1415412
SAS-FoodSuppl    INDIA                          1                    NA                0.4166667   0.3235703   0.5097630
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388548   0.0302886   0.0474210
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4193548   0.2964961   0.5422136
ZVITAMBO         ZIMBABWE                       0                    NA                0.0336947   0.0301995   0.0371899
ZVITAMBO         ZIMBABWE                       1                    NA                0.2139130   0.1803943   0.2474318


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
JiVitA-4         BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251
Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
LCNI-5           MALAWI                         NA                   NA                0.0163317   0.0075211   0.0251422
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
SAS-FoodSuppl    INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  5.210526    2.5726624   10.553108
CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.551257    2.6893509   11.458697
COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
COHORTS          GUATEMALA                      1                    0                  9.800000    5.5061841   17.442207
COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
COHORTS          INDIA                          1                    0                  6.489325    5.7520636    7.321084
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  6.267333    4.9347008    7.959846
EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
EE               PAKISTAN                       1                    0                  6.075949    3.0344655   12.165952
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.403270    2.4818525    4.666775
IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
IRC              INDIA                          1                    0                  1.549549    0.8334278    2.880998
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.471338    2.3093933    2.644639
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.620159    3.0146631    4.347268
Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
Keneba           GAMBIA                         1                    0                  5.574559    4.3464205    7.149725
LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
LCNI-5           MALAWI                         1                    0                 27.013889   10.2838431   70.960845
MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
MAL-ED           INDIA                          1                    0                  4.258064    2.2029714    8.230299
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  4.586029    2.9346552    7.166657
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  6.225370    3.5525141   10.909239
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  7.162791    4.0446508   12.684796
ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ResPak           PAKISTAN                       1                    0                  1.831956    1.0746647    3.122893
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  4.128287    3.3127771    5.144551
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.0000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.924731    2.6276709    5.862041
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.792869    7.4799667   15.573068
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  6.348567    5.2609454    7.661038


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0346630    0.0141918   0.0551341
CMIN             BANGLADESH                     0                    NA                0.0455478    0.0178222   0.0732734
COHORTS          GUATEMALA                      0                    NA                0.0184332    0.0098578   0.0270086
COHORTS          INDIA                          0                    NA                0.0426814    0.0377805   0.0475822
COHORTS          PHILIPPINES                    0                    NA                0.0215421    0.0159725   0.0271118
EE               PAKISTAN                       0                    NA                0.0893494    0.0567594   0.1219393
GMS-Nepal        NEPAL                          0                    NA                0.0466787    0.0284243   0.0649331
IRC              INDIA                          0                    NA                0.0095150   -0.0060499   0.0250800
JiVitA-3         BANGLADESH                     0                    NA                0.0344657    0.0310997   0.0378318
JiVitA-4         BANGLADESH                     0                    NA                0.0222783    0.0173366   0.0272199
Keneba           GAMBIA                         0                    NA                0.0205069    0.0146551   0.0263587
LCNI-5           MALAWI                         0                    NA                0.0060489    0.0006088   0.0114889
MAL-ED           INDIA                          0                    NA                0.0358156    0.0101353   0.0614959
NIH-Birth        BANGLADESH                     0                    NA                0.0389531    0.0213765   0.0565296
NIH-Crypto       BANGLADESH                     0                    NA                0.0172473    0.0072711   0.0272234
PROVIDE          BANGLADESH                     0                    NA                0.0195861    0.0082104   0.0309618
ResPak           PAKISTAN                       0                    NA                0.0271705   -0.0016069   0.0559479
SAS-CompFeed     INDIA                          0                    NA                0.0551005    0.0394035   0.0707976
SAS-FoodSuppl    INDIA                          0                    NA                0.0838356    0.0537357   0.1139356
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0116903    0.0069439   0.0164367
ZVITAMBO         ZIMBABWE                       0                    NA                0.0095825    0.0076353   0.0115298


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.4617605    0.1858748   0.6441557
CMIN             BANGLADESH                     0                    NA                0.4591220    0.1744745   0.6456208
COHORTS          GUATEMALA                      0                    NA                0.4599303    0.2654240   0.6029338
COHORTS          INDIA                          0                    NA                0.3818074    0.3435606   0.4178257
COHORTS          PHILIPPINES                    0                    NA                0.2677516    0.2033058   0.3269843
EE               PAKISTAN                       0                    NA                0.6819728    0.4362210   0.8206012
GMS-Nepal        NEPAL                          0                    NA                0.2526645    0.1542464   0.3396300
IRC              INDIA                          0                    NA                0.0812742   -0.0602327   0.2038945
JiVitA-3         BANGLADESH                     0                    NA                0.1834137    0.1659612   0.2005010
JiVitA-4         BANGLADESH                     0                    NA                0.2075232    0.1617993   0.2507527
Keneba           GAMBIA                         0                    NA                0.2306794    0.1682476   0.2884250
LCNI-5           MALAWI                         0                    NA                0.3703777    0.0352375   0.5890965
MAL-ED           INDIA                          0                    NA                0.3005952    0.0772697   0.4698700
NIH-Birth        BANGLADESH                     0                    NA                0.3461074    0.1935818   0.4697844
NIH-Crypto       BANGLADESH                     0                    NA                0.2861478    0.1242814   0.4180951
PROVIDE          BANGLADESH                     0                    NA                0.3011364    0.1308349   0.4380695
ResPak           PAKISTAN                       0                    NA                0.1352744   -0.0177387   0.2652825
SAS-CompFeed     INDIA                          0                    NA                0.3313188    0.2471209   0.4061005
SAS-FoodSuppl    INDIA                          0                    NA                0.4412401    0.2839785   0.5639619
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2312843    0.1424894   0.3108846
ZVITAMBO         ZIMBABWE                       0                    NA                0.2214221    0.1795082   0.2611949
