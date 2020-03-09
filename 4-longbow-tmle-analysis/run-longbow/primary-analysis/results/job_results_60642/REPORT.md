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

**Intervention Variable:** ever_wasted06

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

studyid          country                        ever_wasted06    pers_wasted624   n_cell       n
---------------  -----------------------------  --------------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                             0      175     370
CMC-V-BCS-2002   INDIA                          0                             1        3     370
CMC-V-BCS-2002   INDIA                          1                             0      167     370
CMC-V-BCS-2002   INDIA                          1                             1       25     370
CMIN             BANGLADESH                     0                             0      196     252
CMIN             BANGLADESH                     0                             1       11     252
CMIN             BANGLADESH                     1                             0       31     252
CMIN             BANGLADESH                     1                             1       14     252
COHORTS          GUATEMALA                      0                             0      786    1017
COHORTS          GUATEMALA                      0                             1       25    1017
COHORTS          GUATEMALA                      1                             0      190    1017
COHORTS          GUATEMALA                      1                             1       16    1017
COHORTS          INDIA                          0                             0     4756    6892
COHORTS          INDIA                          0                             1      113    6892
COHORTS          INDIA                          1                             0     1366    6892
COHORTS          INDIA                          1                             1      657    6892
COHORTS          PHILIPPINES                    0                             0     2013    2808
COHORTS          PHILIPPINES                    0                             1       98    2808
COHORTS          PHILIPPINES                    1                             0      569    2808
COHORTS          PHILIPPINES                    1                             1      128    2808
CONTENT          PERU                           0                             0      211     215
CONTENT          PERU                           0                             1        0     215
CONTENT          PERU                           1                             0        4     215
CONTENT          PERU                           1                             1        0     215
EE               PAKISTAN                       0                             0      234     374
EE               PAKISTAN                       0                             1       12     374
EE               PAKISTAN                       1                             0       91     374
EE               PAKISTAN                       1                             1       37     374
GMS-Nepal        NEPAL                          0                             0      319     590
GMS-Nepal        NEPAL                          0                             1       34     590
GMS-Nepal        NEPAL                          1                             0      162     590
GMS-Nepal        NEPAL                          1                             1       75     590
Guatemala BSC    GUATEMALA                      0                             0      263     274
Guatemala BSC    GUATEMALA                      0                             1        3     274
Guatemala BSC    GUATEMALA                      1                             0        7     274
Guatemala BSC    GUATEMALA                      1                             1        1     274
IRC              INDIA                          0                             0      179     410
IRC              INDIA                          0                             1        6     410
IRC              INDIA                          1                             0      183     410
IRC              INDIA                          1                             1       42     410
JiVitA-3         BANGLADESH                     0                             0    12238   17260
JiVitA-3         BANGLADESH                     0                             1     1503   17260
JiVitA-3         BANGLADESH                     1                             0     1777   17260
JiVitA-3         BANGLADESH                     1                             1     1742   17260
JiVitA-4         BANGLADESH                     0                             0     4245    5239
JiVitA-4         BANGLADESH                     0                             1      304    5239
JiVitA-4         BANGLADESH                     1                             0      432    5239
JiVitA-4         BANGLADESH                     1                             1      258    5239
Keneba           GAMBIA                         0                             0     1576    2298
Keneba           GAMBIA                         0                             1       76    2298
Keneba           GAMBIA                         1                             0      519    2298
Keneba           GAMBIA                         1                             1      127    2298
LCNI-5           MALAWI                         0                             0      776     797
LCNI-5           MALAWI                         0                             1        8     797
LCNI-5           MALAWI                         1                             0        8     797
LCNI-5           MALAWI                         1                             1        5     797
MAL-ED           BANGLADESH                     0                             0      180     240
MAL-ED           BANGLADESH                     0                             1        4     240
MAL-ED           BANGLADESH                     1                             0       43     240
MAL-ED           BANGLADESH                     1                             1       13     240
MAL-ED           BRAZIL                         0                             0      191     207
MAL-ED           BRAZIL                         0                             1        1     207
MAL-ED           BRAZIL                         1                             0       14     207
MAL-ED           BRAZIL                         1                             1        1     207
MAL-ED           INDIA                          0                             0      151     235
MAL-ED           INDIA                          0                             1        6     235
MAL-ED           INDIA                          1                             0       56     235
MAL-ED           INDIA                          1                             1       22     235
MAL-ED           NEPAL                          0                             0      188     235
MAL-ED           NEPAL                          0                             1        0     235
MAL-ED           NEPAL                          1                             0       45     235
MAL-ED           NEPAL                          1                             1        2     235
MAL-ED           PERU                           0                             0      258     270
MAL-ED           PERU                           0                             1        2     270
MAL-ED           PERU                           1                             0        9     270
MAL-ED           PERU                           1                             1        1     270
MAL-ED           SOUTH AFRICA                   0                             0      230     259
MAL-ED           SOUTH AFRICA                   0                             1        0     259
MAL-ED           SOUTH AFRICA                   1                             0       27     259
MAL-ED           SOUTH AFRICA                   1                             1        2     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      231     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       14     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
NIH-Birth        BANGLADESH                     0                             0      329     542
NIH-Birth        BANGLADESH                     0                             1       14     542
NIH-Birth        BANGLADESH                     1                             0      152     542
NIH-Birth        BANGLADESH                     1                             1       47     542
NIH-Crypto       BANGLADESH                     0                             0      517     730
NIH-Crypto       BANGLADESH                     0                             1       17     730
NIH-Crypto       BANGLADESH                     1                             0      169     730
NIH-Crypto       BANGLADESH                     1                             1       27     730
PROBIT           BELARUS                        0                             0    12381   16596
PROBIT           BELARUS                        0                             1        3   16596
PROBIT           BELARUS                        1                             0     4197   16596
PROBIT           BELARUS                        1                             1       15   16596
PROVIDE          BANGLADESH                     0                             0      438     615
PROVIDE          BANGLADESH                     0                             1       19     615
PROVIDE          BANGLADESH                     1                             0      137     615
PROVIDE          BANGLADESH                     1                             1       21     615
ResPak           PAKISTAN                       0                             0      126     234
ResPak           PAKISTAN                       0                             1       15     234
ResPak           PAKISTAN                       1                             0       61     234
ResPak           PAKISTAN                       1                             1       32     234
SAS-CompFeed     INDIA                          0                             0      957    1384
SAS-CompFeed     INDIA                          0                             1      107    1384
SAS-CompFeed     INDIA                          1                             0      199    1384
SAS-CompFeed     INDIA                          1                             1      121    1384
SAS-FoodSuppl    INDIA                          0                             0      281     402
SAS-FoodSuppl    INDIA                          0                             1       25     402
SAS-FoodSuppl    INDIA                          1                             0       45     402
SAS-FoodSuppl    INDIA                          1                             1       51     402
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1669    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       30    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0      247    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       72    2018
ZVITAMBO         ZIMBABWE                       0                             0     8482   10731
ZVITAMBO         ZIMBABWE                       0                             1      217   10731
ZVITAMBO         ZIMBABWE                       1                             0     1792   10731
ZVITAMBO         ZIMBABWE                       1                             1      240   10731


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
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4a4d6cbb-0e0b-43aa-acf6-ee74a2b25d50/be0288dd-3f18-4704-b8b8-1168f4be0b55/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a4d6cbb-0e0b-43aa-acf6-ee74a2b25d50/be0288dd-3f18-4704-b8b8-1168f4be0b55/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a4d6cbb-0e0b-43aa-acf6-ee74a2b25d50/be0288dd-3f18-4704-b8b8-1168f4be0b55/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a4d6cbb-0e0b-43aa-acf6-ee74a2b25d50/be0288dd-3f18-4704-b8b8-1168f4be0b55/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0509126   0.0210760   0.0807492
CMIN             BANGLADESH                     1                    NA                0.2695627   0.1421663   0.3969590
COHORTS          GUATEMALA                      0                    NA                0.0312476   0.0192494   0.0432459
COHORTS          GUATEMALA                      1                    NA                0.0814665   0.0435185   0.1194144
COHORTS          INDIA                          0                    NA                0.0234452   0.0192105   0.0276800
COHORTS          INDIA                          1                    NA                0.3163221   0.2962741   0.3363700
COHORTS          PHILIPPINES                    0                    NA                0.0459032   0.0369575   0.0548488
COHORTS          PHILIPPINES                    1                    NA                0.1891577   0.1607772   0.2175382
EE               PAKISTAN                       0                    NA                0.0474922   0.0205530   0.0744314
EE               PAKISTAN                       1                    NA                0.2794592   0.1988988   0.3600197
GMS-Nepal        NEPAL                          0                    NA                0.0966490   0.0659361   0.1273619
GMS-Nepal        NEPAL                          1                    NA                0.3162525   0.2571087   0.3753963
IRC              INDIA                          0                    NA                0.0324324   0.0068747   0.0579902
IRC              INDIA                          1                    NA                0.1866667   0.1356920   0.2376414
JiVitA-3         BANGLADESH                     0                    NA                0.1095717   0.1040984   0.1150449
JiVitA-3         BANGLADESH                     1                    NA                0.4934566   0.4753634   0.5115498
JiVitA-4         BANGLADESH                     0                    NA                0.0669129   0.0577166   0.0761091
JiVitA-4         BANGLADESH                     1                    NA                0.3709266   0.3264938   0.4153594
Keneba           GAMBIA                         0                    NA                0.0455060   0.0354190   0.0555931
Keneba           GAMBIA                         1                    NA                0.1959311   0.1653568   0.2265053
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0382166   0.0081635   0.0682696
MAL-ED           INDIA                          1                    NA                0.2820513   0.1819735   0.3821290
NIH-Birth        BANGLADESH                     0                    NA                0.0403137   0.0192759   0.0613515
NIH-Birth        BANGLADESH                     1                    NA                0.2307434   0.1709561   0.2905307
NIH-Crypto       BANGLADESH                     0                    NA                0.0321388   0.0172524   0.0470253
NIH-Crypto       BANGLADESH                     1                    NA                0.1319981   0.0836727   0.1803235
PROVIDE          BANGLADESH                     0                    NA                0.0421335   0.0237980   0.0604690
PROVIDE          BANGLADESH                     1                    NA                0.1357643   0.0833653   0.1881632
ResPak           PAKISTAN                       0                    NA                0.1134488   0.0624098   0.1644878
ResPak           PAKISTAN                       1                    NA                0.3767796   0.2795335   0.4740258
SAS-CompFeed     INDIA                          0                    NA                0.1031635   0.0852746   0.1210524
SAS-CompFeed     INDIA                          1                    NA                0.3596259   0.3100674   0.4091843
SAS-FoodSuppl    INDIA                          0                    NA                0.0840180   0.0525166   0.1155195
SAS-FoodSuppl    INDIA                          1                    NA                0.5391283   0.4363753   0.6418812
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0178424   0.0114652   0.0242197
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2305787   0.1838134   0.2773440
ZVITAMBO         ZIMBABWE                       0                    NA                0.0251678   0.0218772   0.0284584
ZVITAMBO         ZIMBABWE                       1                    NA                0.1148720   0.1009250   0.1288189


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.294615    2.488412   11.265399
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  2.607123    1.427473    4.761625
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 13.491952   11.147500   16.329470
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  4.120799    3.227015    5.262133
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.884317    3.112857   11.123280
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.272176    2.265551    4.726064
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  5.755556    2.499673   13.252299
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.503505    4.244104    4.778759
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  5.543426    4.635028    6.629857
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  4.305605    3.283521    5.645840
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.380342    3.114563   17.488630
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  5.723699    3.195763   10.251301
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.107123    2.277785    7.405641
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  3.222242    1.801197    5.764414
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.321142    1.963869    5.616455
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.485980    2.790147    4.355347
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.416815    4.202810    9.797140
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.923047    8.565947   19.496402
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.564248    3.819518    5.454186


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0482937   0.0203832   0.0762043
COHORTS          GUATEMALA                      0                    NA                0.0090670   0.0011837   0.0169503
COHORTS          INDIA                          0                    NA                0.0882785   0.0813807   0.0951763
COHORTS          PHILIPPINES                    0                    NA                0.0345812   0.0268836   0.0422788
EE               PAKISTAN                       0                    NA                0.0835238   0.0526829   0.1143648
GMS-Nepal        NEPAL                          0                    NA                0.0880968   0.0600833   0.1161103
IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
JiVitA-3         BANGLADESH                     0                    NA                0.0784353   0.0739066   0.0829640
JiVitA-4         BANGLADESH                     0                    NA                0.0403595   0.0336237   0.0470953
Keneba           GAMBIA                         0                    NA                0.0428316   0.0333613   0.0523020
LCNI-5           MALAWI                         0                    NA                0.0061071   0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0809324   0.0432584   0.1186063
NIH-Birth        BANGLADESH                     0                    NA                0.0722324   0.0478426   0.0966222
NIH-Crypto       BANGLADESH                     0                    NA                0.0281352   0.0141673   0.0421030
PROVIDE          BANGLADESH                     0                    NA                0.0229072   0.0081873   0.0376271
ResPak           PAKISTAN                       0                    NA                0.0874059   0.0409030   0.1339087
SAS-CompFeed     INDIA                          0                    NA                0.0615764   0.0481720   0.0749808
SAS-FoodSuppl    INDIA                          0                    NA                0.1050367   0.0735679   0.1365054
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0327027   0.0246558   0.0407495
ZVITAMBO         ZIMBABWE                       0                    NA                0.0174191   0.0146182   0.0202200


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.4868009   0.2067856   0.6679671
COHORTS          GUATEMALA                      0                    NA                0.2249059   0.0171865   0.3887234
COHORTS          INDIA                          0                    NA                0.7901499   0.7524824   0.8220851
COHORTS          PHILIPPINES                    0                    NA                0.4296634   0.3416901   0.5058803
EE               PAKISTAN                       0                    NA                0.6375084   0.4096573   0.7774172
GMS-Nepal        NEPAL                          0                    NA                0.4768542   0.3237837   0.5952751
IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
JiVitA-3         BANGLADESH                     0                    NA                0.4171935   0.3969206   0.4367849
JiVitA-4         BANGLADESH                     0                    NA                0.3762339   0.3193668   0.4283498
Keneba           GAMBIA                         0                    NA                0.4848626   0.3876406   0.5666491
LCNI-5           MALAWI                         0                    NA                0.3744113   0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.6792539   0.3611538   0.8389627
NIH-Birth        BANGLADESH                     0                    NA                0.6418030   0.4363227   0.7723785
NIH-Crypto       BANGLADESH                     0                    NA                0.4667878   0.2364302   0.6276499
PROVIDE          BANGLADESH                     0                    NA                0.3521978   0.1156754   0.5254596
ResPak           PAKISTAN                       0                    NA                0.4351697   0.1872289   0.6074747
SAS-CompFeed     INDIA                          0                    NA                0.3737796   0.2971325   0.4420684
SAS-FoodSuppl    INDIA                          0                    NA                0.5555887   0.4010328   0.6702634
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6469995   0.5243903   0.7380009
ZVITAMBO         ZIMBABWE                       0                    NA                0.4090255   0.3511081   0.4617734
