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
ki1000304b-SAS-FoodSuppl   INDIA                          0                                0      144    321
ki1000304b-SAS-FoodSuppl   INDIA                          0                                1       10    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                0      117    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                1       50    321
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
ki1113344-GMS-Nepal        NEPAL                          0                                0      332    550
ki1113344-GMS-Nepal        NEPAL                          0                                1       12    550
ki1113344-GMS-Nepal        NEPAL                          1                                0      160    550
ki1113344-GMS-Nepal        NEPAL                          1                                1       46    550
ki1114097-CMIN             BANGLADESH                     0                                0      109    237
ki1114097-CMIN             BANGLADESH                     0                                1        2    237
ki1114097-CMIN             BANGLADESH                     1                                0      102    237
ki1114097-CMIN             BANGLADESH                     1                                1       24    237
ki1114097-CMIN             BRAZIL                         0                                0      102    115
ki1114097-CMIN             BRAZIL                         0                                1        0    115
ki1114097-CMIN             BRAZIL                         1                                0       13    115
ki1114097-CMIN             BRAZIL                         1                                1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                                0      485    542
ki1114097-CMIN             GUINEA-BISSAU                  0                                1        9    542
ki1114097-CMIN             GUINEA-BISSAU                  1                                0       40    542
ki1114097-CMIN             GUINEA-BISSAU                  1                                1        8    542
ki1114097-CMIN             PERU                           0                                0      347    375
ki1114097-CMIN             PERU                           0                                1        0    375
ki1114097-CMIN             PERU                           1                                0       28    375
ki1114097-CMIN             PERU                           1                                1        0    375
ki1114097-CONTENT          PERU                           0                                0      187    200
ki1114097-CONTENT          PERU                           0                                1        0    200
ki1114097-CONTENT          PERU                           1                                0       12    200
ki1114097-CONTENT          PERU                           1                                1        1    200
ki1119695-PROBIT           BELARUS                        0                                0     1980   2146
ki1119695-PROBIT           BELARUS                        0                                1        0   2146
ki1119695-PROBIT           BELARUS                        1                                0      166   2146
ki1119695-PROBIT           BELARUS                        1                                1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                                0     1238   1667
ki1126311-ZVITAMBO         ZIMBABWE                       0                                1       36   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                0      340   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                1       53   1667
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
ki1148112-LCNI-5           MALAWI                         1                                0       69    692
ki1148112-LCNI-5           MALAWI                         1                                1       12    692
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
![](/tmp/1f72cdd1-7896-4d8b-a918-732b0494e379/c50ef441-c256-4dfc-a06b-7186be72ec45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f72cdd1-7896-4d8b-a918-732b0494e379/c50ef441-c256-4dfc-a06b-7186be72ec45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f72cdd1-7896-4d8b-a918-732b0494e379/c50ef441-c256-4dfc-a06b-7186be72ec45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f72cdd1-7896-4d8b-a918-732b0494e379/c50ef441-c256-4dfc-a06b-7186be72ec45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.0606061   0.0135372   0.1076749
ki1000109-EE               PAKISTAN                       1                    NA                0.2749004   0.2195884   0.3302124
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0245232   0.0164102   0.0326362
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2084687   0.1847544   0.2321829
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0663158   0.0272613   0.1053704
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3001649   0.2302541   0.3700757
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0337611   0.0154946   0.0520275
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1249459   0.0737566   0.1761351
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0116550   0.0014908   0.0218192
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1170732   0.0730273   0.1611190
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ki1101329-Keneba           GAMBIA                         0                    NA                0.0227507   0.0150456   0.0304559
ki1101329-Keneba           GAMBIA                         1                    NA                0.1757043   0.1348839   0.2165248
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0347314   0.0154127   0.0540501
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2258377   0.1683843   0.2832911
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0182186   0.0064140   0.0300232
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1666667   0.0611400   0.2721933
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0278835   0.0187957   0.0369713
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1325437   0.0956952   0.1693923
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0195314   0.0080486   0.0310142
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1324959   0.0860304   0.1789615
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0381104   0.0296846   0.0465361
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1683867   0.1224452   0.2143281
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
ki1148112-LCNI-5           MALAWI                         1                    NA                0.1481481   0.0707288   0.2255675
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0787627   0.0697709   0.0877545
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2424743   0.2000119   0.2849368


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1015873   0.0902183   0.1129563
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563140   0.0455349   0.0670931
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0313653   0.0166776   0.0460530
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0533893   0.0425943   0.0641843
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0336441   0.0639169
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0245665   0.0130245   0.0361084
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0961073   0.0860713   0.1061434


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  4.535857   2.033456   10.117745
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  8.500884   5.627663   12.841040
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.526293   2.398454    8.541889
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.700883   1.875861    7.301467
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 10.044878   3.885621   25.967426
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.723017   5.127325   11.632768
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.502408   3.523587   11.999508
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  9.148148   3.697349   22.634758
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.753477   3.095768    7.298848
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  6.783756   3.416770   13.468671
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.418397   3.112268    6.272672
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 18.103704   6.541578   50.101689
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.078542   2.489970    3.806238


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.1536797   0.1006195   0.2067398
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0770641   0.0615188   0.0926094
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1206000   0.0771407   0.1640594
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0315747   0.0137636   0.0493858
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0340863   0.0189737   0.0491989
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ki1101329-Keneba           GAMBIA                         0                    NA                0.0335633   0.0246956   0.0424309
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0707231   0.0469545   0.0944918
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0131467   0.0030937   0.0231997
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0255058   0.0169138   0.0340978
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0292491   0.0161458   0.0423525
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0370806   0.0289480   0.0452133
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0163832   0.0066838   0.0260825
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0173446   0.0072409   0.0274483


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.7171717   0.4074438   0.8650055
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7586000   0.6487436   0.8340985
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6452103   0.3970767   0.7912242
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4832677   0.1992709   0.6665385
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7451973   0.4382889   0.8844167
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ki1101329-Keneba           GAMBIA                         0                    NA                0.5960020   0.4680618   0.6931704
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6706506   0.4619702   0.7983921
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.4191474   0.0970926   0.6263296
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4777321   0.3288063   0.5936139
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5996073   0.3443186   0.7554996
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4931527   0.3995953   0.5721317
ki1148112-LCNI-5           MALAWI                         0                    NA                0.6668913   0.3077992   0.8396977
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1804711   0.0797485   0.2701695
