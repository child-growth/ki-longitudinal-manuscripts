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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** rain_quartile

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country        rain_quartile        n_cell       n
---------------  -------------  ------------------  -------  ------
CMC-V-BCS-2002   India          Opposite max rain      2176    8697
CMC-V-BCS-2002   India          Post-max rain          2202    8697
CMC-V-BCS-2002   India          Pre-max rain           2142    8697
CMC-V-BCS-2002   India          Max rain               2177    8697
CMIN             Bangladesh     Opposite max rain      1284    5372
CMIN             Bangladesh     Post-max rain          1378    5372
CMIN             Bangladesh     Pre-max rain           1336    5372
CMIN             Bangladesh     Max rain               1374    5372
CONTENT          Peru           Opposite max rain      2150    8339
CONTENT          Peru           Post-max rain          2136    8339
CONTENT          Peru           Pre-max rain           2023    8339
CONTENT          Peru           Max rain               2030    8339
EE               Pakistan       Opposite max rain      1987    8427
EE               Pakistan       Post-max rain          2202    8427
EE               Pakistan       Pre-max rain           2106    8427
EE               Pakistan       Max rain               2132    8427
GMS-Nepal        Nepal          Opposite max rain      3315   13340
GMS-Nepal        Nepal          Post-max rain          3414   13340
GMS-Nepal        Nepal          Pre-max rain           3116   13340
GMS-Nepal        Nepal          Max rain               3495   13340
Guatemala BSC    Guatemala      Opposite max rain       616    2545
Guatemala BSC    Guatemala      Post-max rain           651    2545
Guatemala BSC    Guatemala      Pre-max rain            591    2545
Guatemala BSC    Guatemala      Max rain                687    2545
IRC              India          Opposite max rain      2436    9729
IRC              India          Post-max rain          2490    9729
IRC              India          Pre-max rain           2345    9729
IRC              India          Max rain               2458    9729
Keneba           Gambia         Opposite max rain      9260   40115
Keneba           Gambia         Post-max rain         10262   40115
Keneba           Gambia         Pre-max rain           9832   40115
Keneba           Gambia         Max rain              10761   40115
MAL-ED           Bangladesh     Opposite max rain      1405    5556
MAL-ED           Bangladesh     Post-max rain          1407    5556
MAL-ED           Bangladesh     Pre-max rain           1369    5556
MAL-ED           Bangladesh     Max rain               1375    5556
MAL-ED           Brazil         Opposite max rain      1148    4665
MAL-ED           Brazil         Post-max rain          1154    4665
MAL-ED           Brazil         Pre-max rain           1180    4665
MAL-ED           Brazil         Max rain               1183    4665
MAL-ED           India          Opposite max rain      1413    5649
MAL-ED           India          Post-max rain          1420    5649
MAL-ED           India          Pre-max rain           1403    5649
MAL-ED           India          Max rain               1413    5649
MAL-ED           Nepal          Opposite max rain      1413    5654
MAL-ED           Nepal          Post-max rain          1419    5654
MAL-ED           Nepal          Pre-max rain           1415    5654
MAL-ED           Nepal          Max rain               1407    5654
MAL-ED           Peru           Opposite max rain      1458    5873
MAL-ED           Peru           Post-max rain          1478    5873
MAL-ED           Peru           Pre-max rain           1483    5873
MAL-ED           Peru           Max rain               1454    5873
MAL-ED           South Africa   Opposite max rain      1513    6043
MAL-ED           South Africa   Post-max rain          1529    6043
MAL-ED           South Africa   Pre-max rain           1518    6043
MAL-ED           South Africa   Max rain               1483    6043
MAL-ED           Tanzania       Opposite max rain      1360    5659
MAL-ED           Tanzania       Post-max rain          1449    5659
MAL-ED           Tanzania       Pre-max rain           1429    5659
MAL-ED           Tanzania       Max rain               1421    5659
ResPak           Pakistan       Opposite max rain       643    3164
ResPak           Pakistan       Post-max rain           731    3164
ResPak           Pakistan       Pre-max rain            770    3164
ResPak           Pakistan       Max rain               1020    3164
TanzaniaChild2   Tanzania       Opposite max rain      7508   29518
TanzaniaChild2   Tanzania       Post-max rain          7244   29518
TanzaniaChild2   Tanzania       Pre-max rain           7333   29518
TanzaniaChild2   Tanzania       Max rain               7433   29518


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: India
* studyid: CMIN, country: Bangladesh
* studyid: CONTENT, country: Peru
* studyid: EE, country: Pakistan
* studyid: GMS-Nepal, country: Nepal
* studyid: Guatemala BSC, country: Guatemala
* studyid: IRC, country: India
* studyid: Keneba, country: Gambia
* studyid: MAL-ED, country: Bangladesh
* studyid: MAL-ED, country: Brazil
* studyid: MAL-ED, country: India
* studyid: MAL-ED, country: Nepal
* studyid: MAL-ED, country: Peru
* studyid: MAL-ED, country: South Africa
* studyid: MAL-ED, country: Tanzania
* studyid: ResPak, country: Pakistan
* studyid: TanzaniaChild2, country: Tanzania



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e3b37542-c13c-4d57-ada8-4fe43e9de7a9/3b5a1de2-a66a-466c-a2ee-e90d84410c79/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e3b37542-c13c-4d57-ada8-4fe43e9de7a9/3b5a1de2-a66a-466c-a2ee-e90d84410c79/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e3b37542-c13c-4d57-ada8-4fe43e9de7a9/3b5a1de2-a66a-466c-a2ee-e90d84410c79/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    NA                -0.4067142   -0.5121081   -0.3013202
CMC-V-BCS-2002   India          Post-max rain        NA                -0.6352089   -0.7440098   -0.5264080
CMC-V-BCS-2002   India          Pre-max rain         NA                -0.4912932   -0.5991165   -0.3834698
CMC-V-BCS-2002   India          Max rain             NA                -0.7407763   -0.8490798   -0.6324728
CMIN             Bangladesh     Opposite max rain    NA                -0.6135280   -0.7746471   -0.4524090
CMIN             Bangladesh     Post-max rain        NA                -0.9119086   -1.0720185   -0.7517986
CMIN             Bangladesh     Pre-max rain         NA                -0.7329716   -0.8600410   -0.6059022
CMIN             Bangladesh     Max rain             NA                -0.9086754   -1.0275062   -0.7898446
CONTENT          Peru           Opposite max rain    NA                 0.9731163    0.8665883    1.0796443
CONTENT          Peru           Post-max rain        NA                 0.8370646    0.7233972    0.9507320
CONTENT          Peru           Pre-max rain         NA                 0.9918339    0.8852918    1.0983760
CONTENT          Peru           Max rain             NA                 0.7838818    0.6746891    0.8930744
EE               Pakistan       Opposite max rain    NA                -0.4121641   -0.5032110   -0.3211172
EE               Pakistan       Post-max rain        NA                -0.9463397   -1.0338515   -0.8588279
EE               Pakistan       Pre-max rain         NA                -0.7753324   -0.8717669   -0.6788978
EE               Pakistan       Max rain             NA                -1.0855629   -1.1784370   -0.9926888
GMS-Nepal        Nepal          Opposite max rain    NA                -0.8186787   -0.8842050   -0.7531525
GMS-Nepal        Nepal          Post-max rain        NA                -1.0027973   -1.0679634   -0.9376312
GMS-Nepal        Nepal          Pre-max rain         NA                -1.2017651   -1.3095576   -1.0939726
GMS-Nepal        Nepal          Max rain             NA                -1.2300029   -1.3390084   -1.1209973
Guatemala BSC    Guatemala      Opposite max rain    NA                -0.2560877   -0.3929840   -0.1191913
Guatemala BSC    Guatemala      Post-max rain        NA                -0.0868049   -0.2067583    0.0331485
Guatemala BSC    Guatemala      Pre-max rain         NA                -0.2320474   -0.3741081   -0.0899867
Guatemala BSC    Guatemala      Max rain             NA                -0.0863173   -0.2420993    0.0694647
IRC              India          Opposite max rain    NA                -0.6754639   -0.7697086   -0.5812191
IRC              India          Post-max rain        NA                -0.8327309   -0.9243528   -0.7411091
IRC              India          Pre-max rain         NA                -0.8554925   -0.9531436   -0.7578415
IRC              India          Max rain             NA                -0.9125753   -1.0055027   -0.8196478
Keneba           Gambia         Opposite max rain    NA                -0.4178056   -0.4664429   -0.3691683
Keneba           Gambia         Post-max rain        NA                -0.7118408   -0.7623662   -0.6613153
Keneba           Gambia         Pre-max rain         NA                -0.3219904   -0.3790766   -0.2649043
Keneba           Gambia         Max rain             NA                -0.5742524   -0.6197415   -0.5287633
MAL-ED           Bangladesh     Opposite max rain    NA                -0.3829893   -0.5007748   -0.2652039
MAL-ED           Bangladesh     Post-max rain        NA                -0.4318905   -0.5457683   -0.3180128
MAL-ED           Bangladesh     Pre-max rain         NA                -0.5492330   -0.6649293   -0.4335367
MAL-ED           Bangladesh     Max rain             NA                -0.5343273   -0.6632061   -0.4054485
MAL-ED           Brazil         Opposite max rain    NA                 0.8816376    0.7041005    1.0591748
MAL-ED           Brazil         Post-max rain        NA                 0.8361092    0.6839291    0.9882893
MAL-ED           Brazil         Pre-max rain         NA                 0.9000424    0.7403109    1.0597738
MAL-ED           Brazil         Max rain             NA                 0.8444379    0.6992120    0.9896638
MAL-ED           India          Opposite max rain    NA                -0.7595117   -0.8609678   -0.6580556
MAL-ED           India          Post-max rain        NA                -0.7762535   -0.8836289   -0.6688781
MAL-ED           India          Pre-max rain         NA                -0.9523592   -1.0589818   -0.8457367
MAL-ED           India          Max rain             NA                -0.9434536   -1.0697852   -0.8171221
MAL-ED           Nepal          Opposite max rain    NA                -0.0974239   -0.2046466    0.0097988
MAL-ED           Nepal          Post-max rain        NA                -0.1530233   -0.2612951   -0.0447514
MAL-ED           Nepal          Pre-max rain         NA                -0.2668975   -0.3750860   -0.1587090
MAL-ED           Nepal          Max rain             NA                -0.3112011   -0.4334302   -0.1889721
MAL-ED           Peru           Opposite max rain    NA                 0.6235048    0.5036330    0.7433766
MAL-ED           Peru           Post-max rain        NA                 0.5881664    0.4787193    0.6976136
MAL-ED           Peru           Pre-max rain         NA                 0.5624882    0.4402693    0.6847071
MAL-ED           Peru           Max rain             NA                 0.5657565    0.4568005    0.6747126
MAL-ED           South Africa   Opposite max rain    NA                 0.5093457    0.3332069    0.6854845
MAL-ED           South Africa   Post-max rain        NA                 0.4691040    0.3146558    0.6235522
MAL-ED           South Africa   Pre-max rain         NA                 0.3767194    0.2658902    0.4875485
MAL-ED           South Africa   Max rain             NA                 0.3337829    0.1589812    0.5085846
MAL-ED           Tanzania       Opposite max rain    NA                 0.4012059    0.2999134    0.5024983
MAL-ED           Tanzania       Post-max rain        NA                 0.3828364    0.2783512    0.4873217
MAL-ED           Tanzania       Pre-max rain         NA                 0.2937019    0.1759963    0.4114075
MAL-ED           Tanzania       Max rain             NA                 0.3321605    0.2246359    0.4396850
ResPak           Pakistan       Opposite max rain    NA                -0.3511198   -0.5266625   -0.1755770
ResPak           Pakistan       Post-max rain        NA                -0.3769631   -0.5723869   -0.1815393
ResPak           Pakistan       Pre-max rain         NA                -0.7012468   -0.8634914   -0.5390021
ResPak           Pakistan       Max rain             NA                -0.6210196   -0.7993666   -0.4426726
TanzaniaChild2   Tanzania       Opposite max rain    NA                -0.0565863   -0.1094778   -0.0036948
TanzaniaChild2   Tanzania       Post-max rain        NA                -0.1003299   -0.1538980   -0.0467618
TanzaniaChild2   Tanzania       Pre-max rain         NA                 0.0741920    0.0211281    0.1272559
TanzaniaChild2   Tanzania       Max rain             NA                -0.0009068   -0.0564422    0.0546286


