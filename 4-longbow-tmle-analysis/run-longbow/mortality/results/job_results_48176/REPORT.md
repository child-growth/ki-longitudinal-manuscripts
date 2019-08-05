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

studyid                     country                        ever_underweight06    co_occurence   n_cell      n
--------------------------  -----------------------------  -------------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                                0      152    221
ki0047075b-MAL-ED           BANGLADESH                     0                                1        3    221
ki0047075b-MAL-ED           BANGLADESH                     1                                0       55    221
ki0047075b-MAL-ED           BANGLADESH                     1                                1       11    221
ki0047075b-MAL-ED           BRAZIL                         0                                0      170    180
ki0047075b-MAL-ED           BRAZIL                         0                                1        0    180
ki0047075b-MAL-ED           BRAZIL                         1                                0        9    180
ki0047075b-MAL-ED           BRAZIL                         1                                1        1    180
ki0047075b-MAL-ED           INDIA                          0                                0      140    228
ki0047075b-MAL-ED           INDIA                          0                                1        0    228
ki0047075b-MAL-ED           INDIA                          1                                0       71    228
ki0047075b-MAL-ED           INDIA                          1                                1       17    228
ki0047075b-MAL-ED           NEPAL                          0                                0      192    229
ki0047075b-MAL-ED           NEPAL                          0                                1        0    229
ki0047075b-MAL-ED           NEPAL                          1                                0       33    229
ki0047075b-MAL-ED           NEPAL                          1                                1        4    229
ki0047075b-MAL-ED           PERU                           0                                0      185    222
ki0047075b-MAL-ED           PERU                           0                                1        1    222
ki0047075b-MAL-ED           PERU                           1                                0       31    222
ki0047075b-MAL-ED           PERU                           1                                1        5    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                0      202    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                1        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                0       35    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                1        2    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                0      191    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                1        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                0       33    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                1        1    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                                0      188    369
ki1000108-CMC-V-BCS-2002    INDIA                          0                                1        1    369
ki1000108-CMC-V-BCS-2002    INDIA                          1                                0      159    369
ki1000108-CMC-V-BCS-2002    INDIA                          1                                1       21    369
ki1000108-IRC               INDIA                          0                                0      209    405
ki1000108-IRC               INDIA                          0                                1        2    405
ki1000108-IRC               INDIA                          1                                0      171    405
ki1000108-IRC               INDIA                          1                                1       23    405
ki1000109-EE                PAKISTAN                       0                                0       95    350
ki1000109-EE                PAKISTAN                       0                                1        7    350
ki1000109-EE                PAKISTAN                       1                                0      180    350
ki1000109-EE                PAKISTAN                       1                                1       68    350
ki1000109-ResPak            PAKISTAN                       0                                0        3      9
ki1000109-ResPak            PAKISTAN                       0                                1        0      9
ki1000109-ResPak            PAKISTAN                       1                                0        6      9
ki1000109-ResPak            PAKISTAN                       1                                1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                                0      721   1259
ki1000304b-SAS-CompFeed     INDIA                          0                                1       18   1259
ki1000304b-SAS-CompFeed     INDIA                          1                                0      410   1259
ki1000304b-SAS-CompFeed     INDIA                          1                                1      110   1259
ki1000304b-SAS-FoodSuppl    INDIA                          0                                0      151    310
ki1000304b-SAS-FoodSuppl    INDIA                          0                                1       16    310
ki1000304b-SAS-FoodSuppl    INDIA                          1                                0      102    310
ki1000304b-SAS-FoodSuppl    INDIA                          1                                1       41    310
ki1017093-NIH-Birth         BANGLADESH                     0                                0      255    462
ki1017093-NIH-Birth         BANGLADESH                     0                                1       13    462
ki1017093-NIH-Birth         BANGLADESH                     1                                0      156    462
ki1017093-NIH-Birth         BANGLADESH                     1                                1       38    462
ki1017093b-PROVIDE          BANGLADESH                     0                                0      363    551
ki1017093b-PROVIDE          BANGLADESH                     0                                1       12    551
ki1017093b-PROVIDE          BANGLADESH                     1                                0      152    551
ki1017093b-PROVIDE          BANGLADESH                     1                                1       24    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                                0      431    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                                1        6    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                                0      174    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                                1       23    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                0      875    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                1        8    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                0       84    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                1       13    980
ki1101329-Keneba            GAMBIA                         0                                0     1382   1756
ki1101329-Keneba            GAMBIA                         0                                1       33   1756
ki1101329-Keneba            GAMBIA                         1                                0      275   1756
ki1101329-Keneba            GAMBIA                         1                                1       66   1756
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                                0      334    548
ki1113344-GMS-Nepal         NEPAL                          0                                1       12    548
ki1113344-GMS-Nepal         NEPAL                          1                                0      157    548
ki1113344-GMS-Nepal         NEPAL                          1                                1       45    548
ki1114097-CMIN              BANGLADESH                     0                                0      111    237
ki1114097-CMIN              BANGLADESH                     0                                1        3    237
ki1114097-CMIN              BANGLADESH                     1                                0      100    237
ki1114097-CMIN              BANGLADESH                     1                                1       23    237
ki1114097-CMIN              BRAZIL                         0                                0      104    115
ki1114097-CMIN              BRAZIL                         0                                1        0    115
ki1114097-CMIN              BRAZIL                         1                                0       11    115
ki1114097-CMIN              BRAZIL                         1                                1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                                0      446    489
ki1114097-CMIN              GUINEA-BISSAU                  0                                1       11    489
ki1114097-CMIN              GUINEA-BISSAU                  1                                0       27    489
ki1114097-CMIN              GUINEA-BISSAU                  1                                1        5    489
ki1114097-CMIN              PERU                           0                                0      347    373
ki1114097-CMIN              PERU                           0                                1        0    373
ki1114097-CMIN              PERU                           1                                0       26    373
ki1114097-CMIN              PERU                           1                                1        0    373
ki1114097-CONTENT           PERU                           0                                0      187    200
ki1114097-CONTENT           PERU                           0                                1        0    200
ki1114097-CONTENT           PERU                           1                                0       12    200
ki1114097-CONTENT           PERU                           1                                1        1    200
ki1119695-PROBIT            BELARUS                        0                                0     1986   2146
ki1119695-PROBIT            BELARUS                        0                                1        0   2146
ki1119695-PROBIT            BELARUS                        1                                0      160   2146
ki1119695-PROBIT            BELARUS                        1                                1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                                0     1273   1667
ki1126311-ZVITAMBO          ZIMBABWE                       0                                1       43   1667
ki1126311-ZVITAMBO          ZIMBABWE                       1                                0      305   1667
ki1126311-ZVITAMBO          ZIMBABWE                       1                                1       46   1667
ki1135781-COHORTS           GUATEMALA                      0                                0      553    738
ki1135781-COHORTS           GUATEMALA                      0                                1       13    738
ki1135781-COHORTS           GUATEMALA                      1                                0      149    738
ki1135781-COHORTS           GUATEMALA                      1                                1       23    738
ki1135781-COHORTS           PHILIPPINES                    0                                0     1931   2487
ki1135781-COHORTS           PHILIPPINES                    0                                1       88   2487
ki1135781-COHORTS           PHILIPPINES                    1                                0      369   2487
ki1135781-COHORTS           PHILIPPINES                    1                                1       99   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                                0      748    875
ki1148112-iLiNS-DOSE        MALAWI                         0                                1       17    875
ki1148112-iLiNS-DOSE        MALAWI                         1                                0       94    875
ki1148112-iLiNS-DOSE        MALAWI                         1                                1       16    875
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                0      901   1046
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                1       17   1046
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                0      120   1046
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                1        8   1046
ki1148112-LCNI-5            MALAWI                         0                                0      202    235
ki1148112-LCNI-5            MALAWI                         0                                1        3    235
ki1148112-LCNI-5            MALAWI                         1                                0       27    235
ki1148112-LCNI-5            MALAWI                         1                                1        3    235
kiGH5241-JiVitA-4           BANGLADESH                     0                                0     2983   4448
kiGH5241-JiVitA-4           BANGLADESH                     0                                1       95   4448
kiGH5241-JiVitA-4           BANGLADESH                     1                                0     1039   4448
kiGH5241-JiVitA-4           BANGLADESH                     1                                1      331   4448


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
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
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
![](/tmp/e40cff34-c94f-415b-b2d7-1b7a97626a9e/857ac12a-c243-442e-91fe-2da6aef99a38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e40cff34-c94f-415b-b2d7-1b7a97626a9e/857ac12a-c243-442e-91fe-2da6aef99a38/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e40cff34-c94f-415b-b2d7-1b7a97626a9e/857ac12a-c243-442e-91fe-2da6aef99a38/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e40cff34-c94f-415b-b2d7-1b7a97626a9e/857ac12a-c243-442e-91fe-2da6aef99a38/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.0686275   0.0194937   0.1177612
ki1000109-EE               PAKISTAN                       1                    NA                0.2741935   0.2185926   0.3297945
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0243287   0.0161683   0.0324891
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2109065   0.1850573   0.2367557
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0940959   0.0488856   0.1393061
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2799523   0.2057638   0.3541408
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0462923   0.0216674   0.0709172
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1864571   0.1276633   0.2452509
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0338323   0.0155409   0.0521237
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1293446   0.0776500   0.1810391
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0137300   0.0028110   0.0246490
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1167513   0.0718736   0.1616289
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0090600   0.0028072   0.0153129
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1340206   0.0661904   0.2018509
ki1101329-Keneba           GAMBIA                         0                    NA                0.0235395   0.0156638   0.0314153
ki1101329-Keneba           GAMBIA                         1                    NA                0.1744020   0.1331684   0.2156356
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0342834   0.0149555   0.0536113
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2197496   0.1617898   0.2777094
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0240700   0.0100037   0.0381364
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1562500   0.0303185   0.2821815
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0277475   0.0194870   0.0360079
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1723595   0.0808161   0.2639029
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0228112   0.0104448   0.0351775
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1337468   0.0816586   0.1858350
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0412722   0.0326406   0.0499039
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1762006   0.1189353   0.2334658
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0242515   0.0126436   0.0358594
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.1683573   0.0429393   0.2937753
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0185185   0.0097933   0.0272438
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0625000   0.0205457   0.1044543
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0349988   0.0262841   0.0437135
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2489546   0.1952457   0.3026634


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1838710   0.1406788   0.2270631
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563781   0.0455871   0.0671692
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1040146   0.0784316   0.1295976
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0327198   0.0169357   0.0485039
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0533893   0.0425943   0.0641843
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0332288   0.0643322
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0377143   0.0250845   0.0503441
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0239006   0.0146399   0.0331612
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0957734   0.0852493   0.1062974


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  3.995392   1.898434    8.408589
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  8.669033   5.657010   13.284778
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.975182   1.715062    5.161160
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.027822   2.169407    7.478245
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.823110   1.950770    7.492513
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  8.503384   3.515469   20.568390
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 14.792526   6.285689   34.812227
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.408896   4.924244   11.147242
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.409803   3.437999   11.950433
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.491477   2.398767   17.567059
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  6.211720   3.379217   11.418463
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  5.863219   3.003812   11.444572
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.269226   2.903215    6.277969
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                  6.942139   2.862585   16.835584
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  3.375000   1.486278    7.663860
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  7.113229   5.105312    9.910860


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.1456583    0.0921768   0.1991397
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0773393    0.0615878   0.0930907
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0897751    0.0480340   0.1315163
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0640973    0.0377103   0.0904843
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0315035    0.0136852   0.0493217
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0320113    0.0171871   0.0468356
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0123685    0.0052325   0.0195046
ki1101329-Keneba           GAMBIA                         0                    NA                0.0328386    0.0240096   0.0416676
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0697312    0.0460728   0.0933897
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0086498   -0.0001349   0.0174345
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0256419    0.0178598   0.0334239
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0259693    0.0132712   0.0386675
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0339187    0.0262018   0.0416357
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0134628    0.0042430   0.0226826
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0053821    0.0000659   0.0106982
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0607746    0.0500192   0.0715300


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.6797386    0.3702344   0.8371340
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7607042    0.6494977   0.8366273
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4882506    0.2358248   0.6572940
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5806464    0.3386286   0.7341019
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4821781    0.1978656   0.6657175
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6998343    0.3923700   0.8517199
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5771989    0.2737999   0.7538409
ki1101329-Keneba           GAMBIA                         0                    NA                0.5824704    0.4531207   0.6812258
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6703986    0.4582148   0.7994831
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.2643600   -0.0166074   0.4676743
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4802805    0.3564603   0.5802771
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5323714    0.2805031   0.6960703
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4511012    0.3605805   0.5288071
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.3569677    0.1007570   0.5401793
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2251852   -0.0098907   0.4055416
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6345664    0.5400781   0.7096426
