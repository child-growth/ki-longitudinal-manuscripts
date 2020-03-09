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

studyid          country                        ever_stunted06    pers_wasted624   n_cell       n
---------------  -----------------------------  ---------------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                              0      167     370
CMC-V-BCS-2002   INDIA                          0                              1       11     370
CMC-V-BCS-2002   INDIA                          1                              0      175     370
CMC-V-BCS-2002   INDIA                          1                              1       17     370
CMIN             BANGLADESH                     0                              0      107     252
CMIN             BANGLADESH                     0                              1        3     252
CMIN             BANGLADESH                     1                              0      120     252
CMIN             BANGLADESH                     1                              1       22     252
COHORTS          GUATEMALA                      0                              0      555    1023
COHORTS          GUATEMALA                      0                              1       12    1023
COHORTS          GUATEMALA                      1                              0      427    1023
COHORTS          GUATEMALA                      1                              1       29    1023
COHORTS          INDIA                          0                              0     4740    6893
COHORTS          INDIA                          0                              1      420    6893
COHORTS          INDIA                          1                              0     1382    6893
COHORTS          INDIA                          1                              1      351    6893
COHORTS          PHILIPPINES                    0                              0     1889    2809
COHORTS          PHILIPPINES                    0                              1      108    2809
COHORTS          PHILIPPINES                    1                              0      694    2809
COHORTS          PHILIPPINES                    1                              1      118    2809
CONTENT          PERU                           0                              0      186     215
CONTENT          PERU                           0                              1        0     215
CONTENT          PERU                           1                              0       29     215
CONTENT          PERU                           1                              1        0     215
EE               PAKISTAN                       0                              0       83     373
EE               PAKISTAN                       0                              1        8     373
EE               PAKISTAN                       1                              0      241     373
EE               PAKISTAN                       1                              1       41     373
GMS-Nepal        NEPAL                          0                              0      339     590
GMS-Nepal        NEPAL                          0                              1       58     590
GMS-Nepal        NEPAL                          1                              0      142     590
GMS-Nepal        NEPAL                          1                              1       51     590
Guatemala BSC    GUATEMALA                      0                              0      180     274
Guatemala BSC    GUATEMALA                      0                              1        1     274
Guatemala BSC    GUATEMALA                      1                              0       90     274
Guatemala BSC    GUATEMALA                      1                              1        3     274
IRC              INDIA                          0                              0      204     410
IRC              INDIA                          0                              1       28     410
IRC              INDIA                          1                              0      158     410
IRC              INDIA                          1                              1       20     410
JiVitA-3         BANGLADESH                     0                              0     8305   17265
JiVitA-3         BANGLADESH                     0                              1     1519   17265
JiVitA-3         BANGLADESH                     1                              0     5718   17265
JiVitA-3         BANGLADESH                     1                              1     1723   17265
JiVitA-4         BANGLADESH                     0                              0     2985    5257
JiVitA-4         BANGLADESH                     0                              1      243    5257
JiVitA-4         BANGLADESH                     1                              0     1708    5257
JiVitA-4         BANGLADESH                     1                              1      321    5257
Keneba           GAMBIA                         0                              0     1469    2299
Keneba           GAMBIA                         0                              1       97    2299
Keneba           GAMBIA                         1                              0      627    2299
Keneba           GAMBIA                         1                              1      106    2299
LCNI-5           MALAWI                         0                              0      498     797
LCNI-5           MALAWI                         0                              1        4     797
LCNI-5           MALAWI                         1                              0      286     797
LCNI-5           MALAWI                         1                              1        9     797
MAL-ED           BANGLADESH                     0                              0      145     240
MAL-ED           BANGLADESH                     0                              1       10     240
MAL-ED           BANGLADESH                     1                              0       78     240
MAL-ED           BANGLADESH                     1                              1        7     240
MAL-ED           BRAZIL                         0                              0      160     207
MAL-ED           BRAZIL                         0                              1        2     207
MAL-ED           BRAZIL                         1                              0       45     207
MAL-ED           BRAZIL                         1                              1        0     207
MAL-ED           INDIA                          0                              0      135     235
MAL-ED           INDIA                          0                              1       14     235
MAL-ED           INDIA                          1                              0       72     235
MAL-ED           INDIA                          1                              1       14     235
MAL-ED           NEPAL                          0                              0      191     235
MAL-ED           NEPAL                          0                              1        1     235
MAL-ED           NEPAL                          1                              0       42     235
MAL-ED           NEPAL                          1                              1        1     235
MAL-ED           PERU                           0                              0      147     270
MAL-ED           PERU                           0                              1        0     270
MAL-ED           PERU                           1                              0      120     270
MAL-ED           PERU                           1                              1        3     270
MAL-ED           SOUTH AFRICA                   0                              0      152     259
MAL-ED           SOUTH AFRICA                   0                              1        2     259
MAL-ED           SOUTH AFRICA                   1                              0      105     259
MAL-ED           SOUTH AFRICA                   1                              1        0     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      140     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0      105     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
NIH-Birth        BANGLADESH                     0                              0      295     542
NIH-Birth        BANGLADESH                     0                              1       23     542
NIH-Birth        BANGLADESH                     1                              0      186     542
NIH-Birth        BANGLADESH                     1                              1       38     542
NIH-Crypto       BANGLADESH                     0                              0      460     730
NIH-Crypto       BANGLADESH                     0                              1       19     730
NIH-Crypto       BANGLADESH                     1                              0      226     730
NIH-Crypto       BANGLADESH                     1                              1       25     730
PROBIT           BELARUS                        0                              0    15191   16595
PROBIT           BELARUS                        0                              1       14   16595
PROBIT           BELARUS                        1                              0     1386   16595
PROBIT           BELARUS                        1                              1        4   16595
PROVIDE          BANGLADESH                     0                              0      435     615
PROVIDE          BANGLADESH                     0                              1       20     615
PROVIDE          BANGLADESH                     1                              0      140     615
PROVIDE          BANGLADESH                     1                              1       20     615
ResPak           PAKISTAN                       0                              0       79     234
ResPak           PAKISTAN                       0                              1       16     234
ResPak           PAKISTAN                       1                              0      108     234
ResPak           PAKISTAN                       1                              1       31     234
SAS-CompFeed     INDIA                          0                              0      698    1388
SAS-CompFeed     INDIA                          0                              1      100    1388
SAS-CompFeed     INDIA                          1                              0      460    1388
SAS-CompFeed     INDIA                          1                              1      130    1388
SAS-FoodSuppl    INDIA                          0                              0      179     402
SAS-FoodSuppl    INDIA                          0                              1       36     402
SAS-FoodSuppl    INDIA                          1                              0      147     402
SAS-FoodSuppl    INDIA                          1                              1       40     402
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1514    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       66    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0      402    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       36    2018
ZVITAMBO         ZIMBABWE                       0                              0     7237   10802
ZVITAMBO         ZIMBABWE                       0                              1      241   10802
ZVITAMBO         ZIMBABWE                       1                              0     3098   10802
ZVITAMBO         ZIMBABWE                       1                              1      226   10802


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b3db2de6-4b13-458f-b6cd-b14f4d11bc63/e92680ee-de69-4f50-bc67-7c52dc774ea7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3db2de6-4b13-458f-b6cd-b14f4d11bc63/e92680ee-de69-4f50-bc67-7c52dc774ea7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3db2de6-4b13-458f-b6cd-b14f4d11bc63/e92680ee-de69-4f50-bc67-7c52dc774ea7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3db2de6-4b13-458f-b6cd-b14f4d11bc63/e92680ee-de69-4f50-bc67-7c52dc774ea7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0617719   0.0268141   0.0967298
CMC-V-BCS-2002   INDIA                          1                    NA                0.0885126   0.0484674   0.1285579
COHORTS          GUATEMALA                      0                    NA                0.0241352   0.0086549   0.0396156
COHORTS          GUATEMALA                      1                    NA                0.0683072   0.0428513   0.0937631
COHORTS          INDIA                          0                    NA                0.0849284   0.0772008   0.0926560
COHORTS          INDIA                          1                    NA                0.1834701   0.1649915   0.2019488
COHORTS          PHILIPPINES                    0                    NA                0.0584322   0.0477412   0.0691232
COHORTS          PHILIPPINES                    1                    NA                0.1333436   0.1084929   0.1581943
EE               PAKISTAN                       0                    NA                0.0879121   0.0296544   0.1461697
EE               PAKISTAN                       1                    NA                0.1453901   0.1041938   0.1865863
GMS-Nepal        NEPAL                          0                    NA                0.1491303   0.1143448   0.1839157
GMS-Nepal        NEPAL                          1                    NA                0.2591425   0.1966780   0.3216070
IRC              INDIA                          0                    NA                0.1191748   0.0771729   0.1611767
IRC              INDIA                          1                    NA                0.1138787   0.0661822   0.1615751
JiVitA-3         BANGLADESH                     0                    NA                0.1569937   0.1490086   0.1649788
JiVitA-3         BANGLADESH                     1                    NA                0.2269692   0.2156609   0.2382776
JiVitA-4         BANGLADESH                     0                    NA                0.0762248   0.0647401   0.0877095
JiVitA-4         BANGLADESH                     1                    NA                0.1546198   0.1354395   0.1738002
Keneba           GAMBIA                         0                    NA                0.0637900   0.0516236   0.0759564
Keneba           GAMBIA                         1                    NA                0.1378043   0.1124768   0.1631319
MAL-ED           BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
MAL-ED           BANGLADESH                     1                    NA                0.0823529   0.0237900   0.1409159
MAL-ED           INDIA                          0                    NA                0.0950529   0.0481634   0.1419424
MAL-ED           INDIA                          1                    NA                0.1673571   0.0892748   0.2454394
NIH-Birth        BANGLADESH                     0                    NA                0.0743759   0.0441855   0.1045663
NIH-Birth        BANGLADESH                     1                    NA                0.1737422   0.1231385   0.2243458
NIH-Crypto       BANGLADESH                     0                    NA                0.0407457   0.0232735   0.0582180
NIH-Crypto       BANGLADESH                     1                    NA                0.0956956   0.0586259   0.1327653
PROVIDE          BANGLADESH                     0                    NA                0.0430898   0.0241672   0.0620124
PROVIDE          BANGLADESH                     1                    NA                0.1411138   0.0881586   0.1940690
ResPak           PAKISTAN                       0                    NA                0.1524968   0.0816830   0.2233105
ResPak           PAKISTAN                       1                    NA                0.2146310   0.1469503   0.2823117
SAS-CompFeed     INDIA                          0                    NA                0.1349532   0.1143188   0.1555877
SAS-CompFeed     INDIA                          1                    NA                0.2017862   0.1677513   0.2358211
SAS-FoodSuppl    INDIA                          0                    NA                0.1663329   0.1160917   0.2165740
SAS-FoodSuppl    INDIA                          1                    NA                0.2146608   0.1552544   0.2740673
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0419497   0.0320380   0.0518614
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0813199   0.0553534   0.1072864
ZVITAMBO         ZIMBABWE                       0                    NA                0.0334676   0.0293683   0.0375669
ZVITAMBO         ZIMBABWE                       1                    NA                0.0653526   0.0568577   0.0738475


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
CMC-V-BCS-2002   INDIA                          1                    0                 1.4328940   0.6932329   2.961754
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 2.8301874   1.3494745   5.935615
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.1602912   1.8868900   2.473307
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.2820234   1.7586435   2.961163
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.6538121   0.8044198   3.400084
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 1.7376921   1.2437041   2.427888
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 0.9555602   0.5524157   1.652913
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.4457216   1.3499716   1.548263
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 2.0284713   1.6824747   2.445621
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 2.1602805   1.6575457   2.815495
MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           BANGLADESH                     1                    0                 1.2764706   0.5031874   3.238112
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 1.7606726   0.8914774   3.477338
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 2.3360007   1.4156617   3.854663
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.3486062   1.3177338   4.185937
PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
PROVIDE          BANGLADESH                     1                    0                 3.2748741   1.8385125   5.833412
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 1.4074460   0.7980218   2.482268
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 1.4952304   1.1845318   1.887424
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.2905495   0.8567392   1.944020
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9385077   1.3031101   2.883726
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 1.9527102   1.6338173   2.333845


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0139037   -0.0137236   0.0415310
COHORTS          GUATEMALA                      0                    NA                 0.0159430    0.0015864   0.0302996
COHORTS          INDIA                          0                    NA                 0.0269242    0.0215528   0.0322955
COHORTS          PHILIPPINES                    0                    NA                 0.0220235    0.0138820   0.0301650
EE               PAKISTAN                       0                    NA                 0.0434552   -0.0105474   0.0974578
GMS-Nepal        NEPAL                          0                    NA                 0.0356155    0.0119552   0.0592758
IRC              INDIA                          0                    NA                -0.0021016   -0.0295790   0.0253758
JiVitA-3         BANGLADESH                     0                    NA                 0.0307850    0.0250046   0.0365654
JiVitA-4         BANGLADESH                     0                    NA                 0.0310607    0.0225402   0.0395813
Keneba           GAMBIA                         0                    NA                 0.0245092    0.0152778   0.0337407
MAL-ED           BANGLADESH                     0                    NA                 0.0063172   -0.0185779   0.0312123
MAL-ED           INDIA                          0                    NA                 0.0240960   -0.0096565   0.0578484
NIH-Birth        BANGLADESH                     0                    NA                 0.0381702    0.0131788   0.0631617
NIH-Crypto       BANGLADESH                     0                    NA                 0.0195283    0.0053215   0.0337350
PROVIDE          BANGLADESH                     0                    NA                 0.0219508    0.0074860   0.0364156
ResPak           PAKISTAN                       0                    NA                 0.0483579   -0.0112820   0.1079979
SAS-CompFeed     INDIA                          0                    NA                 0.0307528    0.0110892   0.0504164
SAS-FoodSuppl    INDIA                          0                    NA                 0.0227218   -0.0135950   0.0590387
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0085954    0.0025486   0.0146421
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0097651    0.0067926   0.0127376


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.1837279   -0.2672863   0.4742307
COHORTS          GUATEMALA                      0                    NA                 0.3977968   -0.0577047   0.6571362
COHORTS          INDIA                          0                    NA                 0.2407112    0.1935786   0.2850891
COHORTS          PHILIPPINES                    0                    NA                 0.2737345    0.1714225   0.3634130
EE               PAKISTAN                       0                    NA                 0.3307917   -0.2234703   0.6339594
GMS-Nepal        NEPAL                          0                    NA                 0.1927811    0.0577201   0.3084833
IRC              INDIA                          0                    NA                -0.0179513   -0.2818425   0.1916129
JiVitA-3         BANGLADESH                     0                    NA                 0.1639431    0.1330085   0.1937739
JiVitA-4         BANGLADESH                     0                    NA                 0.2895146    0.2090246   0.3618139
Keneba           GAMBIA                         0                    NA                 0.2775702    0.1720245   0.3696616
MAL-ED           BANGLADESH                     0                    NA                 0.0891841   -0.3366919   0.3793741
MAL-ED           INDIA                          0                    NA                 0.2022343   -0.1264557   0.4350154
NIH-Birth        BANGLADESH                     0                    NA                 0.3391518    0.0908377   0.5196453
NIH-Crypto       BANGLADESH                     0                    NA                 0.3239917    0.0690760   0.5091036
PROVIDE          BANGLADESH                     0                    NA                 0.3374938    0.0999036   0.5123695
ResPak           PAKISTAN                       0                    NA                 0.2407608   -0.1143617   0.4827136
SAS-CompFeed     INDIA                          0                    NA                 0.1855865    0.0659723   0.2898826
SAS-FoodSuppl    INDIA                          0                    NA                 0.1201865   -0.0935472   0.2921460
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1700533    0.0459930   0.2779806
ZVITAMBO         ZIMBABWE                       0                    NA                 0.2258731    0.1573249   0.2888453