### Parameter: E(Y)


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          NA                   NA                -0.5690192   -0.6692214   -0.4688170
CMIN             Bangladesh     NA                   NA                -0.7952625   -0.9007497   -0.6897752
CONTENT          Peru           NA                   NA                 0.8967418    0.7963679    0.9971157
EE               Pakistan       NA                   NA                -0.8128729   -0.8951633   -0.7305825
GMS-Nepal        Nepal          NA                   NA                -1.0630457   -1.1281751   -0.9979164
Guatemala BSC    Guatemala      NA                   NA                -0.1613752   -0.2624299   -0.0603206
IRC              India          NA                   NA                -0.8190122   -0.9060940   -0.7319304
Keneba           Gambia         NA                   NA                -0.5115077   -0.5457987   -0.4772167
MAL-ED           Bangladesh     NA                   NA                -0.4737887   -0.5760725   -0.3715049
MAL-ED           Brazil         NA                   NA                 0.8655970    0.7277343    1.0034597
MAL-ED           India          NA                   NA                -0.8576261   -0.9556217   -0.7596305
MAL-ED           Nepal          NA                   NA                -0.2069897   -0.3099921   -0.1039874
MAL-ED           Peru           NA                   NA                 0.5849072    0.4912058    0.6786086
MAL-ED           South Africa   NA                   NA                 0.4227635    0.3123898    0.5331373
MAL-ED           Tanzania       NA                   NA                 0.3520180    0.2575723    0.4464637
ResPak           Pakistan       NA                   NA                -0.5293078   -0.6629147   -0.3957010
TanzaniaChild2   Tanzania       NA                   NA                -0.0208120   -0.0614288    0.0198047


