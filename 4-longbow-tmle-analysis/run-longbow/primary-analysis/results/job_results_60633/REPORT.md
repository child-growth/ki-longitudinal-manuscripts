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

**Intervention Variable:** ever_wasted06

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

studyid          country                        ever_wasted06    co_occurence   n_cell      n
---------------  -----------------------------  --------------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                           0      171    366
CMC-V-BCS-2002   INDIA                          0                           1        4    366
CMC-V-BCS-2002   INDIA                          1                           0      173    366
CMC-V-BCS-2002   INDIA                          1                           1       18    366
CMIN             BANGLADESH                     0                           0      179    237
CMIN             BANGLADESH                     0                           1       17    237
CMIN             BANGLADESH                     1                           0       32    237
CMIN             BANGLADESH                     1                           1        9    237
COHORTS          GUATEMALA                      0                           0      594    774
COHORTS          GUATEMALA                      0                           1       26    774
COHORTS          GUATEMALA                      1                           0      142    774
COHORTS          GUATEMALA                      1                           1       12    774
COHORTS          PHILIPPINES                    0                           0     1777   2487
COHORTS          PHILIPPINES                    0                           1      112   2487
COHORTS          PHILIPPINES                    1                           0      523   2487
COHORTS          PHILIPPINES                    1                           1       75   2487
CONTENT          PERU                           0                           0      197    200
CONTENT          PERU                           0                           1        0    200
CONTENT          PERU                           1                           0        3    200
CONTENT          PERU                           1                           1        0    200
EE               PAKISTAN                       0                           0      190    346
EE               PAKISTAN                       0                           1       35    346
EE               PAKISTAN                       1                           0       82    346
EE               PAKISTAN                       1                           1       39    346
GMS-Nepal        NEPAL                          0                           0      302    550
GMS-Nepal        NEPAL                          0                           1       28    550
GMS-Nepal        NEPAL                          1                           0      188    550
GMS-Nepal        NEPAL                          1                           1       32    550
IRC              INDIA                          0                           0      175    405
IRC              INDIA                          0                           1       10    405
IRC              INDIA                          1                           0      205    405
IRC              INDIA                          1                           1       15    405
JiVitA-4         BANGLADESH                     0                           0     3657   4527
JiVitA-4         BANGLADESH                     0                           1      288   4527
JiVitA-4         BANGLADESH                     1                           0      437   4527
JiVitA-4         BANGLADESH                     1                           1      145   4527
Keneba           GAMBIA                         0                           0     1218   1775
Keneba           GAMBIA                         0                           1       45   1775
Keneba           GAMBIA                         1                           0      457   1775
Keneba           GAMBIA                         1                           1       55   1775
LCNI-5           MALAWI                         0                           0      666    693
LCNI-5           MALAWI                         0                           1       17    693
LCNI-5           MALAWI                         1                           0        9    693
LCNI-5           MALAWI                         1                           1        1    693
MAL-ED           BANGLADESH                     0                           0      165    221
MAL-ED           BANGLADESH                     0                           1        4    221
MAL-ED           BANGLADESH                     1                           0       42    221
MAL-ED           BANGLADESH                     1                           1       10    221
MAL-ED           BRAZIL                         0                           0      166    180
MAL-ED           BRAZIL                         0                           1        1    180
MAL-ED           BRAZIL                         1                           0       13    180
MAL-ED           BRAZIL                         1                           1        0    180
MAL-ED           INDIA                          0                           0      147    228
MAL-ED           INDIA                          0                           1        4    228
MAL-ED           INDIA                          1                           0       64    228
MAL-ED           INDIA                          1                           1       13    228
MAL-ED           NEPAL                          0                           0      181    229
MAL-ED           NEPAL                          0                           1        2    229
MAL-ED           NEPAL                          1                           0       44    229
MAL-ED           NEPAL                          1                           1        2    229
MAL-ED           PERU                           0                           0      208    222
MAL-ED           PERU                           0                           1        5    222
MAL-ED           PERU                           1                           0        8    222
MAL-ED           PERU                           1                           1        1    222
MAL-ED           SOUTH AFRICA                   0                           0      212    241
MAL-ED           SOUTH AFRICA                   0                           1        2    241
MAL-ED           SOUTH AFRICA                   1                           0       25    241
MAL-ED           SOUTH AFRICA                   1                           1        2    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      211    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0       13    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
NIH-Birth        BANGLADESH                     0                           0      281    462
NIH-Birth        BANGLADESH                     0                           1       14    462
NIH-Birth        BANGLADESH                     1                           0      130    462
NIH-Birth        BANGLADESH                     1                           1       37    462
NIH-Crypto       BANGLADESH                     0                           0      440    634
NIH-Crypto       BANGLADESH                     0                           1       14    634
NIH-Crypto       BANGLADESH                     1                           0      165    634
NIH-Crypto       BANGLADESH                     1                           1       15    634
PROBIT           BELARUS                        0                           0     1618   2146
PROBIT           BELARUS                        0                           1        1   2146
PROBIT           BELARUS                        1                           0      527   2146
PROBIT           BELARUS                        1                           1        0   2146
PROVIDE          BANGLADESH                     0                           0      398    563
PROVIDE          BANGLADESH                     0                           1       23    563
PROVIDE          BANGLADESH                     1                           0      128    563
PROVIDE          BANGLADESH                     1                           1       14    563
ResPak           PAKISTAN                       0                           0        4      9
ResPak           PAKISTAN                       0                           1        0      9
ResPak           PAKISTAN                       1                           0        4      9
ResPak           PAKISTAN                       1                           1        1      9
SAS-CompFeed     INDIA                          0                           0      899   1256
SAS-CompFeed     INDIA                          0                           1       72   1256
SAS-CompFeed     INDIA                          1                           0      229   1256
SAS-CompFeed     INDIA                          1                           1       56   1256
SAS-FoodSuppl    INDIA                          0                           0      218    323
SAS-FoodSuppl    INDIA                          0                           1       35    323
SAS-FoodSuppl    INDIA                          1                           0       45    323
SAS-FoodSuppl    INDIA                          1                           1       25    323
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      829    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       14    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      130    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        7    980
ZVITAMBO         ZIMBABWE                       0                           0     1305   1680
ZVITAMBO         ZIMBABWE                       0                           1       56   1680
ZVITAMBO         ZIMBABWE                       1                           0      287   1680
ZVITAMBO         ZIMBABWE                       1                           1       32   1680


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN

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
![](/tmp/c6d318c5-772f-4579-84ab-b8c04437394c/948081c7-1293-4ac7-b660-b83e547a9ed8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c6d318c5-772f-4579-84ab-b8c04437394c/948081c7-1293-4ac7-b660-b83e547a9ed8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c6d318c5-772f-4579-84ab-b8c04437394c/948081c7-1293-4ac7-b660-b83e547a9ed8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c6d318c5-772f-4579-84ab-b8c04437394c/948081c7-1293-4ac7-b660-b83e547a9ed8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0867347   0.0472496   0.1262198
CMIN             BANGLADESH                     1                    NA                0.2195122   0.0925464   0.3464780
COHORTS          GUATEMALA                      0                    NA                0.0420146   0.0261817   0.0578475
COHORTS          GUATEMALA                      1                    NA                0.0731553   0.0316500   0.1146606
COHORTS          PHILIPPINES                    0                    NA                0.0587093   0.0481162   0.0693023
COHORTS          PHILIPPINES                    1                    NA                0.1284255   0.1019083   0.1549427
EE               PAKISTAN                       0                    NA                0.1520910   0.1054778   0.1987043
EE               PAKISTAN                       1                    NA                0.3177199   0.2328571   0.4025827
GMS-Nepal        NEPAL                          0                    NA                0.0852146   0.0548953   0.1155338
GMS-Nepal        NEPAL                          1                    NA                0.1453275   0.0987963   0.1918587
IRC              INDIA                          0                    NA                0.0547711   0.0221772   0.0873650
IRC              INDIA                          1                    NA                0.0687515   0.0353891   0.1021138
JiVitA-4         BANGLADESH                     0                    NA                0.0730658   0.0639998   0.0821319
JiVitA-4         BANGLADESH                     1                    NA                0.2485574   0.2033623   0.2937525
Keneba           GAMBIA                         0                    NA                0.0358615   0.0256300   0.0460930
Keneba           GAMBIA                         1                    NA                0.1031170   0.0769420   0.1292919
NIH-Birth        BANGLADESH                     0                    NA                0.0459916   0.0216949   0.0702883
NIH-Birth        BANGLADESH                     1                    NA                0.2190512   0.1553559   0.2827465
NIH-Crypto       BANGLADESH                     0                    NA                0.0311970   0.0152624   0.0471316
NIH-Crypto       BANGLADESH                     1                    NA                0.0793334   0.0388543   0.1198125
PROVIDE          BANGLADESH                     0                    NA                0.0540176   0.0323910   0.0756442
PROVIDE          BANGLADESH                     1                    NA                0.1007889   0.0507576   0.1508202
SAS-CompFeed     INDIA                          0                    NA                0.0742322   0.0629744   0.0854900
SAS-CompFeed     INDIA                          1                    NA                0.1904254   0.1428027   0.2380480
SAS-FoodSuppl    INDIA                          0                    NA                0.1435038   0.1003675   0.1866401
SAS-FoodSuppl    INDIA                          1                    NA                0.3554203   0.2396678   0.4711728
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0166074   0.0079762   0.0252385
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0510949   0.0142048   0.0879850
ZVITAMBO         ZIMBABWE                       0                    NA                0.0409785   0.0304170   0.0515399
ZVITAMBO         ZIMBABWE                       1                    NA                0.0987928   0.0653770   0.1322085


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
COHORTS          GUATEMALA                      NA                   NA                0.0490956   0.0338639   0.0643273
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH                     NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA                         NA                   NA                0.0563380   0.0456085   0.0670675
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA                          NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
CMIN             BANGLADESH                     1                    0                 2.530846   1.2122647   5.283651
COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 1.741188   0.8815349   3.439155
COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.187483   1.6651542   2.873656
EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 2.089012   1.3922381   3.134499
GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 1.705430   1.0567020   2.752424
IRC              INDIA                          0                    0                 1.000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 1.255251   0.5821499   2.706612
JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 3.401828   2.7367922   4.228466
Keneba           GAMBIA                         0                    0                 1.000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 2.875422   1.9677442   4.201791
NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 4.762855   2.6081181   8.697759
NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.542978   1.2354617   5.234269
PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
PROVIDE          BANGLADESH                     1                    0                 1.865853   0.9857007   3.531912
SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 2.565265   1.8657959   3.526959
SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 2.476732   1.5910460   3.855451
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.076642   1.2639518   7.488995
ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 2.410846   1.5749814   3.690314


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0229699   -0.0009080   0.0468479
COHORTS          GUATEMALA                      0                    NA                0.0070810   -0.0020040   0.0161660
COHORTS          PHILIPPINES                    0                    NA                0.0164817    0.0096130   0.0233504
EE               PAKISTAN                       0                    NA                0.0617818    0.0272914   0.0962722
GMS-Nepal        NEPAL                          0                    NA                0.0238763    0.0014196   0.0463331
IRC              INDIA                          0                    NA                0.0069573   -0.0184197   0.0323343
JiVitA-4         BANGLADESH                     0                    NA                0.0225825    0.0165297   0.0286353
Keneba           GAMBIA                         0                    NA                0.0204765    0.0121392   0.0288139
NIH-Birth        BANGLADESH                     0                    NA                0.0643980    0.0387295   0.0900666
NIH-Crypto       BANGLADESH                     0                    NA                0.0145443    0.0020978   0.0269908
PROVIDE          BANGLADESH                     0                    NA                0.0117018   -0.0019166   0.0253202
SAS-CompFeed     INDIA                          0                    NA                0.0276786    0.0142858   0.0410714
SAS-FoodSuppl    INDIA                          0                    NA                0.0422547    0.0147026   0.0698069
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048212   -0.0005279   0.0101703
ZVITAMBO         ZIMBABWE                       0                    NA                0.0114025    0.0047131   0.0180919


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMIN             BANGLADESH                     0                    NA                0.2093799   -0.0268154   0.3912439
COHORTS          GUATEMALA                      0                    NA                0.1442291   -0.0561821   0.3066122
COHORTS          PHILIPPINES                    0                    NA                0.2191982    0.1268812   0.3017542
EE               PAKISTAN                       0                    NA                0.2888717    0.1165523   0.4275795
GMS-Nepal        NEPAL                          0                    NA                0.2188665   -0.0098360   0.3957736
IRC              INDIA                          0                    NA                0.1127081   -0.4061963   0.4401302
JiVitA-4         BANGLADESH                     0                    NA                0.2360991    0.1775172   0.2905085
Keneba           GAMBIA                         0                    NA                0.3634583    0.2162505   0.4830167
NIH-Birth        BANGLADESH                     0                    NA                0.5833704    0.3494646   0.7331732
NIH-Crypto       BANGLADESH                     0                    NA                0.3179683    0.0185129   0.5260588
PROVIDE          BANGLADESH                     0                    NA                0.1780567   -0.0495049   0.3562767
SAS-CompFeed     INDIA                          0                    NA                0.2715962    0.1467263   0.3781924
SAS-FoodSuppl    INDIA                          0                    NA                0.2274714    0.0719719   0.3569155
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2249901   -0.0446753   0.4250459
ZVITAMBO         ZIMBABWE                       0                    NA                0.2176837    0.0872173   0.3295022
