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

**Intervention Variable:** pers_wasted06

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

studyid          country                        pers_wasted06    pers_wasted624   n_cell       n
---------------  -----------------------------  --------------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                             0      307     370
CMC-V-BCS-2002   INDIA                          0                             1       11     370
CMC-V-BCS-2002   INDIA                          1                             0       35     370
CMC-V-BCS-2002   INDIA                          1                             1       17     370
CMIN             BANGLADESH                     0                             0      223     252
CMIN             BANGLADESH                     0                             1       19     252
CMIN             BANGLADESH                     1                             0        4     252
CMIN             BANGLADESH                     1                             1        6     252
COHORTS          GUATEMALA                      0                             0      934    1017
COHORTS          GUATEMALA                      0                             1       31    1017
COHORTS          GUATEMALA                      1                             0       42    1017
COHORTS          GUATEMALA                      1                             1       10    1017
COHORTS          INDIA                          0                             0     5684    6892
COHORTS          INDIA                          0                             1      277    6892
COHORTS          INDIA                          1                             0      438    6892
COHORTS          INDIA                          1                             1      493    6892
COHORTS          PHILIPPINES                    0                             0     2467    2808
COHORTS          PHILIPPINES                    0                             1      161    2808
COHORTS          PHILIPPINES                    1                             0      115    2808
COHORTS          PHILIPPINES                    1                             1       65    2808
CONTENT          PERU                           0                             0      215     215
CONTENT          PERU                           0                             1        0     215
CONTENT          PERU                           1                             0        0     215
CONTENT          PERU                           1                             1        0     215
EE               PAKISTAN                       0                             0      313     374
EE               PAKISTAN                       0                             1       35     374
EE               PAKISTAN                       1                             0       12     374
EE               PAKISTAN                       1                             1       14     374
GMS-Nepal        NEPAL                          0                             0      452     590
GMS-Nepal        NEPAL                          0                             1       70     590
GMS-Nepal        NEPAL                          1                             0       29     590
GMS-Nepal        NEPAL                          1                             1       39     590
Guatemala BSC    GUATEMALA                      0                             0      264     274
Guatemala BSC    GUATEMALA                      0                             1        3     274
Guatemala BSC    GUATEMALA                      1                             0        6     274
Guatemala BSC    GUATEMALA                      1                             1        1     274
IRC              INDIA                          0                             0      323     410
IRC              INDIA                          0                             1       26     410
IRC              INDIA                          1                             0       39     410
IRC              INDIA                          1                             1       22     410
JiVitA-3         BANGLADESH                     0                             0    13683   17260
JiVitA-3         BANGLADESH                     0                             1     2538   17260
JiVitA-3         BANGLADESH                     1                             0      332   17260
JiVitA-3         BANGLADESH                     1                             1      707   17260
JiVitA-4         BANGLADESH                     0                             0     4506    5239
JiVitA-4         BANGLADESH                     0                             1      393    5239
JiVitA-4         BANGLADESH                     1                             0      171    5239
JiVitA-4         BANGLADESH                     1                             1      169    5239
Keneba           GAMBIA                         0                             0     2056    2298
Keneba           GAMBIA                         0                             1      161    2298
Keneba           GAMBIA                         1                             0       39    2298
Keneba           GAMBIA                         1                             1       42    2298
LCNI-5           MALAWI                         0                             0      776     797
LCNI-5           MALAWI                         0                             1        8     797
LCNI-5           MALAWI                         1                             0        8     797
LCNI-5           MALAWI                         1                             1        5     797
MAL-ED           BANGLADESH                     0                             0      219     240
MAL-ED           BANGLADESH                     0                             1       13     240
MAL-ED           BANGLADESH                     1                             0        4     240
MAL-ED           BANGLADESH                     1                             1        4     240
MAL-ED           BRAZIL                         0                             0      205     207
MAL-ED           BRAZIL                         0                             1        1     207
MAL-ED           BRAZIL                         1                             0        0     207
MAL-ED           BRAZIL                         1                             1        1     207
MAL-ED           INDIA                          0                             0      202     235
MAL-ED           INDIA                          0                             1       18     235
MAL-ED           INDIA                          1                             0        5     235
MAL-ED           INDIA                          1                             1       10     235
MAL-ED           NEPAL                          0                             0      231     235
MAL-ED           NEPAL                          0                             1        1     235
MAL-ED           NEPAL                          1                             0        2     235
MAL-ED           NEPAL                          1                             1        1     235
MAL-ED           PERU                           0                             0      267     270
MAL-ED           PERU                           0                             1        3     270
MAL-ED           PERU                           1                             0        0     270
MAL-ED           PERU                           1                             1        0     270
MAL-ED           SOUTH AFRICA                   0                             0      256     259
MAL-ED           SOUTH AFRICA                   0                             1        0     259
MAL-ED           SOUTH AFRICA                   1                             0        1     259
MAL-ED           SOUTH AFRICA                   1                             1        2     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      245     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
NIH-Birth        BANGLADESH                     0                             0      456     542
NIH-Birth        BANGLADESH                     0                             1       36     542
NIH-Birth        BANGLADESH                     1                             0       25     542
NIH-Birth        BANGLADESH                     1                             1       25     542
NIH-Crypto       BANGLADESH                     0                             0      671     730
NIH-Crypto       BANGLADESH                     0                             1       39     730
NIH-Crypto       BANGLADESH                     1                             0       15     730
NIH-Crypto       BANGLADESH                     1                             1        5     730
PROBIT           BELARUS                        0                             0    15915   16596
PROBIT           BELARUS                        0                             1        9   16596
PROBIT           BELARUS                        1                             0      663   16596
PROBIT           BELARUS                        1                             1        9   16596
PROVIDE          BANGLADESH                     0                             0      568     615
PROVIDE          BANGLADESH                     0                             1       33     615
PROVIDE          BANGLADESH                     1                             0        7     615
PROVIDE          BANGLADESH                     1                             1        7     615
ResPak           PAKISTAN                       0                             0      178     234
ResPak           PAKISTAN                       0                             1       32     234
ResPak           PAKISTAN                       1                             0        9     234
ResPak           PAKISTAN                       1                             1       15     234
SAS-CompFeed     INDIA                          0                             0     1095    1384
SAS-CompFeed     INDIA                          0                             1      162    1384
SAS-CompFeed     INDIA                          1                             0       61    1384
SAS-CompFeed     INDIA                          1                             1       66    1384
SAS-FoodSuppl    INDIA                          0                             0      281     402
SAS-FoodSuppl    INDIA                          0                             1       25     402
SAS-FoodSuppl    INDIA                          1                             0       45     402
SAS-FoodSuppl    INDIA                          1                             1       51     402
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018
ZVITAMBO         ZIMBABWE                       0                             0     9865   10731
ZVITAMBO         ZIMBABWE                       0                             1      346   10731
ZVITAMBO         ZIMBABWE                       1                             0      409   10731
ZVITAMBO         ZIMBABWE                       1                             1      111   10731


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
![](/tmp/196a58f1-da16-49f3-8c7f-f7654fc2ae64/05a3b237-b74f-4073-8d31-729c7b1b7f2d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/196a58f1-da16-49f3-8c7f-f7654fc2ae64/05a3b237-b74f-4073-8d31-729c7b1b7f2d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/196a58f1-da16-49f3-8c7f-f7654fc2ae64/05a3b237-b74f-4073-8d31-729c7b1b7f2d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/196a58f1-da16-49f3-8c7f-f7654fc2ae64/05a3b237-b74f-4073-8d31-729c7b1b7f2d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0336011   0.0135082   0.0536939
CMC-V-BCS-2002   INDIA                          1                    NA                0.3091071   0.1778496   0.4403645
COHORTS          GUATEMALA                      0                    NA                0.0319401   0.0208254   0.0430547
COHORTS          GUATEMALA                      1                    NA                0.1761209   0.0571254   0.2951164
COHORTS          INDIA                          0                    NA                0.0470336   0.0416712   0.0523960
COHORTS          INDIA                          1                    NA                0.5113110   0.4794265   0.5431955
COHORTS          PHILIPPINES                    0                    NA                0.0614445   0.0522786   0.0706104
COHORTS          PHILIPPINES                    1                    NA                0.3500537   0.2806822   0.4194251
EE               PAKISTAN                       0                    NA                0.1004172   0.0687880   0.1320465
EE               PAKISTAN                       1                    NA                0.5443277   0.3319507   0.7567047
GMS-Nepal        NEPAL                          0                    NA                0.1347346   0.1054986   0.1639707
GMS-Nepal        NEPAL                          1                    NA                0.5787016   0.4578942   0.6995089
IRC              INDIA                          0                    NA                0.0740991   0.0464550   0.1017432
IRC              INDIA                          1                    NA                0.3509410   0.2273206   0.4745614
JiVitA-3         BANGLADESH                     0                    NA                0.1565253   0.1503539   0.1626968
JiVitA-3         BANGLADESH                     1                    NA                0.6809141   0.6495941   0.7122340
JiVitA-4         BANGLADESH                     0                    NA                0.0804668   0.0711192   0.0898144
JiVitA-4         BANGLADESH                     1                    NA                0.4862320   0.4209172   0.5515468
Keneba           GAMBIA                         0                    NA                0.0729976   0.0621751   0.0838201
Keneba           GAMBIA                         1                    NA                0.5086534   0.3943048   0.6230020
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
MAL-ED           INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
NIH-Birth        BANGLADESH                     0                    NA                0.0731885   0.0501410   0.0962359
NIH-Birth        BANGLADESH                     1                    NA                0.4665429   0.3237450   0.6093409
NIH-Crypto       BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
NIH-Crypto       BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
PROBIT           BELARUS                        0                    NA                0.0005652   0.0000742   0.0010561
PROBIT           BELARUS                        1                    NA                0.0133929   0.0041540   0.0226317
PROVIDE          BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
PROVIDE          BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
SAS-CompFeed     INDIA                          0                    NA                0.1301061   0.1156442   0.1445679
SAS-CompFeed     INDIA                          1                    NA                0.4958557   0.4245532   0.5671581
SAS-FoodSuppl    INDIA                          0                    NA                0.0817735   0.0509900   0.1125571
SAS-FoodSuppl    INDIA                          1                    NA                0.5195779   0.4178275   0.6213282
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366009   0.0282811   0.0449208
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5864078   0.4587554   0.7140601
ZVITAMBO         ZIMBABWE                       0                    NA                0.0340934   0.0305723   0.0376144
ZVITAMBO         ZIMBABWE                       1                    NA                0.2242379   0.1831526   0.2653233


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
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
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  9.199319    4.409759   19.190954
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  5.514104    2.586338   11.756136
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 10.871178    9.550763   12.374144
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.697069    4.449178    7.294964
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.420660    3.278369    8.962857
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.295121    3.175410    5.809665
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  4.736103    2.828366    7.930609
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.350185    4.104651    4.610407
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.042642    5.067151    7.205926
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.968087    5.322920    9.121728
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  8.148148    4.606020   14.414249
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  6.374543    4.105142    9.898512
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
PROBIT           BELARUS                        1                    0                 23.696429    8.189156   68.568818
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.811165    3.318358    4.377158
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.353863    4.152647    9.721888
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.021657   11.695730   21.947625
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  6.577169    5.330529    8.115357


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0420746    0.0209026   0.0632466
COHORTS          GUATEMALA                      0                    NA                0.0083746    0.0025113   0.0142378
COHORTS          INDIA                          0                    NA                0.0646901    0.0588532   0.0705270
COHORTS          PHILIPPINES                    0                    NA                0.0190398    0.0138167   0.0242629
EE               PAKISTAN                       0                    NA                0.0305988    0.0128504   0.0483472
GMS-Nepal        NEPAL                          0                    NA                0.0500111    0.0319588   0.0680635
IRC              INDIA                          0                    NA                0.0429741    0.0220264   0.0639217
JiVitA-3         BANGLADESH                     0                    NA                0.0314816    0.0286426   0.0343207
JiVitA-4         BANGLADESH                     0                    NA                0.0268056    0.0210046   0.0326066
Keneba           GAMBIA                         0                    NA                0.0153401    0.0102757   0.0204046
LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
NIH-Birth        BANGLADESH                     0                    NA                0.0393577    0.0226726   0.0560428
NIH-Crypto       BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
PROBIT           BELARUS                        0                    NA                0.0005194    0.0002130   0.0008258
PROVIDE          BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
SAS-CompFeed     INDIA                          0                    NA                0.0346338    0.0249775   0.0442901
SAS-FoodSuppl    INDIA                          0                    NA                0.1072812    0.0760035   0.1385589
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139442    0.0088455   0.0190428
ZVITAMBO         ZIMBABWE                       0                    NA                0.0084935    0.0066450   0.0103420


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.5559857    0.2933910   0.7209932
COHORTS          GUATEMALA                      0                    NA                0.2077302    0.0627125   0.3303107
COHORTS          INDIA                          0                    NA                0.5790184    0.5398513   0.6148517
COHORTS          PHILIPPINES                    0                    NA                0.2365654    0.1754215   0.2931754
EE               PAKISTAN                       0                    NA                0.2335500    0.0986075   0.3482910
GMS-Nepal        NEPAL                          0                    NA                0.2707025    0.1751608   0.3551775
IRC              INDIA                          0                    NA                0.3670701    0.1904224   0.5051737
JiVitA-3         BANGLADESH                     0                    NA                0.1674493    0.1531375   0.1815193
JiVitA-4         BANGLADESH                     0                    NA                0.2498834    0.2005390   0.2961822
Keneba           GAMBIA                         0                    NA                0.1736531    0.1185475   0.2253136
LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
NIH-Birth        BANGLADESH                     0                    NA                0.3497026    0.2089952   0.4653803
NIH-Crypto       BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
PROBIT           BELARUS                        0                    NA                0.4788998    0.1448179   0.6824706
PROVIDE          BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
SAS-CompFeed     INDIA                          0                    NA                0.2102333    0.1645188   0.2534465
SAS-FoodSuppl    INDIA                          0                    NA                0.5674610    0.4163401   0.6794537
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2758755    0.1826120   0.3584977
ZVITAMBO         ZIMBABWE                       0                    NA                0.1994396    0.1585999   0.2382970
