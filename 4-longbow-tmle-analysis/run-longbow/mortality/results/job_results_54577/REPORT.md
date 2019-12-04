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

studyid                    country                        ever_underweight06    co_occurence   n_cell      n
-------------------------  -----------------------------  -------------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                                0      147    221
ki0047075b-MAL-ED          BANGLADESH                     0                                1        3    221
ki0047075b-MAL-ED          BANGLADESH                     1                                0       60    221
ki0047075b-MAL-ED          BANGLADESH                     1                                1       11    221
ki0047075b-MAL-ED          BRAZIL                         0                                0      168    180
ki0047075b-MAL-ED          BRAZIL                         0                                1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                                0       11    180
ki0047075b-MAL-ED          BRAZIL                         1                                1        1    180
ki0047075b-MAL-ED          INDIA                          0                                0      130    228
ki0047075b-MAL-ED          INDIA                          0                                1        0    228
ki0047075b-MAL-ED          INDIA                          1                                0       81    228
ki0047075b-MAL-ED          INDIA                          1                                1       17    228
ki0047075b-MAL-ED          NEPAL                          0                                0      190    229
ki0047075b-MAL-ED          NEPAL                          0                                1        0    229
ki0047075b-MAL-ED          NEPAL                          1                                0       35    229
ki0047075b-MAL-ED          NEPAL                          1                                1        4    229
ki0047075b-MAL-ED          PERU                           0                                0      180    222
ki0047075b-MAL-ED          PERU                           0                                1        1    222
ki0047075b-MAL-ED          PERU                           1                                0       36    222
ki0047075b-MAL-ED          PERU                           1                                1        5    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                0      199    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                0       38    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                0      187    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                0       37    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                                0      188    369
ki1000108-CMC-V-BCS-2002   INDIA                          0                                1        1    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                0      159    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                1       21    369
ki1000108-IRC              INDIA                          0                                0      209    405
ki1000108-IRC              INDIA                          0                                1        2    405
ki1000108-IRC              INDIA                          1                                0      171    405
ki1000108-IRC              INDIA                          1                                1       23    405
ki1000109-EE               PAKISTAN                       0                                0       94    346
ki1000109-EE               PAKISTAN                       0                                1        4    346
ki1000109-EE               PAKISTAN                       1                                0      178    346
ki1000109-EE               PAKISTAN                       1                                1       70    346
ki1000109-ResPak           PAKISTAN                       0                                0        3      9
ki1000109-ResPak           PAKISTAN                       0                                1        0      9
ki1000109-ResPak           PAKISTAN                       1                                0        5      9
ki1000109-ResPak           PAKISTAN                       1                                1        1      9
ki1000304b-SAS-CompFeed    INDIA                          0                                0      716   1260
ki1000304b-SAS-CompFeed    INDIA                          0                                1       18   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                0      416   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                1      110   1260
ki1000304b-SAS-FoodSuppl   INDIA                          0                                0      144    321
ki1000304b-SAS-FoodSuppl   INDIA                          0                                1       10    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                0      117    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                1       50    321
ki1017093-NIH-Birth        BANGLADESH                     0                                0      248    462
ki1017093-NIH-Birth        BANGLADESH                     0                                1        6    462
ki1017093-NIH-Birth        BANGLADESH                     1                                0      163    462
ki1017093-NIH-Birth        BANGLADESH                     1                                1       45    462
ki1017093b-PROVIDE         BANGLADESH                     0                                0      369    563
ki1017093b-PROVIDE         BANGLADESH                     0                                1       12    563
ki1017093b-PROVIDE         BANGLADESH                     1                                0      157    563
ki1017093b-PROVIDE         BANGLADESH                     1                                1       25    563
ki1017093c-NIH-Crypto      BANGLADESH                     0                                0      419    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                                1        5    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                0      186    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                1       24    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                0      867    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                1        7    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                0       92    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                1       14    980
ki1101329-Keneba           GAMBIA                         0                                0     1427   1863
ki1101329-Keneba           GAMBIA                         0                                1       39   1863
ki1101329-Keneba           GAMBIA                         1                                0      327   1863
ki1101329-Keneba           GAMBIA                         1                                1       70   1863
ki1113344-GMS-Nepal        NEPAL                          0                                0      283    550
ki1113344-GMS-Nepal        NEPAL                          0                                1       12    550
ki1113344-GMS-Nepal        NEPAL                          1                                0      207    550
ki1113344-GMS-Nepal        NEPAL                          1                                1       48    550
ki1114097-CMIN             BANGLADESH                     0                                0      109    237
ki1114097-CMIN             BANGLADESH                     0                                1        2    237
ki1114097-CMIN             BANGLADESH                     1                                0      102    237
ki1114097-CMIN             BANGLADESH                     1                                1       24    237
ki1114097-CONTENT          PERU                           0                                0      187    200
ki1114097-CONTENT          PERU                           0                                1        0    200
ki1114097-CONTENT          PERU                           1                                0       12    200
ki1114097-CONTENT          PERU                           1                                1        1    200
ki1119695-PROBIT           BELARUS                        0                                0     1980   2146
ki1119695-PROBIT           BELARUS                        0                                1        0   2146
ki1119695-PROBIT           BELARUS                        1                                0      166   2146
ki1119695-PROBIT           BELARUS                        1                                1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                                0     1258   1692
ki1126311-ZVITAMBO         ZIMBABWE                       0                                1       37   1692
ki1126311-ZVITAMBO         ZIMBABWE                       1                                0      343   1692
ki1126311-ZVITAMBO         ZIMBABWE                       1                                1       54   1692
ki1135781-COHORTS          GUATEMALA                      0                                0      554    779
ki1135781-COHORTS          GUATEMALA                      0                                1       11    779
ki1135781-COHORTS          GUATEMALA                      1                                0      187    779
ki1135781-COHORTS          GUATEMALA                      1                                1       27    779
ki1135781-COHORTS          PHILIPPINES                    0                                0     1871   2487
ki1135781-COHORTS          PHILIPPINES                    0                                1       77   2487
ki1135781-COHORTS          PHILIPPINES                    1                                0      429   2487
ki1135781-COHORTS          PHILIPPINES                    1                                1      110   2487
ki1148112-LCNI-5           MALAWI                         0                                0      606    692
ki1148112-LCNI-5           MALAWI                         0                                1        5    692
ki1148112-LCNI-5           MALAWI                         1                                0       68    692
ki1148112-LCNI-5           MALAWI                         1                                1       13    692
kiGH5241-JiVitA-4          BANGLADESH                     0                                0     2944   4547
kiGH5241-JiVitA-4          BANGLADESH                     0                                1       70   4547
kiGH5241-JiVitA-4          BANGLADESH                     1                                0     1166   4547
kiGH5241-JiVitA-4          BANGLADESH                     1                                1      367   4547


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/a93fa487-b5a7-4e5a-9cd3-091669e653ef/ee4d517f-aeec-46b0-8f87-6e0b78c85072/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a93fa487-b5a7-4e5a-9cd3-091669e653ef/ee4d517f-aeec-46b0-8f87-6e0b78c85072/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a93fa487-b5a7-4e5a-9cd3-091669e653ef/ee4d517f-aeec-46b0-8f87-6e0b78c85072/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a93fa487-b5a7-4e5a-9cd3-091669e653ef/ee4d517f-aeec-46b0-8f87-6e0b78c85072/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0245232   0.0164102   0.0326362
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2084687   0.1847544   0.2321829
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0650758   0.0258225   0.1043291
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2944342   0.2246838   0.3641846
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0333110   0.0153957   0.0512263
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1278484   0.0770091   0.1786877
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0117925   0.0015091   0.0220758
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1142857   0.0712208   0.1573507
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ki1101329-Keneba           GAMBIA                         0                    NA                0.0271894   0.0188471   0.0355317
ki1101329-Keneba           GAMBIA                         1                    NA                0.1599121   0.1228234   0.1970009
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0406184   0.0182043   0.0630324
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1893313   0.1411150   0.2375476
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0288020   0.0197236   0.0378805
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1378277   0.1041345   0.1715208
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0196628   0.0081507   0.0311750
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1290070   0.0831801   0.1748340
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0411177   0.0322971   0.0499384
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1803006   0.1468430   0.2137582
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
ki1148112-LCNI-5           MALAWI                         1                    NA                0.1604938   0.0804992   0.2404884
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0236340   0.0168078   0.0304601
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2345111   0.2097249   0.2592973


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1015873   0.0902183   0.1129563
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0585078   0.0478474   0.0691682
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0537825   0.0430304   0.0645346
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0336441   0.0639169
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0260116   0.0141438   0.0378793
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0961073   0.0860713   0.1061434


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  8.500884   5.627663   12.841040
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.524481   2.363645    8.660748
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.838025   1.963585    7.501807
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  9.691429   3.748225   25.058208
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.881413   4.007582    8.631393
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.661226   2.537828    8.561267
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.785344   3.210623    7.132422
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  6.560962   3.306973   13.016803
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.384984   3.303652    5.820251
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 19.612346   7.173595   53.619434
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  9.922624   7.291112   13.503902


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0770641   0.0615188   0.0926094
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1218401   0.0782436   0.1654365
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0324084   0.0146514   0.0501653
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0339489   0.0188096   0.0490881
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ki1101329-Keneba           GAMBIA                         0                    NA                0.0313184   0.0226816   0.0399551
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0684725   0.0431549   0.0937902
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0249805   0.0165099   0.0334510
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0291177   0.0160339   0.0422015
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0340733   0.0260024   0.0421441
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0178283   0.0077434   0.0279131
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0724733   0.0631620   0.0817847


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7586000   0.6487436   0.8340985
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6518445   0.4003235   0.7978706
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4931330   0.2142998   0.6730124
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7421926   0.4316899   0.8830486
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ki1101329-Keneba           GAMBIA                         0                    NA                0.5352857   0.4074657   0.6355326
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6276650   0.3926332   0.7717469
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4644719   0.3189253   0.5789150
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5969122   0.3417609   0.7531599
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4531561   0.3571281   0.5348401
ki1148112-LCNI-5           MALAWI                         0                    NA                0.6853973   0.3407366   0.8498706
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.7540876   0.6810451   0.8104030
