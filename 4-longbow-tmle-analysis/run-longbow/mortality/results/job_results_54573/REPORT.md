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

studyid                    country                        ever_swasted06    co_occurence   n_cell      n
-------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                            0      194    221
ki0047075b-MAL-ED          BANGLADESH                     0                            1       12    221
ki0047075b-MAL-ED          BANGLADESH                     1                            0       13    221
ki0047075b-MAL-ED          BANGLADESH                     1                            1        2    221
ki0047075b-MAL-ED          BRAZIL                         0                            0      177    180
ki0047075b-MAL-ED          BRAZIL                         0                            1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                            0        2    180
ki0047075b-MAL-ED          BRAZIL                         1                            1        0    180
ki0047075b-MAL-ED          INDIA                          0                            0      195    228
ki0047075b-MAL-ED          INDIA                          0                            1       12    228
ki0047075b-MAL-ED          INDIA                          1                            0       16    228
ki0047075b-MAL-ED          INDIA                          1                            1        5    228
ki0047075b-MAL-ED          NEPAL                          0                            0      218    229
ki0047075b-MAL-ED          NEPAL                          0                            1        4    229
ki0047075b-MAL-ED          NEPAL                          1                            0        7    229
ki0047075b-MAL-ED          NEPAL                          1                            1        0    229
ki0047075b-MAL-ED          PERU                           0                            0      215    222
ki0047075b-MAL-ED          PERU                           0                            1        6    222
ki0047075b-MAL-ED          PERU                           1                            0        1    222
ki0047075b-MAL-ED          PERU                           1                            1        0    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            0      231    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            0        6    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            1        1    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            0      220    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            1        1    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            0        4    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            1        0    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                            0      287    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                            1       11    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            0       57    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            1       11    366
ki1000108-IRC              INDIA                          0                            0      268    405
ki1000108-IRC              INDIA                          0                            1       15    405
ki1000108-IRC              INDIA                          1                            0      112    405
ki1000108-IRC              INDIA                          1                            1       10    405
ki1000109-EE               PAKISTAN                       0                            0      246    346
ki1000109-EE               PAKISTAN                       0                            1       64    346
ki1000109-EE               PAKISTAN                       1                            0       26    346
ki1000109-EE               PAKISTAN                       1                            1       10    346
ki1000109-ResPak           PAKISTAN                       0                            0        6      9
ki1000109-ResPak           PAKISTAN                       0                            1        0      9
ki1000109-ResPak           PAKISTAN                       1                            0        2      9
ki1000109-ResPak           PAKISTAN                       1                            1        1      9
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
ki1017093b-PROVIDE         BANGLADESH                     0                            0      504    563
ki1017093b-PROVIDE         BANGLADESH                     0                            1       35    563
ki1017093b-PROVIDE         BANGLADESH                     1                            0       22    563
ki1017093b-PROVIDE         BANGLADESH                     1                            1        2    563
ki1017093c-NIH-Crypto      BANGLADESH                     0                            0      560    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                            1       26    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            0       45    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            1        3    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      932    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1       20    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0       27    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1        1    980
ki1101329-Keneba           GAMBIA                         0                            0     1535   1775
ki1101329-Keneba           GAMBIA                         0                            1       73   1775
ki1101329-Keneba           GAMBIA                         1                            0      140   1775
ki1101329-Keneba           GAMBIA                         1                            1       27   1775
ki1113344-GMS-Nepal        NEPAL                          0                            0      429    550
ki1113344-GMS-Nepal        NEPAL                          0                            1       50    550
ki1113344-GMS-Nepal        NEPAL                          1                            0       61    550
ki1113344-GMS-Nepal        NEPAL                          1                            1       10    550
ki1114097-CMIN             BANGLADESH                     0                            0      203    237
ki1114097-CMIN             BANGLADESH                     0                            1       24    237
ki1114097-CMIN             BANGLADESH                     1                            0        8    237
ki1114097-CMIN             BANGLADESH                     1                            1        2    237
ki1114097-CONTENT          PERU                           0                            0      199    200
ki1114097-CONTENT          PERU                           0                            1        1    200
ki1114097-CONTENT          PERU                           1                            0        0    200
ki1114097-CONTENT          PERU                           1                            1        0    200
ki1119695-PROBIT           BELARUS                        0                            0     2001   2146
ki1119695-PROBIT           BELARUS                        0                            1        0   2146
ki1119695-PROBIT           BELARUS                        1                            0      145   2146
ki1119695-PROBIT           BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                            0     1489   1680
ki1126311-ZVITAMBO         ZIMBABWE                       0                            1       78   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                            0      103   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                            1       10   1680
ki1135781-COHORTS          GUATEMALA                      0                            0      691    774
ki1135781-COHORTS          GUATEMALA                      0                            1       35    774
ki1135781-COHORTS          GUATEMALA                      1                            0       45    774
ki1135781-COHORTS          GUATEMALA                      1                            1        3    774
ki1135781-COHORTS          PHILIPPINES                    0                            0     2163   2487
ki1135781-COHORTS          PHILIPPINES                    0                            1      163   2487
ki1135781-COHORTS          PHILIPPINES                    1                            0      137   2487
ki1135781-COHORTS          PHILIPPINES                    1                            1       24   2487
ki1148112-LCNI-5           MALAWI                         0                            0      675    693
ki1148112-LCNI-5           MALAWI                         0                            1       18    693
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
![](/tmp/fd4ea18c-6520-42e5-9559-47bc65f2c61c/0fb8347e-e4f9-43c0-8f75-9b5be28b590c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd4ea18c-6520-42e5-9559-47bc65f2c61c/0fb8347e-e4f9-43c0-8f75-9b5be28b590c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd4ea18c-6520-42e5-9559-47bc65f2c61c/0fb8347e-e4f9-43c0-8f75-9b5be28b590c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd4ea18c-6520-42e5-9559-47bc65f2c61c/0fb8347e-e4f9-43c0-8f75-9b5be28b590c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0579710   0.0260663   0.0898757
ki0047075b-MAL-ED          INDIA         1                    NA                0.2380952   0.0555298   0.4206607
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0367270   0.0153800   0.0580741
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1701313   0.0785081   0.2617544
ki1000108-IRC              INDIA         0                    NA                0.0516452   0.0255088   0.0777817
ki1000108-IRC              INDIA         1                    NA                0.0774811   0.0278960   0.1270663
ki1000109-EE               PAKISTAN      0                    NA                0.2082503   0.1628471   0.2536535
ki1000109-EE               PAKISTAN      1                    NA                0.2529880   0.1120381   0.3939378
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0918456   0.0804799   0.1032113
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2327006   0.1170186   0.3483826
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1694352   0.1269902   0.2118802
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.4090909   0.2033217   0.6148601
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0944634   0.0662684   0.1226585
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2533922   0.1244053   0.3823791
ki1101329-Keneba           GAMBIA        0                    NA                0.0457295   0.0355552   0.0559039
ki1101329-Keneba           GAMBIA        1                    NA                0.1491371   0.0936735   0.2046006
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1045319   0.0771030   0.1319608
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1419347   0.0604636   0.2234058
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0497897   0.0390181   0.0605613
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0933847   0.0403993   0.1463702
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0699203   0.0595476   0.0802929
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1518029   0.0962711   0.2073347
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0919154   0.0825188   0.1013120
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2411658   0.1070633   0.3752682


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.107143   1.5982135   10.554674
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 4.632319   2.1005125   10.215780
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 1.500257   0.6627215    3.396254
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.214826   0.6659243    2.216172
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 2.533606   1.4675237    4.374144
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.414439   1.3765027    4.235018
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.682437   1.4858578    4.842635
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 3.261286   2.1165066    5.025257
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 1.357813   0.7221770    2.552913
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.875583   1.0218007    3.442757
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.171086   1.4634849    3.220815
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 2.623779   1.5000909    4.589201


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0165904   -0.0017754   0.0349561
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0233823    0.0059352   0.0408294
ki1000108-IRC              INDIA         0                    NA                0.0100831   -0.0067663   0.0269326
ki1000109-EE               PAKISTAN      0                    NA                0.0056225   -0.0111076   0.0223526
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0100652    0.0026992   0.0174312
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0163233    0.0005665   0.0320801
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0159262    0.0020884   0.0297640
ki1101329-Keneba           GAMBIA        0                    NA                0.0106085    0.0050968   0.0161202
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0045590   -0.0065509   0.0156689
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0025913   -0.0010362   0.0062187
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0052707    0.0015747   0.0089668
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0037329    0.0000240   0.0074418


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.2225064   -0.0412448   0.4194484
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3889959    0.0833481   0.5927287
ki1000108-IRC              INDIA         0                    NA                0.1633470   -0.1526683   0.3927236
ki1000109-EE               PAKISTAN      0                    NA                0.0262890   -0.0549991   0.1013137
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0987651    0.0270485   0.1651955
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0878738    0.0005171   0.1675953
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1442724    0.0146486   0.2568441
ki1101329-Keneba           GAMBIA        0                    NA                0.1883011    0.0914791   0.2748046
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0417909   -0.0652224   0.1380536
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0494695   -0.0216518   0.1156397
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0700979    0.0204220   0.1172547
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0390275    0.0007775   0.0758134
