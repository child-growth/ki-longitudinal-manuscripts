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

studyid                    country                        ever_wasted06    co_occurence   n_cell      n
-------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                           0      165    221
ki0047075b-MAL-ED          BANGLADESH                     0                           1        5    221
ki0047075b-MAL-ED          BANGLADESH                     1                           0       42    221
ki0047075b-MAL-ED          BANGLADESH                     1                           1        9    221
ki0047075b-MAL-ED          BRAZIL                         0                           0      167    180
ki0047075b-MAL-ED          BRAZIL                         0                           1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                           0       12    180
ki0047075b-MAL-ED          BRAZIL                         1                           1        0    180
ki0047075b-MAL-ED          INDIA                          0                           0      149    228
ki0047075b-MAL-ED          INDIA                          0                           1        4    228
ki0047075b-MAL-ED          INDIA                          1                           0       62    228
ki0047075b-MAL-ED          INDIA                          1                           1       13    228
ki0047075b-MAL-ED          NEPAL                          0                           0      186    229
ki0047075b-MAL-ED          NEPAL                          0                           1        2    229
ki0047075b-MAL-ED          NEPAL                          1                           0       39    229
ki0047075b-MAL-ED          NEPAL                          1                           1        2    229
ki0047075b-MAL-ED          PERU                           0                           0      208    222
ki0047075b-MAL-ED          PERU                           0                           1        5    222
ki0047075b-MAL-ED          PERU                           1                           0        8    222
ki0047075b-MAL-ED          PERU                           1                           1        1    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           0      214    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       23    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           0      212    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       12    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                           0      170    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                           1        4    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           0      174    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           1       18    366
ki1000108-IRC              INDIA                          0                           0      175    405
ki1000108-IRC              INDIA                          0                           1       10    405
ki1000108-IRC              INDIA                          1                           0      205    405
ki1000108-IRC              INDIA                          1                           1       15    405
ki1000109-EE               PAKISTAN                       0                           0      208    350
ki1000109-EE               PAKISTAN                       0                           1       33    350
ki1000109-EE               PAKISTAN                       1                           0       67    350
ki1000109-EE               PAKISTAN                       1                           1       42    350
ki1000109-ResPak           PAKISTAN                       0                           0        4      9
ki1000109-ResPak           PAKISTAN                       0                           1        0      9
ki1000109-ResPak           PAKISTAN                       1                           0        5      9
ki1000109-ResPak           PAKISTAN                       1                           1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                           0      899   1256
ki1000304b-SAS-CompFeed    INDIA                          0                           1       72   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           0      229   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           1       56   1256
ki1000304b-SAS-FoodSuppl   INDIA                          0                           0      218    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                           1       35    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           0       45    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           1       25    323
ki1017093-NIH-Birth        BANGLADESH                     0                           0      281    462
ki1017093-NIH-Birth        BANGLADESH                     0                           1       14    462
ki1017093-NIH-Birth        BANGLADESH                     1                           0      130    462
ki1017093-NIH-Birth        BANGLADESH                     1                           1       37    462
ki1017093b-PROVIDE         BANGLADESH                     0                           0      391    551
ki1017093b-PROVIDE         BANGLADESH                     0                           1       22    551
ki1017093b-PROVIDE         BANGLADESH                     1                           0      124    551
ki1017093b-PROVIDE         BANGLADESH                     1                           1       14    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                           0      439    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                           1       14    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           0      166    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           1       15    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      829    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       14    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      130    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        7    980
ki1101329-Keneba           GAMBIA                         0                           0     1413   1757
ki1101329-Keneba           GAMBIA                         0                           1       52   1757
ki1101329-Keneba           GAMBIA                         1                           0      247   1757
ki1101329-Keneba           GAMBIA                         1                           1       45   1757
ki1113344-GMS-Nepal        NEPAL                          0                           0      353    550
ki1113344-GMS-Nepal        NEPAL                          0                           1       28    550
ki1113344-GMS-Nepal        NEPAL                          1                           0      139    550
ki1113344-GMS-Nepal        NEPAL                          1                           1       30    550
ki1114097-CMIN             BANGLADESH                     0                           0      179    237
ki1114097-CMIN             BANGLADESH                     0                           1       17    237
ki1114097-CMIN             BANGLADESH                     1                           0       32    237
ki1114097-CMIN             BANGLADESH                     1                           1        9    237
ki1114097-CMIN             BRAZIL                         0                           0      107    115
ki1114097-CMIN             BRAZIL                         0                           1        0    115
ki1114097-CMIN             BRAZIL                         1                           0        8    115
ki1114097-CMIN             BRAZIL                         1                           1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                           0      495    542
ki1114097-CMIN             GUINEA-BISSAU                  0                           1       15    542
ki1114097-CMIN             GUINEA-BISSAU                  1                           0       30    542
ki1114097-CMIN             GUINEA-BISSAU                  1                           1        2    542
ki1114097-CMIN             PERU                           0                           0      347    375
ki1114097-CMIN             PERU                           0                           1        0    375
ki1114097-CMIN             PERU                           1                           0       28    375
ki1114097-CMIN             PERU                           1                           1        0    375
ki1114097-CONTENT          PERU                           0                           0      196    200
ki1114097-CONTENT          PERU                           0                           1        1    200
ki1114097-CONTENT          PERU                           1                           0        3    200
ki1114097-CONTENT          PERU                           1                           1        0    200
ki1119695-PROBIT           BELARUS                        0                           0     1618   2146
ki1119695-PROBIT           BELARUS                        0                           1        0   2146
ki1119695-PROBIT           BELARUS                        1                           0      528   2146
ki1119695-PROBIT           BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                           0     1285   1655
ki1126311-ZVITAMBO         ZIMBABWE                       0                           1       54   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                           0      284   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                           1       32   1655
ki1135781-COHORTS          GUATEMALA                      0                           0      594    774
ki1135781-COHORTS          GUATEMALA                      0                           1       26    774
ki1135781-COHORTS          GUATEMALA                      1                           0      142    774
ki1135781-COHORTS          GUATEMALA                      1                           1       12    774
ki1135781-COHORTS          PHILIPPINES                    0                           0     1777   2487
ki1135781-COHORTS          PHILIPPINES                    0                           1      112   2487
ki1135781-COHORTS          PHILIPPINES                    1                           0      523   2487
ki1135781-COHORTS          PHILIPPINES                    1                           1       75   2487
ki1148112-LCNI-5           MALAWI                         0                           0      667    693
ki1148112-LCNI-5           MALAWI                         0                           1       16    693
ki1148112-LCNI-5           MALAWI                         1                           0        9    693
ki1148112-LCNI-5           MALAWI                         1                           1        1    693
kiGH5241-JiVitA-4          BANGLADESH                     0                           0     3657   4527
kiGH5241-JiVitA-4          BANGLADESH                     0                           1      288   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           0      437   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           1      145   4527


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
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
![](/tmp/b53976ae-5a64-47b1-b74e-dc2e07a40c92/03f4f82b-b75b-4070-8f4c-dc77b83cd397/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b53976ae-5a64-47b1-b74e-dc2e07a40c92/03f4f82b-b75b-4070-8f4c-dc77b83cd397/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b53976ae-5a64-47b1-b74e-dc2e07a40c92/03f4f82b-b75b-4070-8f4c-dc77b83cd397/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b53976ae-5a64-47b1-b74e-dc2e07a40c92/03f4f82b-b75b-4070-8f4c-dc77b83cd397/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0294118   0.0039560   0.0548675
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1764706   0.0716073   0.2813339
ki1000108-IRC              INDIA                          0                    NA                0.0482946   0.0180240   0.0785652
ki1000108-IRC              INDIA                          1                    NA                0.0729208   0.0386040   0.1072376
ki1000109-EE               PAKISTAN                       0                    NA                0.1359449   0.0921774   0.1797124
ki1000109-EE               PAKISTAN                       1                    NA                0.4020534   0.3049747   0.4991321
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0795000   0.0667756   0.0922244
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1967328   0.1475820   0.2458836
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1395071   0.0967108   0.1823034
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3482532   0.2331569   0.4633494
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0488082   0.0243563   0.0732602
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2324028   0.1698335   0.2949720
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0548212   0.0330940   0.0765483
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0977628   0.0467445   0.1487812
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0306116   0.0147017   0.0465214
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0986100   0.0578826   0.1393375
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0166074   0.0079762   0.0252385
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0510949   0.0142048   0.0879850
ki1101329-Keneba           GAMBIA                         0                    NA                0.0356787   0.0262070   0.0451505
ki1101329-Keneba           GAMBIA                         1                    NA                0.1469694   0.1062315   0.1877073
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0743190   0.0480320   0.1006061
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1764623   0.1182269   0.2346976
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0867347   0.0472496   0.1262198
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2195122   0.0925464   0.3464780
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0404407   0.0296363   0.0512451
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1321303   0.0929746   0.1712861
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0421388   0.0262938   0.0579837
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0757491   0.0331849   0.1183133
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0575349   0.0469948   0.0680749
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1353389   0.0852339   0.1854438
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0917642   0.0817845   0.1017438
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2981831   0.2099090   0.3864572


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0633484   0.0311604   0.0955364
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0552077   0.0445257   0.0658898
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0519637   0.0412672   0.0626603
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0490956   0.0338639   0.0643273
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 6.000000   2.0999382   17.143362
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.509917   0.6944259    3.283069
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 2.957474   1.9770083    4.424185
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.474627   2.0683336    2.960730
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.496311   1.5888112    3.922159
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 4.761547   2.6948907    8.413081
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.783304   0.9242274    3.440900
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.221334   1.6658112    6.229394
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.076642   1.2639518    7.488995
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 4.119246   2.8121312    6.033925
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.374388   1.4629432    3.853683
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.530846   1.2122647    5.283651
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 3.267261   2.1918955    4.870211
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.797611   0.9137651    3.536365
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.352293   1.5586062    3.550148
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.249451   2.3749721    4.445917


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0339367    0.0077232   0.0601501
ki1000108-IRC              INDIA                          0                    NA                0.0134338   -0.0104383   0.0373059
ki1000109-EE               PAKISTAN                       0                    NA                0.0783408    0.0438236   0.1128580
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0224108    0.0107790   0.0340427
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0462514    0.0183140   0.0741888
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0615814    0.0359946   0.0871681
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0105146   -0.0034311   0.0244602
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0151298    0.0027591   0.0275004
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048212   -0.0005279   0.0101703
ki1101329-Keneba           GAMBIA                         0                    NA                0.0195290    0.0122586   0.0267995
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0311355    0.0111852   0.0510858
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0229699   -0.0009080   0.0468479
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0115230    0.0045740   0.0184721
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0069568   -0.0021504   0.0160641
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0176561    0.0100709   0.0252414
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0038842   -0.0034613   0.0112297


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5357143    0.0769639   0.7664650
ki1000108-IRC              INDIA                          0                    NA                0.2176276   -0.2723203   0.5189053
ki1000109-EE               PAKISTAN                       0                    NA                0.3655905    0.1970001   0.4987853
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2199064    0.1058787   0.3193922
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2489868    0.0915693   0.3791262
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5578547    0.3267576   0.7096255
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1609314   -0.0728570   0.3437745
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3307682    0.0322233   0.5372163
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2249901   -0.0446753   0.4250459
ki1101329-Keneba           GAMBIA                         0                    NA                0.3537371    0.2287201   0.4584901
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2952505    0.0944394   0.4515311
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2093799   -0.0268154   0.3912439
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2217516    0.0835118   0.3391399
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1417000   -0.0592074   0.3044998
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2348170    0.1338991   0.3239760
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0406089   -0.0377212   0.1130265
