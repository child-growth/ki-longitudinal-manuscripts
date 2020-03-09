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

**Intervention Variable:** pers_wasted06

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

studyid          country                        pers_wasted06    co_occurence   n_cell      n
---------------  -----------------------------  --------------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                           0      308    366
CMC-V-BCS-2002   INDIA                          0                           1        7    366
CMC-V-BCS-2002   INDIA                          1                           0       36    366
CMC-V-BCS-2002   INDIA                          1                           1       15    366
CMIN             BANGLADESH                     0                           0      205    237
CMIN             BANGLADESH                     0                           1       23    237
CMIN             BANGLADESH                     1                           0        6    237
CMIN             BANGLADESH                     1                           1        3    237
COHORTS          GUATEMALA                      0                           0      706    774
COHORTS          GUATEMALA                      0                           1       31    774
COHORTS          GUATEMALA                      1                           0       30    774
COHORTS          GUATEMALA                      1                           1        7    774
COHORTS          PHILIPPINES                    0                           0     2191   2487
COHORTS          PHILIPPINES                    0                           1      154   2487
COHORTS          PHILIPPINES                    1                           0      109   2487
COHORTS          PHILIPPINES                    1                           1       33   2487
CONTENT          PERU                           0                           0      200    200
CONTENT          PERU                           0                           1        0    200
CONTENT          PERU                           1                           0        0    200
CONTENT          PERU                           1                           1        0    200
EE               PAKISTAN                       0                           0      258    346
EE               PAKISTAN                       0                           1       63    346
EE               PAKISTAN                       1                           0       14    346
EE               PAKISTAN                       1                           1       11    346
GMS-Nepal        NEPAL                          0                           0      440    550
GMS-Nepal        NEPAL                          0                           1       47    550
GMS-Nepal        NEPAL                          1                           0       50    550
GMS-Nepal        NEPAL                          1                           1       13    550
IRC              INDIA                          0                           0      325    405
IRC              INDIA                          0                           1       22    405
IRC              INDIA                          1                           0       55    405
IRC              INDIA                          1                           1        3    405
JiVitA-4         BANGLADESH                     0                           0     3914   4527
JiVitA-4         BANGLADESH                     0                           1      337   4527
JiVitA-4         BANGLADESH                     1                           0      180   4527
JiVitA-4         BANGLADESH                     1                           1       96   4527
Keneba           GAMBIA                         0                           0     1629   1775
Keneba           GAMBIA                         0                           1       85   1775
Keneba           GAMBIA                         1                           0       46   1775
Keneba           GAMBIA                         1                           1       15   1775
LCNI-5           MALAWI                         0                           0      666    693
LCNI-5           MALAWI                         0                           1       17    693
LCNI-5           MALAWI                         1                           0        9    693
LCNI-5           MALAWI                         1                           1        1    693
MAL-ED           BANGLADESH                     0                           0      202    221
MAL-ED           BANGLADESH                     0                           1       13    221
MAL-ED           BANGLADESH                     1                           0        5    221
MAL-ED           BANGLADESH                     1                           1        1    221
MAL-ED           BRAZIL                         0                           0      178    180
MAL-ED           BRAZIL                         0                           1        1    180
MAL-ED           BRAZIL                         1                           0        1    180
MAL-ED           BRAZIL                         1                           1        0    180
MAL-ED           INDIA                          0                           0      200    228
MAL-ED           INDIA                          0                           1       13    228
MAL-ED           INDIA                          1                           0       11    228
MAL-ED           INDIA                          1                           1        4    228
MAL-ED           NEPAL                          0                           0      222    229
MAL-ED           NEPAL                          0                           1        4    229
MAL-ED           NEPAL                          1                           0        3    229
MAL-ED           NEPAL                          1                           1        0    229
MAL-ED           PERU                           0                           0      216    222
MAL-ED           PERU                           0                           1        6    222
MAL-ED           PERU                           1                           0        0    222
MAL-ED           PERU                           1                           1        0    222
MAL-ED           SOUTH AFRICA                   0                           0      235    241
MAL-ED           SOUTH AFRICA                   0                           1        3    241
MAL-ED           SOUTH AFRICA                   1                           0        2    241
MAL-ED           SOUTH AFRICA                   1                           1        1    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      224    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        0    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
NIH-Birth        BANGLADESH                     0                           0      383    462
NIH-Birth        BANGLADESH                     0                           1       35    462
NIH-Birth        BANGLADESH                     1                           0       28    462
NIH-Birth        BANGLADESH                     1                           1       16    462
NIH-Crypto       BANGLADESH                     0                           0      592    634
NIH-Crypto       BANGLADESH                     0                           1       24    634
NIH-Crypto       BANGLADESH                     1                           0       13    634
NIH-Crypto       BANGLADESH                     1                           1        5    634
PROBIT           BELARUS                        0                           0     2088   2146
PROBIT           BELARUS                        0                           1        1   2146
PROBIT           BELARUS                        1                           0       57   2146
PROBIT           BELARUS                        1                           1        0   2146
PROVIDE          BANGLADESH                     0                           0      516    563
PROVIDE          BANGLADESH                     0                           1       34    563
PROVIDE          BANGLADESH                     1                           0       10    563
PROVIDE          BANGLADESH                     1                           1        3    563
ResPak           PAKISTAN                       0                           0        7      9
ResPak           PAKISTAN                       0                           1        0      9
ResPak           PAKISTAN                       1                           0        1      9
ResPak           PAKISTAN                       1                           1        1      9
SAS-CompFeed     INDIA                          0                           0     1052   1256
SAS-CompFeed     INDIA                          0                           1       96   1256
SAS-CompFeed     INDIA                          1                           0       76   1256
SAS-CompFeed     INDIA                          1                           1       32   1256
SAS-FoodSuppl    INDIA                          0                           0      218    323
SAS-FoodSuppl    INDIA                          0                           1       35    323
SAS-FoodSuppl    INDIA                          1                           0       45    323
SAS-FoodSuppl    INDIA                          1                           1       25    323
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      937    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       19    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       22    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        2    980
ZVITAMBO         ZIMBABWE                       0                           0     1534   1680
ZVITAMBO         ZIMBABWE                       0                           1       73   1680
ZVITAMBO         ZIMBABWE                       1                           0       58   1680
ZVITAMBO         ZIMBABWE                       1                           1       15   1680


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
* studyid: CONTENT, country: PERU
* studyid: IRC, country: INDIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/70c92ca2-6aef-4f2c-b0e8-d9c9bc80b3c3/cfff34cb-af54-41b2-999c-386c1f49b841/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/70c92ca2-6aef-4f2c-b0e8-d9c9bc80b3c3/cfff34cb-af54-41b2-999c-386c1f49b841/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/70c92ca2-6aef-4f2c-b0e8-d9c9bc80b3c3/cfff34cb-af54-41b2-999c-386c1f49b841/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/70c92ca2-6aef-4f2c-b0e8-d9c9bc80b3c3/cfff34cb-af54-41b2-999c-386c1f49b841/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0222222   0.0059217   0.0385227
CMC-V-BCS-2002   INDIA         1                    NA                0.2941176   0.1688947   0.4193406
COHORTS          GUATEMALA     0                    NA                0.0420624   0.0275610   0.0565638
COHORTS          GUATEMALA     1                    NA                0.1891892   0.0629088   0.3154696
COHORTS          PHILIPPINES   0                    NA                0.0656374   0.0556124   0.0756624
COHORTS          PHILIPPINES   1                    NA                0.2336838   0.1624218   0.3049457
EE               PAKISTAN      0                    NA                0.1959867   0.1524516   0.2395217
EE               PAKISTAN      1                    NA                0.3441994   0.1460642   0.5423346
GMS-Nepal        NEPAL         0                    NA                0.0966276   0.0703140   0.1229412
GMS-Nepal        NEPAL         1                    NA                0.1942397   0.0910756   0.2974037
JiVitA-4         BANGLADESH    0                    NA                0.0796583   0.0705390   0.0887775
JiVitA-4         BANGLADESH    1                    NA                0.3282188   0.2514599   0.4049778
Keneba           GAMBIA        0                    NA                0.0497447   0.0394477   0.0600417
Keneba           GAMBIA        1                    NA                0.2331805   0.1235011   0.3428598
NIH-Birth        BANGLADESH    0                    NA                0.0837132   0.0571095   0.1103168
NIH-Birth        BANGLADESH    1                    NA                0.3664535   0.2230089   0.5098980
NIH-Crypto       BANGLADESH    0                    NA                0.0389610   0.0236683   0.0542538
NIH-Crypto       BANGLADESH    1                    NA                0.2777778   0.0706975   0.4848581
SAS-CompFeed     INDIA         0                    NA                0.0846632   0.0743325   0.0949938
SAS-CompFeed     INDIA         1                    NA                0.2732550   0.2057293   0.3407807
SAS-FoodSuppl    INDIA         0                    NA                0.1438143   0.1006356   0.1869931
SAS-FoodSuppl    INDIA         1                    NA                0.3344148   0.2240629   0.4447667
ZVITAMBO         ZIMBABWE      0                    NA                0.0454311   0.0352446   0.0556176
ZVITAMBO         ZIMBABWE      1                    NA                0.2084736   0.1116547   0.3052924


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
COHORTS          GUATEMALA     NA                   NA                0.0490956   0.0338639   0.0643273
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
JiVitA-4         BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
SAS-CompFeed     INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 13.235294   5.6675503   30.908064
COHORTS          GUATEMALA     0                    0                  1.000000   1.0000000    1.000000
COHORTS          GUATEMALA     1                    0                  4.497820   2.1219446    9.533891
COHORTS          PHILIPPINES   0                    0                  1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES   1                    0                  3.560221   2.5323581    5.005284
EE               PAKISTAN      0                    0                  1.000000   1.0000000    1.000000
EE               PAKISTAN      1                    0                  1.756239   0.9451048    3.263527
GMS-Nepal        NEPAL         0                    0                  1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL         1                    0                  2.010188   1.1063718    3.652349
JiVitA-4         BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH    1                    0                  4.120337   3.1820114    5.335360
Keneba           GAMBIA        0                    0                  1.000000   1.0000000    1.000000
Keneba           GAMBIA        1                    0                  4.687546   2.8049901    7.833569
NIH-Birth        BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH    1                    0                  4.377488   2.6426899    7.251097
NIH-Crypto       BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
NIH-Crypto       BANGLADESH    1                    0                  7.129630   3.0702229   16.556328
SAS-CompFeed     INDIA         0                    0                  1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA         1                    0                  3.227556   2.5108240    4.148883
SAS-FoodSuppl    INDIA         0                    0                  1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                  2.325323   1.4941408    3.618887
ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                  4.588785   2.7385524    7.689079


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0378871   0.0178137   0.0579604
COHORTS          GUATEMALA     0                    NA                0.0070332   0.0005665   0.0134999
COHORTS          PHILIPPINES   0                    NA                0.0095536   0.0052826   0.0138245
EE               PAKISTAN      0                    NA                0.0178862   0.0016273   0.0341450
GMS-Nepal        NEPAL         0                    NA                0.0124633   0.0002604   0.0246662
JiVitA-4         BANGLADESH    0                    NA                0.0159901   0.0107687   0.0212115
Keneba           GAMBIA        0                    NA                0.0065933   0.0025323   0.0106544
NIH-Birth        BANGLADESH    0                    NA                0.0266764   0.0109321   0.0424207
NIH-Crypto       BANGLADESH    0                    NA                0.0067803   0.0001243   0.0134362
SAS-CompFeed     INDIA         0                    NA                0.0172477   0.0113870   0.0231084
SAS-FoodSuppl    INDIA         0                    NA                0.0419442   0.0147222   0.0691661
ZVITAMBO         ZIMBABWE      0                    NA                0.0069498   0.0025915   0.0113082


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.6303030    0.3262436   0.7971435
COHORTS          GUATEMALA     0                    NA                0.1432550    0.0090294   0.2593000
COHORTS          PHILIPPINES   0                    NA                0.1270572    0.0708511   0.1798634
EE               PAKISTAN      0                    NA                0.0836299    0.0054783   0.1556402
GMS-Nepal        NEPAL         0                    NA                0.1142468   -0.0020883   0.2170764
JiVitA-4         BANGLADESH    0                    NA                0.1671757    0.1160501   0.2153443
Keneba           GAMBIA        0                    NA                0.1170318    0.0453556   0.1833265
NIH-Birth        BANGLADESH    0                    NA                0.2416570    0.0986883   0.3619475
NIH-Crypto       BANGLADESH    0                    NA                0.1482311    0.0002406   0.2743151
SAS-CompFeed     INDIA         0                    NA                0.1692428    0.1163349   0.2189830
SAS-FoodSuppl    INDIA         0                    NA                0.2257994    0.0719796   0.3541236
ZVITAMBO         ZIMBABWE      0                    NA                0.1326789    0.0498430   0.2082931
