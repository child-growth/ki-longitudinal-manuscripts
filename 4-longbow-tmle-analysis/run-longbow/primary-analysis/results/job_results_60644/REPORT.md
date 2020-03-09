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
![](/tmp/40259863-7e7e-459e-ba55-bd4f18a78537/1a4999fd-6400-4b2b-acea-92ad9906bcde/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40259863-7e7e-459e-ba55-bd4f18a78537/1a4999fd-6400-4b2b-acea-92ad9906bcde/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40259863-7e7e-459e-ba55-bd4f18a78537/1a4999fd-6400-4b2b-acea-92ad9906bcde/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40259863-7e7e-459e-ba55-bd4f18a78537/1a4999fd-6400-4b2b-acea-92ad9906bcde/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0337786   0.0137019   0.0538554
CMC-V-BCS-2002   INDIA                          1                    NA                0.3372154   0.2034138   0.4710170
COHORTS          GUATEMALA                      0                    NA                0.0321175   0.0209685   0.0432664
COHORTS          GUATEMALA                      1                    NA                0.1738768   0.0558068   0.2919468
COHORTS          INDIA                          0                    NA                0.0471211   0.0417328   0.0525094
COHORTS          INDIA                          1                    NA                0.5093706   0.4768866   0.5418545
COHORTS          PHILIPPINES                    0                    NA                0.0614740   0.0523078   0.0706401
COHORTS          PHILIPPINES                    1                    NA                0.3500828   0.2809075   0.4192582
EE               PAKISTAN                       0                    NA                0.1002944   0.0686505   0.1319383
EE               PAKISTAN                       1                    NA                0.4784346   0.2795616   0.6773076
GMS-Nepal        NEPAL                          0                    NA                0.1350374   0.1057838   0.1642910
GMS-Nepal        NEPAL                          1                    NA                0.5597944   0.4380196   0.6815693
IRC              INDIA                          0                    NA                0.0751661   0.0475083   0.1028240
IRC              INDIA                          1                    NA                0.3395582   0.2166735   0.4624429
JiVitA-3         BANGLADESH                     0                    NA                0.1565307   0.1503640   0.1626974
JiVitA-3         BANGLADESH                     1                    NA                0.6798358   0.6484385   0.7112331
JiVitA-4         BANGLADESH                     0                    NA                0.0803714   0.0710351   0.0897077
JiVitA-4         BANGLADESH                     1                    NA                0.4916692   0.4265741   0.5567643
Keneba           GAMBIA                         0                    NA                0.0729351   0.0621095   0.0837607
Keneba           GAMBIA                         1                    NA                0.4935802   0.3785186   0.6086418
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
MAL-ED           INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
NIH-Birth        BANGLADESH                     0                    NA                0.0733422   0.0502981   0.0963863
NIH-Birth        BANGLADESH                     1                    NA                0.5035585   0.3594317   0.6476853
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
SAS-FoodSuppl    INDIA                          0                    NA                0.0833005   0.0521015   0.1144994
SAS-FoodSuppl    INDIA                          1                    NA                0.5240031   0.4204530   0.6275532
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366296   0.0283132   0.0449461
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6037642   0.4755274   0.7320011
ZVITAMBO         ZIMBABWE                       0                    NA                0.0341677   0.0306376   0.0376979
ZVITAMBO         ZIMBABWE                       1                    NA                0.2155094   0.1761818   0.2548371


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
CMC-V-BCS-2002   INDIA                          1                    0                  9.983095    4.870833   20.461016
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  5.413776    2.531357   11.578360
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 10.809810    9.487578   12.316315
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.694814    4.449964    7.287904
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  4.770302    2.824837    8.055608
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.145478    3.045768    5.642252
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  4.517436    2.693055    7.577724
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.343146    4.097469    4.603553
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.117464    5.134020    7.289290
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.767392    5.132918    8.922331
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  8.148148    4.606020   14.414249
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  6.865878    4.484442   10.511961
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
SAS-FoodSuppl    INDIA                          1                    0                  6.290517    4.113153    9.620502
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.482952   12.073737   22.502371
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  6.307395    5.115516    7.776973


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0418970    0.0207881   0.0630060
COHORTS          GUATEMALA                      0                    NA                0.0081972    0.0023157   0.0140786
COHORTS          INDIA                          0                    NA                0.0646026    0.0587589   0.0704463
COHORTS          PHILIPPINES                    0                    NA                0.0190104    0.0137942   0.0242265
EE               PAKISTAN                       0                    NA                0.0307216    0.0127934   0.0486498
GMS-Nepal        NEPAL                          0                    NA                0.0497084    0.0316581   0.0677587
IRC              INDIA                          0                    NA                0.0419070    0.0210804   0.0627337
JiVitA-3         BANGLADESH                     0                    NA                0.0314762    0.0286373   0.0343151
JiVitA-4         BANGLADESH                     0                    NA                0.0269010    0.0210683   0.0327337
Keneba           GAMBIA                         0                    NA                0.0154026    0.0103187   0.0204865
LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
NIH-Birth        BANGLADESH                     0                    NA                0.0392039    0.0225659   0.0558420
NIH-Crypto       BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
PROBIT           BELARUS                        0                    NA                0.0005194    0.0002130   0.0008258
PROVIDE          BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
SAS-CompFeed     INDIA                          0                    NA                0.0346338    0.0249775   0.0442901
SAS-FoodSuppl    INDIA                          0                    NA                0.1057542    0.0744074   0.1371010
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139155    0.0088108   0.0190201
ZVITAMBO         ZIMBABWE                       0                    NA                0.0084192    0.0065680   0.0102703


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.5536394    0.2924866   0.7183971
COHORTS          GUATEMALA                      0                    NA                0.2033300    0.0575311   0.3265739
COHORTS          INDIA                          0                    NA                0.5782352    0.5388476   0.6142587
COHORTS          PHILIPPINES                    0                    NA                0.2361995    0.1751362   0.2927424
EE               PAKISTAN                       0                    NA                0.2344877    0.0981078   0.3502448
GMS-Nepal        NEPAL                          0                    NA                0.2690638    0.1735177   0.3535643
IRC              INDIA                          0                    NA                0.3579559    0.1826777   0.4956450
JiVitA-3         BANGLADESH                     0                    NA                0.1674206    0.1531193   0.1814804
JiVitA-4         BANGLADESH                     0                    NA                0.2507725    0.2012115   0.2972586
Keneba           GAMBIA                         0                    NA                0.1743607    0.1190266   0.2262192
LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
NIH-Birth        BANGLADESH                     0                    NA                0.3483366    0.2080845   0.4637495
NIH-Crypto       BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
PROBIT           BELARUS                        0                    NA                0.4788998    0.1448179   0.6824706
PROVIDE          BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
SAS-CompFeed     INDIA                          0                    NA                0.2102333    0.1645188   0.2534465
SAS-FoodSuppl    INDIA                          0                    NA                0.5593843    0.4065274   0.6728707
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2753082    0.1819807   0.3579879
ZVITAMBO         ZIMBABWE                       0                    NA                0.1976936    0.1567093   0.2366862
