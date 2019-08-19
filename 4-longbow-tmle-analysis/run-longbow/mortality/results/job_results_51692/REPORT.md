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
![](/tmp/13c86cee-bbc2-461d-a075-ed05ba3c4537/8589d1ca-e041-49d1-b196-515c44610335/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13c86cee-bbc2-461d-a075-ed05ba3c4537/8589d1ca-e041-49d1-b196-515c44610335/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13c86cee-bbc2-461d-a075-ed05ba3c4537/8589d1ca-e041-49d1-b196-515c44610335/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13c86cee-bbc2-461d-a075-ed05ba3c4537/8589d1ca-e041-49d1-b196-515c44610335/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0576923   0.0259363   0.0894483
ki0047075b-MAL-ED          INDIA         1                    NA                0.2500000   0.0598098   0.4401902
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0367285   0.0152308   0.0582262
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1554183   0.0687491   0.2420875
ki1000108-IRC              INDIA         0                    NA                0.0492282   0.0244946   0.0739618
ki1000108-IRC              INDIA         1                    NA                0.0971083   0.0385972   0.1556194
ki1000109-EE               PAKISTAN      0                    NA                0.1997796   0.1557932   0.2437660
ki1000109-EE               PAKISTAN      1                    NA                0.3729833   0.1876976   0.5582690
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0918456   0.0804799   0.1032113
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2327006   0.1170186   0.3483826
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1694352   0.1269902   0.2118802
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.4090909   0.2033217   0.6148601
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0943107   0.0661743   0.1224472
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3039965   0.1827713   0.4252216
ki1101329-Keneba           GAMBIA        0                    NA                0.0447643   0.0348291   0.0546994
ki1101329-Keneba           GAMBIA        1                    NA                0.2239509   0.1379900   0.3099119
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0951578   0.0692650   0.1210507
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2090934   0.1023180   0.3158689
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0491730   0.0383817   0.0599643
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0860099   0.0315311   0.1404887
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0692664   0.0589237   0.0796091
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1725424   0.1144389   0.2306459
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0918852   0.0824739   0.1012965
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2494896   0.1510853   0.3478939


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
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 4.231550   1.8885238    9.481490
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 1.972616   0.9060247    4.294822
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.866974   1.0823983    3.220249
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 2.533606   1.4675237    4.374144
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.414439   1.3765027    4.235018
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 3.223350   1.9555688    5.313025
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 5.002897   3.2126471    7.790764
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 2.197333   1.2310642    3.922031
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.749127   0.8949186    3.418687
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.490998   1.7242747    3.598655
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 2.715233   1.8246561    4.040481


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0168691   -0.0014660   0.0352042
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0233808    0.0058835   0.0408782
ki1000108-IRC              INDIA         0                    NA                0.0125002   -0.0036222   0.0286227
ki1000109-EE               PAKISTAN      0                    NA                0.0145061   -0.0025608   0.0315731
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0100652    0.0026992   0.0174312
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0163233    0.0005665   0.0320801
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0160789    0.0022706   0.0298871
ki1101329-Keneba           GAMBIA        0                    NA                0.0104435    0.0053460   0.0155410
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0102967   -0.0009519   0.0215453
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0027907   -0.0008839   0.0064653
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0059246    0.0022258   0.0096234
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0037632    0.0003836   0.0071427


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.2262443   -0.0361734   0.4222031
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3889721    0.0803321   0.5940327
ki1000108-IRC              INDIA         0                    NA                0.2025037   -0.0940469   0.4186717
ki1000109-EE               PAKISTAN      0                    NA                0.0676953   -0.0145984   0.1433142
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0987651    0.0270485   0.1651955
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0878738    0.0005171   0.1675953
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1456558    0.0164667   0.2578757
ki1101329-Keneba           GAMBIA        0                    NA                0.1891671    0.0990849   0.2702419
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0976413   -0.0131702   0.1963331
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0537050   -0.0189080   0.1211433
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0787943    0.0291228   0.1259245
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0393438    0.0046391   0.0728385
