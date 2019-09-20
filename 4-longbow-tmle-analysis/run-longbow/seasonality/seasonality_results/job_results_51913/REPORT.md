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
CMC-V-BCS-2002   India          Opposite max rain      2177    8701
CMC-V-BCS-2002   India          Post-max rain          2205    8701
CMC-V-BCS-2002   India          Pre-max rain           2142    8701
CMC-V-BCS-2002   India          Max rain               2177    8701
CMIN             Bangladesh     Opposite max rain      1284    5372
CMIN             Bangladesh     Post-max rain          1378    5372
CMIN             Bangladesh     Pre-max rain           1336    5372
CMIN             Bangladesh     Max rain               1374    5372
CMIN             Peru           Opposite max rain      3186   12078
CMIN             Peru           Post-max rain          3157   12078
CMIN             Peru           Pre-max rain           3181   12078
CMIN             Peru           Max rain               2554   12078
CONTENT          Peru           Opposite max rain      2150    8339
CONTENT          Peru           Post-max rain          2136    8339
CONTENT          Peru           Pre-max rain           2023    8339
CONTENT          Peru           Max rain               2030    8339
EE               Pakistan       Opposite max rain      1676    6363
EE               Pakistan       Post-max rain          1143    6363
EE               Pakistan       Pre-max rain           2049    6363
EE               Pakistan       Max rain               1495    6363
GMS-Nepal        Nepal          Opposite max rain      3320   12712
GMS-Nepal        Nepal          Post-max rain          3404   12712
GMS-Nepal        Nepal          Pre-max rain           2953   12712
GMS-Nepal        Nepal          Max rain               3035   12712
Guatemala BSC    Guatemala      Opposite max rain       616    2545
Guatemala BSC    Guatemala      Post-max rain           651    2545
Guatemala BSC    Guatemala      Pre-max rain            591    2545
Guatemala BSC    Guatemala      Max rain                687    2545
IRC              India          Opposite max rain      2436    9729
IRC              India          Post-max rain          2490    9729
IRC              India          Pre-max rain           2345    9729
IRC              India          Max rain               2458    9729
MAL-ED           Bangladesh     Opposite max rain      1401    5523
MAL-ED           Bangladesh     Post-max rain          1393    5523
MAL-ED           Bangladesh     Pre-max rain           1359    5523
MAL-ED           Bangladesh     Max rain               1370    5523
MAL-ED           Brazil         Opposite max rain      1151    4629
MAL-ED           Brazil         Post-max rain          1143    4629
MAL-ED           Brazil         Pre-max rain           1164    4629
MAL-ED           Brazil         Max rain               1171    4629
MAL-ED           India          Opposite max rain      1402    5602
MAL-ED           India          Post-max rain          1407    5602
MAL-ED           India          Pre-max rain           1392    5602
MAL-ED           India          Max rain               1401    5602
MAL-ED           Nepal          Opposite max rain      1398    5593
MAL-ED           Nepal          Post-max rain          1404    5593
MAL-ED           Nepal          Pre-max rain           1404    5593
MAL-ED           Nepal          Max rain               1387    5593
MAL-ED           Peru           Opposite max rain      1447    5840
MAL-ED           Peru           Post-max rain          1473    5840
MAL-ED           Peru           Pre-max rain           1474    5840
MAL-ED           Peru           Max rain               1446    5840
MAL-ED           South Africa   Opposite max rain      1493    5967
MAL-ED           South Africa   Post-max rain          1511    5967
MAL-ED           South Africa   Pre-max rain           1504    5967
MAL-ED           South Africa   Max rain               1459    5967
MAL-ED           Tanzania       Opposite max rain      1359    5639
MAL-ED           Tanzania       Post-max rain          1446    5639
MAL-ED           Tanzania       Pre-max rain           1419    5639
MAL-ED           Tanzania       Max rain               1415    5639
ResPak           Pakistan       Opposite max rain       655    3109
ResPak           Pakistan       Post-max rain           590    3109
ResPak           Pakistan       Pre-max rain            803    3109
ResPak           Pakistan       Max rain               1061    3109
TanzaniaChild2   Tanzania       Opposite max rain      7507   29516
TanzaniaChild2   Tanzania       Post-max rain          7244   29516
TanzaniaChild2   Tanzania       Pre-max rain           7333   29516
TanzaniaChild2   Tanzania       Max rain               7432   29516


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: India
* studyid: CMIN, country: Bangladesh
* studyid: CMIN, country: Peru
* studyid: CONTENT, country: Peru
* studyid: EE, country: Pakistan
* studyid: GMS-Nepal, country: Nepal
* studyid: Guatemala BSC, country: Guatemala
* studyid: IRC, country: India
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
![](/tmp/e22907c0-fe9f-48b7-8bee-c33139e23a0b/0461d7ff-ecf9-4789-b632-c6f3bfbac7de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e22907c0-fe9f-48b7-8bee-c33139e23a0b/0461d7ff-ecf9-4789-b632-c6f3bfbac7de/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e22907c0-fe9f-48b7-8bee-c33139e23a0b/0461d7ff-ecf9-4789-b632-c6f3bfbac7de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    NA                -0.4087598   -0.5145390   -0.3029805
CMC-V-BCS-2002   India          Post-max rain        NA                -0.6409569   -0.7498052   -0.5321086
CMC-V-BCS-2002   India          Pre-max rain         NA                -0.4912932   -0.5990709   -0.3835154
CMC-V-BCS-2002   India          Max rain             NA                -0.7407763   -0.8490623   -0.6324903
CMIN             Bangladesh     Opposite max rain    NA                -0.6135280   -0.7746471   -0.4524090
CMIN             Bangladesh     Post-max rain        NA                -0.9119086   -1.0720185   -0.7517986
CMIN             Bangladesh     Pre-max rain         NA                -0.7329716   -0.8600410   -0.6059022
CMIN             Bangladesh     Max rain             NA                -0.9086754   -1.0275062   -0.7898446
CMIN             Peru           Opposite max rain    NA                 0.5390144    0.4723480    0.6056809
CMIN             Peru           Post-max rain        NA                 0.4552645    0.3704580    0.5400709
CMIN             Peru           Pre-max rain         NA                 0.7422572    0.6759055    0.8086088
CMIN             Peru           Max rain             NA                 0.6781441    0.6042840    0.7520041
CONTENT          Peru           Opposite max rain    NA                 0.9731163    0.8665883    1.0796443
CONTENT          Peru           Post-max rain        NA                 0.8370646    0.7233972    0.9507320
CONTENT          Peru           Pre-max rain         NA                 0.9918339    0.8852918    1.0983760
CONTENT          Peru           Max rain             NA                 0.7838818    0.6746891    0.8930744
EE               Pakistan       Opposite max rain    NA                -0.3875716   -0.4792874   -0.2958558
EE               Pakistan       Post-max rain        NA                -0.7897200   -0.8903066   -0.6891335
EE               Pakistan       Pre-max rain         NA                -0.6648902   -0.7584975   -0.5712829
EE               Pakistan       Max rain             NA                -0.9988562   -1.1012538   -0.8964586
GMS-Nepal        Nepal          Opposite max rain    NA                -0.8179970   -0.8920923   -0.7439016
GMS-Nepal        Nepal          Post-max rain        NA                -1.0017098   -1.0777187   -0.9257008
GMS-Nepal        Nepal          Pre-max rain         NA                -1.2112191   -1.2831229   -1.1393153
GMS-Nepal        Nepal          Max rain             NA                -1.2441977   -1.3250375   -1.1633579
Guatemala BSC    Guatemala      Opposite max rain    NA                -0.2560877   -0.3929840   -0.1191913
Guatemala BSC    Guatemala      Post-max rain        NA                -0.0868049   -0.2067583    0.0331485
Guatemala BSC    Guatemala      Pre-max rain         NA                -0.2320474   -0.3741081   -0.0899867
Guatemala BSC    Guatemala      Max rain             NA                -0.0863173   -0.2420993    0.0694647
IRC              India          Opposite max rain    NA                -0.6754639   -0.7697086   -0.5812191
IRC              India          Post-max rain        NA                -0.8327309   -0.9243528   -0.7411091
IRC              India          Pre-max rain         NA                -0.8554925   -0.9531436   -0.7578415
IRC              India          Max rain             NA                -0.9125753   -1.0055027   -0.8196478
MAL-ED           Bangladesh     Opposite max rain    NA                -0.3842470   -0.5020105   -0.2664834
MAL-ED           Bangladesh     Post-max rain        NA                -0.4306246   -0.5451973   -0.3160518
MAL-ED           Bangladesh     Pre-max rain         NA                -0.5468801   -0.6631659   -0.4305943
MAL-ED           Bangladesh     Max rain             NA                -0.5363942   -0.6653770   -0.4074113
MAL-ED           Brazil         Opposite max rain    NA                 0.8796742    0.7036277    1.0557207
MAL-ED           Brazil         Post-max rain        NA                 0.8362117    0.6839864    0.9884371
MAL-ED           Brazil         Pre-max rain         NA                 0.9083505    0.7467580    1.0699430
MAL-ED           Brazil         Max rain             NA                 0.8450897    0.6973782    0.9928012
MAL-ED           India          Opposite max rain    NA                -0.7653994   -0.8714743   -0.6593246
MAL-ED           India          Post-max rain        NA                -0.7725302   -0.8744972   -0.6705632
MAL-ED           India          Pre-max rain         NA                -0.9461494   -1.0551135   -0.8371853
MAL-ED           India          Max rain             NA                -0.9440007   -1.0732923   -0.8147091
MAL-ED           Nepal          Opposite max rain    NA                -0.0968312   -0.2040759    0.0104135
MAL-ED           Nepal          Post-max rain        NA                -0.1513568   -0.2596145   -0.0430992
MAL-ED           Nepal          Pre-max rain         NA                -0.2625071   -0.3685036   -0.1565107
MAL-ED           Nepal          Max rain             NA                -0.3053425   -0.4312206   -0.1794643
MAL-ED           Peru           Opposite max rain    NA                 0.6257084    0.5055520    0.7458648
MAL-ED           Peru           Post-max rain        NA                 0.5847895    0.4752151    0.6943640
MAL-ED           Peru           Pre-max rain         NA                 0.5673609    0.4471631    0.6875588
MAL-ED           Peru           Max rain             NA                 0.5634025    0.4546741    0.6721308
MAL-ED           South Africa   Opposite max rain    NA                 0.5054856    0.3315870    0.6793842
MAL-ED           South Africa   Post-max rain        NA                 0.4713369    0.3213459    0.6213278
MAL-ED           South Africa   Pre-max rain         NA                 0.3753989    0.2185315    0.5322664
MAL-ED           South Africa   Max rain             NA                 0.3353667    0.1989845    0.4717489
MAL-ED           Tanzania       Opposite max rain    NA                 0.3993377    0.2981001    0.5005754
MAL-ED           Tanzania       Post-max rain        NA                 0.3813831    0.2773599    0.4854063
MAL-ED           Tanzania       Pre-max rain         NA                 0.2896159    0.1724661    0.4067658
MAL-ED           Tanzania       Max rain             NA                 0.3345124    0.2266436    0.4423811
ResPak           Pakistan       Opposite max rain    NA                -0.4113130   -0.5953912   -0.2272348
ResPak           Pakistan       Post-max rain        NA                -0.2700000   -0.4818187   -0.0581813
ResPak           Pakistan       Pre-max rain         NA                -0.7263636   -0.8865249   -0.5662024
ResPak           Pakistan       Max rain             NA                -0.5983600   -0.7855283   -0.4111918
TanzaniaChild2   Tanzania       Opposite max rain    NA                -0.0565739   -0.1094688   -0.0036789
TanzaniaChild2   Tanzania       Post-max rain        NA                -0.1003299   -0.1538950   -0.0467648
TanzaniaChild2   Tanzania       Pre-max rain         NA                 0.0741920    0.0211298    0.1272542
TanzaniaChild2   Tanzania       Max rain             NA                -0.0010441   -0.0565781    0.0544898


### Parameter: E(Y)


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          NA                   NA                -0.5709918   -0.6712474   -0.4707363
CMIN             Bangladesh     NA                   NA                -0.7952625   -0.9007497   -0.6897752
CMIN             Peru           NA                   NA                 0.6000720    0.5422894    0.6578546
CONTENT          Peru           NA                   NA                 0.8967418    0.7963679    0.9971157
EE               Pakistan       NA                   NA                -0.6927346   -0.7775396   -0.6079296
GMS-Nepal        Nepal          NA                   NA                -1.0602926   -1.1276565   -0.9929287
Guatemala BSC    Guatemala      NA                   NA                -0.1613752   -0.2624299   -0.0603206
IRC              India          NA                   NA                -0.8190122   -0.9060940   -0.7319304
MAL-ED           Bangladesh     NA                   NA                -0.4737027   -0.5761201   -0.3712853
MAL-ED           Brazil         NA                   NA                 0.8674044    0.7286368    1.0061721
MAL-ED           India          NA                   NA                -0.8567699   -0.9550340   -0.7585058
MAL-ED           Nepal          NA                   NA                -0.2038164   -0.3071385   -0.1004942
MAL-ED           Peru           NA                   NA                 0.5852337    0.4916884    0.6787791
MAL-ED           South Africa   NA                   NA                 0.4224535    0.3117971    0.5331099
MAL-ED           Tanzania       NA                   NA                 0.3508565    0.2563058    0.4454073
ResPak           Pakistan       NA                   NA                -0.5297009   -0.6658177   -0.3935840
TanzaniaChild2   Tanzania       NA                   NA                -0.0208429   -0.0614596    0.0197737


### Parameter: ATE


studyid          country        intervention_level   baseline_level         estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ------------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          Post-max rain        Opposite max rain    -0.2321972   -0.2961331   -0.1682613
CMC-V-BCS-2002   India          Pre-max rain         Opposite max rain    -0.0825334   -0.1393338   -0.0257330
CMC-V-BCS-2002   India          Max rain             Opposite max rain    -0.3320165   -0.4003007   -0.2637324
CMIN             Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CMIN             Bangladesh     Post-max rain        Opposite max rain    -0.2983805   -0.4884731   -0.1082879
CMIN             Bangladesh     Pre-max rain         Opposite max rain    -0.1194435   -0.2815198    0.0426328
CMIN             Bangladesh     Max rain             Opposite max rain    -0.2951474   -0.4542986   -0.1359962
CMIN             Peru           Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CMIN             Peru           Post-max rain        Opposite max rain    -0.0837499   -0.1595176   -0.0079823
CMIN             Peru           Pre-max rain         Opposite max rain     0.2032427    0.1458773    0.2606081
CMIN             Peru           Max rain             Opposite max rain     0.1391296    0.0650787    0.2131806
CONTENT          Peru           Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CONTENT          Peru           Post-max rain        Opposite max rain    -0.1360517   -0.2069381   -0.0651652
CONTENT          Peru           Pre-max rain         Opposite max rain     0.0187176   -0.0449597    0.0823949
CONTENT          Peru           Max rain             Opposite max rain    -0.1892345   -0.2587761   -0.1196929
EE               Pakistan       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
EE               Pakistan       Post-max rain        Opposite max rain    -0.4021484   -0.4858421   -0.3184547
EE               Pakistan       Pre-max rain         Opposite max rain    -0.2773186   -0.3474045   -0.2072327
EE               Pakistan       Max rain             Opposite max rain    -0.6112846   -0.7051158   -0.5174534
GMS-Nepal        Nepal          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
GMS-Nepal        Nepal          Post-max rain        Opposite max rain    -0.1837128   -0.2288717   -0.1385538
GMS-Nepal        Nepal          Pre-max rain         Opposite max rain    -0.3932221   -0.4359511   -0.3504931
GMS-Nepal        Nepal          Max rain             Opposite max rain    -0.4262007   -0.4930429   -0.3593585
Guatemala BSC    Guatemala      Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
Guatemala BSC    Guatemala      Post-max rain        Opposite max rain     0.1692827    0.0306408    0.3079247
Guatemala BSC    Guatemala      Pre-max rain         Opposite max rain     0.0240403   -0.1259370    0.1740176
Guatemala BSC    Guatemala      Max rain             Opposite max rain     0.1697703   -0.0111709    0.3507116
IRC              India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
IRC              India          Post-max rain        Opposite max rain    -0.1572670   -0.2094358   -0.1050983
IRC              India          Pre-max rain         Opposite max rain    -0.1800287   -0.2377227   -0.1223346
IRC              India          Max rain             Opposite max rain    -0.2371114   -0.3028829   -0.1713399
MAL-ED           Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     Post-max rain        Opposite max rain    -0.0463776   -0.1428020    0.0500468
MAL-ED           Bangladesh     Pre-max rain         Opposite max rain    -0.1626331   -0.2538549   -0.0714113
MAL-ED           Bangladesh     Max rain             Opposite max rain    -0.1521472   -0.2690254   -0.0352690
MAL-ED           Brazil         Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         Post-max rain        Opposite max rain    -0.0434625   -0.1780468    0.0911218
MAL-ED           Brazil         Pre-max rain         Opposite max rain     0.0286763   -0.1187730    0.1761257
MAL-ED           Brazil         Max rain             Opposite max rain    -0.0345845   -0.1709069    0.1017378
MAL-ED           India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           India          Post-max rain        Opposite max rain    -0.0071308   -0.0737530    0.0594914
MAL-ED           India          Pre-max rain         Opposite max rain    -0.1807500   -0.2556350   -0.1058650
MAL-ED           India          Max rain             Opposite max rain    -0.1786013   -0.2860859   -0.0711167
MAL-ED           Nepal          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          Post-max rain        Opposite max rain    -0.0545257   -0.1093966    0.0003453
MAL-ED           Nepal          Pre-max rain         Opposite max rain    -0.1656759   -0.2177953   -0.1135565
MAL-ED           Nepal          Max rain             Opposite max rain    -0.2085113   -0.3038630   -0.1131596
MAL-ED           Peru           Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Peru           Post-max rain        Opposite max rain    -0.0409188   -0.1563856    0.0745480
MAL-ED           Peru           Pre-max rain         Opposite max rain    -0.0583474   -0.1635899    0.0468950
MAL-ED           Peru           Max rain             Opposite max rain    -0.0623059   -0.1762508    0.0516391
MAL-ED           South Africa   Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   Post-max rain        Opposite max rain    -0.0341487   -0.2181971    0.1498996
MAL-ED           South Africa   Pre-max rain         Opposite max rain    -0.1300867   -0.3249422    0.0647689
MAL-ED           South Africa   Max rain             Opposite max rain    -0.1701189   -0.3532803    0.0130425
MAL-ED           Tanzania       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       Post-max rain        Opposite max rain    -0.0179546   -0.0870116    0.0511024
MAL-ED           Tanzania       Pre-max rain         Opposite max rain    -0.1097218   -0.1945442   -0.0248994
MAL-ED           Tanzania       Max rain             Opposite max rain    -0.0648254   -0.1493001    0.0196493
ResPak           Pakistan       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
ResPak           Pakistan       Post-max rain        Opposite max rain     0.1413130   -0.0595855    0.3422114
ResPak           Pakistan       Pre-max rain         Opposite max rain    -0.3150507   -0.5072901   -0.1228112
ResPak           Pakistan       Max rain             Opposite max rain    -0.1870471   -0.4104385    0.0363443
TanzaniaChild2   Tanzania       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
TanzaniaChild2   Tanzania       Post-max rain        Opposite max rain    -0.0437561   -0.0985885    0.0110763
TanzaniaChild2   Tanzania       Pre-max rain         Opposite max rain     0.1307659    0.0756867    0.1858451
TanzaniaChild2   Tanzania       Max rain             Opposite max rain     0.0555297   -0.0058793    0.1169388


### Parameter: PAR


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    NA                -0.1622321   -0.2003841   -0.1240800
CMIN             Bangladesh     Opposite max rain    NA                -0.1817344   -0.2939837   -0.0694852
CMIN             Peru           Opposite max rain    NA                 0.0610576    0.0225091    0.0996061
CONTENT          Peru           Opposite max rain    NA                -0.0763745   -0.1167278   -0.0360211
EE               Pakistan       Opposite max rain    NA                -0.3051630   -0.3582431   -0.2520828
GMS-Nepal        Nepal          Opposite max rain    NA                -0.2422956   -0.2712118   -0.2133795
Guatemala BSC    Guatemala      Opposite max rain    NA                 0.0947124   -0.0036150    0.1930399
IRC              India          Opposite max rain    NA                -0.1435484   -0.1797307   -0.1073660
MAL-ED           Bangladesh     Opposite max rain    NA                -0.0894557   -0.1529622   -0.0259492
MAL-ED           Brazil         Opposite max rain    NA                -0.0122698   -0.1037248    0.0791852
MAL-ED           India          Opposite max rain    NA                -0.0913705   -0.1409498   -0.0417912
MAL-ED           Nepal          Opposite max rain    NA                -0.1069852   -0.1488370   -0.0651334
MAL-ED           Peru           Opposite max rain    NA                -0.0404746   -0.1106057    0.0296564
MAL-ED           South Africa   Opposite max rain    NA                -0.0830321   -0.2043382    0.0382740
MAL-ED           Tanzania       Opposite max rain    NA                -0.0484812   -0.0947059   -0.0022565
ResPak           Pakistan       Opposite max rain    NA                -0.1183879   -0.2536537    0.0168779
TanzaniaChild2   Tanzania       Opposite max rain    NA                 0.0357309    0.0010787    0.0703832
