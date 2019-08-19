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

**Intervention Variable:** ever_sstunted06

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

studyid                    country                        ever_sstunted06    co_occurence   n_cell      n
-------------------------  -----------------------------  ----------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                             0      193    221
ki0047075b-MAL-ED          BANGLADESH                     0                             1       12    221
ki0047075b-MAL-ED          BANGLADESH                     1                             0       14    221
ki0047075b-MAL-ED          BANGLADESH                     1                             1        2    221
ki0047075b-MAL-ED          BRAZIL                         0                             0      167    180
ki0047075b-MAL-ED          BRAZIL                         0                             1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                             0       12    180
ki0047075b-MAL-ED          BRAZIL                         1                             1        1    180
ki0047075b-MAL-ED          INDIA                          0                             0      196    228
ki0047075b-MAL-ED          INDIA                          0                             1       14    228
ki0047075b-MAL-ED          INDIA                          1                             0       15    228
ki0047075b-MAL-ED          INDIA                          1                             1        3    228
ki0047075b-MAL-ED          NEPAL                          0                             0      217    229
ki0047075b-MAL-ED          NEPAL                          0                             1        4    229
ki0047075b-MAL-ED          NEPAL                          1                             0        8    229
ki0047075b-MAL-ED          NEPAL                          1                             1        0    229
ki0047075b-MAL-ED          PERU                           0                             0      188    222
ki0047075b-MAL-ED          PERU                           0                             1        2    222
ki0047075b-MAL-ED          PERU                           1                             0       28    222
ki0047075b-MAL-ED          PERU                           1                             1        4    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      213    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0       24    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        1    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      192    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0       32    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      261    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       83    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       11    366
ki1000108-IRC              INDIA                          0                             0      331    405
ki1000108-IRC              INDIA                          0                             1       13    405
ki1000108-IRC              INDIA                          1                             0       49    405
ki1000108-IRC              INDIA                          1                             1       12    405
ki1000109-EE               PAKISTAN                       0                             0      160    350
ki1000109-EE               PAKISTAN                       0                             1       30    350
ki1000109-EE               PAKISTAN                       1                             0      115    350
ki1000109-EE               PAKISTAN                       1                             1       45    350
ki1000109-ResPak           PAKISTAN                       0                             0        3      9
ki1000109-ResPak           PAKISTAN                       0                             1        0      9
ki1000109-ResPak           PAKISTAN                       1                             0        6      9
ki1000109-ResPak           PAKISTAN                       1                             1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                             0      990   1259
ki1000304b-SAS-CompFeed    INDIA                          0                             1       84   1259
ki1000304b-SAS-CompFeed    INDIA                          1                             0      141   1259
ki1000304b-SAS-CompFeed    INDIA                          1                             1       44   1259
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      228    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       46    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       35    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       14    323
ki1017093-NIH-Birth        BANGLADESH                     0                             0      368    462
ki1017093-NIH-Birth        BANGLADESH                     0                             1       41    462
ki1017093-NIH-Birth        BANGLADESH                     1                             0       43    462
ki1017093-NIH-Birth        BANGLADESH                     1                             1       10    462
ki1017093b-PROVIDE         BANGLADESH                     0                             0      492    551
ki1017093b-PROVIDE         BANGLADESH                     0                             1       32    551
ki1017093b-PROVIDE         BANGLADESH                     1                             0       23    551
ki1017093b-PROVIDE         BANGLADESH                     1                             1        4    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      565    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       23    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       40    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        6    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0      914    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       16    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       45    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1        5    980
ki1101329-Keneba           GAMBIA                         0                             0     1489   1776
ki1101329-Keneba           GAMBIA                         0                             1       72   1776
ki1101329-Keneba           GAMBIA                         1                             0      187   1776
ki1101329-Keneba           GAMBIA                         1                             1       28   1776
ki1113344-GMS-Nepal        NEPAL                          0                             0      471    550
ki1113344-GMS-Nepal        NEPAL                          0                             1       46    550
ki1113344-GMS-Nepal        NEPAL                          1                             0       21    550
ki1113344-GMS-Nepal        NEPAL                          1                             1       12    550
ki1114097-CMIN             BANGLADESH                     0                             0      166    237
ki1114097-CMIN             BANGLADESH                     0                             1       15    237
ki1114097-CMIN             BANGLADESH                     1                             0       45    237
ki1114097-CMIN             BANGLADESH                     1                             1       11    237
ki1114097-CMIN             BRAZIL                         0                             0      108    115
ki1114097-CMIN             BRAZIL                         0                             1        0    115
ki1114097-CMIN             BRAZIL                         1                             0        7    115
ki1114097-CMIN             BRAZIL                         1                             1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                             0      508    541
ki1114097-CMIN             GUINEA-BISSAU                  0                             1       14    541
ki1114097-CMIN             GUINEA-BISSAU                  1                             0       16    541
ki1114097-CMIN             GUINEA-BISSAU                  1                             1        3    541
ki1114097-CMIN             PERU                           0                             0      362    375
ki1114097-CMIN             PERU                           0                             1        0    375
ki1114097-CMIN             PERU                           1                             0       13    375
ki1114097-CMIN             PERU                           1                             1        0    375
ki1114097-CONTENT          PERU                           0                             0      191    200
ki1114097-CONTENT          PERU                           0                             1        0    200
ki1114097-CONTENT          PERU                           1                             0        8    200
ki1114097-CONTENT          PERU                           1                             1        1    200
ki1119695-PROBIT           BELARUS                        0                             0     2112   2146
ki1119695-PROBIT           BELARUS                        0                             1        0   2146
ki1119695-PROBIT           BELARUS                        1                             0       34   2146
ki1119695-PROBIT           BELARUS                        1                             1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     1344   1666
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1       62   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      234   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1       26   1666
ki1135781-COHORTS          GUATEMALA                      0                             0      637    778
ki1135781-COHORTS          GUATEMALA                      0                             1       29    778
ki1135781-COHORTS          GUATEMALA                      1                             0      103    778
ki1135781-COHORTS          GUATEMALA                      1                             1        9    778
ki1135781-COHORTS          PHILIPPINES                    0                             0     2166   2487
ki1135781-COHORTS          PHILIPPINES                    0                             1      152   2487
ki1135781-COHORTS          PHILIPPINES                    1                             0      134   2487
ki1135781-COHORTS          PHILIPPINES                    1                             1       35   2487
ki1148112-LCNI-5           MALAWI                         0                             0      631    693
ki1148112-LCNI-5           MALAWI                         0                             1       13    693
ki1148112-LCNI-5           MALAWI                         1                             0       45    693
ki1148112-LCNI-5           MALAWI                         1                             1        4    693
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     3720   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      311   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      385   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      125   4541


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
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/7ab13dd5-d4dd-4783-a9e8-f215a7a019d8/ab4759a6-89cc-4936-8575-221e98bad1b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ab13dd5-d4dd-4783-a9e8-f215a7a019d8/ab4759a6-89cc-4936-8575-221e98bad1b2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ab13dd5-d4dd-4783-a9e8-f215a7a019d8/ab4759a6-89cc-4936-8575-221e98bad1b2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ab13dd5-d4dd-4783-a9e8-f215a7a019d8/ab4759a6-89cc-4936-8575-221e98bad1b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0406251   0.0170176   0.0642325
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1132229   0.0484785   0.1779672
ki1000108-IRC              INDIA                          0                    NA                0.0352397   0.0162950   0.0541845
ki1000108-IRC              INDIA                          1                    NA                0.1201567   0.0287252   0.2115881
ki1000109-EE               PAKISTAN                       0                    NA                0.1547287   0.1002330   0.2092243
ki1000109-EE               PAKISTAN                       1                    NA                0.2628664   0.1900741   0.3356587
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0835031   0.0684888   0.0985173
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2330004   0.1403166   0.3256842
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1682972   0.1239463   0.2126481
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2811247   0.1512741   0.4109754
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0995370   0.0702388   0.1288353
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2162333   0.0746629   0.3578037
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0391156   0.0234332   0.0547981
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1304348   0.0330346   0.2278350
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172043   0.0088429   0.0255657
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0168033   0.1831967
ki1101329-Keneba           GAMBIA                         0                    NA                0.0465582   0.0361393   0.0569770
ki1101329-Keneba           GAMBIA                         1                    NA                0.1219092   0.0781408   0.1656776
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0883466   0.0638802   0.1128131
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3254225   0.1523807   0.4984643
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0818725   0.0414645   0.1222805
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1744434   0.0689126   0.2799741
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0441222   0.0333799   0.0548646
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0989412   0.0622745   0.1356080
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0435435   0.0280345   0.0590526
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299792   0.1307351
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0677919   0.0574160   0.0781679
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1815189   0.1025331   0.2605046
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0986119   0.0842557   0.1129682
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1612564   0.1136115   0.2089012


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563063   0.0455826   0.0670300
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0528211   0.0420773   0.0635650
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0488432   0.0336879   0.0639985
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0960141   0.0859500   0.1060782


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.787020   1.2347708    6.290626
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 3.409691   1.3390961    8.681972
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.698886   1.0854285    2.659054
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.790321   2.0689792    3.763155
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.670406   0.9812824    2.843480
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.172391   1.0579245    4.460888
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.334594   1.4287411    7.782736
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.812500   2.2177449   15.234012
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.618427   1.7177834    3.991282
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.683473   2.0215570    6.711646
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.130670   0.9701859    4.679263
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.242435   1.4393302    3.493649
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.845443   0.8973426    3.795274
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.677589   1.6877306    4.248000
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.635262   1.1848112    2.256970


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0194842    0.0014142   0.0375543
ki1000108-IRC              INDIA                          0                    NA                 0.0264886    0.0101809   0.0427964
ki1000109-EE               PAKISTAN                       0                    NA                 0.0595570    0.0158939   0.1032202
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0181649    0.0085086   0.0278212
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0174613   -0.0034161   0.0383387
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0108526   -0.0024645   0.0241697
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0066257   -0.0007663   0.0140176
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0042243   -0.0001918   0.0086404
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0097481    0.0040865   0.0154097
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0171079    0.0056796   0.0285362
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0278321    0.0003477   0.0553165
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0086989    0.0026894   0.0147083
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0052996   -0.0023428   0.0129421
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0073991    0.0027871   0.0120110
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0025978   -0.0142181   0.0090224


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3241467   -0.0135865   0.5493452
ki1000108-IRC              INDIA                          0                    NA                 0.4291161    0.1726907   0.6060622
ki1000109-EE               PAKISTAN                       0                    NA                 0.2779328    0.0479682   0.4523491
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1786688    0.0754766   0.2703431
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0940000   -0.0242290   0.1985815
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0983117   -0.0285805   0.2095496
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1448510   -0.0237354   0.2856751
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1971326   -0.0160720   0.3656001
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1731269    0.0720407   0.2632014
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1622301    0.0532050   0.2587007
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2537003   -0.0254893   0.4568805
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1646859    0.0479877   0.2670791
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1085032   -0.0585805   0.2492149
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0984037    0.0365438   0.1562919
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0270568   -0.1559515   0.0874655
