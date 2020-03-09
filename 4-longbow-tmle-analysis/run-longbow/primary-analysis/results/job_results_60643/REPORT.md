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

**Intervention Variable:** ever_swasted06

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

studyid          country                        ever_swasted06    pers_wasted624   n_cell       n
---------------  -----------------------------  ---------------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                              0      287     370
CMC-V-BCS-2002   INDIA                          0                              1       14     370
CMC-V-BCS-2002   INDIA                          1                              0       55     370
CMC-V-BCS-2002   INDIA                          1                              1       14     370
CMIN             BANGLADESH                     0                              0      221     252
CMIN             BANGLADESH                     0                              1       20     252
CMIN             BANGLADESH                     1                              0        6     252
CMIN             BANGLADESH                     1                              1        5     252
COHORTS          GUATEMALA                      0                              0      914    1017
COHORTS          GUATEMALA                      0                              1       37    1017
COHORTS          GUATEMALA                      1                              0       62    1017
COHORTS          GUATEMALA                      1                              1        4    1017
COHORTS          INDIA                          0                              0     5796    6892
COHORTS          INDIA                          0                              1      488    6892
COHORTS          INDIA                          1                              0      326    6892
COHORTS          INDIA                          1                              1      282    6892
COHORTS          PHILIPPINES                    0                              0     2431    2808
COHORTS          PHILIPPINES                    0                              1      175    2808
COHORTS          PHILIPPINES                    1                              0      151    2808
COHORTS          PHILIPPINES                    1                              1       51    2808
CONTENT          PERU                           0                              0      214     215
CONTENT          PERU                           0                              1        0     215
CONTENT          PERU                           1                              0        1     215
CONTENT          PERU                           1                              1        0     215
EE               PAKISTAN                       0                              0      298     374
EE               PAKISTAN                       0                              1       37     374
EE               PAKISTAN                       1                              0       27     374
EE               PAKISTAN                       1                              1       12     374
GMS-Nepal        NEPAL                          0                              0      433     590
GMS-Nepal        NEPAL                          0                              1       83     590
GMS-Nepal        NEPAL                          1                              0       48     590
GMS-Nepal        NEPAL                          1                              1       26     590
Guatemala BSC    GUATEMALA                      0                              0      270     274
Guatemala BSC    GUATEMALA                      0                              1        3     274
Guatemala BSC    GUATEMALA                      1                              0        0     274
Guatemala BSC    GUATEMALA                      1                              1        1     274
IRC              INDIA                          0                              0      265     410
IRC              INDIA                          0                              1       19     410
IRC              INDIA                          1                              0       97     410
IRC              INDIA                          1                              1       29     410
JiVitA-3         BANGLADESH                     0                              0    13643   17260
JiVitA-3         BANGLADESH                     0                              1     2864   17260
JiVitA-3         BANGLADESH                     1                              0      372   17260
JiVitA-3         BANGLADESH                     1                              1      381   17260
JiVitA-4         BANGLADESH                     0                              0     4586    5239
JiVitA-4         BANGLADESH                     0                              1      519    5239
JiVitA-4         BANGLADESH                     1                              0       91    5239
JiVitA-4         BANGLADESH                     1                              1       43    5239
Keneba           GAMBIA                         0                              0     1935    2298
Keneba           GAMBIA                         0                              1      144    2298
Keneba           GAMBIA                         1                              0      160    2298
Keneba           GAMBIA                         1                              1       59    2298
LCNI-5           MALAWI                         0                              0      784     797
LCNI-5           MALAWI                         0                              1       13     797
LCNI-5           MALAWI                         1                              0        0     797
LCNI-5           MALAWI                         1                              1        0     797
MAL-ED           BANGLADESH                     0                              0      211     240
MAL-ED           BANGLADESH                     0                              1       13     240
MAL-ED           BANGLADESH                     1                              0       12     240
MAL-ED           BANGLADESH                     1                              1        4     240
MAL-ED           BRAZIL                         0                              0      203     207
MAL-ED           BRAZIL                         0                              1        1     207
MAL-ED           BRAZIL                         1                              0        2     207
MAL-ED           BRAZIL                         1                              1        1     207
MAL-ED           INDIA                          0                              0      198     235
MAL-ED           INDIA                          0                              1       16     235
MAL-ED           INDIA                          1                              0        9     235
MAL-ED           INDIA                          1                              1       12     235
MAL-ED           NEPAL                          0                              0      227     235
MAL-ED           NEPAL                          0                              1        1     235
MAL-ED           NEPAL                          1                              0        6     235
MAL-ED           NEPAL                          1                              1        1     235
MAL-ED           PERU                           0                              0      266     270
MAL-ED           PERU                           0                              1        3     270
MAL-ED           PERU                           1                              0        1     270
MAL-ED           PERU                           1                              1        0     270
MAL-ED           SOUTH AFRICA                   0                              0      251     259
MAL-ED           SOUTH AFRICA                   0                              1        1     259
MAL-ED           SOUTH AFRICA                   1                              0        6     259
MAL-ED           SOUTH AFRICA                   1                              1        1     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      240     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        5     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
NIH-Birth        BANGLADESH                     0                              0      445     542
NIH-Birth        BANGLADESH                     0                              1       45     542
NIH-Birth        BANGLADESH                     1                              0       36     542
NIH-Birth        BANGLADESH                     1                              1       16     542
NIH-Crypto       BANGLADESH                     0                              0      645     730
NIH-Crypto       BANGLADESH                     0                              1       37     730
NIH-Crypto       BANGLADESH                     1                              0       41     730
NIH-Crypto       BANGLADESH                     1                              1        7     730
PROBIT           BELARUS                        0                              0    15281   16596
PROBIT           BELARUS                        0                              1       13   16596
PROBIT           BELARUS                        1                              0     1297   16596
PROBIT           BELARUS                        1                              1        5   16596
PROVIDE          BANGLADESH                     0                              0      557     615
PROVIDE          BANGLADESH                     0                              1       33     615
PROVIDE          BANGLADESH                     1                              0       18     615
PROVIDE          BANGLADESH                     1                              1        7     615
ResPak           PAKISTAN                       0                              0      168     234
ResPak           PAKISTAN                       0                              1       28     234
ResPak           PAKISTAN                       1                              0       19     234
ResPak           PAKISTAN                       1                              1       19     234
SAS-CompFeed     INDIA                          0                              0     1109    1384
SAS-CompFeed     INDIA                          0                              1      182    1384
SAS-CompFeed     INDIA                          1                              0       47    1384
SAS-CompFeed     INDIA                          1                              1       46    1384
SAS-FoodSuppl    INDIA                          0                              0      315     402
SAS-FoodSuppl    INDIA                          0                              1       59     402
SAS-FoodSuppl    INDIA                          1                              0       11     402
SAS-FoodSuppl    INDIA                          1                              1       17     402
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1871    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       72    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0       45    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       30    2018
ZVITAMBO         ZIMBABWE                       0                              0     9623   10731
ZVITAMBO         ZIMBABWE                       0                              1      359   10731
ZVITAMBO         ZIMBABWE                       1                              0      651   10731
ZVITAMBO         ZIMBABWE                       1                              1       98   10731


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

* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
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
![](/tmp/3f737e9e-21f5-414c-82bc-dd89eb9f1073/d542505d-25d6-46b9-bd73-ccc00140eb65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f737e9e-21f5-414c-82bc-dd89eb9f1073/d542505d-25d6-46b9-bd73-ccc00140eb65/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f737e9e-21f5-414c-82bc-dd89eb9f1073/d542505d-25d6-46b9-bd73-ccc00140eb65/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f737e9e-21f5-414c-82bc-dd89eb9f1073/d542505d-25d6-46b9-bd73-ccc00140eb65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0468586   0.0228155   0.0709017
CMC-V-BCS-2002   INDIA                          1                    NA                0.2002716   0.1008731   0.2996701
CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
COHORTS          INDIA                          0                    NA                0.0780561   0.0714306   0.0846815
COHORTS          INDIA                          1                    NA                0.4517149   0.4122729   0.4911568
COHORTS          PHILIPPINES                    0                    NA                0.0669153   0.0573099   0.0765206
COHORTS          PHILIPPINES                    1                    NA                0.2600629   0.2010714   0.3190544
EE               PAKISTAN                       0                    NA                0.1118463   0.0778754   0.1458173
EE               PAKISTAN                       1                    NA                0.2832050   0.1341403   0.4322698
GMS-Nepal        NEPAL                          0                    NA                0.1611513   0.1293947   0.1929080
GMS-Nepal        NEPAL                          1                    NA                0.3370241   0.2242387   0.4498095
IRC              INDIA                          0                    NA                0.0677121   0.0385477   0.0968765
IRC              INDIA                          1                    NA                0.2290438   0.1556023   0.3024854
JiVitA-3         BANGLADESH                     0                    NA                0.1736143   0.1673322   0.1798964
JiVitA-3         BANGLADESH                     1                    NA                0.5047174   0.4644186   0.5450163
JiVitA-4         BANGLADESH                     0                    NA                0.1017007   0.0913340   0.1120674
JiVitA-4         BANGLADESH                     1                    NA                0.3145938   0.2169864   0.4122011
Keneba           GAMBIA                         0                    NA                0.0698035   0.0588619   0.0807451
Keneba           GAMBIA                         1                    NA                0.2506788   0.1930961   0.3082614
MAL-ED           INDIA                          0                    NA                0.0747664   0.0394524   0.1100803
MAL-ED           INDIA                          1                    NA                0.5714286   0.3593206   0.7835366
NIH-Birth        BANGLADESH                     0                    NA                0.0918875   0.0662946   0.1174804
NIH-Birth        BANGLADESH                     1                    NA                0.3464511   0.2180709   0.4748313
NIH-Crypto       BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
NIH-Crypto       BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
PROBIT           BELARUS                        0                    NA                0.0008500   0.0002192   0.0014809
PROBIT           BELARUS                        1                    NA                0.0038402   0.0006414   0.0070391
PROVIDE          BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
PROVIDE          BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ResPak           PAKISTAN                       0                    NA                0.1427217   0.0933095   0.1921339
ResPak           PAKISTAN                       1                    NA                0.5074194   0.3343592   0.6804795
SAS-CompFeed     INDIA                          0                    NA                0.1420298   0.1233682   0.1606914
SAS-CompFeed     INDIA                          1                    NA                0.4663436   0.4117601   0.5209271
SAS-FoodSuppl    INDIA                          0                    NA                0.1586185   0.1215020   0.1957350
SAS-FoodSuppl    INDIA                          1                    NA                0.5867458   0.3789019   0.7945897
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0371087   0.0287020   0.0455154
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3936359   0.2817342   0.5055377
ZVITAMBO         ZIMBABWE                       0                    NA                0.0360370   0.0323842   0.0396897
ZVITAMBO         ZIMBABWE                       1                    NA                0.1276816   0.1039014   0.1514617


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  4.273955   2.086700    8.753865
CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
COHORTS          INDIA                          1                    0                  5.787057   5.125712    6.533733
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  3.886451   2.974436    5.078105
EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN                       1                    0                  2.532090   1.379283    4.648416
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  2.091352   1.418376    3.083633
IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
IRC              INDIA                          1                    0                  3.382612   1.976053    5.790362
JiVitA-3         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.907119   2.667338    3.168454
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.093330   2.234914    4.281457
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  3.591208   2.721010    4.739702
MAL-ED           INDIA                          0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.642857   4.191447   13.936300
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  3.770384   2.370020    5.998176
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
PROBIT           BELARUS                        1                    0                  4.517901   1.371594   14.881545
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.555306   2.185133    5.784636
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.283421   2.819055    3.824279
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.699101   2.417265    5.660675
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.607655   7.375192   15.256872
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  3.543074   2.867043    4.378507


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0288171    0.0093480   0.0482861
CMIN             BANGLADESH                     0                    NA                0.0162188    0.0002139   0.0322237
COHORTS          INDIA                          0                    NA                0.0336677    0.0293168   0.0380186
COHORTS          PHILIPPINES                    0                    NA                0.0135691    0.0089149   0.0182232
EE               PAKISTAN                       0                    NA                0.0191697    0.0023637   0.0359758
GMS-Nepal        NEPAL                          0                    NA                0.0235944    0.0084933   0.0386955
IRC              INDIA                          0                    NA                0.0493610    0.0239486   0.0747735
JiVitA-3         BANGLADESH                     0                    NA                0.0143926    0.0122046   0.0165807
JiVitA-4         BANGLADESH                     0                    NA                0.0055717    0.0027323   0.0084111
Keneba           GAMBIA                         0                    NA                0.0185342    0.0124275   0.0246409
MAL-ED           INDIA                          0                    NA                0.0443826    0.0179485   0.0708166
NIH-Birth        BANGLADESH                     0                    NA                0.0206586    0.0072368   0.0340805
NIH-Crypto       BANGLADESH                     0                    NA                0.0060218   -0.0008431   0.0128867
PROBIT           BELARUS                        0                    NA                0.0002346    0.0000115   0.0004577
PROVIDE          BANGLADESH                     0                    NA                0.0091084    0.0011028   0.0171141
ResPak           PAKISTAN                       0                    NA                0.0581330    0.0258961   0.0903698
SAS-CompFeed     INDIA                          0                    NA                0.0227101    0.0157049   0.0297153
SAS-FoodSuppl    INDIA                          0                    NA                0.0304363    0.0134157   0.0474568
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134364    0.0083509   0.0185220
ZVITAMBO         ZIMBABWE                       0                    NA                0.0065499    0.0047979   0.0083020


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3807968    0.1132852   0.5676032
CMIN             BANGLADESH                     0                    NA                0.1634855   -0.0027793   0.3021829
COHORTS          INDIA                          0                    NA                0.3013476    0.2660434   0.3349537
COHORTS          PHILIPPINES                    0                    NA                0.1685926    0.1120747   0.2215131
EE               PAKISTAN                       0                    NA                0.1463157    0.0129719   0.2616453
GMS-Nepal        NEPAL                          0                    NA                0.1277129    0.0439605   0.2041283
IRC              INDIA                          0                    NA                0.4216256    0.1965432   0.5836528
JiVitA-3         BANGLADESH                     0                    NA                0.0765537    0.0653101   0.0876621
JiVitA-4         BANGLADESH                     0                    NA                0.0519397    0.0256091   0.0775588
Keneba           GAMBIA                         0                    NA                0.2098110    0.1428298   0.2715582
MAL-ED           INDIA                          0                    NA                0.3724967    0.1536730   0.5347420
NIH-Birth        BANGLADESH                     0                    NA                0.1835570    0.0626513   0.2888674
NIH-Crypto       BANGLADESH                     0                    NA                0.0999067   -0.0178485   0.2040388
PROBIT           BELARUS                        0                    NA                0.2162940   -0.0619533   0.4216364
PROVIDE          BANGLADESH                     0                    NA                0.1400424    0.0151570   0.2490913
ResPak           PAKISTAN                       0                    NA                0.2894280    0.1231216   0.4241932
SAS-CompFeed     INDIA                          0                    NA                0.1378542    0.0963970   0.1774094
SAS-FoodSuppl    INDIA                          0                    NA                0.1609918    0.0700484   0.2430415
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2658305    0.1719586   0.3490605
ZVITAMBO         ZIMBABWE                       0                    NA                0.1538019    0.1139531   0.1918586
