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

**Intervention Variable:** ever_underweight06

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

studyid                    country                        ever_underweight06    co_occurence   n_cell      n
-------------------------  -----------------------------  -------------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                                0      149    221
ki0047075b-MAL-ED          BANGLADESH                     0                                1        3    221
ki0047075b-MAL-ED          BANGLADESH                     1                                0       58    221
ki0047075b-MAL-ED          BANGLADESH                     1                                1       11    221
ki0047075b-MAL-ED          BRAZIL                         0                                0      170    180
ki0047075b-MAL-ED          BRAZIL                         0                                1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                                0        9    180
ki0047075b-MAL-ED          BRAZIL                         1                                1        1    180
ki0047075b-MAL-ED          INDIA                          0                                0      137    228
ki0047075b-MAL-ED          INDIA                          0                                1        0    228
ki0047075b-MAL-ED          INDIA                          1                                0       74    228
ki0047075b-MAL-ED          INDIA                          1                                1       17    228
ki0047075b-MAL-ED          NEPAL                          0                                0      191    229
ki0047075b-MAL-ED          NEPAL                          0                                1        0    229
ki0047075b-MAL-ED          NEPAL                          1                                0       34    229
ki0047075b-MAL-ED          NEPAL                          1                                1        4    229
ki0047075b-MAL-ED          PERU                           0                                0      184    222
ki0047075b-MAL-ED          PERU                           0                                1        1    222
ki0047075b-MAL-ED          PERU                           1                                0       32    222
ki0047075b-MAL-ED          PERU                           1                                1        5    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                0      201    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                0       36    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                0      188    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                0       36    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                                0      188    369
ki1000108-CMC-V-BCS-2002   INDIA                          0                                1        1    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                0      159    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                1       21    369
ki1000108-IRC              INDIA                          0                                0      209    405
ki1000108-IRC              INDIA                          0                                1        2    405
ki1000108-IRC              INDIA                          1                                0      171    405
ki1000108-IRC              INDIA                          1                                1       23    405
ki1000109-EE               PAKISTAN                       0                                0       93    350
ki1000109-EE               PAKISTAN                       0                                1        6    350
ki1000109-EE               PAKISTAN                       1                                0      182    350
ki1000109-EE               PAKISTAN                       1                                1       69    350
ki1000109-ResPak           PAKISTAN                       0                                0        3      9
ki1000109-ResPak           PAKISTAN                       0                                1        0      9
ki1000109-ResPak           PAKISTAN                       1                                0        6      9
ki1000109-ResPak           PAKISTAN                       1                                1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                                0      716   1260
ki1000304b-SAS-CompFeed    INDIA                          0                                1       18   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                0      416   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                1      110   1260
ki1000304b-SAS-FoodSuppl   INDIA                          0                                0      144    314
ki1000304b-SAS-FoodSuppl   INDIA                          0                                1       10    314
ki1000304b-SAS-FoodSuppl   INDIA                          1                                0      113    314
ki1000304b-SAS-FoodSuppl   INDIA                          1                                1       47    314
ki1017093-NIH-Birth        BANGLADESH                     0                                0      248    462
ki1017093-NIH-Birth        BANGLADESH                     0                                1        6    462
ki1017093-NIH-Birth        BANGLADESH                     1                                0      163    462
ki1017093-NIH-Birth        BANGLADESH                     1                                1       45    462
ki1017093b-PROVIDE         BANGLADESH                     0                                0      361    551
ki1017093b-PROVIDE         BANGLADESH                     0                                1       12    551
ki1017093b-PROVIDE         BANGLADESH                     1                                0      154    551
ki1017093b-PROVIDE         BANGLADESH                     1                                1       24    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                                0      424    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                                1        5    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                0      181    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                1       24    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                0      867    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                1        7    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                0       92    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                1       14    980
ki1101329-Keneba           GAMBIA                         0                                0     1374   1758
ki1101329-Keneba           GAMBIA                         0                                1       32   1758
ki1101329-Keneba           GAMBIA                         1                                0      285   1758
ki1101329-Keneba           GAMBIA                         1                                1       67   1758
ki1113344-GMS-Nepal        NEPAL                          0                                0      332    548
ki1113344-GMS-Nepal        NEPAL                          0                                1       12    548
ki1113344-GMS-Nepal        NEPAL                          1                                0      159    548
ki1113344-GMS-Nepal        NEPAL                          1                                1       45    548
ki1114097-CMIN             BANGLADESH                     0                                0      109    237
ki1114097-CMIN             BANGLADESH                     0                                1        2    237
ki1114097-CMIN             BANGLADESH                     1                                0      102    237
ki1114097-CMIN             BANGLADESH                     1                                1       24    237
ki1114097-CMIN             BRAZIL                         0                                0      102    115
ki1114097-CMIN             BRAZIL                         0                                1        0    115
ki1114097-CMIN             BRAZIL                         1                                0       13    115
ki1114097-CMIN             BRAZIL                         1                                1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                                0      485    541
ki1114097-CMIN             GUINEA-BISSAU                  0                                1        9    541
ki1114097-CMIN             GUINEA-BISSAU                  1                                0       39    541
ki1114097-CMIN             GUINEA-BISSAU                  1                                1        8    541
ki1114097-CMIN             PERU                           0                                0      347    374
ki1114097-CMIN             PERU                           0                                1        0    374
ki1114097-CMIN             PERU                           1                                0       27    374
ki1114097-CMIN             PERU                           1                                1        0    374
ki1114097-CONTENT          PERU                           0                                0      187    200
ki1114097-CONTENT          PERU                           0                                1        0    200
ki1114097-CONTENT          PERU                           1                                0       12    200
ki1114097-CONTENT          PERU                           1                                1        1    200
ki1119695-PROBIT           BELARUS                        0                                0     1980   2146
ki1119695-PROBIT           BELARUS                        0                                1        0   2146
ki1119695-PROBIT           BELARUS                        1                                0      166   2146
ki1119695-PROBIT           BELARUS                        1                                1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                                0     1239   1667
ki1126311-ZVITAMBO         ZIMBABWE                       0                                1       36   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                0      339   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                1       53   1667
ki1135781-COHORTS          GUATEMALA                      0                                0      554    779
ki1135781-COHORTS          GUATEMALA                      0                                1       11    779
ki1135781-COHORTS          GUATEMALA                      1                                0      187    779
ki1135781-COHORTS          GUATEMALA                      1                                1       27    779
ki1135781-COHORTS          PHILIPPINES                    0                                0     1874   2487
ki1135781-COHORTS          PHILIPPINES                    0                                1       77   2487
ki1135781-COHORTS          PHILIPPINES                    1                                0      426   2487
ki1135781-COHORTS          PHILIPPINES                    1                                1      110   2487
ki1148112-LCNI-5           MALAWI                         0                                0      606    691
ki1148112-LCNI-5           MALAWI                         0                                1        5    691
ki1148112-LCNI-5           MALAWI                         1                                0       68    691
ki1148112-LCNI-5           MALAWI                         1                                1       12    691
kiGH5241-JiVitA-4          BANGLADESH                     0                                0     2948   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                                1       70   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                                0     1158   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                                1      365   4541


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/b52b8cfb-820d-47d9-8115-31bf28c7bfe1/17bce1ee-6cb8-4af1-b6ad-47e592a127f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b52b8cfb-820d-47d9-8115-31bf28c7bfe1/17bce1ee-6cb8-4af1-b6ad-47e592a127f8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b52b8cfb-820d-47d9-8115-31bf28c7bfe1/17bce1ee-6cb8-4af1-b6ad-47e592a127f8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b52b8cfb-820d-47d9-8115-31bf28c7bfe1/17bce1ee-6cb8-4af1-b6ad-47e592a127f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.0606061   0.0135372   0.1076749
ki1000109-EE               PAKISTAN                       1                    NA                0.2749004   0.2195884   0.3302124
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0245232   0.0164102   0.0326362
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2084687   0.1847544   0.2321829
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0648859   0.0255390   0.1042328
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2892425   0.2180852   0.3603998
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0341554   0.0156124   0.0526985
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1275185   0.0768588   0.1781783
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0116550   0.0014908   0.0218192
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1170732   0.0730273   0.1611190
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ki1101329-Keneba           GAMBIA                         0                    NA                0.0226275   0.0149450   0.0303100
ki1101329-Keneba           GAMBIA                         1                    NA                0.1683947   0.1292239   0.2075655
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0350212   0.0155824   0.0544600
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2227990   0.1655802   0.2800178
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0182186   0.0064140   0.0300232
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1702128   0.0626702   0.2777553
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0277993   0.0187745   0.0368241
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1339293   0.0977513   0.1701072
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0199217   0.0082923   0.0315510
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1305067   0.0845539   0.1764596
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0381430   0.0296753   0.0466106
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1634069   0.1182597   0.2085542
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
ki1148112-LCNI-5           MALAWI                         1                    NA                0.1500000   0.0716980   0.2283020
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0256997   0.0181695   0.0332299
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2420057   0.2009084   0.2831030


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1015873   0.0902183   0.1129563
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815287   0.1388265   0.2242309
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563140   0.0455349   0.0670931
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1040146   0.0784316   0.1295976
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0314233   0.0167088   0.0461377
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0533893   0.0425943   0.0641843
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0336441   0.0639169
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0246020   0.0130436   0.0361605
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0957939   0.0857517   0.1058361


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  4.535857   2.033456   10.117745
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  8.500884   5.627663   12.841040
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.457708   2.312160    8.594199
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.733477   1.905509    7.315025
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 10.044878   3.885621   25.967426
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.442045   4.934503   11.223830
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.361833   3.450930   11.728121
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  9.342789   3.779569   23.094619
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.817724   3.157284    7.351402
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  6.550985   3.308379   12.971730
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.284063   3.007171    6.103144
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 18.330000   6.625272   50.713222
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  9.416680   6.683754   13.267074


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.1536797   0.1006195   0.2067398
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0770641   0.0615188   0.0926094
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1166427   0.0733133   0.1599722
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0311803   0.0133084   0.0490522
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0340863   0.0189737   0.0491989
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ki1101329-Keneba           GAMBIA                         0                    NA                0.0336865   0.0248163   0.0425567
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0689934   0.0453376   0.0926492
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0132047   0.0031360   0.0232734
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0255900   0.0170393   0.0341408
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0288588   0.0157250   0.0419926
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0370480   0.0289158   0.0451802
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0164187   0.0067065   0.0261310
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0700942   0.0603339   0.0798544


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.7171717   0.4074438   0.8650055
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7586000   0.6487436   0.8340985
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6425582   0.3840193   0.7925834
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4772320   0.1892391   0.6629261
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7451973   0.4382889   0.8844167
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ki1101329-Keneba           GAMBIA                         0                    NA                0.5981908   0.4704943   0.6950919
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6633050   0.4511368   0.7934577
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.4202191   0.0987712   0.6270138
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4793101   0.3318961   0.5941978
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5916053   0.3336925   0.7496858
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4927188   0.3987497   0.5720015
ki1148112-LCNI-5           MALAWI                         0                    NA                0.6673727   0.3088027   0.8399286
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.7317189   0.6494479   0.7946818
