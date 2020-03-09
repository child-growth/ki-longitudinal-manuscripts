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

**Intervention Variable:** ever_underweight06

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

studyid          country                        ever_underweight06    pers_wasted624   n_cell       n
---------------  -----------------------------  -------------------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                                  0      186     373
CMC-V-BCS-2002   INDIA                          0                                  1        4     373
CMC-V-BCS-2002   INDIA                          1                                  0      159     373
CMC-V-BCS-2002   INDIA                          1                                  1       24     373
CMIN             BANGLADESH                     0                                  0      118     252
CMIN             BANGLADESH                     0                                  1        1     252
CMIN             BANGLADESH                     1                                  0      109     252
CMIN             BANGLADESH                     1                                  1       24     252
COHORTS          GUATEMALA                      0                                  0      731    1023
COHORTS          GUATEMALA                      0                                  1        4    1023
COHORTS          GUATEMALA                      1                                  0      251    1023
COHORTS          GUATEMALA                      1                                  1       37    1023
COHORTS          INDIA                          0                                  0     4367    6897
COHORTS          INDIA                          0                                  1      112    6897
COHORTS          INDIA                          1                                  0     1759    6897
COHORTS          INDIA                          1                                  1      659    6897
COHORTS          PHILIPPINES                    0                                  0     2080    2809
COHORTS          PHILIPPINES                    0                                  1       73    2809
COHORTS          PHILIPPINES                    1                                  0      503    2809
COHORTS          PHILIPPINES                    1                                  1      153    2809
CONTENT          PERU                           0                                  0      207     215
CONTENT          PERU                           0                                  1        0     215
CONTENT          PERU                           1                                  0        8     215
CONTENT          PERU                           1                                  1        0     215
EE               PAKISTAN                       0                                  0      101     374
EE               PAKISTAN                       0                                  1        1     374
EE               PAKISTAN                       1                                  0      224     374
EE               PAKISTAN                       1                                  1       48     374
GMS-Nepal        NEPAL                          0                                  0      302     590
GMS-Nepal        NEPAL                          0                                  1       17     590
GMS-Nepal        NEPAL                          1                                  0      179     590
GMS-Nepal        NEPAL                          1                                  1       92     590
Guatemala BSC    GUATEMALA                      0                                  0      216     274
Guatemala BSC    GUATEMALA                      0                                  1        0     274
Guatemala BSC    GUATEMALA                      1                                  0       54     274
Guatemala BSC    GUATEMALA                      1                                  1        4     274
IRC              INDIA                          0                                  0      199     410
IRC              INDIA                          0                                  1       12     410
IRC              INDIA                          1                                  0      163     410
IRC              INDIA                          1                                  1       36     410
JiVitA-3         BANGLADESH                     0                                  0     8696   17274
JiVitA-3         BANGLADESH                     0                                  1      842   17274
JiVitA-3         BANGLADESH                     1                                  0     5332   17274
JiVitA-3         BANGLADESH                     1                                  1     2404   17274
JiVitA-4         BANGLADESH                     0                                  0     3354    5263
JiVitA-4         BANGLADESH                     0                                  1      124    5263
JiVitA-4         BANGLADESH                     1                                  0     1344    5263
JiVitA-4         BANGLADESH                     1                                  1      441    5263
Keneba           GAMBIA                         0                                  0     1854    2441
Keneba           GAMBIA                         0                                  1       78    2441
Keneba           GAMBIA                         1                                  0      370    2441
Keneba           GAMBIA                         1                                  1      139    2441
LCNI-5           MALAWI                         0                                  0      683     796
LCNI-5           MALAWI                         0                                  1        2     796
LCNI-5           MALAWI                         1                                  0      100     796
LCNI-5           MALAWI                         1                                  1       11     796
MAL-ED           BANGLADESH                     0                                  0      158     240
MAL-ED           BANGLADESH                     0                                  1        3     240
MAL-ED           BANGLADESH                     1                                  0       65     240
MAL-ED           BANGLADESH                     1                                  1       14     240
MAL-ED           BRAZIL                         0                                  0      191     207
MAL-ED           BRAZIL                         0                                  1        2     207
MAL-ED           BRAZIL                         1                                  0       14     207
MAL-ED           BRAZIL                         1                                  1        0     207
MAL-ED           INDIA                          0                                  0      133     235
MAL-ED           INDIA                          0                                  1        1     235
MAL-ED           INDIA                          1                                  0       74     235
MAL-ED           INDIA                          1                                  1       27     235
MAL-ED           NEPAL                          0                                  0      195     235
MAL-ED           NEPAL                          0                                  1        0     235
MAL-ED           NEPAL                          1                                  0       38     235
MAL-ED           NEPAL                          1                                  1        2     235
MAL-ED           PERU                           0                                  0      222     270
MAL-ED           PERU                           0                                  1        1     270
MAL-ED           PERU                           1                                  0       45     270
MAL-ED           PERU                           1                                  1        2     270
MAL-ED           SOUTH AFRICA                   0                                  0      215     259
MAL-ED           SOUTH AFRICA                   0                                  1        0     259
MAL-ED           SOUTH AFRICA                   1                                  0       42     259
MAL-ED           SOUTH AFRICA                   1                                  1        2     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  0      203     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  0       42     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  1        0     245
NIH-Birth        BANGLADESH                     0                                  0      289     542
NIH-Birth        BANGLADESH                     0                                  1        9     542
NIH-Birth        BANGLADESH                     1                                  0      192     542
NIH-Birth        BANGLADESH                     1                                  1       52     542
NIH-Crypto       BANGLADESH                     0                                  0      489     730
NIH-Crypto       BANGLADESH                     0                                  1       10     730
NIH-Crypto       BANGLADESH                     1                                  0      197     730
NIH-Crypto       BANGLADESH                     1                                  1       34     730
PROBIT           BELARUS                        0                                  0    15787   16596
PROBIT           BELARUS                        0                                  1       11   16596
PROBIT           BELARUS                        1                                  0      791   16596
PROBIT           BELARUS                        1                                  1        7   16596
PROVIDE          BANGLADESH                     0                                  0      406     615
PROVIDE          BANGLADESH                     0                                  1        8     615
PROVIDE          BANGLADESH                     1                                  0      169     615
PROVIDE          BANGLADESH                     1                                  1       32     615
ResPak           PAKISTAN                       0                                  0      125     234
ResPak           PAKISTAN                       0                                  1       17     234
ResPak           PAKISTAN                       1                                  0       62     234
ResPak           PAKISTAN                       1                                  1       30     234
SAS-CompFeed     INDIA                          0                                  0      760    1389
SAS-CompFeed     INDIA                          0                                  1       46    1389
SAS-CompFeed     INDIA                          1                                  0      398    1389
SAS-CompFeed     INDIA                          1                                  1      185    1389
SAS-FoodSuppl    INDIA                          0                                  0      180     400
SAS-FoodSuppl    INDIA                          0                                  1        8     400
SAS-FoodSuppl    INDIA                          1                                  0      144     400
SAS-FoodSuppl    INDIA                          1                                  1       68     400
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  0     1740    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  1       31    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  0      176    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  1       71    2018
ZVITAMBO         ZIMBABWE                       0                                  0     8705   10814
ZVITAMBO         ZIMBABWE                       0                                  1      206   10814
ZVITAMBO         ZIMBABWE                       1                                  0     1641   10814
ZVITAMBO         ZIMBABWE                       1                                  1      262   10814


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/8d72e4e0-cad9-458c-82fb-cccde98b6488/a1a0214d-aafd-4cde-ae0c-a813842e3968/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d72e4e0-cad9-458c-82fb-cccde98b6488/a1a0214d-aafd-4cde-ae0c-a813842e3968/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d72e4e0-cad9-458c-82fb-cccde98b6488/a1a0214d-aafd-4cde-ae0c-a813842e3968/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d72e4e0-cad9-458c-82fb-cccde98b6488/a1a0214d-aafd-4cde-ae0c-a813842e3968/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    NA                0.0261076   0.0213035   0.0309116
COHORTS          INDIA                          1                    NA                0.2603191   0.2425619   0.2780764
COHORTS          PHILIPPINES                    0                    NA                0.0353730   0.0275240   0.0432219
COHORTS          PHILIPPINES                    1                    NA                0.2168021   0.1844558   0.2491484
GMS-Nepal        NEPAL                          0                    NA                0.0529088   0.0281330   0.0776846
GMS-Nepal        NEPAL                          1                    NA                0.3410877   0.2843286   0.3978468
IRC              INDIA                          0                    NA                0.0557271   0.0243731   0.0870811
IRC              INDIA                          1                    NA                0.1839781   0.1296664   0.2382898
JiVitA-3         BANGLADESH                     0                    NA                0.0866210   0.0801745   0.0930675
JiVitA-3         BANGLADESH                     1                    NA                0.3126384   0.3013783   0.3238986
JiVitA-4         BANGLADESH                     0                    NA                0.0359050   0.0275207   0.0442893
JiVitA-4         BANGLADESH                     1                    NA                0.2406768   0.2177617   0.2635920
Keneba           GAMBIA                         0                    NA                0.0411615   0.0322504   0.0500727
Keneba           GAMBIA                         1                    NA                0.2490225   0.2113007   0.2867443
NIH-Birth        BANGLADESH                     0                    NA                0.0302013   0.0107524   0.0496502
NIH-Birth        BANGLADESH                     1                    NA                0.2131148   0.1616847   0.2645448
NIH-Crypto       BANGLADESH                     0                    NA                0.0205055   0.0081272   0.0328838
NIH-Crypto       BANGLADESH                     1                    NA                0.1426235   0.0965059   0.1887411
PROBIT           BELARUS                        0                    NA                0.0006963   0.0002033   0.0011893
PROBIT           BELARUS                        1                    NA                0.0087719   0.0017865   0.0157574
PROVIDE          BANGLADESH                     0                    NA                0.0193237   0.0060525   0.0325948
PROVIDE          BANGLADESH                     1                    NA                0.1592040   0.1085836   0.2098244
ResPak           PAKISTAN                       0                    NA                0.1116933   0.0598236   0.1635629
ResPak           PAKISTAN                       1                    NA                0.3250899   0.2239914   0.4261885
SAS-CompFeed     INDIA                          0                    NA                0.0609899   0.0452404   0.0767395
SAS-CompFeed     INDIA                          1                    NA                0.3040240   0.2799201   0.3281280
SAS-FoodSuppl    INDIA                          0                    NA                0.0425532   0.0136640   0.0714424
SAS-FoodSuppl    INDIA                          1                    NA                0.3207547   0.2578442   0.3836653
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0175328   0.0114319   0.0236336
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2834505   0.2246221   0.3422790
ZVITAMBO         ZIMBABWE                       0                    NA                0.0235063   0.0203662   0.0266464
ZVITAMBO         ZIMBABWE                       1                    NA                0.1287058   0.1132193   0.1441923


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
JiVitA-4         BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251
Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
SAS-FoodSuppl    INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                  9.971020    8.195232   12.131596
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  6.129037    4.694089    8.002636
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  6.446713    3.923462   10.592715
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  3.301411    1.750281    6.227180
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  3.609267    3.328889    3.913261
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.703161    5.220033    8.607678
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.049881    4.645255    7.879236
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  7.056466    3.547479   14.036366
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  6.955370    3.506329   13.797102
PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
PROBIT           BELARUS                        1                    0                 12.598086    4.450502   35.661544
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  8.238806    3.865305   17.560819
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  2.910560    1.661287    5.099276
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  4.984823    3.878352    6.406964
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  7.537736    3.718280   15.280578
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.166904   10.777038   24.252375
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  5.475376    4.574884    6.553114


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    NA                0.0856802   0.0786120   0.0927483
COHORTS          PHILIPPINES                    0                    NA                0.0450827   0.0367206   0.0534449
GMS-Nepal        NEPAL                          0                    NA                0.1318370   0.1012406   0.1624333
IRC              INDIA                          0                    NA                0.0613461   0.0306215   0.0920706
JiVitA-3         BANGLADESH                     0                    NA                0.1012914   0.0955246   0.1070582
JiVitA-4         BANGLADESH                     0                    NA                0.0714482   0.0626053   0.0802912
Keneba           GAMBIA                         0                    NA                0.0477364   0.0386454   0.0568275
NIH-Birth        BANGLADESH                     0                    NA                0.0823448   0.0564310   0.1082586
NIH-Crypto       BANGLADESH                     0                    NA                0.0397685   0.0241704   0.0553665
PROBIT           BELARUS                        0                    NA                0.0003883   0.0000456   0.0007310
PROVIDE          BANGLADESH                     0                    NA                0.0457170   0.0278436   0.0635904
ResPak           PAKISTAN                       0                    NA                0.0891614   0.0434884   0.1348345
SAS-CompFeed     INDIA                          0                    NA                0.1053168   0.0896826   0.1209509
SAS-FoodSuppl    INDIA                          0                    NA                0.1474468   0.1083088   0.1865848
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330123   0.0250635   0.0409612
ZVITAMBO         ZIMBABWE                       0                    NA                0.0197709   0.0168752   0.0226667


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          INDIA                          0                    NA                0.7664540   0.7234672   0.8027586
COHORTS          PHILIPPINES                    0                    NA                0.5603424   0.4738813   0.6325947
GMS-Nepal        NEPAL                          0                    NA                0.7136131   0.5619899   0.8127498
IRC              INDIA                          0                    NA                0.5239977   0.2289902   0.7061280
JiVitA-3         BANGLADESH                     0                    NA                0.5390352   0.5104959   0.5659106
JiVitA-4         BANGLADESH                     0                    NA                0.6655436   0.5928167   0.7252807
Keneba           GAMBIA                         0                    NA                0.5369800   0.4509525   0.6095282
NIH-Birth        BANGLADESH                     0                    NA                0.7316536   0.5158152   0.8512763
NIH-Crypto       BANGLADESH                     0                    NA                0.6597948   0.4236252   0.7991939
PROBIT           BELARUS                        0                    NA                0.3580200   0.0283979   0.5758157
PROVIDE          BANGLADESH                     0                    NA                0.7028986   0.4528294   0.8386805
ResPak           PAKISTAN                       0                    NA                0.4439102   0.1955230   0.6156063
SAS-CompFeed     INDIA                          0                    NA                0.6332683   0.5464359   0.7034772
SAS-FoodSuppl    INDIA                          0                    NA                0.7760358   0.5768128   0.8814710
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6531263   0.5372947   0.7399611
ZVITAMBO         ZIMBABWE                       0                    NA                0.4568439   0.4003537   0.5080123
