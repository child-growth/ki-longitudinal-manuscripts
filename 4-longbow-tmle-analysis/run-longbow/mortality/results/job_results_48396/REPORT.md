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

**Intervention Variable:** ever_sunderweight06

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

studyid                    country                        ever_sunderweight06    co_occurence   n_cell      n
-------------------------  -----------------------------  --------------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                                 0      198    221
ki0047075b-MAL-ED          BANGLADESH                     0                                 1       11    221
ki0047075b-MAL-ED          BANGLADESH                     1                                 0        9    221
ki0047075b-MAL-ED          BANGLADESH                     1                                 1        3    221
ki0047075b-MAL-ED          BRAZIL                         0                                 0      179    180
ki0047075b-MAL-ED          BRAZIL                         0                                 1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                                 0        0    180
ki0047075b-MAL-ED          BRAZIL                         1                                 1        0    180
ki0047075b-MAL-ED          INDIA                          0                                 0      189    228
ki0047075b-MAL-ED          INDIA                          0                                 1       10    228
ki0047075b-MAL-ED          INDIA                          1                                 0       22    228
ki0047075b-MAL-ED          INDIA                          1                                 1        7    228
ki0047075b-MAL-ED          NEPAL                          0                                 0      217    229
ki0047075b-MAL-ED          NEPAL                          0                                 1        2    229
ki0047075b-MAL-ED          NEPAL                          1                                 0        8    229
ki0047075b-MAL-ED          NEPAL                          1                                 1        2    229
ki0047075b-MAL-ED          PERU                           0                                 0      211    222
ki0047075b-MAL-ED          PERU                           0                                 1        4    222
ki0047075b-MAL-ED          PERU                           1                                 0        5    222
ki0047075b-MAL-ED          PERU                           1                                 1        2    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                 0      229    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                 1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                 0        8    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                 1        1    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                 0      217    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                 0        7    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                                 0      286    369
ki1000108-CMC-V-BCS-2002   INDIA                          0                                 1        8    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                 0       61    369
ki1000108-CMC-V-BCS-2002   INDIA                          1                                 1       14    369
ki1000108-IRC              INDIA                          0                                 0      328    405
ki1000108-IRC              INDIA                          0                                 1       15    405
ki1000108-IRC              INDIA                          1                                 0       52    405
ki1000108-IRC              INDIA                          1                                 1       10    405
ki1000109-EE               PAKISTAN                       0                                 0      183    350
ki1000109-EE               PAKISTAN                       0                                 1       24    350
ki1000109-EE               PAKISTAN                       1                                 0       92    350
ki1000109-EE               PAKISTAN                       1                                 1       51    350
ki1000109-ResPak           PAKISTAN                       0                                 0        6      9
ki1000109-ResPak           PAKISTAN                       0                                 1        0      9
ki1000109-ResPak           PAKISTAN                       1                                 0        3      9
ki1000109-ResPak           PAKISTAN                       1                                 1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                                 0      994   1260
ki1000304b-SAS-CompFeed    INDIA                          0                                 1       74   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                 0      138   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                 1       54   1260
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 0      207    314
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 1       32    314
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 0       50    314
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 1       25    314
ki1017093-NIH-Birth        BANGLADESH                     0                                 0      364    462
ki1017093-NIH-Birth        BANGLADESH                     0                                 1       30    462
ki1017093-NIH-Birth        BANGLADESH                     1                                 0       47    462
ki1017093-NIH-Birth        BANGLADESH                     1                                 1       21    462
ki1017093b-PROVIDE         BANGLADESH                     0                                 0      486    551
ki1017093b-PROVIDE         BANGLADESH                     0                                 1       25    551
ki1017093b-PROVIDE         BANGLADESH                     1                                 0       29    551
ki1017093b-PROVIDE         BANGLADESH                     1                                 1       11    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                                 0      566    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                                 1       17    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                 0       39    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                                 1       12    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 0      942    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 0       17    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980
ki1101329-Keneba           GAMBIA                         0                                 0     1583   1758
ki1101329-Keneba           GAMBIA                         0                                 1       65   1758
ki1101329-Keneba           GAMBIA                         1                                 0       76   1758
ki1101329-Keneba           GAMBIA                         1                                 1       34   1758
ki1113344-GMS-Nepal        NEPAL                          0                                 0      451    548
ki1113344-GMS-Nepal        NEPAL                          0                                 1       35    548
ki1113344-GMS-Nepal        NEPAL                          1                                 0       40    548
ki1113344-GMS-Nepal        NEPAL                          1                                 1       22    548
ki1114097-CMIN             BANGLADESH                     0                                 0      178    237
ki1114097-CMIN             BANGLADESH                     0                                 1       15    237
ki1114097-CMIN             BANGLADESH                     1                                 0       33    237
ki1114097-CMIN             BANGLADESH                     1                                 1       11    237
ki1114097-CMIN             BRAZIL                         0                                 0      112    115
ki1114097-CMIN             BRAZIL                         0                                 1        0    115
ki1114097-CMIN             BRAZIL                         1                                 0        3    115
ki1114097-CMIN             BRAZIL                         1                                 1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                                 0      517    541
ki1114097-CMIN             GUINEA-BISSAU                  0                                 1       15    541
ki1114097-CMIN             GUINEA-BISSAU                  1                                 0        7    541
ki1114097-CMIN             GUINEA-BISSAU                  1                                 1        2    541
ki1114097-CMIN             PERU                           0                                 0      362    374
ki1114097-CMIN             PERU                           0                                 1        0    374
ki1114097-CMIN             PERU                           1                                 0       12    374
ki1114097-CMIN             PERU                           1                                 1        0    374
ki1114097-CONTENT          PERU                           0                                 0      197    200
ki1114097-CONTENT          PERU                           0                                 1        0    200
ki1114097-CONTENT          PERU                           1                                 0        2    200
ki1114097-CONTENT          PERU                           1                                 1        1    200
ki1119695-PROBIT           BELARUS                        0                                 0     2134   2146
ki1119695-PROBIT           BELARUS                        0                                 1        0   2146
ki1119695-PROBIT           BELARUS                        1                                 0       12   2146
ki1119695-PROBIT           BELARUS                        1                                 1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 0     1491   1667
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 1       68   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 0       87   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 1       21   1667
ki1135781-COHORTS          GUATEMALA                      0                                 0      694    779
ki1135781-COHORTS          GUATEMALA                      0                                 1       27    779
ki1135781-COHORTS          GUATEMALA                      1                                 0       47    779
ki1135781-COHORTS          GUATEMALA                      1                                 1       11    779
ki1135781-COHORTS          PHILIPPINES                    0                                 0     2206   2487
ki1135781-COHORTS          PHILIPPINES                    0                                 1      147   2487
ki1135781-COHORTS          PHILIPPINES                    1                                 0       94   2487
ki1135781-COHORTS          PHILIPPINES                    1                                 1       40   2487
ki1148112-LCNI-5           MALAWI                         0                                 0      670    691
ki1148112-LCNI-5           MALAWI                         0                                 1       13    691
ki1148112-LCNI-5           MALAWI                         1                                 0        4    691
ki1148112-LCNI-5           MALAWI                         1                                 1        4    691
kiGH5241-JiVitA-4          BANGLADESH                     0                                 0     3822   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                                 1      288   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                                 0      284   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                                 1      147   4541


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/e24aa7eb-e8a1-4a7e-a40b-8c07197a4762/d061360c-f8be-4c0d-8e2f-6a46be3cd094/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e24aa7eb-e8a1-4a7e-a40b-8c07197a4762/d061360c-f8be-4c0d-8e2f-6a46be3cd094/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e24aa7eb-e8a1-4a7e-a40b-8c07197a4762/d061360c-f8be-4c0d-8e2f-6a46be3cd094/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e24aa7eb-e8a1-4a7e-a40b-8c07197a4762/d061360c-f8be-4c0d-8e2f-6a46be3cd094/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0502513   0.0198316   0.0806709
ki0047075b-MAL-ED          INDIA         1                    NA                0.2413793   0.0852926   0.3974660
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
ki1000108-IRC              INDIA         0                    NA                0.0461074   0.0232667   0.0689481
ki1000108-IRC              INDIA         1                    NA                0.1285848   0.0424606   0.2147089
ki1000109-EE               PAKISTAN      0                    NA                0.1302587   0.0811793   0.1793380
ki1000109-EE               PAKISTAN      1                    NA                0.3735244   0.2903292   0.4567196
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0743905   0.0623308   0.0864502
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2669135   0.1650484   0.3687786
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1330347   0.0896785   0.1763909
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3234012   0.2120978   0.4347046
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0762849   0.0499256   0.1026441
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3180304   0.1960598   0.4400010
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0491704   0.0304617   0.0678792
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2086974   0.0739685   0.3434263
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0301142   0.0158760   0.0443524
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1605053   0.0318193   0.2891913
ki1101329-Keneba           GAMBIA        0                    NA                0.0400021   0.0305154   0.0494889
ki1101329-Keneba           GAMBIA        1                    NA                0.2754648   0.1846029   0.3663266
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0725655   0.0495468   0.0955843
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3849161   0.2647548   0.5050774
ki1114097-CMIN             BANGLADESH    0                    NA                0.0780949   0.0399105   0.1162794
ki1114097-CMIN             BANGLADESH    1                    NA                0.2241955   0.0888261   0.3595648
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0436190   0.0334844   0.0537535
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1950254   0.1173056   0.2727452
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0376530   0.0236851   0.0516209
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1932962   0.0812223   0.3053701
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0671738   0.0571752   0.0771725
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2690459   0.1661047   0.3719871
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0892872   0.0772627   0.1013117
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.4128882   0.3384853   0.4872910


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0596206   0.0354285   0.0838127
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1015873   0.0902183   0.1129563
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1815287   0.1388265   0.2242309
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563140   0.0455349   0.0670931
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1040146   0.0784316   0.1295976
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0533893   0.0425943   0.0641843
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0487805   0.0336441   0.0639169
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0957939   0.0857517   0.1058361


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.803448   1.980913   11.647715
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 6.860000   2.985432   15.763079
ki1000108-IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC              INDIA         1                    0                 2.788811   1.216723    6.392142
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.867559   1.847697    4.450348
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.588007   2.319254    5.550835
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.430953   1.511511    3.909684
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 4.168983   2.483541    6.998241
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.244368   2.010368    8.960880
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 5.329892   2.098698   13.535894
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 6.886250   4.592417   10.325813
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 5.304393   3.397585    8.281348
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 2.870807   1.316763    6.258934
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.471111   2.818590    7.092494
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 5.133623   2.578601   10.220301
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 4.005219   2.657065    6.037406
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.624270   3.700747    5.778259


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0243101    0.0024528   0.0461675
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0324097    0.0129308   0.0518887
ki1000108-IRC              INDIA         0                    NA                0.0156210    0.0004090   0.0308331
ki1000109-EE               PAKISTAN      0                    NA                0.0840270    0.0414127   0.1266413
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0271968    0.0156492   0.0387445
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0484939    0.0190759   0.0779119
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0341047    0.0156566   0.0525529
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0161653    0.0049139   0.0274167
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0156272    0.0050211   0.0262332
ki1101329-Keneba           GAMBIA        0                    NA                0.0163118    0.0101490   0.0224747
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0314491    0.0157358   0.0471624
ki1114097-CMIN             BANGLADESH    0                    NA                0.0316097    0.0052575   0.0579619
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0097703    0.0045686   0.0149720
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0111275    0.0030079   0.0192471
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0080172    0.0032435   0.0127908
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0065067   -0.0033559   0.0163693


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.3260420    0.0132207   0.5396950
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5435993    0.2162412   0.7342274
ki1000108-IRC              INDIA         0                    NA                0.2530605   -0.0156623   0.4506849
ki1000109-EE               PAKISTAN      0                    NA                0.3921261    0.1730948   0.5531403
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.2677189    0.1561732   0.3645193
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2671420    0.0960226   0.4058691
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.3089487    0.1410996   0.4439963
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2474192    0.0753990   0.3874355
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.3416419    0.1078641   0.5141599
ki1101329-Keneba           GAMBIA        0                    NA                0.2896588    0.1870293   0.3793324
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.3023525    0.1545610   0.4243085
ki1114097-CMIN             BANGLADESH    0                    NA                0.2881346    0.0288412   0.4781983
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1830015    0.0870101   0.2689004
ki1135781-COHORTS          GUATEMALA     0                    NA                0.2281139    0.0599876   0.3661699
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1066240    0.0438907   0.1652412
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0679237   -0.0390464   0.1638812
