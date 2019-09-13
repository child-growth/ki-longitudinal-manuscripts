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

unadjusted

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
![](/tmp/92c4aa82-68eb-4674-904d-228a16fca203/9b9387a2-21b4-49a0-984d-070435ac7b1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92c4aa82-68eb-4674-904d-228a16fca203/9b9387a2-21b4-49a0-984d-070435ac7b1e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92c4aa82-68eb-4674-904d-228a16fca203/9b9387a2-21b4-49a0-984d-070435ac7b1e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92c4aa82-68eb-4674-904d-228a16fca203/9b9387a2-21b4-49a0-984d-070435ac7b1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.0686275   0.0194937   0.1177612
ki1000109-EE               PAKISTAN                       1                    NA                0.2741935   0.2185926   0.3297945
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0243572   0.0161633   0.0325511
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2115385   0.1847035   0.2383734
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0958084   0.0510965   0.1405203
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2867133   0.2124733   0.3609532
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0485075   0.0227586   0.0742563
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1958763   0.1399688   0.2517838
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0320000   0.0141705   0.0498295
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1363636   0.0856177   0.1871095
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0137300   0.0028110   0.0246490
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1167513   0.0718736   0.1616289
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0090600   0.0028072   0.0153129
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1340206   0.0661904   0.2018509
ki1101329-Keneba           GAMBIA                         0                    NA                0.0233216   0.0154557   0.0311874
ki1101329-Keneba           GAMBIA                         1                    NA                0.1935484   0.1516035   0.2354932
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0346821   0.0153849   0.0539793
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2227723   0.1653377   0.2802069
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0240700   0.0100037   0.0381364
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1562500   0.0303185   0.2821815
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0326748   0.0230666   0.0422830
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1310541   0.0957402   0.1663681
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0229682   0.0106186   0.0353178
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1337209   0.0828222   0.1846197
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0435859   0.0346783   0.0524936
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2115385   0.1745303   0.2485466
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0222222   0.0117707   0.0326737
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.1454545   0.0795324   0.2113767
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0185185   0.0097933   0.0272438
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0625000   0.0205457   0.1044543
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0308642   0.0237235   0.0380049
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2416058   0.2142911   0.2689205


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
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  8.684829   5.646573   13.357882
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.992570   1.754932    5.103031
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.038065   2.210177    7.377676
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  4.261364   2.180533    8.327882
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  8.503384   3.515469   20.568390
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 14.792526   6.285689   34.812227
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  8.299120   5.558046   12.392017
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.423267   3.478825   11.859856
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.491477   2.398767   17.567059
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.010866   2.691668    5.976609
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  5.822004   3.012800   11.250571
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.853365   3.708578    6.351532
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                  6.545454   3.406285   12.577624
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  3.375000   1.486278    7.663860
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  7.828029   6.051795   10.125598


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.1456583    0.0921768   0.1991397
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0773108    0.0615338   0.0930877
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0880626    0.0467009   0.1294243
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0618821    0.0351965   0.0885678
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0333358    0.0156804   0.0509911
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0320113    0.0171871   0.0468356
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0123685    0.0052325   0.0195046
ki1101329-Keneba           GAMBIA                         0                    NA                0.0330566    0.0241906   0.0419225
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0693325    0.0457393   0.0929257
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0086498   -0.0001349   0.0174345
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0207146    0.0127716   0.0286575
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0258123    0.0131461   0.0384785
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0316051    0.0239914   0.0392187
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0154921    0.0066749   0.0243093
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0053821    0.0000659   0.0106982
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0649092    0.0553432   0.0744751


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.6797386    0.3702344   0.8371340
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7604237    0.6487468   0.8365942
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4789368    0.2317805   0.6465765
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5605795    0.3087288   0.7206734
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.5102222    0.2311104   0.6880147
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6998343    0.3923700   0.8517199
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5771989    0.2737999   0.7538409
ki1101329-Keneba           GAMBIA                         0                    NA                0.5863369    0.4564619   0.6851790
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6665653    0.4559361   0.7956513
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.2643600   -0.0166074   0.4676743
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3879905    0.2455223   0.5035564
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5291519    0.2786775   0.6926508
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4203304    0.3288725   0.4993248
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.4107744    0.1847224   0.5741490
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2251852   -0.0098907   0.4055416
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6777372    0.6045925   0.7373512
