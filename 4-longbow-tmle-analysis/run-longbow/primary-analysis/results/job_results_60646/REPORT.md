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

**Intervention Variable:** ever_sstunted06

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

studyid          country                        ever_sstunted06    pers_wasted624   n_cell       n
---------------  -----------------------------  ----------------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                               0      260     370
CMC-V-BCS-2002   INDIA                          0                               1       16     370
CMC-V-BCS-2002   INDIA                          1                               0       82     370
CMC-V-BCS-2002   INDIA                          1                               1       12     370
CMIN             BANGLADESH                     0                               0      181     252
CMIN             BANGLADESH                     0                               1       12     252
CMIN             BANGLADESH                     1                               0       46     252
CMIN             BANGLADESH                     1                               1       13     252
COHORTS          GUATEMALA                      0                               0      843    1023
COHORTS          GUATEMALA                      0                               1       24    1023
COHORTS          GUATEMALA                      1                               0      139    1023
COHORTS          GUATEMALA                      1                               1       17    1023
COHORTS          INDIA                          0                               0     5774    6893
COHORTS          INDIA                          0                               1      648    6893
COHORTS          INDIA                          1                               0      348    6893
COHORTS          INDIA                          1                               1      123    6893
COHORTS          PHILIPPINES                    0                               0     2411    2809
COHORTS          PHILIPPINES                    0                               1      184    2809
COHORTS          PHILIPPINES                    1                               0      172    2809
COHORTS          PHILIPPINES                    1                               1       42    2809
CONTENT          PERU                           0                               0      207     215
CONTENT          PERU                           0                               1        0     215
CONTENT          PERU                           1                               0        8     215
CONTENT          PERU                           1                               1        0     215
EE               PAKISTAN                       0                               0      188     373
EE               PAKISTAN                       0                               1       24     373
EE               PAKISTAN                       1                               0      136     373
EE               PAKISTAN                       1                               1       25     373
GMS-Nepal        NEPAL                          0                               0      454     590
GMS-Nepal        NEPAL                          0                               1       88     590
GMS-Nepal        NEPAL                          1                               0       27     590
GMS-Nepal        NEPAL                          1                               1       21     590
Guatemala BSC    GUATEMALA                      0                               0      246     274
Guatemala BSC    GUATEMALA                      0                               1        2     274
Guatemala BSC    GUATEMALA                      1                               0       24     274
Guatemala BSC    GUATEMALA                      1                               1        2     274
IRC              INDIA                          0                               0      310     410
IRC              INDIA                          0                               1       38     410
IRC              INDIA                          1                               0       52     410
IRC              INDIA                          1                               1       10     410
JiVitA-3         BANGLADESH                     0                               0    12183   17265
JiVitA-3         BANGLADESH                     0                               1     2582   17265
JiVitA-3         BANGLADESH                     1                               0     1840   17265
JiVitA-3         BANGLADESH                     1                               1      660   17265
JiVitA-4         BANGLADESH                     0                               0     4209    5257
JiVitA-4         BANGLADESH                     0                               1      449    5257
JiVitA-4         BANGLADESH                     1                               0      484    5257
JiVitA-4         BANGLADESH                     1                               1      115    5257
Keneba           GAMBIA                         0                               0     1862    2299
Keneba           GAMBIA                         0                               1      164    2299
Keneba           GAMBIA                         1                               0      234    2299
Keneba           GAMBIA                         1                               1       39    2299
LCNI-5           MALAWI                         0                               0      720     797
LCNI-5           MALAWI                         0                               1       10     797
LCNI-5           MALAWI                         1                               0       64     797
LCNI-5           MALAWI                         1                               1        3     797
MAL-ED           BANGLADESH                     0                               0      207     240
MAL-ED           BANGLADESH                     0                               1       15     240
MAL-ED           BANGLADESH                     1                               0       16     240
MAL-ED           BANGLADESH                     1                               1        2     240
MAL-ED           BRAZIL                         0                               0      188     207
MAL-ED           BRAZIL                         0                               1        2     207
MAL-ED           BRAZIL                         1                               0       17     207
MAL-ED           BRAZIL                         1                               1        0     207
MAL-ED           INDIA                          0                               0      193     235
MAL-ED           INDIA                          0                               1       22     235
MAL-ED           INDIA                          1                               0       14     235
MAL-ED           INDIA                          1                               1        6     235
MAL-ED           NEPAL                          0                               0      224     235
MAL-ED           NEPAL                          0                               1        1     235
MAL-ED           NEPAL                          1                               0        9     235
MAL-ED           NEPAL                          1                               1        1     235
MAL-ED           PERU                           0                               0      234     270
MAL-ED           PERU                           0                               1        1     270
MAL-ED           PERU                           1                               0       33     270
MAL-ED           PERU                           1                               1        2     270
MAL-ED           SOUTH AFRICA                   0                               0      230     259
MAL-ED           SOUTH AFRICA                   0                               1        2     259
MAL-ED           SOUTH AFRICA                   1                               0       27     259
MAL-ED           SOUTH AFRICA                   1                               1        0     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      208     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       37     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        0     245
NIH-Birth        BANGLADESH                     0                               0      427     542
NIH-Birth        BANGLADESH                     0                               1       48     542
NIH-Birth        BANGLADESH                     1                               0       54     542
NIH-Birth        BANGLADESH                     1                               1       13     542
NIH-Crypto       BANGLADESH                     0                               0      641     730
NIH-Crypto       BANGLADESH                     0                               1       36     730
NIH-Crypto       BANGLADESH                     1                               0       45     730
NIH-Crypto       BANGLADESH                     1                               1        8     730
PROBIT           BELARUS                        0                               0    16294   16595
PROBIT           BELARUS                        0                               1       16   16595
PROBIT           BELARUS                        1                               0      283   16595
PROBIT           BELARUS                        1                               1        2   16595
PROVIDE          BANGLADESH                     0                               0      549     615
PROVIDE          BANGLADESH                     0                               1       37     615
PROVIDE          BANGLADESH                     1                               0       26     615
PROVIDE          BANGLADESH                     1                               1        3     615
ResPak           PAKISTAN                       0                               0      114     234
ResPak           PAKISTAN                       0                               1       32     234
ResPak           PAKISTAN                       1                               0       73     234
ResPak           PAKISTAN                       1                               1       15     234
SAS-CompFeed     INDIA                          0                               0     1018    1388
SAS-CompFeed     INDIA                          0                               1      163    1388
SAS-CompFeed     INDIA                          1                               0      140    1388
SAS-CompFeed     INDIA                          1                               1       67    1388
SAS-FoodSuppl    INDIA                          0                               0      283     402
SAS-FoodSuppl    INDIA                          0                               1       55     402
SAS-FoodSuppl    INDIA                          1                               0       43     402
SAS-FoodSuppl    INDIA                          1                               1       21     402
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               0     1828    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               1       90    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               0       88    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               1       12    2018
ZVITAMBO         ZIMBABWE                       0                               0     9267   10802
ZVITAMBO         ZIMBABWE                       0                               1      375   10802
ZVITAMBO         ZIMBABWE                       1                               0     1068   10802
ZVITAMBO         ZIMBABWE                       1                               1       92   10802


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
* studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/a417dabc-2d10-4e53-9653-510ba5111bf4/49cb0084-e632-4cd2-90c8-26404a04a705/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a417dabc-2d10-4e53-9653-510ba5111bf4/49cb0084-e632-4cd2-90c8-26404a04a705/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a417dabc-2d10-4e53-9653-510ba5111bf4/49cb0084-e632-4cd2-90c8-26404a04a705/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a417dabc-2d10-4e53-9653-510ba5111bf4/49cb0084-e632-4cd2-90c8-26404a04a705/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0576183   0.0301473   0.0850893
CMC-V-BCS-2002   INDIA                          1                    NA                0.1281316   0.0623697   0.1938935
CMIN             BANGLADESH                     0                    NA                0.0607084   0.0267760   0.0946408
CMIN             BANGLADESH                     1                    NA                0.2743843   0.1567742   0.3919945
COHORTS          GUATEMALA                      0                    NA                0.0279245   0.0169233   0.0389257
COHORTS          GUATEMALA                      1                    NA                0.1207047   0.0672183   0.1741912
COHORTS          INDIA                          0                    NA                0.1022601   0.0948244   0.1096958
COHORTS          INDIA                          1                    NA                0.2242447   0.1836824   0.2648070
COHORTS          PHILIPPINES                    0                    NA                0.0720534   0.0620375   0.0820693
COHORTS          PHILIPPINES                    1                    NA                0.2014466   0.1405628   0.2623304
EE               PAKISTAN                       0                    NA                0.1151963   0.0717996   0.1585931
EE               PAKISTAN                       1                    NA                0.1526521   0.0960876   0.2092165
GMS-Nepal        NEPAL                          0                    NA                0.1628921   0.1317711   0.1940131
GMS-Nepal        NEPAL                          1                    NA                0.4314739   0.2884954   0.5744524
IRC              INDIA                          0                    NA                0.1072036   0.0747764   0.1396308
IRC              INDIA                          1                    NA                0.1724170   0.0720803   0.2727537
JiVitA-3         BANGLADESH                     0                    NA                0.1765612   0.1695758   0.1835466
JiVitA-3         BANGLADESH                     1                    NA                0.2560813   0.2349690   0.2771936
JiVitA-4         BANGLADESH                     0                    NA                0.0971296   0.0860927   0.1081666
JiVitA-4         BANGLADESH                     1                    NA                0.1840728   0.1468966   0.2212491
Keneba           GAMBIA                         0                    NA                0.0815519   0.0696278   0.0934760
Keneba           GAMBIA                         1                    NA                0.1403187   0.0988051   0.1818323
MAL-ED           INDIA                          0                    NA                0.1023256   0.0617274   0.1429237
MAL-ED           INDIA                          1                    NA                0.3000000   0.0987348   0.5012652
NIH-Birth        BANGLADESH                     0                    NA                0.1017979   0.0746526   0.1289432
NIH-Birth        BANGLADESH                     1                    NA                0.2328172   0.1381105   0.3275239
NIH-Crypto       BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
NIH-Crypto       BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ResPak           PAKISTAN                       0                    NA                0.2201562   0.1512145   0.2890978
ResPak           PAKISTAN                       1                    NA                0.1649051   0.0871464   0.2426638
SAS-CompFeed     INDIA                          0                    NA                0.1421906   0.1189852   0.1653961
SAS-CompFeed     INDIA                          1                    NA                0.2949694   0.2121194   0.3778194
SAS-FoodSuppl    INDIA                          0                    NA                0.1619772   0.1226665   0.2012878
SAS-FoodSuppl    INDIA                          1                    NA                0.3305897   0.2122706   0.4489089
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469126   0.0374467   0.0563786
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1254902   0.0615844   0.1893960
ZVITAMBO         ZIMBABWE                       0                    NA                0.0394869   0.0355808   0.0433930
ZVITAMBO         ZIMBABWE                       1                    NA                0.0729660   0.0574105   0.0885215


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
JiVitA-4         BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252
Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 2.2237986   1.1017446   4.488590
CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
CMIN             BANGLADESH                     1                    0                 4.5197087   2.2402467   9.118535
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 4.3225387   2.3925171   7.809491
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.1928854   1.8048240   2.664385
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.7957960   2.0046970   3.899081
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.3251467   0.7806369   2.249463
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 2.6488327   1.8074496   3.881887
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 1.6083140   0.8346006   3.099296
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.4503828   1.3246728   1.588023
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 1.8951260   1.4996724   2.394858
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 1.7206067   1.2377052   2.391916
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 2.9318182   1.3447391   6.391989
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 2.2870534   1.4055090   3.721508
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 0.7490369   0.4250745   1.319901
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 2.0744642   1.3865985   3.103567
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 2.0409653   1.3250974   3.143572
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.6749767   1.5465623   4.626713
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 1.8478546   1.4611284   2.336938


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0180573   -0.0008005   0.0369152
CMIN             BANGLADESH                     0                    NA                 0.0384979    0.0114132   0.0655827
COHORTS          GUATEMALA                      0                    NA                 0.0121537    0.0043325   0.0199749
COHORTS          INDIA                          0                    NA                 0.0095925    0.0066891   0.0124959
COHORTS          PHILIPPINES                    0                    NA                 0.0084023    0.0040824   0.0127222
EE               PAKISTAN                       0                    NA                 0.0161709   -0.0148145   0.0471564
GMS-Nepal        NEPAL                          0                    NA                 0.0218537    0.0088226   0.0348847
IRC              INDIA                          0                    NA                 0.0098696   -0.0049217   0.0246609
JiVitA-3         BANGLADESH                     0                    NA                 0.0112176    0.0081838   0.0142514
JiVitA-4         BANGLADESH                     0                    NA                 0.0101559    0.0057319   0.0145799
Keneba           GAMBIA                         0                    NA                 0.0067474    0.0015663   0.0119285
MAL-ED           INDIA                          0                    NA                 0.0168234   -0.0020257   0.0356724
NIH-Birth        BANGLADESH                     0                    NA                 0.0107482   -0.0017524   0.0232489
NIH-Crypto       BANGLADESH                     0                    NA                 0.0070982   -0.0002455   0.0144419
ResPak           PAKISTAN                       0                    NA                -0.0193015   -0.0603713   0.0217684
SAS-CompFeed     INDIA                          0                    NA                 0.0235154    0.0052086   0.0418222
SAS-FoodSuppl    INDIA                          0                    NA                 0.0270776    0.0068840   0.0472711
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036325    0.0003638   0.0069012
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0037458    0.0019961   0.0054956


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.2386148   -0.0378377   0.4414277
CMIN             BANGLADESH                     0                    NA                 0.3880593    0.0929223   0.5871671
COHORTS          GUATEMALA                      0                    NA                 0.3032497    0.1052798   0.4574159
COHORTS          INDIA                          0                    NA                 0.0857602    0.0599469   0.1108646
COHORTS          PHILIPPINES                    0                    NA                 0.1044336    0.0505493   0.1552598
EE               PAKISTAN                       0                    NA                 0.1230972   -0.1453553   0.3286289
GMS-Nepal        NEPAL                          0                    NA                 0.1182905    0.0466710   0.1845296
IRC              INDIA                          0                    NA                 0.0843028   -0.0495906   0.2011159
JiVitA-3         BANGLADESH                     0                    NA                 0.0597382    0.0434723   0.0757276
JiVitA-4         BANGLADESH                     0                    NA                 0.0946625    0.0522987   0.1351325
Keneba           GAMBIA                         0                    NA                 0.0764151    0.0166354   0.1325608
MAL-ED           INDIA                          0                    NA                 0.1411960   -0.0253403   0.2806834
NIH-Birth        BANGLADESH                     0                    NA                 0.0955007   -0.0203227   0.1981762
NIH-Crypto       BANGLADESH                     0                    NA                 0.1177655   -0.0080550   0.2278818
ResPak           PAKISTAN                       0                    NA                -0.0960967   -0.3197235   0.0896367
SAS-CompFeed     INDIA                          0                    NA                 0.1419104    0.0264554   0.2436733
SAS-FoodSuppl    INDIA                          0                    NA                 0.1432261    0.0320602   0.2416249
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0718657    0.0062821   0.1331210
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0866438    0.0460096   0.1255472
