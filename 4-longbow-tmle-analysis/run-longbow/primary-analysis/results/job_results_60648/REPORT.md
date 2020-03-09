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

**Intervention Variable:** ever_sunderweight06

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

studyid          country                        ever_sunderweight06    pers_wasted624   n_cell       n
---------------  -----------------------------  --------------------  ---------------  -------  ------
CMC-V-BCS-2002   INDIA                          0                                   0      285     373
CMC-V-BCS-2002   INDIA                          0                                   1       12     373
CMC-V-BCS-2002   INDIA                          1                                   0       60     373
CMC-V-BCS-2002   INDIA                          1                                   1       16     373
CMIN             BANGLADESH                     0                                   0      194     252
CMIN             BANGLADESH                     0                                   1       11     252
CMIN             BANGLADESH                     1                                   0       33     252
CMIN             BANGLADESH                     1                                   1       14     252
COHORTS          GUATEMALA                      0                                   0      904    1023
COHORTS          GUATEMALA                      0                                   1       20    1023
COHORTS          GUATEMALA                      1                                   0       78    1023
COHORTS          GUATEMALA                      1                                   1       21    1023
COHORTS          INDIA                          0                                   0     5698    6897
COHORTS          INDIA                          0                                   1      423    6897
COHORTS          INDIA                          1                                   0      428    6897
COHORTS          INDIA                          1                                   1      348    6897
COHORTS          PHILIPPINES                    0                                   0     2460    2809
COHORTS          PHILIPPINES                    0                                   1      154    2809
COHORTS          PHILIPPINES                    1                                   0      123    2809
COHORTS          PHILIPPINES                    1                                   1       72    2809
CONTENT          PERU                           0                                   0      213     215
CONTENT          PERU                           0                                   1        0     215
CONTENT          PERU                           1                                   0        2     215
CONTENT          PERU                           1                                   1        0     215
EE               PAKISTAN                       0                                   0      207     374
EE               PAKISTAN                       0                                   1        9     374
EE               PAKISTAN                       1                                   0      118     374
EE               PAKISTAN                       1                                   1       40     374
GMS-Nepal        NEPAL                          0                                   0      437     590
GMS-Nepal        NEPAL                          0                                   1       70     590
GMS-Nepal        NEPAL                          1                                   0       44     590
GMS-Nepal        NEPAL                          1                                   1       39     590
Guatemala BSC    GUATEMALA                      0                                   0      260     274
Guatemala BSC    GUATEMALA                      0                                   1        2     274
Guatemala BSC    GUATEMALA                      1                                   0       10     274
Guatemala BSC    GUATEMALA                      1                                   1        2     274
IRC              INDIA                          0                                   0      307     410
IRC              INDIA                          0                                   1       37     410
IRC              INDIA                          1                                   0       55     410
IRC              INDIA                          1                                   1       11     410
JiVitA-3         BANGLADESH                     0                                   0    12391   17274
JiVitA-3         BANGLADESH                     0                                   1     2246   17274
JiVitA-3         BANGLADESH                     1                                   0     1637   17274
JiVitA-3         BANGLADESH                     1                                   1     1000   17274
JiVitA-4         BANGLADESH                     0                                   0     4334    5263
JiVitA-4         BANGLADESH                     0                                   1      403    5263
JiVitA-4         BANGLADESH                     1                                   0      364    5263
JiVitA-4         BANGLADESH                     1                                   1      162    5263
Keneba           GAMBIA                         0                                   0     2125    2441
Keneba           GAMBIA                         0                                   1      156    2441
Keneba           GAMBIA                         1                                   0       99    2441
Keneba           GAMBIA                         1                                   1       61    2441
LCNI-5           MALAWI                         0                                   0      770     796
LCNI-5           MALAWI                         0                                   1        8     796
LCNI-5           MALAWI                         1                                   0       13     796
LCNI-5           MALAWI                         1                                   1        5     796
MAL-ED           BANGLADESH                     0                                   0      210     240
MAL-ED           BANGLADESH                     0                                   1       14     240
MAL-ED           BANGLADESH                     1                                   0       13     240
MAL-ED           BANGLADESH                     1                                   1        3     240
MAL-ED           BRAZIL                         0                                   0      201     207
MAL-ED           BRAZIL                         0                                   1        2     207
MAL-ED           BRAZIL                         1                                   0        4     207
MAL-ED           BRAZIL                         1                                   1        0     207
MAL-ED           INDIA                          0                                   0      187     235
MAL-ED           INDIA                          0                                   1       17     235
MAL-ED           INDIA                          1                                   0       20     235
MAL-ED           INDIA                          1                                   1       11     235
MAL-ED           NEPAL                          0                                   0      221     235
MAL-ED           NEPAL                          0                                   1        1     235
MAL-ED           NEPAL                          1                                   0       12     235
MAL-ED           NEPAL                          1                                   1        1     235
MAL-ED           PERU                           0                                   0      259     270
MAL-ED           PERU                           0                                   1        2     270
MAL-ED           PERU                           1                                   0        8     270
MAL-ED           PERU                           1                                   1        1     270
MAL-ED           SOUTH AFRICA                   0                                   0      246     259
MAL-ED           SOUTH AFRICA                   0                                   1        1     259
MAL-ED           SOUTH AFRICA                   1                                   0       11     259
MAL-ED           SOUTH AFRICA                   1                                   1        1     259
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245
NIH-Birth        BANGLADESH                     0                                   0      428     542
NIH-Birth        BANGLADESH                     0                                   1       34     542
NIH-Birth        BANGLADESH                     1                                   0       53     542
NIH-Birth        BANGLADESH                     1                                   1       27     542
NIH-Crypto       BANGLADESH                     0                                   0      645     730
NIH-Crypto       BANGLADESH                     0                                   1       29     730
NIH-Crypto       BANGLADESH                     1                                   0       41     730
NIH-Crypto       BANGLADESH                     1                                   1       15     730
PROBIT           BELARUS                        0                                   0    16508   16596
PROBIT           BELARUS                        0                                   1       15   16596
PROBIT           BELARUS                        1                                   0       70   16596
PROBIT           BELARUS                        1                                   1        3   16596
PROVIDE          BANGLADESH                     0                                   0      546     615
PROVIDE          BANGLADESH                     0                                   1       26     615
PROVIDE          BANGLADESH                     1                                   0       29     615
PROVIDE          BANGLADESH                     1                                   1       14     615
ResPak           PAKISTAN                       0                                   0      157     234
ResPak           PAKISTAN                       0                                   1       33     234
ResPak           PAKISTAN                       1                                   0       30     234
ResPak           PAKISTAN                       1                                   1       14     234
SAS-CompFeed     INDIA                          0                                   0     1039    1389
SAS-CompFeed     INDIA                          0                                   1      130    1389
SAS-CompFeed     INDIA                          1                                   0      119    1389
SAS-CompFeed     INDIA                          1                                   1      101    1389
SAS-FoodSuppl    INDIA                          0                                   0      261     400
SAS-FoodSuppl    INDIA                          0                                   1       31     400
SAS-FoodSuppl    INDIA                          1                                   0       63     400
SAS-FoodSuppl    INDIA                          1                                   1       45     400
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018
ZVITAMBO         ZIMBABWE                       0                                   0     9894   10814
ZVITAMBO         ZIMBABWE                       0                                   1      345   10814
ZVITAMBO         ZIMBABWE                       1                                   0      452   10814
ZVITAMBO         ZIMBABWE                       1                                   1      123   10814


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/fa7a8b1e-f62c-40d9-b7b1-c7e5b68dc57c/79511113-9b81-4d4d-9b29-91c49c90600e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa7a8b1e-f62c-40d9-b7b1-c7e5b68dc57c/79511113-9b81-4d4d-9b29-91c49c90600e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa7a8b1e-f62c-40d9-b7b1-c7e5b68dc57c/79511113-9b81-4d4d-9b29-91c49c90600e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa7a8b1e-f62c-40d9-b7b1-c7e5b68dc57c/79511113-9b81-4d4d-9b29-91c49c90600e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0400370   0.0177925   0.0622815
CMC-V-BCS-2002   INDIA                          1                    NA                0.2039186   0.1092960   0.2985412
CMIN             BANGLADESH                     0                    NA                0.0518630   0.0210352   0.0826908
CMIN             BANGLADESH                     1                    NA                0.3084106   0.1795137   0.4373076
COHORTS          GUATEMALA                      0                    NA                0.0215197   0.0121162   0.0309232
COHORTS          GUATEMALA                      1                    NA                0.2218032   0.1408695   0.3027370
COHORTS          INDIA                          0                    NA                0.0705101   0.0640554   0.0769648
COHORTS          INDIA                          1                    NA                0.4174396   0.3816687   0.4532104
COHORTS          PHILIPPINES                    0                    NA                0.0594562   0.0504274   0.0684850
COHORTS          PHILIPPINES                    1                    NA                0.3466048   0.2782132   0.4149965
EE               PAKISTAN                       0                    NA                0.0416667   0.0149824   0.0683509
EE               PAKISTAN                       1                    NA                0.2531646   0.1852731   0.3210560
GMS-Nepal        NEPAL                          0                    NA                0.1392789   0.1092314   0.1693263
GMS-Nepal        NEPAL                          1                    NA                0.4675486   0.3538425   0.5812547
IRC              INDIA                          0                    NA                0.1068763   0.0740923   0.1396603
IRC              INDIA                          1                    NA                0.1624072   0.0691902   0.2556243
JiVitA-3         BANGLADESH                     0                    NA                0.1538225   0.1472987   0.1603464
JiVitA-3         BANGLADESH                     1                    NA                0.3685155   0.3467830   0.3902480
JiVitA-4         BANGLADESH                     0                    NA                0.0855361   0.0755904   0.0954817
JiVitA-4         BANGLADESH                     1                    NA                0.2969745   0.2527902   0.3411587
Keneba           GAMBIA                         0                    NA                0.0693586   0.0589003   0.0798169
Keneba           GAMBIA                         1                    NA                0.3448890   0.2698495   0.4199284
LCNI-5           MALAWI                         0                    NA                0.0102828   0.0031722   0.0173933
LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
MAL-ED           INDIA                          0                    NA                0.0824114   0.0443081   0.1205146
MAL-ED           INDIA                          1                    NA                0.2955786   0.1214280   0.4697292
NIH-Birth        BANGLADESH                     0                    NA                0.0735212   0.0496379   0.0974045
NIH-Birth        BANGLADESH                     1                    NA                0.3449745   0.2399137   0.4500353
NIH-Crypto       BANGLADESH                     0                    NA                0.0433651   0.0280227   0.0587075
NIH-Crypto       BANGLADESH                     1                    NA                0.2475409   0.1267922   0.3682895
PROVIDE          BANGLADESH                     0                    NA                0.0455207   0.0284235   0.0626179
PROVIDE          BANGLADESH                     1                    NA                0.3175770   0.1748038   0.4603501
ResPak           PAKISTAN                       0                    NA                0.1757736   0.1210591   0.2304882
ResPak           PAKISTAN                       1                    NA                0.3129731   0.1670392   0.4589069
SAS-CompFeed     INDIA                          0                    NA                0.1148618   0.0989402   0.1307834
SAS-CompFeed     INDIA                          1                    NA                0.4231323   0.3681306   0.4781339
SAS-FoodSuppl    INDIA                          0                    NA                0.1056926   0.0703542   0.1410309
SAS-FoodSuppl    INDIA                          1                    NA                0.4194072   0.3247041   0.5141102
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388761   0.0303105   0.0474417
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3864588   0.2607293   0.5121884
ZVITAMBO         ZIMBABWE                       0                    NA                0.0339654   0.0304574   0.0374735
ZVITAMBO         ZIMBABWE                       1                    NA                0.1901966   0.1562431   0.2241500


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
JiVitA-4         BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251
Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
LCNI-5           MALAWI                         NA                   NA                0.0163317   0.0075211   0.0251422
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
SAS-FoodSuppl    INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  5.093256    2.461926   10.536977
CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.946637    2.887262   12.247760
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                 10.306977    5.843536   18.179708
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                  5.920278    5.224095    6.709236
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.829582    4.547231    7.473564
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  6.075949    3.034466   12.165952
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.356924    2.423396    4.650061
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  1.519581    0.792401    2.914089
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.395718    2.229806    2.573976
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.471921    2.870457    4.199412
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  4.972547    3.817541    6.477003
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 27.013889   10.283843   70.960845
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  3.586624    1.691694    7.604137
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  4.692178    3.004256    7.328447
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  5.708296    3.122294   10.436124
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  6.976539    3.888118   12.518162
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  1.780546    1.011464    3.134414
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.683838    3.046320    4.454774
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.968181    2.650147    5.941731
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  9.940775    6.710225   14.726630
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  5.599708    4.556631    6.881560


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0350300    0.0144583   0.0556018
CMIN             BANGLADESH                     0                    NA                0.0473433    0.0198029   0.0748837
COHORTS          GUATEMALA                      0                    NA                0.0185585    0.0100041   0.0271129
COHORTS          INDIA                          0                    NA                0.0412776    0.0364070   0.0461482
COHORTS          PHILIPPINES                    0                    NA                0.0209995    0.0155064   0.0264926
EE               PAKISTAN                       0                    NA                0.0893494    0.0567594   0.1219393
GMS-Nepal        NEPAL                          0                    NA                0.0454669    0.0271684   0.0637654
IRC              INDIA                          0                    NA                0.0101969   -0.0054386   0.0258323
JiVitA-3         BANGLADESH                     0                    NA                0.0340899    0.0307099   0.0374700
JiVitA-4         BANGLADESH                     0                    NA                0.0218171    0.0168887   0.0267456
Keneba           GAMBIA                         0                    NA                0.0195394    0.0137425   0.0253363
LCNI-5           MALAWI                         0                    NA                0.0060489    0.0006088   0.0114889
MAL-ED           INDIA                          0                    NA                0.0367376    0.0106797   0.0627954
NIH-Birth        BANGLADESH                     0                    NA                0.0390249    0.0214370   0.0566129
NIH-Crypto       BANGLADESH                     0                    NA                0.0169089    0.0069541   0.0268637
PROVIDE          BANGLADESH                     0                    NA                0.0195199    0.0082047   0.0308352
ResPak           PAKISTAN                       0                    NA                0.0250811   -0.0047237   0.0548859
SAS-CompFeed     INDIA                          0                    NA                0.0514449    0.0355616   0.0673282
SAS-FoodSuppl    INDIA                          0                    NA                0.0843074    0.0541715   0.1144434
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0116690    0.0069194   0.0164185
ZVITAMBO         ZIMBABWE                       0                    NA                0.0093118    0.0073755   0.0112481


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.4666501    0.1910381   0.6483616
CMIN             BANGLADESH                     0                    NA                0.4772206    0.1923743   0.6616027
COHORTS          GUATEMALA                      0                    NA                0.4630568    0.2684801   0.6058781
COHORTS          INDIA                          0                    NA                0.3692498    0.3307355   0.4055478
COHORTS          PHILIPPINES                    0                    NA                0.2610067    0.1974633   0.3195188
EE               PAKISTAN                       0                    NA                0.6819728    0.4362210   0.8206012
GMS-Nepal        NEPAL                          0                    NA                0.2461052    0.1476307   0.3332030
IRC              INDIA                          0                    NA                0.0870981   -0.0551700   0.2101843
JiVitA-3         BANGLADESH                     0                    NA                0.1814139    0.1638157   0.1986417
JiVitA-4         BANGLADESH                     0                    NA                0.2032276    0.1575854   0.2463970
Keneba           GAMBIA                         0                    NA                0.2197955    0.1574955   0.2774887
LCNI-5           MALAWI                         0                    NA                0.3703777    0.0352375   0.5890965
MAL-ED           INDIA                          0                    NA                0.3083332    0.0806727   0.4796163
NIH-Birth        BANGLADESH                     0                    NA                0.3467462    0.1937966   0.4706788
NIH-Crypto       BANGLADESH                     0                    NA                0.2805335    0.1190686   0.4124037
PROVIDE          BANGLADESH                     0                    NA                0.3001191    0.1306526   0.4365505
ResPak           PAKISTAN                       0                    NA                0.1248718   -0.0342234   0.2594933
SAS-CompFeed     INDIA                          0                    NA                0.3093376    0.2237093   0.3855206
SAS-FoodSuppl    INDIA                          0                    NA                0.4437234    0.2863154   0.5664139
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2308625    0.1420193   0.3105061
ZVITAMBO         ZIMBABWE                       0                    NA                0.2151659    0.1733650   0.2548531
