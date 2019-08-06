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
* enstunt
* month
* brthmon
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_month
* delta_brthmon
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_swasted06    co_occurence   n_cell      n
-------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                            0      194    221
ki0047075b-MAL-ED          BANGLADESH                     0                            1       12    221
ki0047075b-MAL-ED          BANGLADESH                     1                            0       13    221
ki0047075b-MAL-ED          BANGLADESH                     1                            1        2    221
ki0047075b-MAL-ED          BRAZIL                         0                            0      178    180
ki0047075b-MAL-ED          BRAZIL                         0                            1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                            0        1    180
ki0047075b-MAL-ED          BRAZIL                         1                            1        0    180
ki0047075b-MAL-ED          INDIA                          0                            0      196    228
ki0047075b-MAL-ED          INDIA                          0                            1       12    228
ki0047075b-MAL-ED          INDIA                          1                            0       15    228
ki0047075b-MAL-ED          INDIA                          1                            1        5    228
ki0047075b-MAL-ED          NEPAL                          0                            0      218    229
ki0047075b-MAL-ED          NEPAL                          0                            1        4    229
ki0047075b-MAL-ED          NEPAL                          1                            0        7    229
ki0047075b-MAL-ED          NEPAL                          1                            1        0    229
ki0047075b-MAL-ED          PERU                           0                            0      215    222
ki0047075b-MAL-ED          PERU                           0                            1        6    222
ki0047075b-MAL-ED          PERU                           1                            0        1    222
ki0047075b-MAL-ED          PERU                           1                            1        0    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            0      232    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            0        5    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            1        1    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            0      220    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            1        1    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            0        4    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            1        0    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                            0      284    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                            1       11    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            0       60    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            1       11    366
ki1000108-IRC              INDIA                          0                            0      268    405
ki1000108-IRC              INDIA                          0                            1       15    405
ki1000108-IRC              INDIA                          1                            0      112    405
ki1000108-IRC              INDIA                          1                            1       10    405
ki1000109-EE               PAKISTAN                       0                            0      256    350
ki1000109-EE               PAKISTAN                       0                            1       63    350
ki1000109-EE               PAKISTAN                       1                            0       19    350
ki1000109-EE               PAKISTAN                       1                            1       12    350
ki1000109-ResPak           PAKISTAN                       0                            0        6      9
ki1000109-ResPak           PAKISTAN                       0                            1        0      9
ki1000109-ResPak           PAKISTAN                       1                            0        3      9
ki1000109-ResPak           PAKISTAN                       1                            1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                            0     1064   1256
ki1000304b-SAS-CompFeed    INDIA                          0                            1      107   1256
ki1000304b-SAS-CompFeed    INDIA                          1                            0       64   1256
ki1000304b-SAS-CompFeed    INDIA                          1                            1       21   1256
ki1000304b-SAS-FoodSuppl   INDIA                          0                            0      250    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                            1       51    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                            0       13    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                            1        9    323
ki1017093-NIH-Birth        BANGLADESH                     0                            0      375    462
ki1017093-NIH-Birth        BANGLADESH                     0                            1       39    462
ki1017093-NIH-Birth        BANGLADESH                     1                            0       36    462
ki1017093-NIH-Birth        BANGLADESH                     1                            1       12    462
ki1017093b-PROVIDE         BANGLADESH                     0                            0      494    551
ki1017093b-PROVIDE         BANGLADESH                     0                            1       34    551
ki1017093b-PROVIDE         BANGLADESH                     1                            0       21    551
ki1017093b-PROVIDE         BANGLADESH                     1                            1        2    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                            0      560    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                            1       26    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            0       45    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            1        3    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      932    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1       20    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0       27    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1        1    980
ki1101329-Keneba           GAMBIA                         0                            0     1589   1757
ki1101329-Keneba           GAMBIA                         0                            1       74   1757
ki1101329-Keneba           GAMBIA                         1                            0       71   1757
ki1101329-Keneba           GAMBIA                         1                            1       23   1757
ki1113344-GMS-Nepal        NEPAL                          0                            0      447    550
ki1113344-GMS-Nepal        NEPAL                          0                            1       47    550
ki1113344-GMS-Nepal        NEPAL                          1                            0       45    550
ki1113344-GMS-Nepal        NEPAL                          1                            1       11    550
ki1114097-CMIN             BANGLADESH                     0                            0      203    237
ki1114097-CMIN             BANGLADESH                     0                            1       24    237
ki1114097-CMIN             BANGLADESH                     1                            0        8    237
ki1114097-CMIN             BANGLADESH                     1                            1        2    237
ki1114097-CMIN             BRAZIL                         0                            0      114    115
ki1114097-CMIN             BRAZIL                         0                            1        0    115
ki1114097-CMIN             BRAZIL                         1                            0        1    115
ki1114097-CMIN             BRAZIL                         1                            1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                            0      515    542
ki1114097-CMIN             GUINEA-BISSAU                  0                            1       15    542
ki1114097-CMIN             GUINEA-BISSAU                  1                            0       10    542
ki1114097-CMIN             GUINEA-BISSAU                  1                            1        2    542
ki1114097-CMIN             PERU                           0                            0      367    375
ki1114097-CMIN             PERU                           0                            1        0    375
ki1114097-CMIN             PERU                           1                            0        8    375
ki1114097-CMIN             PERU                           1                            1        0    375
ki1114097-CONTENT          PERU                           0                            0      199    200
ki1114097-CONTENT          PERU                           0                            1        1    200
ki1114097-CONTENT          PERU                           1                            0        0    200
ki1114097-CONTENT          PERU                           1                            1        0    200
ki1119695-PROBIT           BELARUS                        0                            0     2001   2146
ki1119695-PROBIT           BELARUS                        0                            1        0   2146
ki1119695-PROBIT           BELARUS                        1                            0      145   2146
ki1119695-PROBIT           BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                            0     1468   1655
ki1126311-ZVITAMBO         ZIMBABWE                       0                            1       76   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                            0      101   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                            1       10   1655
ki1135781-COHORTS          GUATEMALA                      0                            0      691    774
ki1135781-COHORTS          GUATEMALA                      0                            1       35    774
ki1135781-COHORTS          GUATEMALA                      1                            0       45    774
ki1135781-COHORTS          GUATEMALA                      1                            1        3    774
ki1135781-COHORTS          PHILIPPINES                    0                            0     2163   2487
ki1135781-COHORTS          PHILIPPINES                    0                            1      163   2487
ki1135781-COHORTS          PHILIPPINES                    1                            0      137   2487
ki1135781-COHORTS          PHILIPPINES                    1                            1       24   2487
ki1148112-LCNI-5           MALAWI                         0                            0      676    693
ki1148112-LCNI-5           MALAWI                         0                            1       17    693
ki1148112-LCNI-5           MALAWI                         1                            0        0    693
ki1148112-LCNI-5           MALAWI                         1                            1        0    693
kiGH5241-JiVitA-4          BANGLADESH                     0                            0     4011   4527
kiGH5241-JiVitA-4          BANGLADESH                     0                            1      406   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                            0       83   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                            1       27   4527


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/78618ad3-2b21-4003-9d43-3c92063d49ff/9bc8be2b-abc8-4843-a8e5-0b090d6a113b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78618ad3-2b21-4003-9d43-3c92063d49ff/9bc8be2b-abc8-4843-a8e5-0b090d6a113b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/78618ad3-2b21-4003-9d43-3c92063d49ff/9bc8be2b-abc8-4843-a8e5-0b090d6a113b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78618ad3-2b21-4003-9d43-3c92063d49ff/9bc8be2b-abc8-4843-a8e5-0b090d6a113b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0576923   0.0259363   0.0894483
ki0047075b-MAL-ED          INDIA         1                    NA                0.2500000   0.0598098   0.4401902
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0370096   0.0154544   0.0585647
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1600906   0.0726148   0.2475664
ki1000108-IRC              INDIA         0                    NA                0.0487523   0.0241020   0.0734027
ki1000108-IRC              INDIA         1                    NA                0.1052504   0.0447509   0.1657498
ki1000109-EE               PAKISTAN      0                    NA                0.1985861   0.1546797   0.2424925
ki1000109-EE               PAKISTAN      1                    NA                0.3918465   0.2096505   0.5740426
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0918456   0.0804799   0.1032113
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2327006   0.1170186   0.3483826
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1694352   0.1269902   0.2118802
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.4090909   0.2033217   0.6148601
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0941943   0.0660221   0.1223665
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2423497   0.1164972   0.3682022
ki1101329-Keneba           GAMBIA        0                    NA                0.0447966   0.0348593   0.0547339
ki1101329-Keneba           GAMBIA        1                    NA                0.2148365   0.1305212   0.2991518
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0947179   0.0688495   0.1205864
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1925745   0.0815276   0.3036214
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0492253   0.0384285   0.0600222
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0838081   0.0299324   0.1376838
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0692859   0.0589415   0.0796303
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1693028   0.1107278   0.2278778
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0919014   0.0824947   0.1013081
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2479109   0.1438383   0.3519835


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1101329-Keneba           GAMBIA        NA                   NA                0.0552077   0.0445257   0.0658898
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0519637   0.0412672   0.0626603
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.333333   1.6943978   11.082272
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 4.325656   1.9494099    9.598441
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 2.158878   1.0115038    4.607748
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.973182   1.1770744    3.307734
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 2.533606   1.4675237    4.374144
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.414439   1.3765027    4.235018
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.572869   1.4135056    4.683149
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 4.795821   3.0569641    7.523772
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 2.033136   1.0740755    3.848559
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.702541   0.8630317    3.358677
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.443539   1.6774610    3.559476
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 2.697576   1.7680342    4.115822


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0168691   -0.0014660   0.0352042
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0230997    0.0055908   0.0406087
ki1000108-IRC              INDIA         0                    NA                0.0129761   -0.0031669   0.0291190
ki1000109-EE               PAKISTAN      0                    NA                0.0156996   -0.0013765   0.0327758
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0100652    0.0026992   0.0174312
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0163233    0.0005665   0.0320801
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0161953    0.0024274   0.0299632
ki1101329-Keneba           GAMBIA        0                    NA                0.0104111    0.0053150   0.0155073
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0107366   -0.0005068   0.0219800
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0027384   -0.0009441   0.0064210
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0059051    0.0022080   0.0096022
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0037470    0.0003291   0.0071648


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.2262443   -0.0361734   0.4222031
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3842955    0.0752517   0.5900592
ki1000108-IRC              INDIA         0                    NA                0.2102122   -0.0867325   0.4260181
ki1000109-EE               PAKISTAN      0                    NA                0.0732650   -0.0090592   0.1488728
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0987651    0.0270485   0.1651955
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0878738    0.0005171   0.1675953
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1467104    0.0177574   0.2587338
ki1101329-Keneba           GAMBIA        0                    NA                0.1885812    0.0985114   0.2696519
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1018126   -0.0089471   0.2004134
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0526988   -0.0200856   0.1202898
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0785346    0.0288818   0.1256487
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0391744    0.0040579   0.0730527