### Parameter: ATE


studyid          country        intervention_level   baseline_level         estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ------------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          Post-max rain        Opposite max rain    -0.2284947   -0.2920971   -0.1648924
CMC-V-BCS-2002   India          Pre-max rain         Opposite max rain    -0.0845790   -0.1416229   -0.0275351
CMC-V-BCS-2002   India          Max rain             Opposite max rain    -0.3340621   -0.4023251   -0.2657992
CMIN             Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     Post-max rain        Opposite max rain    -0.2983805   -0.4884731   -0.1082879
CMIN             Bangladesh     Pre-max rain         Opposite max rain    -0.1194435   -0.2815198    0.0426328
CMIN             Bangladesh     Max rain             Opposite max rain    -0.2951474   -0.4542986   -0.1359962
CONTENT          Peru           Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CONTENT          Peru           Post-max rain        Opposite max rain    -0.1360517   -0.2069381   -0.0651652
CONTENT          Peru           Pre-max rain         Opposite max rain     0.0187176   -0.0449597    0.0823949
CONTENT          Peru           Max rain             Opposite max rain    -0.1892345   -0.2587761   -0.1196929
EE               Pakistan       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
EE               Pakistan       Post-max rain        Opposite max rain    -0.5341756   -0.6077901   -0.4605612
EE               Pakistan       Pre-max rain         Opposite max rain    -0.3631683   -0.4326764   -0.2936602
EE               Pakistan       Max rain             Opposite max rain    -0.6733988   -0.7569713   -0.5898262
GMS-Nepal        Nepal          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
GMS-Nepal        Nepal          Post-max rain        Opposite max rain    -0.1841186   -0.2219417   -0.1462955
GMS-Nepal        Nepal          Pre-max rain         Opposite max rain    -0.3830864   -0.4793404   -0.2868323
GMS-Nepal        Nepal          Max rain             Opposite max rain    -0.4113241   -0.5150893   -0.3075589
Guatemala BSC    Guatemala      Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
Guatemala BSC    Guatemala      Post-max rain        Opposite max rain     0.1692827    0.0306408    0.3079247
Guatemala BSC    Guatemala      Pre-max rain         Opposite max rain     0.0240403   -0.1259370    0.1740176
Guatemala BSC    Guatemala      Max rain             Opposite max rain     0.1697703   -0.0111709    0.3507116
IRC              India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
IRC              India          Post-max rain        Opposite max rain    -0.1572670   -0.2094358   -0.1050983
IRC              India          Pre-max rain         Opposite max rain    -0.1800287   -0.2377227   -0.1223346
IRC              India          Max rain             Opposite max rain    -0.2371114   -0.3028829   -0.1713399
Keneba           Gambia         Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
Keneba           Gambia         Post-max rain        Opposite max rain    -0.2940352   -0.3521170   -0.2359533
Keneba           Gambia         Pre-max rain         Opposite max rain     0.0958152    0.0311831    0.1604473
Keneba           Gambia         Max rain             Opposite max rain    -0.1564468   -0.2128301   -0.1000634
MAL-ED           Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     Post-max rain        Opposite max rain    -0.0489012   -0.1451054    0.0473029
MAL-ED           Bangladesh     Pre-max rain         Opposite max rain    -0.1662437   -0.2559327   -0.0765547
MAL-ED           Bangladesh     Max rain             Opposite max rain    -0.1513379   -0.2680507   -0.0346252
MAL-ED           Brazil         Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         Post-max rain        Opposite max rain    -0.0455284   -0.1840425    0.0929856
MAL-ED           Brazil         Pre-max rain         Opposite max rain     0.0184047   -0.1297449    0.1665544
MAL-ED           Brazil         Max rain             Opposite max rain    -0.0371998   -0.1751694    0.1007699
MAL-ED           India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           India          Post-max rain        Opposite max rain    -0.0167418   -0.0867226    0.0532389
MAL-ED           India          Pre-max rain         Opposite max rain    -0.1928476   -0.2460267   -0.1396684
MAL-ED           India          Max rain             Opposite max rain    -0.1839420   -0.2834690   -0.0844150
MAL-ED           Nepal          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          Post-max rain        Opposite max rain    -0.0555993   -0.1106043   -0.0005944
MAL-ED           Nepal          Pre-max rain         Opposite max rain    -0.1694736   -0.2274706   -0.1114766
MAL-ED           Nepal          Max rain             Opposite max rain    -0.2137772   -0.3045919   -0.1229625
MAL-ED           Peru           Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Peru           Post-max rain        Opposite max rain    -0.0353384   -0.1503292    0.0796525
MAL-ED           Peru           Pre-max rain         Opposite max rain    -0.0610166   -0.1683658    0.0463326
MAL-ED           Peru           Max rain             Opposite max rain    -0.0577483   -0.1715663    0.0560698
MAL-ED           South Africa   Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   Post-max rain        Opposite max rain    -0.0402417   -0.2333635    0.1528801
MAL-ED           South Africa   Pre-max rain         Opposite max rain    -0.1326263   -0.2955772    0.0303246
MAL-ED           South Africa   Max rain             Opposite max rain    -0.1755628   -0.3914100    0.0402844
MAL-ED           Tanzania       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       Post-max rain        Opposite max rain    -0.0183694   -0.0878114    0.0510725
MAL-ED           Tanzania       Pre-max rain         Opposite max rain    -0.1075040   -0.1938375   -0.0211704
MAL-ED           Tanzania       Max rain             Opposite max rain    -0.0690454   -0.1538470    0.0157561
ResPak           Pakistan       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
ResPak           Pakistan       Post-max rain        Opposite max rain    -0.0258433   -0.2089488    0.1572622
ResPak           Pakistan       Pre-max rain         Opposite max rain    -0.3501270   -0.5147566   -0.1854974
ResPak           Pakistan       Max rain             Opposite max rain    -0.2698999   -0.4777616   -0.0620381
TanzaniaChild2   Tanzania       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
TanzaniaChild2   Tanzania       Post-max rain        Opposite max rain    -0.0437436   -0.0985759    0.0110887
TanzaniaChild2   Tanzania       Pre-max rain         Opposite max rain     0.1307783    0.0757007    0.1858559
TanzaniaChild2   Tanzania       Max rain             Opposite max rain     0.0556795   -0.0057302    0.1170893


