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
ki1000108-IRC              INDIA                          0                                 0      327    405
ki1000108-IRC              INDIA                          0                                 1       15    405
ki1000108-IRC              INDIA                          1                                 0       53    405
ki1000108-IRC              INDIA                          1                                 1       10    405
ki1000109-EE               PAKISTAN                       0                                 0      183    350
ki1000109-EE               PAKISTAN                       0                                 1       24    350
ki1000109-EE               PAKISTAN                       1                                 0       92    350
ki1000109-EE               PAKISTAN                       1                                 1       51    350
ki1000109-ResPak           PAKISTAN                       0                                 0        6      9
ki1000109-ResPak           PAKISTAN                       0                                 1        0      9
ki1000109-ResPak           PAKISTAN                       1                                 0        3      9
ki1000109-ResPak           PAKISTAN                       1                                 1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                                 0      992   1260
ki1000304b-SAS-CompFeed    INDIA                          0                                 1       73   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                 0      140   1260
ki1000304b-SAS-CompFeed    INDIA                          1                                 1       55   1260
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 0      207    321
ki1000304b-SAS-FoodSuppl   INDIA                          0                                 1       32    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 0       54    321
ki1000304b-SAS-FoodSuppl   INDIA                          1                                 1       28    321
ki1017093-NIH-Birth        BANGLADESH                     0                                 0      362    462
ki1017093-NIH-Birth        BANGLADESH                     0                                 1       30    462
ki1017093-NIH-Birth        BANGLADESH                     1                                 0       49    462
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
ki1101329-Keneba           GAMBIA                         0                                 0     1582   1758
ki1101329-Keneba           GAMBIA                         0                                 1       65   1758
ki1101329-Keneba           GAMBIA                         1                                 0       77   1758
ki1101329-Keneba           GAMBIA                         1                                 1       34   1758
ki1113344-GMS-Nepal        NEPAL                          0                                 0      451    550
ki1113344-GMS-Nepal        NEPAL                          0                                 1       35    550
ki1113344-GMS-Nepal        NEPAL                          1                                 0       41    550
ki1113344-GMS-Nepal        NEPAL                          1                                 1       23    550
ki1114097-CMIN             BANGLADESH                     0                                 0      178    237
ki1114097-CMIN             BANGLADESH                     0                                 1       15    237
ki1114097-CMIN             BANGLADESH                     1                                 0       33    237
ki1114097-CMIN             BANGLADESH                     1                                 1       11    237
ki1114097-CMIN             BRAZIL                         0                                 0      112    115
ki1114097-CMIN             BRAZIL                         0                                 1        0    115
ki1114097-CMIN             BRAZIL                         1                                 0        3    115
ki1114097-CMIN             BRAZIL                         1                                 1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                                 0      517    542
ki1114097-CMIN             GUINEA-BISSAU                  0                                 1       15    542
ki1114097-CMIN             GUINEA-BISSAU                  1                                 0        8    542
ki1114097-CMIN             GUINEA-BISSAU                  1                                 1        2    542
ki1114097-CMIN             PERU                           0                                 0      362    375
ki1114097-CMIN             PERU                           0                                 1        0    375
ki1114097-CMIN             PERU                           1                                 0       13    375
ki1114097-CMIN             PERU                           1                                 1        0    375
ki1114097-CONTENT          PERU                           0                                 0      197    200
ki1114097-CONTENT          PERU                           0                                 1        0    200
ki1114097-CONTENT          PERU                           1                                 0        2    200
ki1114097-CONTENT          PERU                           1                                 1        1    200
ki1119695-PROBIT           BELARUS                        0                                 0     2134   2146
ki1119695-PROBIT           BELARUS                        0                                 1        0   2146
ki1119695-PROBIT           BELARUS                        1                                 0       12   2146
ki1119695-PROBIT           BELARUS                        1                                 1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 0     1489   1667
ki1126311-ZVITAMBO         ZIMBABWE                       0                                 1       68   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 0       89   1667
ki1126311-ZVITAMBO         ZIMBABWE                       1                                 1       21   1667
ki1135781-COHORTS          GUATEMALA                      0                                 0      693    779
ki1135781-COHORTS          GUATEMALA                      0                                 1       27    779
ki1135781-COHORTS          GUATEMALA                      1                                 0       48    779
ki1135781-COHORTS          GUATEMALA                      1                                 1       11    779
ki1135781-COHORTS          PHILIPPINES                    0                                 0     2203   2487
ki1135781-COHORTS          PHILIPPINES                    0                                 1      146   2487
ki1135781-COHORTS          PHILIPPINES                    1                                 0       97   2487
ki1135781-COHORTS          PHILIPPINES                    1                                 1       41   2487
ki1148112-LCNI-5           MALAWI                         0                                 0      670    692
ki1148112-LCNI-5           MALAWI                         0                                 1       13    692
ki1148112-LCNI-5           MALAWI                         1                                 0        5    692
ki1148112-LCNI-5           MALAWI                         1                                 1        4    692
kiGH5241-JiVitA-4          BANGLADESH                     0                                 0     3810   4547
kiGH5241-JiVitA-4          BANGLADESH                     0                                 1      286   4547
kiGH5241-JiVitA-4          BANGLADESH                     1                                 0      300   4547
kiGH5241-JiVitA-4          BANGLADESH                     1                                 1      151   4547


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
![](/tmp/2625ab15-aca0-4c1c-8784-ba92499ffd70/f8afbc2e-f4fa-441e-82fd-ae109f29fc03/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2625ab15-aca0-4c1c-8784-ba92499ffd70/f8afbc2e-f4fa-441e-82fd-ae109f29fc03/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2625ab15-aca0-4c1c-8784-ba92499ffd70/f8afbc2e-f4fa-441e-82fd-ae109f29fc03/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2625ab15-aca0-4c1c-8784-ba92499ffd70/f8afbc2e-f4fa-441e-82fd-ae109f29fc03/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0502513   0.0198316   0.0806709
ki0047075b-MAL-ED          INDIA         1                    NA                0.2413793   0.0852926   0.3974660
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
ki1000108-IRC              INDIA         0                    NA                0.0451544   0.0227722   0.0675366
ki1000108-IRC              INDIA         1                    NA                0.1358429   0.0521025   0.2195834
ki1000109-EE               PAKISTAN      0                    NA                0.1319486   0.0816047   0.1822925
ki1000109-EE               PAKISTAN      1                    NA                0.3760868   0.2922488   0.4599249
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0762688   0.0612072   0.0913305
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2448614   0.1476993   0.3420235
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1333795   0.0900198   0.1767392
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3310223   0.2254097   0.4366349
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0773290   0.0507734   0.1038846
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3183904   0.1942813   0.4424995
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0492936   0.0305735   0.0680136
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2289585   0.0873292   0.3705878
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0298436   0.0157017   0.0439856
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1617730   0.0353348   0.2882113
ki1101329-Keneba           GAMBIA        0                    NA                0.0399565   0.0304884   0.0494246
ki1101329-Keneba           GAMBIA        1                    NA                0.2642614   0.1755385   0.3529843
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0722338   0.0492201   0.0952475
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3627909   0.2454813   0.4801006
ki1114097-CMIN             BANGLADESH    0                    NA                0.0783815   0.0403029   0.1164601
ki1114097-CMIN             BANGLADESH    1                    NA                0.2481850   0.1143387   0.3820313
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0436723   0.0335175   0.0538272
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1889644   0.1147315   0.2631973
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0380596   0.0239789   0.0521403
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1879006   0.0799819   0.2958193
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0653800   0.0555405   0.0752195
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2533771   0.1594541   0.3473000
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0816853   0.0696200   0.0937506
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3900717   0.3100428   0.4701005


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0596206   0.0354285   0.0838127
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1015873   0.0902183   0.1129563
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563140   0.0455349   0.0670931
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0533893   0.0425943   0.0641843
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0487805   0.0336441   0.0639169
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0961073   0.0860713   0.1061434


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.803448   1.980913   11.647715
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 6.860000   2.985432   15.763079
ki1000108-IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC              INDIA         1                    0                 3.008409   1.367328    6.619133
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.850253   1.827063    4.446448
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.210505   1.995665    5.164865
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.481808   1.571267    3.920003
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 4.117348   2.445927    6.930935
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.644793   2.245741    9.606673
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 5.420688   2.173494   13.519180
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 6.613730   4.390003    9.963871
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 5.022455   3.185344    7.919099
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.166371   1.531514    6.546404
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.326867   2.741081    6.830073
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 4.937011   2.493476    9.775141
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 3.875451   2.599472    5.777757
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.775297   3.732448    6.109519


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0243101   0.0024528   0.0461675
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0324097   0.0129308   0.0518887
ki1000108-IRC              INDIA         0                    NA                0.0165740   0.0015942   0.0315537
ki1000109-EE               PAKISTAN      0                    NA                0.0823371   0.0386851   0.1259891
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0253185   0.0108274   0.0398096
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0535364   0.0230909   0.0839818
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0330606   0.0145101   0.0516112
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0160422   0.0047862   0.0272981
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0158977   0.0053797   0.0264157
ki1101329-Keneba           GAMBIA        0                    NA                0.0163575   0.0101979   0.0225171
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0332208   0.0171677   0.0492738
ki1114097-CMIN             BANGLADESH    0                    NA                0.0313231   0.0050065   0.0576398
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0097170   0.0045206   0.0149134
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0107209   0.0026130   0.0188288
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0098110   0.0050952   0.0145267
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0144220   0.0045617   0.0242823


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.3260420   0.0132207   0.5396950
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5435993   0.2162412   0.7342274
ki1000108-IRC              INDIA         0                    NA                0.2684985   0.0069761   0.4611465
ki1000109-EE               PAKISTAN      0                    NA                0.3842400   0.1577006   0.5498508
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.2492287   0.1005036   0.3733633
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2864197   0.1147168   0.4248204
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2994903   0.1300615   0.4359212
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2455342   0.0734041   0.3856883
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.3475563   0.1168891   0.5179736
ki1101329-Keneba           GAMBIA        0                    NA                0.2904697   0.1880748   0.3799512
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.3150244   0.1665104   0.4370757
ki1114097-CMIN             BANGLADESH    0                    NA                0.2855224   0.0273747   0.4751542
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1820025   0.0859576   0.2679552
ki1135781-COHORTS          GUATEMALA     0                    NA                0.2197784   0.0509543   0.3585706
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1304805   0.0692758   0.1876604
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1500614   0.0443875   0.2440497
