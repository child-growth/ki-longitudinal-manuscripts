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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_stunted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                              0      167     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                              1       11     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              0      175     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              1       17     370  pers_wasted624   
CMIN             BANGLADESH                     0                              0      107     252  pers_wasted624   
CMIN             BANGLADESH                     0                              1        3     252  pers_wasted624   
CMIN             BANGLADESH                     1                              0      120     252  pers_wasted624   
CMIN             BANGLADESH                     1                              1       22     252  pers_wasted624   
COHORTS          GUATEMALA                      0                              0      555    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                              1       12    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                              0      427    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                              1       29    1023  pers_wasted624   
COHORTS          INDIA                          0                              0     4740    6893  pers_wasted624   
COHORTS          INDIA                          0                              1      420    6893  pers_wasted624   
COHORTS          INDIA                          1                              0     1382    6893  pers_wasted624   
COHORTS          INDIA                          1                              1      351    6893  pers_wasted624   
COHORTS          PHILIPPINES                    0                              0     1889    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                              1      108    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                              0      694    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                              1      118    2809  pers_wasted624   
CONTENT          PERU                           0                              0      186     215  pers_wasted624   
CONTENT          PERU                           0                              1        0     215  pers_wasted624   
CONTENT          PERU                           1                              0       29     215  pers_wasted624   
CONTENT          PERU                           1                              1        0     215  pers_wasted624   
EE               PAKISTAN                       0                              0       83     373  pers_wasted624   
EE               PAKISTAN                       0                              1        8     373  pers_wasted624   
EE               PAKISTAN                       1                              0      241     373  pers_wasted624   
EE               PAKISTAN                       1                              1       41     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                              0      339     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                              1       58     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              0      142     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              1       51     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              0      180     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              1        1     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              0       90     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              1        3     274  pers_wasted624   
IRC              INDIA                          0                              0      204     410  pers_wasted624   
IRC              INDIA                          0                              1       28     410  pers_wasted624   
IRC              INDIA                          1                              0      158     410  pers_wasted624   
IRC              INDIA                          1                              1       20     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              0     8305   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              1     1519   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              0     5718   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              1     1723   17265  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              0     2985    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              1      243    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              0     1708    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              1      321    5257  pers_wasted624   
Keneba           GAMBIA                         0                              0     1469    2299  pers_wasted624   
Keneba           GAMBIA                         0                              1       97    2299  pers_wasted624   
Keneba           GAMBIA                         1                              0      627    2299  pers_wasted624   
Keneba           GAMBIA                         1                              1      106    2299  pers_wasted624   
LCNI-5           MALAWI                         0                              0      498     797  pers_wasted624   
LCNI-5           MALAWI                         0                              1        4     797  pers_wasted624   
LCNI-5           MALAWI                         1                              0      286     797  pers_wasted624   
LCNI-5           MALAWI                         1                              1        9     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                              0      145     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                              1       10     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              0       78     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              1        7     240  pers_wasted624   
MAL-ED           BRAZIL                         0                              0      160     207  pers_wasted624   
MAL-ED           BRAZIL                         0                              1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              0       45     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                              0      135     235  pers_wasted624   
MAL-ED           INDIA                          0                              1       14     235  pers_wasted624   
MAL-ED           INDIA                          1                              0       72     235  pers_wasted624   
MAL-ED           INDIA                          1                              1       14     235  pers_wasted624   
MAL-ED           NEPAL                          0                              0      191     235  pers_wasted624   
MAL-ED           NEPAL                          0                              1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                              0       42     235  pers_wasted624   
MAL-ED           NEPAL                          1                              1        1     235  pers_wasted624   
MAL-ED           PERU                           0                              0      147     270  pers_wasted624   
MAL-ED           PERU                           0                              1        0     270  pers_wasted624   
MAL-ED           PERU                           1                              0      120     270  pers_wasted624   
MAL-ED           PERU                           1                              1        3     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              0      152     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              0      105     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      140     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0      105     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              0      295     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              1       23     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              0      186     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              1       38     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              0      460     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              1       19     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              0      226     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              1       25     730  pers_wasted624   
PROBIT           BELARUS                        0                              0    15191   16595  pers_wasted624   
PROBIT           BELARUS                        0                              1       14   16595  pers_wasted624   
PROBIT           BELARUS                        1                              0     1386   16595  pers_wasted624   
PROBIT           BELARUS                        1                              1        4   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                              0      435     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                              1       20     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              0      140     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              1       20     615  pers_wasted624   
ResPak           PAKISTAN                       0                              0       79     234  pers_wasted624   
ResPak           PAKISTAN                       0                              1       16     234  pers_wasted624   
ResPak           PAKISTAN                       1                              0      108     234  pers_wasted624   
ResPak           PAKISTAN                       1                              1       31     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                              0      698    1388  pers_wasted624   
SAS-CompFeed     INDIA                          0                              1      100    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                              0      460    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                              1      130    1388  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              0      179     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              1       36     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              0      147     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              1       40     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1514    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       66    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0      402    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       36    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              0     7237   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              1      241   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              0     3098   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              1      226   10802  pers_wasted624   


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

* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
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
![](/tmp/227365f3-a3c2-4742-95a4-0b297aa702d7/14032354-5a49-428f-8f29-448e737c468f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/227365f3-a3c2-4742-95a4-0b297aa702d7/14032354-5a49-428f-8f29-448e737c468f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/227365f3-a3c2-4742-95a4-0b297aa702d7/14032354-5a49-428f-8f29-448e737c468f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/227365f3-a3c2-4742-95a4-0b297aa702d7/14032354-5a49-428f-8f29-448e737c468f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0617978   0.0263768   0.0972187
CMC-V-BCS-2002   INDIA                          1                    NA                0.0885417   0.0483045   0.1287788
COHORTS          GUATEMALA                      0                    NA                0.0211640   0.0093112   0.0330169
COHORTS          GUATEMALA                      1                    NA                0.0635965   0.0411873   0.0860057
COHORTS          INDIA                          0                    NA                0.0813953   0.0739340   0.0888567
COHORTS          INDIA                          1                    NA                0.2025389   0.1836160   0.2214619
COHORTS          PHILIPPINES                    0                    NA                0.0540811   0.0441594   0.0640028
COHORTS          PHILIPPINES                    1                    NA                0.1453202   0.1210758   0.1695646
EE               PAKISTAN                       0                    NA                0.0879121   0.0296544   0.1461697
EE               PAKISTAN                       1                    NA                0.1453901   0.1041938   0.1865863
GMS-Nepal        NEPAL                          0                    NA                0.1460957   0.1113225   0.1808689
GMS-Nepal        NEPAL                          1                    NA                0.2642487   0.2019886   0.3265088
IRC              INDIA                          0                    NA                0.1206897   0.0787195   0.1626598
IRC              INDIA                          1                    NA                0.1123596   0.0659089   0.1588102
JiVitA-3         BANGLADESH                     0                    NA                0.1546213   0.1469213   0.1623214
JiVitA-3         BANGLADESH                     1                    NA                0.2315549   0.2210663   0.2420435
JiVitA-4         BANGLADESH                     0                    NA                0.0752788   0.0640541   0.0865035
JiVitA-4         BANGLADESH                     1                    NA                0.1582060   0.1392806   0.1771314
Keneba           GAMBIA                         0                    NA                0.0619413   0.0499999   0.0738826
Keneba           GAMBIA                         1                    NA                0.1446112   0.1191444   0.1700779
MAL-ED           BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
MAL-ED           BANGLADESH                     1                    NA                0.0823529   0.0237900   0.1409159
MAL-ED           INDIA                          0                    NA                0.0939597   0.0470108   0.1409087
MAL-ED           INDIA                          1                    NA                0.1627907   0.0845997   0.2409817
NIH-Birth        BANGLADESH                     0                    NA                0.0723270   0.0438311   0.1008230
NIH-Birth        BANGLADESH                     1                    NA                0.1696429   0.1204474   0.2188384
NIH-Crypto       BANGLADESH                     0                    NA                0.0396660   0.0221756   0.0571563
NIH-Crypto       BANGLADESH                     1                    NA                0.0996016   0.0625285   0.1366747
PROVIDE          BANGLADESH                     0                    NA                0.0439560   0.0251046   0.0628075
PROVIDE          BANGLADESH                     1                    NA                0.1250000   0.0737138   0.1762862
ResPak           PAKISTAN                       0                    NA                0.1684211   0.0930046   0.2438375
ResPak           PAKISTAN                       1                    NA                0.2230216   0.1536712   0.2923719
SAS-CompFeed     INDIA                          0                    NA                0.1253133   0.1040546   0.1465719
SAS-CompFeed     INDIA                          1                    NA                0.2203390   0.1874442   0.2532338
SAS-FoodSuppl    INDIA                          0                    NA                0.1674419   0.1174719   0.2174118
SAS-FoodSuppl    INDIA                          1                    NA                0.2139037   0.1550580   0.2727495
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0417722   0.0319047   0.0516396
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0821918   0.0564636   0.1079199
ZVITAMBO         ZIMBABWE                       0                    NA                0.0322279   0.0282249   0.0362308
ZVITAMBO         ZIMBABWE                       1                    NA                0.0679904   0.0594324   0.0765484


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
JiVitA-4         BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252
Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
MAL-ED           BANGLADESH                     NA                   NA                0.0708333   0.0383085   0.1033581
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 1.4327652   0.6894479   2.977478
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 3.0049342   1.5505044   5.823672
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.4883357   2.1830538   2.836309
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.6870781   2.0969422   3.443294
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.6538121   0.8044198   3.400084
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 1.8087368   1.2939747   2.528279
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 0.9309791   0.5424057   1.597922
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.4975611   1.4035594   1.597859
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 2.1016009   1.7495405   2.524506
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 2.3346507   1.7981381   3.031243
MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           BANGLADESH                     1                    0                 1.2764706   0.5031874   3.238112
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 1.7325581   0.8663283   3.464919
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 2.3454969   1.4380538   3.825556
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.5110086   1.4100809   4.471491
PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
PROVIDE          BANGLADESH                     1                    0                 2.8437500   1.5708281   5.148185
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 1.3241906   0.7676932   2.284091
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 1.7583051   1.3989592   2.209955
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.2774807   0.8512952   1.917028
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9676214   1.3293238   2.912409
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.1096764   1.7677350   2.517761


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0138779   -0.0139730   0.0417288
COHORTS          GUATEMALA                      0                    NA                 0.0189142    0.0075404   0.0302880
COHORTS          INDIA                          0                    NA                 0.0304573    0.0251949   0.0357196
COHORTS          PHILIPPINES                    0                    NA                 0.0263746    0.0186491   0.0341001
EE               PAKISTAN                       0                    NA                 0.0434552   -0.0105474   0.0974578
GMS-Nepal        NEPAL                          0                    NA                 0.0386500    0.0148967   0.0624034
IRC              INDIA                          0                    NA                -0.0036165   -0.0307984   0.0235654
JiVitA-3         BANGLADESH                     0                    NA                 0.0331574    0.0277729   0.0385419
JiVitA-4         BANGLADESH                     0                    NA                 0.0320067    0.0236442   0.0403692
Keneba           GAMBIA                         0                    NA                 0.0263580    0.0172528   0.0354633
MAL-ED           BANGLADESH                     0                    NA                 0.0063172   -0.0185779   0.0312123
MAL-ED           INDIA                          0                    NA                 0.0251892   -0.0084566   0.0588350
NIH-Birth        BANGLADESH                     0                    NA                 0.0402191    0.0163783   0.0640598
NIH-Crypto       BANGLADESH                     0                    NA                 0.0206080    0.0063629   0.0348531
PROVIDE          BANGLADESH                     0                    NA                 0.0210846    0.0065935   0.0355757
ResPak           PAKISTAN                       0                    NA                 0.0324336   -0.0285239   0.0933912
SAS-CompFeed     INDIA                          0                    NA                 0.0403928    0.0234835   0.0573020
SAS-FoodSuppl    INDIA                          0                    NA                 0.0216129   -0.0143701   0.0575958
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0087729    0.0027481   0.0147978
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0110049    0.0080809   0.0139288


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.1833868   -0.2736446   0.4764182
COHORTS          GUATEMALA                      0                    NA                 0.4719319    0.1558330   0.6696673
COHORTS          INDIA                          0                    NA                 0.2722981    0.2268269   0.3150951
COHORTS          PHILIPPINES                    0                    NA                 0.3278147    0.2338361   0.4102658
EE               PAKISTAN                       0                    NA                 0.3307917   -0.2234703   0.6339594
GMS-Nepal        NEPAL                          0                    NA                 0.2092067    0.0733275   0.3251617
IRC              INDIA                          0                    NA                -0.0308908   -0.2911612   0.1769147
JiVitA-3         BANGLADESH                     0                    NA                 0.1765770    0.1478400   0.2043449
JiVitA-4         BANGLADESH                     0                    NA                 0.2983321    0.2200457   0.3687606
Keneba           GAMBIA                         0                    NA                 0.2985077    0.1951021   0.3886287
MAL-ED           BANGLADESH                     0                    NA                 0.0891841   -0.3366919   0.3793741
MAL-ED           INDIA                          0                    NA                 0.2114094   -0.1172457   0.4433855
NIH-Birth        BANGLADESH                     0                    NA                 0.3573564    0.1265537   0.5271710
NIH-Crypto       BANGLADESH                     0                    NA                 0.3419055    0.0849318   0.5267146
PROVIDE          BANGLADESH                     0                    NA                 0.3241758    0.0878294   0.4992841
ResPak           PAKISTAN                       0                    NA                 0.1614782   -0.2018615   0.4149751
SAS-CompFeed     INDIA                          0                    NA                 0.2437616    0.1392600   0.3355757
SAS-FoodSuppl    INDIA                          0                    NA                 0.1143207   -0.0969797   0.2849203
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1735666    0.0501799   0.2809248
ZVITAMBO         ZIMBABWE                       0                    NA                 0.2545494    0.1877006   0.3158968
