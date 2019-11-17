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

studyid          country        rain_quartile        n_cell        n
---------------  -------------  ------------------  -------  -------
CMC-V-BCS-2002   India          Opposite max rain      2170     8697
CMC-V-BCS-2002   India          Post-max rain          2195     8697
CMC-V-BCS-2002   India          Pre-max rain           2126     8697
CMC-V-BCS-2002   India          Max rain               2206     8697
CMIN             Bangladesh     Opposite max rain      1284     5372
CMIN             Bangladesh     Post-max rain          1378     5372
CMIN             Bangladesh     Pre-max rain           1336     5372
CMIN             Bangladesh     Max rain               1374     5372
CONTENT          Peru           Opposite max rain      2150     8339
CONTENT          Peru           Post-max rain          2136     8339
CONTENT          Peru           Pre-max rain           2023     8339
CONTENT          Peru           Max rain               2030     8339
EE               Pakistan       Opposite max rain      1987     8427
EE               Pakistan       Post-max rain          2202     8427
EE               Pakistan       Pre-max rain           2106     8427
EE               Pakistan       Max rain               2132     8427
GMS-Nepal        Nepal          Opposite max rain      3315    13340
GMS-Nepal        Nepal          Post-max rain          3414    13340
GMS-Nepal        Nepal          Pre-max rain           3116    13340
GMS-Nepal        Nepal          Max rain               3495    13340
Guatemala BSC    Guatemala      Opposite max rain       692     2545
Guatemala BSC    Guatemala      Post-max rain           646     2545
Guatemala BSC    Guatemala      Pre-max rain            607     2545
Guatemala BSC    Guatemala      Max rain                600     2545
IRC              India          Opposite max rain      2436     9729
IRC              India          Post-max rain          2490     9729
IRC              India          Pre-max rain           2345     9729
IRC              India          Max rain               2458     9729
JiVitA-3         Bangladesh     Opposite max rain     29776   102950
JiVitA-3         Bangladesh     Post-max rain         25759   102950
JiVitA-3         Bangladesh     Pre-max rain          27081   102950
JiVitA-3         Bangladesh     Max rain              20334   102950
JiVitA-4         Bangladesh     Opposite max rain      7870    35194
JiVitA-4         Bangladesh     Post-max rain         10346    35194
JiVitA-4         Bangladesh     Pre-max rain           8658    35194
JiVitA-4         Bangladesh     Max rain               8320    35194
Keneba           Gambia         Opposite max rain      9260    40115
Keneba           Gambia         Post-max rain         10262    40115
Keneba           Gambia         Pre-max rain           9832    40115
Keneba           Gambia         Max rain              10761    40115
MAL-ED           Bangladesh     Opposite max rain      1376     5592
MAL-ED           Bangladesh     Post-max rain          1376     5592
MAL-ED           Bangladesh     Pre-max rain           1431     5592
MAL-ED           Bangladesh     Max rain               1409     5592
MAL-ED           Brazil         Opposite max rain      1195     4837
MAL-ED           Brazil         Post-max rain          1198     4837
MAL-ED           Brazil         Pre-max rain           1227     4837
MAL-ED           Brazil         Max rain               1217     4837
MAL-ED           India          Opposite max rain      1424     5696
MAL-ED           India          Post-max rain          1425     5696
MAL-ED           India          Pre-max rain           1419     5696
MAL-ED           India          Max rain               1428     5696
MAL-ED           Nepal          Opposite max rain      1416     5695
MAL-ED           Nepal          Post-max rain          1427     5695
MAL-ED           Nepal          Pre-max rain           1429     5695
MAL-ED           Nepal          Max rain               1423     5695
MAL-ED           Peru           Opposite max rain      1539     6127
MAL-ED           Peru           Post-max rain          1538     6127
MAL-ED           Peru           Pre-max rain           1536     6127
MAL-ED           Peru           Max rain               1514     6127
MAL-ED           South Africa   Opposite max rain      1535     6151
MAL-ED           South Africa   Post-max rain          1571     6151
MAL-ED           South Africa   Pre-max rain           1544     6151
MAL-ED           South Africa   Max rain               1501     6151
MAL-ED           Tanzania       Opposite max rain      1366     5698
MAL-ED           Tanzania       Post-max rain          1461     5698
MAL-ED           Tanzania       Pre-max rain           1439     5698
MAL-ED           Tanzania       Max rain               1432     5698
PROVIDE          Bangladesh     Opposite max rain      2465     9202
PROVIDE          Bangladesh     Post-max rain          2214     9202
PROVIDE          Bangladesh     Pre-max rain           2389     9202
PROVIDE          Bangladesh     Max rain               2134     9202
ResPak           Pakistan       Opposite max rain       643     3164
ResPak           Pakistan       Post-max rain           731     3164
ResPak           Pakistan       Pre-max rain            770     3164
ResPak           Pakistan       Max rain               1020     3164
SAS-CompFeed     India          Opposite max rain      2449     9343
SAS-CompFeed     India          Post-max rain          2377     9343
SAS-CompFeed     India          Pre-max rain           2322     9343
SAS-CompFeed     India          Max rain               2195     9343
SAS-FoodSuppl    India          Opposite max rain       669     2221
SAS-FoodSuppl    India          Post-max rain           549     2221
SAS-FoodSuppl    India          Pre-max rain            537     2221
SAS-FoodSuppl    India          Max rain                466     2221
TanzaniaChild2   Tanzania       Opposite max rain      7365    29518
TanzaniaChild2   Tanzania       Post-max rain          7317    29518
TanzaniaChild2   Tanzania       Pre-max rain           7354    29518
TanzaniaChild2   Tanzania       Max rain               7482    29518


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: India
* studyid: CMIN, country: Bangladesh
* studyid: CONTENT, country: Peru
* studyid: EE, country: Pakistan
* studyid: GMS-Nepal, country: Nepal
* studyid: Guatemala BSC, country: Guatemala
* studyid: IRC, country: India
* studyid: JiVitA-3, country: Bangladesh
* studyid: JiVitA-4, country: Bangladesh
* studyid: Keneba, country: Gambia
* studyid: MAL-ED, country: Bangladesh
* studyid: MAL-ED, country: Brazil
* studyid: MAL-ED, country: India
* studyid: MAL-ED, country: Nepal
* studyid: MAL-ED, country: Peru
* studyid: MAL-ED, country: South Africa
* studyid: MAL-ED, country: Tanzania
* studyid: PROVIDE, country: Bangladesh
* studyid: ResPak, country: Pakistan
* studyid: SAS-CompFeed, country: India
* studyid: SAS-FoodSuppl, country: India
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/6cb9a27a-9606-479d-8c34-ad5908c68d17/b123ff13-7098-4384-af53-541622db9157/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6cb9a27a-9606-479d-8c34-ad5908c68d17/b123ff13-7098-4384-af53-541622db9157/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6cb9a27a-9606-479d-8c34-ad5908c68d17/b123ff13-7098-4384-af53-541622db9157/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    NA                -0.3706037   -0.4747263   -0.2664811
CMC-V-BCS-2002   India          Post-max rain        NA                -0.5619180   -0.6690215   -0.4548145
CMC-V-BCS-2002   India          Pre-max rain         NA                -0.5861571   -0.6955011   -0.4768131
CMC-V-BCS-2002   India          Max rain             NA                -0.7547461   -0.8618839   -0.6476084
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
Guatemala BSC    Guatemala      Opposite max rain    NA                -0.1188006   -0.2340853   -0.0035159
Guatemala BSC    Guatemala      Post-max rain        NA                -0.0677864   -0.2354149    0.0998421
Guatemala BSC    Guatemala      Pre-max rain         NA                -0.3109885   -0.4617284   -0.1602485
Guatemala BSC    Guatemala      Max rain             NA                -0.1598833   -0.2887454   -0.0310212
IRC              India          Opposite max rain    NA                -0.6754639   -0.7697086   -0.5812191
IRC              India          Post-max rain        NA                -0.8327309   -0.9243528   -0.7411091
IRC              India          Pre-max rain         NA                -0.8554925   -0.9531436   -0.7578415
IRC              India          Max rain             NA                -0.9125753   -1.0055027   -0.8196478
JiVitA-3         Bangladesh     Opposite max rain    NA                -0.5283329   -0.5474073   -0.5092585
JiVitA-3         Bangladesh     Post-max rain        NA                -0.6661961   -0.6854385   -0.6469537
JiVitA-3         Bangladesh     Pre-max rain         NA                -0.6262610   -0.6450346   -0.6074875
JiVitA-3         Bangladesh     Max rain             NA                -0.6653174   -0.6858817   -0.6447532
JiVitA-4         Bangladesh     Opposite max rain    NA                -0.6019009   -0.6345268   -0.5692750
JiVitA-4         Bangladesh     Post-max rain        NA                -0.7397439   -0.7726434   -0.7068443
JiVitA-4         Bangladesh     Pre-max rain         NA                -0.7762081   -0.8065416   -0.7458747
JiVitA-4         Bangladesh     Max rain             NA                -0.8533329   -0.8855826   -0.8210833
Keneba           Gambia         Opposite max rain    NA                -0.4178056   -0.4664429   -0.3691683
Keneba           Gambia         Post-max rain        NA                -0.7118408   -0.7623662   -0.6613153
Keneba           Gambia         Pre-max rain         NA                -0.3219904   -0.3790766   -0.2649043
Keneba           Gambia         Max rain             NA                -0.5742524   -0.6197415   -0.5287633
MAL-ED           Bangladesh     Opposite max rain    NA                -0.3618350   -0.4644190   -0.2592511
MAL-ED           Bangladesh     Post-max rain        NA                -0.4870494   -0.6187929   -0.3553059
MAL-ED           Bangladesh     Pre-max rain         NA                -0.5010657   -0.6352024   -0.3669290
MAL-ED           Bangladesh     Max rain             NA                -0.5524769   -0.6656150   -0.4393388
MAL-ED           Brazil         Opposite max rain    NA                 0.8793138    0.7012969    1.0573307
MAL-ED           Brazil         Post-max rain        NA                 0.8314357    0.6792474    0.9836240
MAL-ED           Brazil         Pre-max rain         NA                 0.8970905    0.7365696    1.0576113
MAL-ED           Brazil         Max rain             NA                 0.8500082    0.7050627    0.9949537
MAL-ED           India          Opposite max rain    NA                -0.7620435   -0.8633695   -0.6607176
MAL-ED           India          Post-max rain        NA                -0.7779509   -0.8855521   -0.6703497
MAL-ED           India          Pre-max rain         NA                -0.9535518   -1.0599435   -0.8471601
MAL-ED           India          Max rain             NA                -0.9421218   -1.0683243   -0.8159194
MAL-ED           Nepal          Opposite max rain    NA                -0.0974153   -0.2044419    0.0096114
MAL-ED           Nepal          Post-max rain        NA                -0.1528942   -0.2609787   -0.0448097
MAL-ED           Nepal          Pre-max rain         NA                -0.2639818   -0.3722682   -0.1556954
MAL-ED           Nepal          Max rain             NA                -0.3101054   -0.4327779   -0.1874329
MAL-ED           Peru           Opposite max rain    NA                 0.6156465    0.4969127    0.7343803
MAL-ED           Peru           Post-max rain        NA                 0.5677048    0.4570686    0.6783411
MAL-ED           Peru           Pre-max rain         NA                 0.5630013    0.4414897    0.6845129
MAL-ED           Peru           Max rain             NA                 0.5551123    0.4462709    0.6639536
MAL-ED           South Africa   Opposite max rain    NA                 0.5080456    0.3316739    0.6844173
MAL-ED           South Africa   Post-max rain        NA                 0.4592998    0.3051808    0.6134188
MAL-ED           South Africa   Pre-max rain         NA                 0.3751490    0.2647319    0.4855660
MAL-ED           South Africa   Max rain             NA                 0.3335909    0.1582600    0.5089218
MAL-ED           Tanzania       Opposite max rain    NA                 0.3984773    0.2970134    0.4999412
MAL-ED           Tanzania       Post-max rain        NA                 0.3780835    0.2739008    0.4822662
MAL-ED           Tanzania       Pre-max rain         NA                 0.3023211    0.1843264    0.4203157
MAL-ED           Tanzania       Max rain             NA                 0.3340712    0.2257250    0.4424174
PROVIDE          Bangladesh     Opposite max rain    NA                -0.4964097   -0.5723211   -0.4204984
PROVIDE          Bangladesh     Post-max rain        NA                -0.6206685   -0.7244755   -0.5168614
PROVIDE          Bangladesh     Pre-max rain         NA                -0.2275178   -0.3076031   -0.1474325
PROVIDE          Bangladesh     Max rain             NA                -0.3860544   -0.4633967   -0.3087120
ResPak           Pakistan       Opposite max rain    NA                -0.3511198   -0.5266625   -0.1755770
ResPak           Pakistan       Post-max rain        NA                -0.3769631   -0.5723869   -0.1815393
ResPak           Pakistan       Pre-max rain         NA                -0.7012468   -0.8634914   -0.5390021
ResPak           Pakistan       Max rain             NA                -0.6210196   -0.7993666   -0.4426726
SAS-CompFeed     India          Opposite max rain    NA                -0.3970110   -0.5193201   -0.2747019
SAS-CompFeed     India          Post-max rain        NA                -0.8177745   -0.9810724   -0.6544766
SAS-CompFeed     India          Pre-max rain         NA                -0.7995909   -0.9060365   -0.6931452
SAS-CompFeed     India          Max rain             NA                -1.1132392   -1.2129902   -1.0134881
SAS-FoodSuppl    India          Opposite max rain    NA                -0.9849477   -1.0922328   -0.8776626
SAS-FoodSuppl    India          Post-max rain        NA                -1.1219672   -1.2392369   -1.0046976
SAS-FoodSuppl    India          Pre-max rain         NA                -1.2122719   -1.3377368   -1.0868069
SAS-FoodSuppl    India          Max rain             NA                -1.4460086   -1.5618115   -1.3302057
TanzaniaChild2   Tanzania       Opposite max rain    NA                 0.0568011    0.0048412    0.1087610
TanzaniaChild2   Tanzania       Post-max rain        NA                -0.0934030   -0.1449349   -0.0418711
TanzaniaChild2   Tanzania       Pre-max rain         NA                 0.0263136   -0.0286174    0.0812446
TanzaniaChild2   Tanzania       Max rain             NA                -0.0725408   -0.1287747   -0.0163069


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
JiVitA-3         Bangladesh     NA                   NA                -0.6156438   -0.6299537   -0.6013338
JiVitA-4         Bangladesh     NA                   NA                -0.7447431   -0.7723808   -0.7171055
Keneba           Gambia         NA                   NA                -0.5115077   -0.5457987   -0.4772167
MAL-ED           Bangladesh     NA                   NA                -0.4763108   -0.5786381   -0.3739835
MAL-ED           Brazil         NA                   NA                 0.8645917    0.7265176    1.0026658
MAL-ED           India          NA                   NA                -0.8588782   -0.9568230   -0.7609334
MAL-ED           Nepal          NA                   NA                -0.2062564   -0.3092655   -0.1032473
MAL-ED           Peru           NA                   NA                 0.5754562    0.4819004    0.6690119
MAL-ED           South Africa   NA                   NA                 0.4196651    0.3092932    0.5300369
MAL-ED           Tanzania       NA                   NA                 0.3527782    0.2582437    0.4473127
PROVIDE          Bangladesh     NA                   NA                -0.4309052   -0.4946536   -0.3671569
ResPak           Pakistan       NA                   NA                -0.5293078   -0.6629147   -0.3957010
SAS-CompFeed     India          NA                   NA                -0.7723793   -0.8890904   -0.6556682
SAS-FoodSuppl    India          NA                   NA                -1.1705178   -1.2564934   -1.0845422
TanzaniaChild2   Tanzania       NA                   NA                -0.0208120   -0.0614288    0.0198047