### Parameter: PAR


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    NA                -0.1623050   -0.2005012   -0.1241088
CMIN             Bangladesh     Opposite max rain    NA                -0.1817344   -0.2939837   -0.0694852
CONTENT          Peru           Opposite max rain    NA                -0.0763745   -0.1167278   -0.0360211
EE               Pakistan       Opposite max rain    NA                -0.4007088   -0.4528331   -0.3485846
GMS-Nepal        Nepal          Opposite max rain    NA                -0.2443670   -0.2846031   -0.2041309
Guatemala BSC    Guatemala      Opposite max rain    NA                 0.0947124   -0.0036150    0.1930399
IRC              India          Opposite max rain    NA                -0.1435484   -0.1797307   -0.1073660
Keneba           Gambia         Opposite max rain    NA                -0.0937020   -0.1306165   -0.0567876
MAL-ED           Bangladesh     Opposite max rain    NA                -0.0907994   -0.1540407   -0.0275581
MAL-ED           Brazil         Opposite max rain    NA                -0.0160406   -0.1099415    0.0778603
MAL-ED           India          Opposite max rain    NA                -0.0981145   -0.1391635   -0.0570654
MAL-ED           Nepal          Opposite max rain    NA                -0.1095658   -0.1514315   -0.0677001
MAL-ED           Peru           Opposite max rain    NA                -0.0385976   -0.1086523    0.0314571
MAL-ED           South Africa   Opposite max rain    NA                -0.0865821   -0.2109885    0.0378242
MAL-ED           Tanzania       Opposite max rain    NA                -0.0491879   -0.0957906   -0.0025851
ResPak           Pakistan       Opposite max rain    NA                -0.1781881   -0.2986388   -0.0577374
TanzaniaChild2   Tanzania       Opposite max rain    NA                 0.0357743    0.0011238    0.0704247
