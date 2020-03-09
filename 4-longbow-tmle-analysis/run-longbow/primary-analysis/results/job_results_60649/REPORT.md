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

**Intervention Variable:** ever_co06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_co06    pers_wasted624   n_cell       n
---------------  -----------------------------  ----------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                         0      317     370
CMC-V-BCS-2002   INDIA                          0                         1       22     370
CMC-V-BCS-2002   INDIA                          1                         0       25     370
CMC-V-BCS-2002   INDIA                          1                         1        6     370
CMIN             BANGLADESH                     0                         0      222     252
CMIN             BANGLADESH                     0                         1       17     252
CMIN             BANGLADESH                     1                         0        5     252
CMIN             BANGLADESH                     1                         1        8     252
COHORTS          GUATEMALA                      0                         0      956    1016
COHORTS          GUATEMALA                      0                         1       33    1016
COHORTS          GUATEMALA                      1                         0       19    1016
COHORTS          GUATEMALA                      1                         1        8    1016
COHORTS          INDIA                          0                         0     6006    6888
COHORTS          INDIA                          0                         1      550    6888
COHORTS          INDIA                          1                         0      112    6888
COHORTS          INDIA                          1                         1      220    6888
COHORTS          PHILIPPINES                    0                         0     2537    2808
COHORTS          PHILIPPINES                    0                         1      184    2808
COHORTS          PHILIPPINES                    1                         0       45    2808
COHORTS          PHILIPPINES                    1                         1       42    2808
CONTENT          PERU                           0                         0      215     215
CONTENT          PERU                           0                         1        0     215
CONTENT          PERU                           1                         0        0     215
CONTENT          PERU                           1                         1        0     215
EE               PAKISTAN                       0                         0      288     373
EE               PAKISTAN                       0                         1       24     373
EE               PAKISTAN                       1                         0       36     373
EE               PAKISTAN                       1                         1       25     373
GMS-Nepal        NEPAL                          0                         0      463     590
GMS-Nepal        NEPAL                          0                         1       93     590
GMS-Nepal        NEPAL                          1                         0       18     590
GMS-Nepal        NEPAL                          1                         1       16     590
Guatemala BSC    GUATEMALA                      0                         0      265     274
Guatemala BSC    GUATEMALA                      0                         1        3     274
Guatemala BSC    GUATEMALA                      1                         0        5     274
Guatemala BSC    GUATEMALA                      1                         1        1     274
IRC              INDIA                          0                         0      342     409
IRC              INDIA                          0                         1       42     409
IRC              INDIA                          1                         0       19     409
IRC              INDIA                          1                         1        6     409
JiVitA-3         BANGLADESH                     0                         0    13651   17247
JiVitA-3         BANGLADESH                     0                         1     2747   17247
JiVitA-3         BANGLADESH                     1                         0      357   17247
JiVitA-3         BANGLADESH                     1                         1      492   17247
JiVitA-4         BANGLADESH                     0                         0     4578    5234
JiVitA-4         BANGLADESH                     0                         1      471    5234
JiVitA-4         BANGLADESH                     1                         0       98    5234
JiVitA-4         BANGLADESH                     1                         1       87    5234
Keneba           GAMBIA                         0                         0     2062    2298
Keneba           GAMBIA                         0                         1      174    2298
Keneba           GAMBIA                         1                         0       33    2298
Keneba           GAMBIA                         1                         1       29    2298
LCNI-5           MALAWI                         0                         0      782     797
LCNI-5           MALAWI                         0                         1       10     797
LCNI-5           MALAWI                         1                         0        2     797
LCNI-5           MALAWI                         1                         1        3     797
MAL-ED           BANGLADESH                     0                         0      216     240
MAL-ED           BANGLADESH                     0                         1       15     240
MAL-ED           BANGLADESH                     1                         0        7     240
MAL-ED           BANGLADESH                     1                         1        2     240
MAL-ED           BRAZIL                         0                         0      204     207
MAL-ED           BRAZIL                         0                         1        2     207
MAL-ED           BRAZIL                         1                         0        1     207
MAL-ED           BRAZIL                         1                         1        0     207
MAL-ED           INDIA                          0                         0      196     235
MAL-ED           INDIA                          0                         1       21     235
MAL-ED           INDIA                          1                         0       11     235
MAL-ED           INDIA                          1                         1        7     235
MAL-ED           NEPAL                          0                         0      226     235
MAL-ED           NEPAL                          0                         1        1     235
MAL-ED           NEPAL                          1                         0        7     235
MAL-ED           NEPAL                          1                         1        1     235
MAL-ED           PERU                           0                         0      267     270
MAL-ED           PERU                           0                         1        2     270
MAL-ED           PERU                           1                         0        0     270
MAL-ED           PERU                           1                         1        1     270
MAL-ED           SOUTH AFRICA                   0                         0      252     259
MAL-ED           SOUTH AFRICA                   0                         1        2     259
MAL-ED           SOUTH AFRICA                   1                         0        5     259
MAL-ED           SOUTH AFRICA                   1                         1        0     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      241     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        4     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
NIH-Birth        BANGLADESH                     0                         0      453     542
NIH-Birth        BANGLADESH                     0                         1       42     542
NIH-Birth        BANGLADESH                     1                         0       28     542
NIH-Birth        BANGLADESH                     1                         1       19     542
NIH-Crypto       BANGLADESH                     0                         0      673     730
NIH-Crypto       BANGLADESH                     0                         1       34     730
NIH-Crypto       BANGLADESH                     1                         0       13     730
NIH-Crypto       BANGLADESH                     1                         1       10     730
PROBIT           BELARUS                        0                         0    16563   16595
PROBIT           BELARUS                        0                         1       17   16595
PROBIT           BELARUS                        1                         0       14   16595
PROBIT           BELARUS                        1                         1        1   16595
PROVIDE          BANGLADESH                     0                         0      557     615
PROVIDE          BANGLADESH                     0                         1       30     615
PROVIDE          BANGLADESH                     1                         0       18     615
PROVIDE          BANGLADESH                     1                         1       10     615
ResPak           PAKISTAN                       0                         0      179     234
ResPak           PAKISTAN                       0                         1       41     234
ResPak           PAKISTAN                       1                         0        8     234
ResPak           PAKISTAN                       1                         1        6     234
SAS-CompFeed     INDIA                          0                         0     1112    1383
SAS-CompFeed     INDIA                          0                         1      172    1383
SAS-CompFeed     INDIA                          1                         0       43    1383
SAS-CompFeed     INDIA                          1                         1       56    1383
SAS-FoodSuppl    INDIA                          0                         0      298     402
SAS-FoodSuppl    INDIA                          0                         1       51     402
SAS-FoodSuppl    INDIA                          1                         0       28     402
SAS-FoodSuppl    INDIA                          1                         1       25     402
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     1907    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1       91    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0        9    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1       11    2018
ZVITAMBO         ZIMBABWE                       0                         0    10182   10730
ZVITAMBO         ZIMBABWE                       0                         1      399   10730
ZVITAMBO         ZIMBABWE                       1                         0       91   10730
ZVITAMBO         ZIMBABWE                       1                         1       58   10730


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




