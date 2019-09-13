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
![](/tmp/4a9e3b6e-916b-4330-a06d-69f0b1fa367c/44eedd2d-bfb7-4fd9-a429-db5642eb6cdf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a9e3b6e-916b-4330-a06d-69f0b1fa367c/44eedd2d-bfb7-4fd9-a429-db5642eb6cdf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a9e3b6e-916b-4330-a06d-69f0b1fa367c/44eedd2d-bfb7-4fd9-a429-db5642eb6cdf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a9e3b6e-916b-4330-a06d-69f0b1fa367c/44eedd2d-bfb7-4fd9-a429-db5642eb6cdf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0502513   0.0198316   0.0806709
ki0047075b-MAL-ED          INDIA         1                    NA                0.2413793   0.0852926   0.3974660
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0272109   0.0085881   0.0458337
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1866667   0.0983639   0.2749695
ki1000108-IRC              INDIA         0                    NA                0.0456990   0.0229908   0.0684073
ki1000108-IRC              INDIA         1                    NA                0.1314356   0.0485583   0.2143129
ki1000109-EE               PAKISTAN      0                    NA                0.1253800   0.0757673   0.1749927
ki1000109-EE               PAKISTAN      1                    NA                0.3724956   0.2895619   0.4554293
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0762688   0.0612072   0.0913305
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2448614   0.1476993   0.3420235
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1310776   0.0876736   0.1744817
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3067240   0.2046342   0.4088138
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0781370   0.0515884   0.1046856
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3078619   0.1908602   0.4248636
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0492517   0.0305360   0.0679674
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2146708   0.0723527   0.3569888
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0302440   0.0159577   0.0445303
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1616966   0.0328041   0.2905890
ki1101329-Keneba           GAMBIA        0                    NA                0.0402078   0.0306670   0.0497486
ki1101329-Keneba           GAMBIA        1                    NA                0.2663347   0.1769745   0.3556950
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0721993   0.0491965   0.0952020
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3567741   0.2409023   0.4726459
ki1114097-CMIN             BANGLADESH    0                    NA                0.0777212   0.0397821   0.1156603
ki1114097-CMIN             BANGLADESH    1                    NA                0.2496865   0.1170468   0.3823262
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0436288   0.0334778   0.0537797
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1893903   0.1143708   0.2644099
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0377993   0.0237844   0.0518141
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1870889   0.0793900   0.2947879
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0632881   0.0535448   0.0730314
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2392245   0.1433245   0.3351244
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0862833   0.0728303   0.0997363
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.4003474   0.3148578   0.4858370


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
ki1000108-IRC              INDIA         1                    0                 2.876113   1.293181    6.396650
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.970933   1.882817    4.687891
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.210505   1.995665    5.164865
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.340017   1.460315    3.749659
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 3.940026   2.361594    6.573442
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.358644   2.031420    9.351969
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 5.346400   2.117407   13.499528
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 6.623953   4.396102    9.980831
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.941520   3.131313    7.798207
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.212593   1.559350    6.618626
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.340951   2.742200    6.871801
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 4.949540   2.494853    9.819394
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 3.779928   2.461425    5.804708
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.639920   3.586048    6.003505


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0243101    0.0024528   0.0461675
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0324097    0.0129308   0.0518887
ki1000108-IRC              INDIA         0                    NA                0.0160294    0.0009993   0.0310594
ki1000109-EE               PAKISTAN      0                    NA                0.0889057    0.0455467   0.1322646
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0253185    0.0108274   0.0398096
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0558382    0.0248454   0.0868310
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0322526    0.0137808   0.0507244
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0160840    0.0048453   0.0273228
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0154973    0.0049366   0.0260580
ki1101329-Keneba           GAMBIA        0                    NA                0.0161062    0.0099190   0.0222933
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0332553    0.0172361   0.0492745
ki1114097-CMIN             BANGLADESH    0                    NA                0.0319835    0.0056404   0.0583266
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0097606    0.0045661   0.0149550
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0109812    0.0028498   0.0191127
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0119029    0.0072085   0.0165973
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0098241   -0.0015211   0.0211692


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.3260420    0.0132207   0.5396950
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5435993    0.2162412   0.7342274
ki1000108-IRC              INDIA         0                    NA                0.2596758   -0.0051306   0.4547177
ki1000109-EE               PAKISTAN      0                    NA                0.4148932    0.1893312   0.5776945
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.2492287    0.1005036   0.3733633
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2987346    0.1235696   0.4388908
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2921705    0.1237336   0.4282303
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2461748    0.0743330   0.3861157
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.3388035    0.1054859   0.5112644
ki1101329-Keneba           GAMBIA        0                    NA                0.2860065    0.1824789   0.3764238
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.3153518    0.1671937   0.4371523
ki1114097-CMIN             BANGLADESH    0                    NA                0.2915416    0.0334482   0.4807176
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1828185    0.0868315   0.2687159
ki1135781-COHORTS          GUATEMALA     0                    NA                0.2251152    0.0563272   0.3637133
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1583021    0.0978653   0.2146900
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1022197   -0.0218860   0.2112531
