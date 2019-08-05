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

**Intervention Variable:** ever_wasted06_noBW

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

studyid                     country                        ever_wasted06_noBW    co_occurence   n_cell      n
--------------------------  -----------------------------  -------------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                                0      196    220
ki0047075b-MAL-ED           BANGLADESH                     0                                1       10    220
ki0047075b-MAL-ED           BANGLADESH                     1                                0       10    220
ki0047075b-MAL-ED           BANGLADESH                     1                                1        4    220
ki0047075b-MAL-ED           BRAZIL                         0                                0      172    179
ki0047075b-MAL-ED           BRAZIL                         0                                1        1    179
ki0047075b-MAL-ED           BRAZIL                         1                                0        6    179
ki0047075b-MAL-ED           BRAZIL                         1                                1        0    179
ki0047075b-MAL-ED           INDIA                          0                                0      180    223
ki0047075b-MAL-ED           INDIA                          0                                1        8    223
ki0047075b-MAL-ED           INDIA                          1                                0       26    223
ki0047075b-MAL-ED           INDIA                          1                                1        9    223
ki0047075b-MAL-ED           NEPAL                          0                                0      209    227
ki0047075b-MAL-ED           NEPAL                          0                                1        3    227
ki0047075b-MAL-ED           NEPAL                          1                                0       14    227
ki0047075b-MAL-ED           NEPAL                          1                                1        1    227
ki0047075b-MAL-ED           PERU                           0                                0      213    222
ki0047075b-MAL-ED           PERU                           0                                1        5    222
ki0047075b-MAL-ED           PERU                           1                                0        3    222
ki0047075b-MAL-ED           PERU                           1                                1        1    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                0      227    240
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                1        2    240
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                0        9    240
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                1        2    240
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                0      216    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                0        8    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                1        0    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                                0      233    346
ki1000108-CMC-V-BCS-2002    INDIA                          0                                1        6    346
ki1000108-CMC-V-BCS-2002    INDIA                          1                                0       98    346
ki1000108-CMC-V-BCS-2002    INDIA                          1                                1        9    346
ki1000108-IRC               INDIA                          0                                0      237    387
ki1000108-IRC               INDIA                          0                                1       18    387
ki1000108-IRC               INDIA                          1                                0      126    387
ki1000108-IRC               INDIA                          1                                1        6    387
ki1000109-EE                PAKISTAN                       0                                0      230    344
ki1000109-EE                PAKISTAN                       0                                1       43    344
ki1000109-EE                PAKISTAN                       1                                0       42    344
ki1000109-EE                PAKISTAN                       1                                1       29    344
ki1000109-ResPak            PAKISTAN                       0                                0        5      9
ki1000109-ResPak            PAKISTAN                       0                                1        0      9
ki1000109-ResPak            PAKISTAN                       1                                0        4      9
ki1000109-ResPak            PAKISTAN                       1                                1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                                0      996   1234
ki1000304b-SAS-CompFeed     INDIA                          0                                1       84   1234
ki1000304b-SAS-CompFeed     INDIA                          1                                0      116   1234
ki1000304b-SAS-CompFeed     INDIA                          1                                1       38   1234
ki1000304b-SAS-FoodSuppl    INDIA                          0                                0      228    271
ki1000304b-SAS-FoodSuppl    INDIA                          0                                1       43    271
ki1000304b-SAS-FoodSuppl    INDIA                          1                                0        0    271
ki1000304b-SAS-FoodSuppl    INDIA                          1                                1        0    271
ki1017093-NIH-Birth         BANGLADESH                     0                                0      369    442
ki1017093-NIH-Birth         BANGLADESH                     0                                1       33    442
ki1017093-NIH-Birth         BANGLADESH                     1                                0       28    442
ki1017093-NIH-Birth         BANGLADESH                     1                                1       12    442
ki1017093b-PROVIDE          BANGLADESH                     0                                0      488    543
ki1017093b-PROVIDE          BANGLADESH                     0                                1       27    543
ki1017093b-PROVIDE          BANGLADESH                     1                                0       21    543
ki1017093b-PROVIDE          BANGLADESH                     1                                1        7    543
ki1017093c-NIH-Crypto       BANGLADESH                     0                                0      589    629
ki1017093c-NIH-Crypto       BANGLADESH                     0                                1       24    629
ki1017093c-NIH-Crypto       BANGLADESH                     1                                0       13    629
ki1017093c-NIH-Crypto       BANGLADESH                     1                                1        3    629
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                0      879    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                1       18    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                0       74    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                1        3    974
ki1101329-Keneba            GAMBIA                         0                                0     1460   1742
ki1101329-Keneba            GAMBIA                         0                                1       60   1742
ki1101329-Keneba            GAMBIA                         1                                0      190   1742
ki1101329-Keneba            GAMBIA                         1                                1       32   1742
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                                0      406    521
ki1113344-GMS-Nepal         NEPAL                          0                                1       36    521
ki1113344-GMS-Nepal         NEPAL                          1                                0       60    521
ki1113344-GMS-Nepal         NEPAL                          1                                1       19    521
ki1114097-CMIN              BANGLADESH                     0                                0      193    236
ki1114097-CMIN              BANGLADESH                     0                                1       19    236
ki1114097-CMIN              BANGLADESH                     1                                0       17    236
ki1114097-CMIN              BANGLADESH                     1                                1        7    236
ki1114097-CMIN              BRAZIL                         0                                0      112    113
ki1114097-CMIN              BRAZIL                         0                                1        0    113
ki1114097-CMIN              BRAZIL                         1                                0        1    113
ki1114097-CMIN              BRAZIL                         1                                1        0    113
ki1114097-CMIN              GUINEA-BISSAU                  0                                0      465    487
ki1114097-CMIN              GUINEA-BISSAU                  0                                1       16    487
ki1114097-CMIN              GUINEA-BISSAU                  1                                0        6    487
ki1114097-CMIN              GUINEA-BISSAU                  1                                1        0    487
ki1114097-CMIN              PERU                           0                                0      359    370
ki1114097-CMIN              PERU                           0                                1        0    370
ki1114097-CMIN              PERU                           1                                0       11    370
ki1114097-CMIN              PERU                           1                                1        0    370
ki1114097-CONTENT           PERU                           0                                0      197    200
ki1114097-CONTENT           PERU                           0                                1        1    200
ki1114097-CONTENT           PERU                           1                                0        2    200
ki1114097-CONTENT           PERU                           1                                1        0    200
ki1119695-PROBIT            BELARUS                        0                                0     1962   2125
ki1119695-PROBIT            BELARUS                        0                                1        0   2125
ki1119695-PROBIT            BELARUS                        1                                0      163   2125
ki1119695-PROBIT            BELARUS                        1                                1        0   2125
ki1126311-ZVITAMBO          ZIMBABWE                       0                                0     1496   1629
ki1126311-ZVITAMBO          ZIMBABWE                       0                                1       67   1629
ki1126311-ZVITAMBO          ZIMBABWE                       1                                0       50   1629
ki1126311-ZVITAMBO          ZIMBABWE                       1                                1       16   1629
ki1135781-COHORTS           GUATEMALA                      0                                0      657    696
ki1135781-COHORTS           GUATEMALA                      0                                1       29    696
ki1135781-COHORTS           GUATEMALA                      1                                0        7    696
ki1135781-COHORTS           GUATEMALA                      1                                1        3    696
ki1135781-COHORTS           PHILIPPINES                    0                                0     2102   2469
ki1135781-COHORTS           PHILIPPINES                    0                                1      140   2469
ki1135781-COHORTS           PHILIPPINES                    1                                0      184   2469
ki1135781-COHORTS           PHILIPPINES                    1                                1       43   2469
ki1148112-iLiNS-DOSE        MALAWI                         0                                0      830    863
ki1148112-iLiNS-DOSE        MALAWI                         0                                1       33    863
ki1148112-iLiNS-DOSE        MALAWI                         1                                0        0    863
ki1148112-iLiNS-DOSE        MALAWI                         1                                1        0    863
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                0      949    974
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                1       24    974
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                0        0    974
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                1        1    974
ki1148112-LCNI-5            MALAWI                         0                                0      226    232
ki1148112-LCNI-5            MALAWI                         0                                1        6    232
ki1148112-LCNI-5            MALAWI                         1                                0        0    232
ki1148112-LCNI-5            MALAWI                         1                                1        0    232
kiGH5241-JiVitA-4           BANGLADESH                     0                                0     3848   4304
kiGH5241-JiVitA-4           BANGLADESH                     0                                1      348   4304
kiGH5241-JiVitA-4           BANGLADESH                     1                                0       80   4304
kiGH5241-JiVitA-4           BANGLADESH                     1                                1       28   4304


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/8120d45f-f5b8-45d0-a6c1-9088d7d6cd90/ed857495-a055-4584-b89d-ca641fb49c21/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8120d45f-f5b8-45d0-a6c1-9088d7d6cd90/ed857495-a055-4584-b89d-ca641fb49c21/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8120d45f-f5b8-45d0-a6c1-9088d7d6cd90/ed857495-a055-4584-b89d-ca641fb49c21/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8120d45f-f5b8-45d0-a6c1-9088d7d6cd90/ed857495-a055-4584-b89d-ca641fb49c21/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0425532   0.0136352   0.0714712
ki0047075b-MAL-ED          INDIA         1                    NA                0.2571429   0.1120220   0.4022637
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0251046   0.0052421   0.0449671
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.0841121   0.0314456   0.1367787
ki1000108-IRC              INDIA         0                    NA                0.0705882   0.0391100   0.1020664
ki1000108-IRC              INDIA         1                    NA                0.0454545   0.0098742   0.0810349
ki1000109-EE               PAKISTAN      0                    NA                0.1566974   0.1135775   0.1998173
ki1000109-EE               PAKISTAN      1                    NA                0.4331009   0.3155963   0.5506056
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0784495   0.0650994   0.0917995
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2286570   0.1847057   0.2726084
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0819946   0.0551220   0.1088672
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2913247   0.1447746   0.4378747
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0524272   0.0331595   0.0716949
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2500000   0.0894649   0.4105351
ki1101329-Keneba           GAMBIA        0                    NA                0.0390752   0.0293771   0.0487733
ki1101329-Keneba           GAMBIA        1                    NA                0.1342226   0.0890012   0.1794439
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0814477   0.0559503   0.1069451
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2421058   0.1467606   0.3374509
ki1114097-CMIN             BANGLADESH    0                    NA                0.0896226   0.0510906   0.1281547
ki1114097-CMIN             BANGLADESH    1                    NA                0.2916667   0.1094338   0.4738996
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0428487   0.0328028   0.0528945
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2545278   0.1500301   0.3590255
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0623741   0.0523677   0.0723805
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1851298   0.1357662   0.2344935
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0827097   0.0728086   0.0926107
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2744194   0.1989797   0.3498591


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0762332   0.0413252   0.1111412
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0433526   0.0218633   0.0648419
ki1000108-IRC              INDIA         NA                   NA                0.0620155   0.0379551   0.0860759
ki1000109-EE               PAKISTAN      NA                   NA                0.2093023   0.1662503   0.2523543
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0988655   0.0888927   0.1088383
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1018100   0.0735866   0.1300333
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0626151   0.0422190   0.0830112
ki1101329-Keneba           GAMBIA        NA                   NA                0.0528129   0.0423069   0.0633188
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1055662   0.0791553   0.1319771
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1101695   0.0701383   0.1502007
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0509515   0.0402697   0.0616333
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0741191   0.0637839   0.0844543
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0873606   0.0774748   0.0972464


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 6.0428571   2.4980717   14.617724
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 3.3504673   1.2215497    9.189664
ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 0.6439394   0.2615755    1.585233
ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.7639320   1.8795657    4.064407
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 2.9147049   2.1414674    3.967142
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 3.5529734   1.9525922    6.465057
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.7685185   2.2754185    9.993225
ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 3.4349835   2.2632019    5.213459
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 2.9725309   1.7952002    4.921980
ki1114097-CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.2543860   1.5243561    6.947870
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 5.9401588   3.7025126    9.530146
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.9680571   2.1782989    4.044148
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 3.3178645   2.4681624    4.460089