### Parameter: ATE


studyid          country        intervention_level   baseline_level         estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ------------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
CMC-V-BCS-2002   India          Post-max rain        Opposite max rain    -0.1913143   -0.2507425   -0.1318861
CMC-V-BCS-2002   India          Pre-max rain         Opposite max rain    -0.2155534   -0.2728704   -0.1582364
CMC-V-BCS-2002   India          Max rain             Opposite max rain    -0.3841425   -0.4518567   -0.3164282
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
Guatemala BSC    Guatemala      Post-max rain        Opposite max rain     0.0510142   -0.1107678    0.2127962
Guatemala BSC    Guatemala      Pre-max rain         Opposite max rain    -0.1921879   -0.3444242   -0.0399516
Guatemala BSC    Guatemala      Max rain             Opposite max rain    -0.0410828   -0.1786421    0.0964766
IRC              India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
IRC              India          Post-max rain        Opposite max rain    -0.1572670   -0.2094358   -0.1050983
IRC              India          Pre-max rain         Opposite max rain    -0.1800287   -0.2377227   -0.1223346
IRC              India          Max rain             Opposite max rain    -0.2371114   -0.3028829   -0.1713399
JiVitA-3         Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
JiVitA-3         Bangladesh     Post-max rain        Opposite max rain    -0.1378632   -0.1581173   -0.1176091
JiVitA-3         Bangladesh     Pre-max rain         Opposite max rain    -0.0979281   -0.1176376   -0.0782187
JiVitA-3         Bangladesh     Max rain             Opposite max rain    -0.1369846   -0.1603471   -0.1136220
JiVitA-4         Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
JiVitA-4         Bangladesh     Post-max rain        Opposite max rain    -0.1378430   -0.1632679   -0.1124181
JiVitA-4         Bangladesh     Pre-max rain         Opposite max rain    -0.1743072   -0.2010623   -0.1475521
JiVitA-4         Bangladesh     Max rain             Opposite max rain    -0.2514320   -0.2790955   -0.2237685
Keneba           Gambia         Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
Keneba           Gambia         Post-max rain        Opposite max rain    -0.2940352   -0.3521170   -0.2359533
Keneba           Gambia         Pre-max rain         Opposite max rain     0.0958152    0.0311831    0.1604473
Keneba           Gambia         Max rain             Opposite max rain    -0.1564468   -0.2128301   -0.1000634
MAL-ED           Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Bangladesh     Post-max rain        Opposite max rain    -0.1252144   -0.2203384   -0.0300904
MAL-ED           Bangladesh     Pre-max rain         Opposite max rain    -0.1392307   -0.2441148   -0.0343465
MAL-ED           Bangladesh     Max rain             Opposite max rain    -0.1906419   -0.2700461   -0.1112377
MAL-ED           Brazil         Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Brazil         Post-max rain        Opposite max rain    -0.0478781   -0.1869240    0.0911679
MAL-ED           Brazil         Pre-max rain         Opposite max rain     0.0177767   -0.1298404    0.1653937
MAL-ED           Brazil         Max rain             Opposite max rain    -0.0293056   -0.1675482    0.1089370
MAL-ED           India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           India          Post-max rain        Opposite max rain    -0.0159073   -0.0862128    0.0543981
MAL-ED           India          Pre-max rain         Opposite max rain    -0.1915083   -0.2446362   -0.1383803
MAL-ED           India          Max rain             Opposite max rain    -0.1800783   -0.2793880   -0.0807686
MAL-ED           Nepal          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Nepal          Post-max rain        Opposite max rain    -0.0554789   -0.1103889   -0.0005690
MAL-ED           Nepal          Pre-max rain         Opposite max rain    -0.1665666   -0.2246200   -0.1085131
MAL-ED           Nepal          Max rain             Opposite max rain    -0.2126902   -0.3036480   -0.1217323
MAL-ED           Peru           Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Peru           Post-max rain        Opposite max rain    -0.0479417   -0.1626165    0.0667331
MAL-ED           Peru           Pre-max rain         Opposite max rain    -0.0526452   -0.1593148    0.0540243
MAL-ED           Peru           Max rain             Opposite max rain    -0.0605342   -0.1733612    0.0522927
MAL-ED           South Africa   Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           South Africa   Post-max rain        Opposite max rain    -0.0487458   -0.2416190    0.1441274
MAL-ED           South Africa   Pre-max rain         Opposite max rain    -0.1328966   -0.2961503    0.0303571
MAL-ED           South Africa   Max rain             Opposite max rain    -0.1744547   -0.3913036    0.0423942
MAL-ED           Tanzania       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
MAL-ED           Tanzania       Post-max rain        Opposite max rain    -0.0203938   -0.0900119    0.0492243
MAL-ED           Tanzania       Pre-max rain         Opposite max rain    -0.0961562   -0.1828101   -0.0095023
MAL-ED           Tanzania       Max rain             Opposite max rain    -0.0644061   -0.1506664    0.0218542
PROVIDE          Bangladesh     Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
PROVIDE          Bangladesh     Post-max rain        Opposite max rain    -0.1242587   -0.2254504   -0.0230671
PROVIDE          Bangladesh     Pre-max rain         Opposite max rain     0.2688919    0.1925067    0.3452772
PROVIDE          Bangladesh     Max rain             Opposite max rain     0.1103554    0.0300959    0.1906148
ResPak           Pakistan       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
ResPak           Pakistan       Post-max rain        Opposite max rain    -0.0258433   -0.2089488    0.1572622
ResPak           Pakistan       Pre-max rain         Opposite max rain    -0.3501270   -0.5147566   -0.1854974
ResPak           Pakistan       Max rain             Opposite max rain    -0.2698999   -0.4777616   -0.0620381
SAS-CompFeed     India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
SAS-CompFeed     India          Post-max rain        Opposite max rain    -0.4207635   -0.4746599   -0.3668670
SAS-CompFeed     India          Pre-max rain         Opposite max rain    -0.4025798   -0.4457531   -0.3594066
SAS-CompFeed     India          Max rain             Opposite max rain    -0.7162282   -0.7796865   -0.6527698
SAS-FoodSuppl    India          Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
SAS-FoodSuppl    India          Post-max rain        Opposite max rain    -0.1370195   -0.2551617   -0.0188774
SAS-FoodSuppl    India          Pre-max rain         Opposite max rain    -0.2273242   -0.3528357   -0.1018127
SAS-FoodSuppl    India          Max rain             Opposite max rain    -0.4610609   -0.5901083   -0.3320135
TanzaniaChild2   Tanzania       Opposite max rain    Opposite max rain     0.0000000    0.0000000    0.0000000
TanzaniaChild2   Tanzania       Post-max rain        Opposite max rain    -0.1502041   -0.2022443   -0.0981639
TanzaniaChild2   Tanzania       Pre-max rain         Opposite max rain    -0.0304875   -0.0861183    0.0251433
TanzaniaChild2   Tanzania       Max rain             Opposite max rain    -0.1293419   -0.1909621   -0.0677216


