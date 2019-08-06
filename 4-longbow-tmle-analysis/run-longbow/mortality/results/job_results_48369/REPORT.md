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

**Intervention Variable:** pers_wasted06

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

studyid                     country                        pers_wasted06    co_occurence   n_cell      n
--------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                           0      202    221
ki0047075b-MAL-ED           BANGLADESH                     0                           1       13    221
ki0047075b-MAL-ED           BANGLADESH                     1                           0        5    221
ki0047075b-MAL-ED           BANGLADESH                     1                           1        1    221
ki0047075b-MAL-ED           BRAZIL                         0                           0      178    180
ki0047075b-MAL-ED           BRAZIL                         0                           1        1    180
ki0047075b-MAL-ED           BRAZIL                         1                           0        1    180
ki0047075b-MAL-ED           BRAZIL                         1                           1        0    180
ki0047075b-MAL-ED           INDIA                          0                           0      197    228
ki0047075b-MAL-ED           INDIA                          0                           1       13    228
ki0047075b-MAL-ED           INDIA                          1                           0       14    228
ki0047075b-MAL-ED           INDIA                          1                           1        4    228
ki0047075b-MAL-ED           NEPAL                          0                           0      221    229
ki0047075b-MAL-ED           NEPAL                          0                           1        4    229
ki0047075b-MAL-ED           NEPAL                          1                           0        4    229
ki0047075b-MAL-ED           NEPAL                          1                           1        0    229
ki0047075b-MAL-ED           PERU                           0                           0      216    222
ki0047075b-MAL-ED           PERU                           0                           1        6    222
ki0047075b-MAL-ED           PERU                           1                           0        0    222
ki0047075b-MAL-ED           PERU                           1                           1        0    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           0      235    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           1        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           0        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           1        0    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      224    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                           0      303    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                           1        8    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                           0       39    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                           1       14    364
ki1000108-IRC               INDIA                          0                           0      320    405
ki1000108-IRC               INDIA                          0                           1       22    405
ki1000108-IRC               INDIA                          1                           0       60    405
ki1000108-IRC               INDIA                          1                           1        3    405
ki1000109-EE                PAKISTAN                       0                           0      261    350
ki1000109-EE                PAKISTAN                       0                           1       61    350
ki1000109-EE                PAKISTAN                       1                           0       14    350
ki1000109-EE                PAKISTAN                       1                           1       14    350
ki1000109-ResPak            PAKISTAN                       0                           0        7      9
ki1000109-ResPak            PAKISTAN                       0                           1        0      9
ki1000109-ResPak            PAKISTAN                       1                           0        2      9
ki1000109-ResPak            PAKISTAN                       1                           1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                           0     1038   1254
ki1000304b-SAS-CompFeed     INDIA                          0                           1       96   1254
ki1000304b-SAS-CompFeed     INDIA                          1                           0       88   1254
ki1000304b-SAS-CompFeed     INDIA                          1                           1       32   1254
ki1000304b-SAS-FoodSuppl    INDIA                          0                           0      227    323
ki1000304b-SAS-FoodSuppl    INDIA                          0                           1       43    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                           0       36    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                           1       17    323
ki1017093-NIH-Birth         BANGLADESH                     0                           0      351    460
ki1017093-NIH-Birth         BANGLADESH                     0                           1       33    460
ki1017093-NIH-Birth         BANGLADESH                     1                           0       58    460
ki1017093-NIH-Birth         BANGLADESH                     1                           1       18    460
ki1017093b-PROVIDE          BANGLADESH                     0                           0      505    551
ki1017093b-PROVIDE          BANGLADESH                     0                           1       33    551
ki1017093b-PROVIDE          BANGLADESH                     1                           0       10    551
ki1017093b-PROVIDE          BANGLADESH                     1                           1        3    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                           0      593    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                           1       25    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                           0       12    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                           1        4    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0      939    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1       20    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0       20    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        1    980
ki1101329-Keneba            GAMBIA                         0                           0     1627   1755
ki1101329-Keneba            GAMBIA                         0                           1       84   1755
ki1101329-Keneba            GAMBIA                         1                           0       31   1755
ki1101329-Keneba            GAMBIA                         1                           1       13   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                           0      438    550
ki1113344-GMS-Nepal         NEPAL                          0                           1       44    550
ki1113344-GMS-Nepal         NEPAL                          1                           0       54    550
ki1113344-GMS-Nepal         NEPAL                          1                           1       14    550
ki1114097-CMIN              BANGLADESH                     0                           0      205    237
ki1114097-CMIN              BANGLADESH                     0                           1       23    237
ki1114097-CMIN              BANGLADESH                     1                           0        6    237
ki1114097-CMIN              BANGLADESH                     1                           1        3    237
ki1114097-CMIN              BRAZIL                         0                           0      110    115
ki1114097-CMIN              BRAZIL                         0                           1        0    115
ki1114097-CMIN              BRAZIL                         1                           0        5    115
ki1114097-CMIN              BRAZIL                         1                           1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                           0      459    490
ki1114097-CMIN              GUINEA-BISSAU                  0                           1       16    490
ki1114097-CMIN              GUINEA-BISSAU                  1                           0       15    490
ki1114097-CMIN              GUINEA-BISSAU                  1                           1        0    490
ki1114097-CMIN              PERU                           0                           0      365    374
ki1114097-CMIN              PERU                           0                           1        0    374
ki1114097-CMIN              PERU                           1                           0        9    374
ki1114097-CMIN              PERU                           1                           1        0    374
ki1114097-CONTENT           PERU                           0                           0      199    200
ki1114097-CONTENT           PERU                           0                           1        1    200
ki1114097-CONTENT           PERU                           1                           0        0    200
ki1114097-CONTENT           PERU                           1                           1        0    200
ki1119695-PROBIT            BELARUS                        0                           0     2008   2146
ki1119695-PROBIT            BELARUS                        0                           1        0   2146
ki1119695-PROBIT            BELARUS                        1                           0      138   2146
ki1119695-PROBIT            BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                           0     1491   1652
ki1126311-ZVITAMBO          ZIMBABWE                       0                           1       73   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                           0       75   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                           1       13   1652
ki1135781-COHORTS           GUATEMALA                      0                           0      567    711
ki1135781-COHORTS           GUATEMALA                      0                           1       26    711
ki1135781-COHORTS           GUATEMALA                      1                           0      110    711
ki1135781-COHORTS           GUATEMALA                      1                           1        8    711
ki1135781-COHORTS           PHILIPPINES                    0                           0     2198   2487
ki1135781-COHORTS           PHILIPPINES                    0                           1      155   2487
ki1135781-COHORTS           PHILIPPINES                    1                           0      102   2487
ki1135781-COHORTS           PHILIPPINES                    1                           1       32   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                           0      830    868
ki1148112-iLiNS-DOSE        MALAWI                         0                           1       33    868
ki1148112-iLiNS-DOSE        MALAWI                         1                           0        5    868
ki1148112-iLiNS-DOSE        MALAWI                         1                           1        0    868
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           0      948   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           1       24   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           0       31   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           1        1   1004
ki1148112-LCNI-5            MALAWI                         0                           0      226    235
ki1148112-LCNI-5            MALAWI                         0                           1        6    235
ki1148112-LCNI-5            MALAWI                         1                           0        3    235
ki1148112-LCNI-5            MALAWI                         1                           1        0    235
kiGH5241-JiVitA-4           BANGLADESH                     0                           0     3645   4417
kiGH5241-JiVitA-4           BANGLADESH                     0                           1      314   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                           0      354   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                           1      104   4417


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
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
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/eee72e9b-c799-45b7-b0a1-338c8c4b13f1/049761a3-d700-4016-a99c-2d1a08839d7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eee72e9b-c799-45b7-b0a1-338c8c4b13f1/049761a3-d700-4016-a99c-2d1a08839d7e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eee72e9b-c799-45b7-b0a1-338c8c4b13f1/049761a3-d700-4016-a99c-2d1a08839d7e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eee72e9b-c799-45b7-b0a1-338c8c4b13f1/049761a3-d700-4016-a99c-2d1a08839d7e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0257235   0.0081049   0.0433421
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.2641509   0.1452931   0.3830088
ki1000109-EE               PAKISTAN      0                    NA                0.1896425   0.1467584   0.2325265
ki1000109-EE               PAKISTAN      1                    NA                0.4865082   0.2880847   0.6849316
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0857877   0.0759486   0.0956268
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2487666   0.1795577   0.3179755
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1599465   0.1161739   0.2037192
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3208754   0.1910400   0.4507108
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0860875   0.0578871   0.1142879
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2385484   0.1387875   0.3383094
ki1101329-Keneba           GAMBIA        0                    NA                0.0491277   0.0388792   0.0593761
ki1101329-Keneba           GAMBIA        1                    NA                0.2715724   0.1343205   0.4088243
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0913136   0.0655564   0.1170707
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2011541   0.1028102   0.2994979
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0466923   0.0362347   0.0571499
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1729297   0.0976449   0.2482145
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0438449   0.0273537   0.0603360
ki1135781-COHORTS          GUATEMALA     1                    NA                0.0677966   0.0224054   0.1131878
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0655866   0.0555657   0.0756074
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2590300   0.1877778   0.3302822
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0856106   0.0731365   0.0980848
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2867303   0.1961352   0.3773253


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1020734   0.0904618   0.1136850
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1108696   0.0821465   0.1395926
ki1101329-Keneba           GAMBIA        NA                   NA                0.0552707   0.0445768   0.0659645
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0520581   0.0413427   0.0627735
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0478200   0.0321242   0.0635158
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0946344   0.0840975   0.1051713


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 10.268868   4.5249834   23.303875
ki1000109-EE               PAKISTAN      0                    0                  1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                  2.565397   1.6081796    4.092367
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  2.899792   2.1839822    3.850211
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  2.006142   1.2310819    3.269160
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  2.770999   1.6298032    4.711264
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  5.527888   3.2001279    9.548852
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  2.202894   1.2519533    3.876135
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  3.703601   2.2696989    6.043383
ki1135781-COHORTS          GUATEMALA     0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                  1.546284   0.7174282    3.332730
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  3.949436   2.8857491    5.405198
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  3.349236   2.3740805    4.724938


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0347161    0.0151987   0.0542334
ki1000109-EE               PAKISTAN      0                    NA                0.0246433    0.0068682   0.0424183
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0162856    0.0097492   0.0228221
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0258120    0.0030652   0.0485588
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0247820    0.0075187   0.0420453
ki1101329-Keneba           GAMBIA        0                    NA                0.0061430    0.0023155   0.0099704
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0141410    0.0013965   0.0268855
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0053658    0.0012235   0.0095081
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0039751   -0.0040667   0.0120169
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0096044    0.0054280   0.0137808
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0090237    0.0004924   0.0175551


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5743935    0.2690804   0.7521739
ki1000109-EE               PAKISTAN      0                    NA                0.1150019    0.0299990   0.1925558
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1595483    0.1010930   0.2142023
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1389545    0.0103320   0.2508605
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2235242    0.0615686   0.3575293
ki1101329-Keneba           GAMBIA        0                    NA                0.1111433    0.0423907   0.1749597
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1340954    0.0085012   0.2437806
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1030733    0.0227258   0.1768149
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0831267   -0.0990260   0.2350893
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1277335    0.0727580   0.1794496
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0953536    0.0017134   0.1802103
