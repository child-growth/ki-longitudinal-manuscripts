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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_swasted06    co_occurence   n_cell      n
---------------  -----------------------------  ---------------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                            0      287    366
CMC-V-BCS-2002   INDIA                          0                            1       11    366
CMC-V-BCS-2002   INDIA                          1                            0       57    366
CMC-V-BCS-2002   INDIA                          1                            1       11    366
CMIN             BANGLADESH                     0                            0      203    237
CMIN             BANGLADESH                     0                            1       24    237
CMIN             BANGLADESH                     1                            0        8    237
CMIN             BANGLADESH                     1                            1        2    237
COHORTS          GUATEMALA                      0                            0      691    774
COHORTS          GUATEMALA                      0                            1       35    774
COHORTS          GUATEMALA                      1                            0       45    774
COHORTS          GUATEMALA                      1                            1        3    774
COHORTS          PHILIPPINES                    0                            0     2163   2487
COHORTS          PHILIPPINES                    0                            1      163   2487
COHORTS          PHILIPPINES                    1                            0      137   2487
COHORTS          PHILIPPINES                    1                            1       24   2487
CONTENT          PERU                           0                            0      199    200
CONTENT          PERU                           0                            1        0    200
CONTENT          PERU                           1                            0        1    200
CONTENT          PERU                           1                            1        0    200
EE               PAKISTAN                       0                            0      246    346
EE               PAKISTAN                       0                            1       64    346
EE               PAKISTAN                       1                            0       26    346
EE               PAKISTAN                       1                            1       10    346
GMS-Nepal        NEPAL                          0                            0      429    550
GMS-Nepal        NEPAL                          0                            1       50    550
GMS-Nepal        NEPAL                          1                            0       61    550
GMS-Nepal        NEPAL                          1                            1       10    550
IRC              INDIA                          0                            0      268    405
IRC              INDIA                          0                            1       15    405
IRC              INDIA                          1                            0      112    405
IRC              INDIA                          1                            1       10    405
JiVitA-4         BANGLADESH                     0                            0     4011   4527
JiVitA-4         BANGLADESH                     0                            1      406   4527
JiVitA-4         BANGLADESH                     1                            0       83   4527
JiVitA-4         BANGLADESH                     1                            1       27   4527
Keneba           GAMBIA                         0                            0     1535   1775
Keneba           GAMBIA                         0                            1       73   1775
Keneba           GAMBIA                         1                            0      140   1775
Keneba           GAMBIA                         1                            1       27   1775
LCNI-5           MALAWI                         0                            0      675    693
LCNI-5           MALAWI                         0                            1       18    693
LCNI-5           MALAWI                         1                            0        0    693
LCNI-5           MALAWI                         1                            1        0    693
MAL-ED           BANGLADESH                     0                            0      194    221
MAL-ED           BANGLADESH                     0                            1       12    221
MAL-ED           BANGLADESH                     1                            0       13    221
MAL-ED           BANGLADESH                     1                            1        2    221
MAL-ED           BRAZIL                         0                            0      177    180
MAL-ED           BRAZIL                         0                            1        1    180
MAL-ED           BRAZIL                         1                            0        2    180
MAL-ED           BRAZIL                         1                            1        0    180
MAL-ED           INDIA                          0                            0      195    228
MAL-ED           INDIA                          0                            1       12    228
MAL-ED           INDIA                          1                            0       16    228
MAL-ED           INDIA                          1                            1        5    228
MAL-ED           NEPAL                          0                            0      218    229
MAL-ED           NEPAL                          0                            1        4    229
MAL-ED           NEPAL                          1                            0        7    229
MAL-ED           NEPAL                          1                            1        0    229
MAL-ED           PERU                           0                            0      215    222
MAL-ED           PERU                           0                            1        6    222
MAL-ED           PERU                           1                            0        1    222
MAL-ED           PERU                           1                            1        0    222
MAL-ED           SOUTH AFRICA                   0                            0      231    241
MAL-ED           SOUTH AFRICA                   0                            1        3    241
MAL-ED           SOUTH AFRICA                   1                            0        6    241
MAL-ED           SOUTH AFRICA                   1                            1        1    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      220    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        1    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0        4    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0    225
NIH-Birth        BANGLADESH                     0                            0      375    462
NIH-Birth        BANGLADESH                     0                            1       39    462
NIH-Birth        BANGLADESH                     1                            0       36    462
NIH-Birth        BANGLADESH                     1                            1       12    462
NIH-Crypto       BANGLADESH                     0                            0      560    634
NIH-Crypto       BANGLADESH                     0                            1       26    634
NIH-Crypto       BANGLADESH                     1                            0       45    634
NIH-Crypto       BANGLADESH                     1                            1        3    634
PROBIT           BELARUS                        0                            0     2011   2146
PROBIT           BELARUS                        0                            1        1   2146
PROBIT           BELARUS                        1                            0      134   2146
PROBIT           BELARUS                        1                            1        0   2146
PROVIDE          BANGLADESH                     0                            0      504    563
PROVIDE          BANGLADESH                     0                            1       35    563
PROVIDE          BANGLADESH                     1                            0       22    563
PROVIDE          BANGLADESH                     1                            1        2    563
ResPak           PAKISTAN                       0                            0        6      9
ResPak           PAKISTAN                       0                            1        0      9
ResPak           PAKISTAN                       1                            0        2      9
ResPak           PAKISTAN                       1                            1        1      9
SAS-CompFeed     INDIA                          0                            0     1064   1256
SAS-CompFeed     INDIA                          0                            1      107   1256
SAS-CompFeed     INDIA                          1                            0       64   1256
SAS-CompFeed     INDIA                          1                            1       21   1256
SAS-FoodSuppl    INDIA                          0                            0      250    323
SAS-FoodSuppl    INDIA                          0                            1       51    323
SAS-FoodSuppl    INDIA                          1                            0       13    323
SAS-FoodSuppl    INDIA                          1                            1        9    323
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      932    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1       20    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0       27    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1        1    980
ZVITAMBO         ZIMBABWE                       0                            0     1489   1680
ZVITAMBO         ZIMBABWE                       0                            1       78   1680
ZVITAMBO         ZIMBABWE                       1                            0      103   1680
ZVITAMBO         ZIMBABWE                       1                            1       10   1680


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
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
* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/193a0f94-e0f6-46a8-99a9-fe7bc76b7da8/c15c9ec6-7c8e-406e-81b4-e69053f3d9a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/193a0f94-e0f6-46a8-99a9-fe7bc76b7da8/c15c9ec6-7c8e-406e-81b4-e69053f3d9a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/193a0f94-e0f6-46a8-99a9-fe7bc76b7da8/c15c9ec6-7c8e-406e-81b4-e69053f3d9a6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/193a0f94-e0f6-46a8-99a9-fe7bc76b7da8/c15c9ec6-7c8e-406e-81b4-e69053f3d9a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0368392   0.0152773   0.0584011
CMC-V-BCS-2002   INDIA         1                    NA                0.1543543   0.0640706   0.2446379
COHORTS          PHILIPPINES   0                    NA                0.0696419   0.0592741   0.0800097
COHORTS          PHILIPPINES   1                    NA                0.1607750   0.1054317   0.2161182
EE               PAKISTAN      0                    NA                0.2089962   0.1634878   0.2545046
EE               PAKISTAN      1                    NA                0.2553469   0.1019455   0.4087483
GMS-Nepal        NEPAL         0                    NA                0.1043453   0.0769019   0.1317887
GMS-Nepal        NEPAL         1                    NA                0.1300740   0.0554537   0.2046943
IRC              INDIA         0                    NA                0.0543283   0.0282210   0.0804357
IRC              INDIA         1                    NA                0.0952177   0.0463196   0.1441159
JiVitA-4         BANGLADESH    0                    NA                0.0920423   0.0826409   0.1014436
JiVitA-4         BANGLADESH    1                    NA                0.2221342   0.0856624   0.3586060
Keneba           GAMBIA        0                    NA                0.0457287   0.0355501   0.0559073
Keneba           GAMBIA        1                    NA                0.1564039   0.1013802   0.2114277
MAL-ED           INDIA         0                    NA                0.0579710   0.0260663   0.0898757
MAL-ED           INDIA         1                    NA                0.2380952   0.0555298   0.4206607
NIH-Birth        BANGLADESH    0                    NA                0.0940045   0.0658305   0.1221785
NIH-Birth        BANGLADESH    1                    NA                0.2522613   0.1241153   0.3804073
SAS-CompFeed     INDIA         0                    NA                0.0914625   0.0800777   0.1028473
SAS-CompFeed     INDIA         1                    NA                0.2565795   0.1460560   0.3671030
SAS-FoodSuppl    INDIA         0                    NA                0.1694352   0.1269902   0.2118802
SAS-FoodSuppl    INDIA         1                    NA                0.4090909   0.2033217   0.6148601
ZVITAMBO         ZIMBABWE      0                    NA                0.0497398   0.0389707   0.0605089
ZVITAMBO         ZIMBABWE      1                    NA                0.0886642   0.0340012   0.1433273


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
SAS-CompFeed     INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ---------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 4.189946   1.8262088    9.613164
COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES   1                    0                 2.308596   1.5878763    3.356442
EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN      1                    0                 1.221778   0.6427662    2.322370
GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL         1                    0                 1.246573   0.6632402    2.342958
IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
IRC              INDIA         1                    0                 1.752635   0.8660263    3.546925
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 2.413394   1.3012230    4.476151
Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA        1                    0                 3.420257   2.2589482    5.178587
MAL-ED           INDIA         0                    0                 1.000000   1.0000000    1.000000
MAL-ED           INDIA         1                    0                 4.107143   1.5982135   10.554674
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 2.683502   1.4871409    4.842302
SAS-CompFeed     INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA         1                    0                 2.805296   1.7174861    4.582097
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 2.414439   1.3765027    4.235018
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 1.782562   0.9272909    3.426679


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0232701    0.0056946   0.0408456
COHORTS          PHILIPPINES   0                    NA                0.0055491    0.0018794   0.0092188
EE               PAKISTAN      0                    NA                0.0048766   -0.0118502   0.0216035
GMS-Nepal        NEPAL         0                    NA                0.0047456   -0.0064133   0.0159046
IRC              INDIA         0                    NA                0.0074001   -0.0093533   0.0241535
JiVitA-4         BANGLADESH    0                    NA                0.0036061   -0.0001756   0.0073877
Keneba           GAMBIA        0                    NA                0.0106093    0.0051259   0.0160928
MAL-ED           INDIA         0                    NA                0.0165904   -0.0017754   0.0349561
NIH-Birth        BANGLADESH    0                    NA                0.0163851    0.0025658   0.0302044
SAS-CompFeed     INDIA         0                    NA                0.0104483    0.0029538   0.0179428
SAS-FoodSuppl    INDIA         0                    NA                0.0163233    0.0005665   0.0320801
ZVITAMBO         ZIMBABWE      0                    NA                0.0026412   -0.0009909   0.0062732


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.3871295    0.0764411   0.5933013
COHORTS          PHILIPPINES   0                    NA                0.0738002    0.0244667   0.1206389
EE               PAKISTAN      0                    NA                0.0228016   -0.0584909   0.0978507
GMS-Nepal        NEPAL         0                    NA                0.0435016   -0.0640233   0.1401606
IRC              INDIA         0                    NA                0.1198814   -0.1913740   0.3498190
JiVitA-4         BANGLADESH    0                    NA                0.0377014   -0.0013766   0.0752543
Keneba           GAMBIA        0                    NA                0.1883154    0.0919496   0.2744546
MAL-ED           INDIA         0                    NA                0.2225064   -0.0412448   0.4194484
NIH-Birth        BANGLADESH    0                    NA                0.1484299    0.0189598   0.2608136
SAS-CompFeed     INDIA         0                    NA                0.1025241    0.0295775   0.1699872
SAS-FoodSuppl    INDIA         0                    NA                0.0878738    0.0005171   0.1675953
ZVITAMBO         ZIMBABWE      0                    NA                0.0504225   -0.0207863   0.1166639