# Results Detail

## Results Plots
![](/tmp/d577d4d5-83a3-487d-80fc-482f94c14944/d7e4b648-f35d-4b71-ac76-380078c415bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d577d4d5-83a3-487d-80fc-482f94c14944/d7e4b648-f35d-4b71-ac76-380078c415bf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d577d4d5-83a3-487d-80fc-482f94c14944/d7e4b648-f35d-4b71-ac76-380078c415bf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d577d4d5-83a3-487d-80fc-482f94c14944/d7e4b648-f35d-4b71-ac76-380078c415bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0648968   0.0386378   0.0911557
CMC-V-BCS-2002   INDIA                          1                    NA                0.1935484   0.0542844   0.3328124
CMIN             BANGLADESH                     0                    NA                0.0711297   0.0384773   0.1037821
CMIN             BANGLADESH                     1                    NA                0.6153846   0.3503965   0.8803728
COHORTS          GUATEMALA                      0                    NA                0.0333670   0.0221687   0.0445654
COHORTS          GUATEMALA                      1                    NA                0.2962963   0.1239753   0.4686172
COHORTS          INDIA                          0                    NA                0.0847145   0.0779646   0.0914643
COHORTS          INDIA                          1                    NA                0.6240114   0.5713497   0.6766732
COHORTS          PHILIPPINES                    0                    NA                0.0679649   0.0585238   0.0774060
COHORTS          PHILIPPINES                    1                    NA                0.4590425   0.3554145   0.5626704
EE               PAKISTAN                       0                    NA                0.0764150   0.0467018   0.1061282
EE               PAKISTAN                       1                    NA                0.3903369   0.2571207   0.5235530
GMS-Nepal        NEPAL                          0                    NA                0.1681467   0.1369844   0.1993091
GMS-Nepal        NEPAL                          1                    NA                0.4447195   0.2786564   0.6107827
IRC              INDIA                          0                    NA                0.1093750   0.0781199   0.1406301
IRC              INDIA                          1                    NA                0.2400000   0.0723815   0.4076185
JiVitA-3         BANGLADESH                     0                    NA                0.1677643   0.1614178   0.1741108
JiVitA-3         BANGLADESH                     1                    NA                0.5673634   0.5291710   0.6055557
JiVitA-4         BANGLADESH                     0                    NA                0.0934711   0.0832557   0.1036864
JiVitA-4         BANGLADESH                     1                    NA                0.4649342   0.3703938   0.5594745
Keneba           GAMBIA                         0                    NA                0.0783916   0.0671331   0.0896502
Keneba           GAMBIA                         1                    NA                0.3872321   0.2928777   0.4815864
MAL-ED           INDIA                          0                    NA                0.0967742   0.0573537   0.1361947
MAL-ED           INDIA                          1                    NA                0.3888889   0.1631997   0.6145780
NIH-Birth        BANGLADESH                     0                    NA                0.0849839   0.0604283   0.1095396
NIH-Birth        BANGLADESH                     1                    NA                0.5005021   0.3631018   0.6379024
NIH-Crypto       BANGLADESH                     0                    NA                0.0482797   0.0324912   0.0640682
NIH-Crypto       BANGLADESH                     1                    NA                0.4076593   0.1784509   0.6368678
PROVIDE          BANGLADESH                     0                    NA                0.0510933   0.0332575   0.0689292
PROVIDE          BANGLADESH                     1                    NA                0.3574736   0.1663847   0.5485624
ResPak           PAKISTAN                       0                    NA                0.1863636   0.1347978   0.2379295
ResPak           PAKISTAN                       1                    NA                0.4285714   0.1687909   0.6883520
SAS-CompFeed     INDIA                          0                    NA                0.1353672   0.1174481   0.1532863
SAS-CompFeed     INDIA                          1                    NA                0.5453168   0.4909595   0.5996740
SAS-FoodSuppl    INDIA                          0                    NA                0.1465979   0.1094798   0.1837161
SAS-FoodSuppl    INDIA                          1                    NA                0.4652507   0.3262179   0.6042835
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0455455   0.0362596   0.0548315
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5500000   0.4635436   0.6364564
ZVITAMBO         ZIMBABWE                       0                    NA                0.0377760   0.0341001   0.0414519
ZVITAMBO         ZIMBABWE                       1                    NA                0.3511388   0.3077157   0.3945619


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0403543   0.0282479   0.0524607
COHORTS          INDIA                          NA                   NA                0.1117886   0.1043466   0.1192306
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1173594   0.0861296   0.1485892
JiVitA-3         BANGLADESH                     NA                   NA                0.1878008   0.1812627   0.1943389
JiVitA-4         BANGLADESH                     NA                   NA                0.1066106   0.0960765   0.1171447
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1648590   0.1452632   0.1844548
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425909   0.0387699   0.0464119


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  2.982405   1.306343    6.808882
CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  8.651584   4.610498   16.234669
COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  8.879910   4.537246   17.379001
COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
COHORTS          INDIA                          1                    0                  7.366055   6.560708    8.270261
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  6.754114   5.184698    8.798595
EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.108118   3.037698    8.589685
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  2.644830   1.744220    4.010461
IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
IRC              INDIA                          1                    0                  2.194286   1.031740    4.666768
JiVitA-3         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  3.381908   3.132585    3.651074
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  4.974097   3.946238    6.269678
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  4.939713   3.724477    6.551463
MAL-ED           INDIA                          0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA                          1                    0                  4.018518   1.977591    8.165737
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  5.889373   3.949183    8.782755
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  8.443703   4.406146   16.181063
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  6.996482   3.695571   13.245787
ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  2.299652   1.181089    4.477561
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  4.028427   3.334564    4.866669
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.173651   2.144760    4.696125
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.075824   9.334897   15.621547
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  9.295298   7.942353   10.878712


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0107789   -0.0016393   0.0231971
CMIN             BANGLADESH                     0                    NA                0.0280766    0.0077909   0.0483623
COHORTS          GUATEMALA                      0                    NA                0.0069873    0.0017121   0.0122625
COHORTS          INDIA                          0                    NA                0.0270741    0.0232969   0.0308514
COHORTS          PHILIPPINES                    0                    NA                0.0125195    0.0083787   0.0166602
EE               PAKISTAN                       0                    NA                0.0549523    0.0304184   0.0794861
GMS-Nepal        NEPAL                          0                    NA                0.0165990    0.0052976   0.0279004
IRC              INDIA                          0                    NA                0.0079844   -0.0028711   0.0188399
JiVitA-3         BANGLADESH                     0                    NA                0.0200365    0.0177876   0.0222853
JiVitA-4         BANGLADESH                     0                    NA                0.0131396    0.0090672   0.0172119
Keneba           GAMBIA                         0                    NA                0.0099461    0.0057326   0.0141595
MAL-ED           INDIA                          0                    NA                0.0223747    0.0021997   0.0425498
NIH-Birth        BANGLADESH                     0                    NA                0.0275622    0.0130657   0.0420587
NIH-Crypto       BANGLADESH                     0                    NA                0.0119943    0.0039959   0.0199927
PROVIDE          BANGLADESH                     0                    NA                0.0139473    0.0044245   0.0234702
ResPak           PAKISTAN                       0                    NA                0.0144911   -0.0029872   0.0319693
SAS-CompFeed     INDIA                          0                    NA                0.0294918    0.0218349   0.0371487
SAS-FoodSuppl    INDIA                          0                    NA                0.0424568    0.0211381   0.0637755
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0049995    0.0019204   0.0080787
ZVITAMBO         ZIMBABWE                       0                    NA                0.0048149    0.0034821   0.0061477


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.1424357   -0.0300892   0.2860653
CMIN             BANGLADESH                     0                    NA                0.2830126    0.0782623   0.4422806
COHORTS          GUATEMALA                      0                    NA                0.1731485    0.0431505   0.2854850
COHORTS          INDIA                          0                    NA                0.2421906    0.2109914   0.2721561
COHORTS          PHILIPPINES                    0                    NA                0.1555515    0.1059652   0.2023876
EE               PAKISTAN                       0                    NA                0.4183103    0.2363128   0.5569352
GMS-Nepal        NEPAL                          0                    NA                0.0898479    0.0277489   0.1479806
IRC              INDIA                          0                    NA                0.0680339   -0.0277289   0.1548735
JiVitA-3         BANGLADESH                     0                    NA                0.1066900    0.0950204   0.1182092
JiVitA-4         BANGLADESH                     0                    NA                0.1232482    0.0856420   0.1593076
Keneba           GAMBIA                         0                    NA                0.1125916    0.0652952   0.1574947
MAL-ED           INDIA                          0                    NA                0.1877880    0.0119633   0.3323241
NIH-Birth        BANGLADESH                     0                    NA                0.2448967    0.1176344   0.3538043
NIH-Crypto       BANGLADESH                     0                    NA                0.1989961    0.0682680   0.3113822
PROVIDE          BANGLADESH                     0                    NA                0.2144400    0.0689551   0.3371914
ResPak           PAKISTAN                       0                    NA                0.0721470   -0.0179275   0.1542510
SAS-CompFeed     INDIA                          0                    NA                0.1788912    0.1352336   0.2203447
SAS-FoodSuppl    INDIA                          0                    NA                0.2245740    0.1103113   0.3241619
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0989126    0.0378212   0.1561252
ZVITAMBO         ZIMBABWE                       0                    NA                0.1130503    0.0824749   0.1426068