### Parameter: PAR


studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
CMC-V-BCS-2002   India          Opposite max rain    NA                -0.1984155   -0.2365984   -0.1602327
CMIN             Bangladesh     Opposite max rain    NA                -0.1817344   -0.2939837   -0.0694852
CONTENT          Peru           Opposite max rain    NA                -0.0763745   -0.1167278   -0.0360211
EE               Pakistan       Opposite max rain    NA                -0.4007088   -0.4528331   -0.3485846
GMS-Nepal        Nepal          Opposite max rain    NA                -0.2443670   -0.2846031   -0.2041309
Guatemala BSC    Guatemala      Opposite max rain    NA                -0.0425747   -0.1251627    0.0400134
IRC              India          Opposite max rain    NA                -0.1435484   -0.1797307   -0.1073660
JiVitA-3         Bangladesh     Opposite max rain    NA                -0.0873109   -0.0993102   -0.0753115
JiVitA-4         Bangladesh     Opposite max rain    NA                -0.1428422   -0.1596157   -0.1260688
Keneba           Gambia         Opposite max rain    NA                -0.0937020   -0.1306165   -0.0567876
MAL-ED           Bangladesh     Opposite max rain    NA                -0.1144758   -0.1634768   -0.0654747
MAL-ED           Brazil         Opposite max rain    NA                -0.0147221   -0.1083812    0.0789370
MAL-ED           India          Opposite max rain    NA                -0.0968346   -0.1379421   -0.0557271
MAL-ED           Nepal          Opposite max rain    NA                -0.1088411   -0.1507400   -0.0669422
MAL-ED           Peru           Opposite max rain    NA                -0.0401903   -0.1093597    0.0289790
MAL-ED           South Africa   Opposite max rain    NA                -0.0883805   -0.2132792    0.0365181
MAL-ED           Tanzania       Opposite max rain    NA                -0.0456991   -0.0928335    0.0014352
PROVIDE          Bangladesh     Opposite max rain    NA                 0.0655045    0.0171406    0.1138684
ResPak           Pakistan       Opposite max rain    NA                -0.1781881   -0.2986388   -0.0577374
SAS-CompFeed     India          Opposite max rain    NA                -0.3753683   -0.3975997   -0.3531369
SAS-FoodSuppl    India          Opposite max rain    NA                -0.1855701   -0.2557668   -0.1153735
TanzaniaChild2   Tanzania       Opposite max rain    NA                -0.0776131   -0.1117601   -0.0434662
