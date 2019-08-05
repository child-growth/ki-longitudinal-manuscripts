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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06    co_occurence   n_cell      n
--------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                            0      194    221
ki0047075b-MAL-ED           BANGLADESH                     0                            1       12    221
ki0047075b-MAL-ED           BANGLADESH                     1                            0       13    221
ki0047075b-MAL-ED           BANGLADESH                     1                            1        2    221
ki0047075b-MAL-ED           BRAZIL                         0                            0      178    180
ki0047075b-MAL-ED           BRAZIL                         0                            1        1    180
ki0047075b-MAL-ED           BRAZIL                         1                            0        1    180
ki0047075b-MAL-ED           BRAZIL                         1                            1        0    180
ki0047075b-MAL-ED           INDIA                          0                            0      196    228
ki0047075b-MAL-ED           INDIA                          0                            1       13    228
ki0047075b-MAL-ED           INDIA                          1                            0       15    228
ki0047075b-MAL-ED           INDIA                          1                            1        4    228
ki0047075b-MAL-ED           NEPAL                          0                            0      218    229
ki0047075b-MAL-ED           NEPAL                          0                            1        4    229
ki0047075b-MAL-ED           NEPAL                          1                            0        7    229
ki0047075b-MAL-ED           NEPAL                          1                            1        0    229
ki0047075b-MAL-ED           PERU                           0                            0      215    222
ki0047075b-MAL-ED           PERU                           0                            1        6    222
ki0047075b-MAL-ED           PERU                           1                            0        1    222
ki0047075b-MAL-ED           PERU                           1                            1        0    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      233    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        0    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      221    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0        3    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                            0      282    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                            1       13    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                            0       60    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                            1        9    364
ki1000108-IRC               INDIA                          0                            0      268    405
ki1000108-IRC               INDIA                          0                            1       15    405
ki1000108-IRC               INDIA                          1                            0      112    405
ki1000108-IRC               INDIA                          1                            1       10    405
ki1000109-EE                PAKISTAN                       0                            0      256    350
ki1000109-EE                PAKISTAN                       0                            1       67    350
ki1000109-EE                PAKISTAN                       1                            0       19    350
ki1000109-EE                PAKISTAN                       1                            1        8    350
ki1000109-ResPak            PAKISTAN                       0                            0        6      9
ki1000109-ResPak            PAKISTAN                       0                            1        0      9
ki1000109-ResPak            PAKISTAN                       1                            0        3      9
ki1000109-ResPak            PAKISTAN                       1                            1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                            0     1064   1254
ki1000304b-SAS-CompFeed     INDIA                          0                            1      109   1254
ki1000304b-SAS-CompFeed     INDIA                          1                            0       62   1254
ki1000304b-SAS-CompFeed     INDIA                          1                            1       19   1254
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      255    323
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1       55    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0        8    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1        5    323
ki1017093-NIH-Birth         BANGLADESH                     0                            0      375    460
ki1017093-NIH-Birth         BANGLADESH                     0                            1       39    460
ki1017093-NIH-Birth         BANGLADESH                     1                            0       34    460
ki1017093-NIH-Birth         BANGLADESH                     1                            1       12    460
ki1017093b-PROVIDE          BANGLADESH                     0                            0      494    551
ki1017093b-PROVIDE          BANGLADESH                     0                            1       34    551
ki1017093b-PROVIDE          BANGLADESH                     1                            0       21    551
ki1017093b-PROVIDE          BANGLADESH                     1                            1        2    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                            0      560    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                            1       26    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                            0       45    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                            1        3    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0      933    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1       21    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0       26    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    980
ki1101329-Keneba            GAMBIA                         0                            0     1588   1755
ki1101329-Keneba            GAMBIA                         0                            1       76   1755
ki1101329-Keneba            GAMBIA                         1                            0       70   1755
ki1101329-Keneba            GAMBIA                         1                            1       21   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                            0      447    550
ki1113344-GMS-Nepal         NEPAL                          0                            1       48    550
ki1113344-GMS-Nepal         NEPAL                          1                            0       45    550
ki1113344-GMS-Nepal         NEPAL                          1                            1       10    550
ki1114097-CMIN              BANGLADESH                     0                            0      204    237
ki1114097-CMIN              BANGLADESH                     0                            1       24    237
ki1114097-CMIN              BANGLADESH                     1                            0        7    237
ki1114097-CMIN              BANGLADESH                     1                            1        2    237
ki1114097-CMIN              BRAZIL                         0                            0      114    115
ki1114097-CMIN              BRAZIL                         0                            1        0    115
ki1114097-CMIN              BRAZIL                         1                            0        1    115
ki1114097-CMIN              BRAZIL                         1                            1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                            0      469    490
ki1114097-CMIN              GUINEA-BISSAU                  0                            1       16    490
ki1114097-CMIN              GUINEA-BISSAU                  1                            0        5    490
ki1114097-CMIN              GUINEA-BISSAU                  1                            1        0    490
ki1114097-CMIN              PERU                           0                            0      366    374
ki1114097-CMIN              PERU                           0                            1        0    374
ki1114097-CMIN              PERU                           1                            0        8    374
ki1114097-CMIN              PERU                           1                            1        0    374
ki1114097-CONTENT           PERU                           0                            0      199    200
ki1114097-CONTENT           PERU                           0                            1        1    200
ki1114097-CONTENT           PERU                           1                            0        0    200
ki1114097-CONTENT           PERU                           1                            1        0    200
ki1119695-PROBIT            BELARUS                        0                            0     2004   2146
ki1119695-PROBIT            BELARUS                        0                            1        0   2146
ki1119695-PROBIT            BELARUS                        1                            0      142   2146
ki1119695-PROBIT            BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0     1468   1652
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1       79   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0       98   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1        7   1652
ki1135781-COHORTS           GUATEMALA                      0                            0      635    711
ki1135781-COHORTS           GUATEMALA                      0                            1       32    711
ki1135781-COHORTS           GUATEMALA                      1                            0       42    711
ki1135781-COHORTS           GUATEMALA                      1                            1        2    711
ki1135781-COHORTS           PHILIPPINES                    0                            0     2167   2487
ki1135781-COHORTS           PHILIPPINES                    0                            1      165   2487
ki1135781-COHORTS           PHILIPPINES                    1                            0      133   2487
ki1135781-COHORTS           PHILIPPINES                    1                            1       22   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                            0      834    868
ki1148112-iLiNS-DOSE        MALAWI                         0                            1       33    868
ki1148112-iLiNS-DOSE        MALAWI                         1                            0        1    868
ki1148112-iLiNS-DOSE        MALAWI                         1                            1        0    868
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0      973   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       25   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0        6   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        0   1004
ki1148112-LCNI-5            MALAWI                         0                            0      229    235
ki1148112-LCNI-5            MALAWI                         0                            1        6    235
ki1148112-LCNI-5            MALAWI                         1                            0        0    235
ki1148112-LCNI-5            MALAWI                         1                            1        0    235
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     3931   4417
kiGH5241-JiVitA-4           BANGLADESH                     0                            1      396   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                            0       68   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                            1       22   4417


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
![](/tmp/466f37ef-b8d8-4a35-813a-0ac28a7300fe/015b8975-ac69-4d3a-8e8b-6d61d69fd280/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/466f37ef-b8d8-4a35-813a-0ac28a7300fe/015b8975-ac69-4d3a-8e8b-6d61d69fd280/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/466f37ef-b8d8-4a35-813a-0ac28a7300fe/015b8975-ac69-4d3a-8e8b-6d61d69fd280/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/466f37ef-b8d8-4a35-813a-0ac28a7300fe/015b8975-ac69-4d3a-8e8b-6d61d69fd280/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0440678   0.0206142   0.0675214
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1304348   0.0508612   0.2100083
ki1000108-IRC              INDIA         0                    NA                0.0530035   0.0268688   0.0791383
ki1000108-IRC              INDIA         1                    NA                0.0819672   0.0332307   0.1307037
ki1000109-EE               PAKISTAN      0                    NA                0.2074303   0.1631488   0.2517119
ki1000109-EE               PAKISTAN      1                    NA                0.2962963   0.1238136   0.4687790
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0929241   0.0813542   0.1044941
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2345679   0.1087131   0.3604227
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1774194   0.1348271   0.2200116
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3846154   0.1197432   0.6494876
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0942029   0.0660341   0.1223717
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2608696   0.1338373   0.3879018
ki1101329-Keneba           GAMBIA        0                    NA                0.0456731   0.0356391   0.0557071
ki1101329-Keneba           GAMBIA        1                    NA                0.2307692   0.1441791   0.3173594
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0969697   0.0708776   0.1230618
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1818182   0.0797934   0.2838429
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0510666   0.0400937   0.0620395
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0666667   0.0189404   0.1143930
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0707547   0.0603456   0.0811638
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1419355   0.0869846   0.1968864
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0915184   0.0809631   0.1020736
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2444444   0.1681297   0.3207592


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1020734   0.0904618   0.1136850
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1108696   0.0821465   0.1395926
ki1101329-Keneba           GAMBIA        NA                   NA                0.0552707   0.0445768   0.0659645
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0520581   0.0413427   0.0627735
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0946344   0.0840975   0.1051713


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 2.959866   1.3172643   6.650759
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000108-IRC              INDIA         1                    0                 1.546448   0.7142847   3.348107
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.428414   0.7683782   2.655418
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 2.524295   1.3864851   4.595841
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.167832   1.0454178   4.495328
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.769231   1.5638199   4.903787
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA        1                    0                 5.052632   3.2710199   7.804625
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 1.875000   1.0063141   3.493566
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.305485   0.6182445   2.756663
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.006022   1.3257653   3.035320
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 2.670988   1.9279485   3.700397


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0163718    0.0002653   0.0324783
ki1000108-IRC              INDIA         0                    NA                0.0087249   -0.0079842   0.0254339
ki1000109-EE               PAKISTAN      0                    NA                0.0068554   -0.0071054   0.0208161
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0091492    0.0002827   0.0180157
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0083392   -0.0033385   0.0200168
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0166667    0.0028743   0.0304590
ki1101329-Keneba           GAMBIA        0                    NA                0.0095976    0.0046865   0.0145086
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0084848   -0.0022591   0.0192288
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0009915   -0.0021265   0.0041095
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0044363    0.0008856   0.0079870
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0031160    0.0011678   0.0050642


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2708783   -0.0204611   0.4790409
ki1000108-IRC              INDIA         0                    NA                0.1413428   -0.1703473   0.3700227
ki1000109-EE               PAKISTAN      0                    NA                0.0319917   -0.0352405   0.0948577
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0896340    0.0022344   0.1693777
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0448925   -0.0195805   0.1052885
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1503268    0.0220141   0.2618047
ki1101329-Keneba           GAMBIA        0                    NA                0.1736469    0.0864254   0.2525411
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0804598   -0.0256201   0.1755678
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0190466   -0.0425925   0.0770416
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0590001    0.0112004   0.1044891
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0329267    0.0120969   0.0533173