### Parameter: PAR


studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                 0.0336800    0.0082868   0.0590732
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0182480    0.0006049   0.0358911
ki1000108-IRC              INDIA         0                    NA                -0.0085727   -0.0248199   0.0076745
ki1000109-EE               PAKISTAN      0                    NA                 0.0526049    0.0248780   0.0803319
ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0204160    0.0116644   0.0291677
ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0198153    0.0056185   0.0340122
ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0101879    0.0010751   0.0193008
ki1101329-Keneba           GAMBIA        0                    NA                 0.0137377    0.0075714   0.0199040
ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0241185    0.0084706   0.0397664
ki1114097-CMIN             BANGLADESH    0                    NA                 0.0205469    0.0000589   0.0410348
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0081029    0.0034788   0.0127269
ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0117450    0.0068627   0.0166273
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0046509    0.0024815   0.0068204


### Parameter: PAF


studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                 0.4418023    0.0918735   0.6568928
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.4209205   -0.0647081   0.6850470
ki1000108-IRC              INDIA         0                    NA                -0.1382353   -0.4269134   0.0920405
ki1000109-EE               PAKISTAN      0                    NA                 0.2513347    0.1142583   0.3671973
ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.2065029    0.1098654   0.2926490
ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.1946308    0.0523170   0.3155732
ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.1627070    0.0142172   0.2888296
ki1101329-Keneba           GAMBIA        0                    NA                 0.2601202    0.1461199   0.3589004
ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.2284683    0.0764796   0.3554434
ki1114097-CMIN             BANGLADESH    0                    NA                 0.1865022   -0.0097774   0.3446291
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.1590307    0.0695503   0.2399059
ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.1584611    0.0932338   0.2189964
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0532384    0.0279615   0.0778580
