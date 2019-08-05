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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sunderweight06    co_occurence   n_cell      n
--------------------------  -----------------------------  --------------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                                 0      199    221
ki0047075b-MAL-ED           BANGLADESH                     0                                 1       11    221
ki0047075b-MAL-ED           BANGLADESH                     1                                 0        8    221
ki0047075b-MAL-ED           BANGLADESH                     1                                 1        3    221
ki0047075b-MAL-ED           BRAZIL                         0                                 0      179    180
ki0047075b-MAL-ED           BRAZIL                         0                                 1        1    180
ki0047075b-MAL-ED           BRAZIL                         1                                 0        0    180
ki0047075b-MAL-ED           BRAZIL                         1                                 1        0    180
ki0047075b-MAL-ED           INDIA                          0                                 0      189    228
ki0047075b-MAL-ED           INDIA                          0                                 1       10    228
ki0047075b-MAL-ED           INDIA                          1                                 0       22    228
ki0047075b-MAL-ED           INDIA                          1                                 1        7    228
ki0047075b-MAL-ED           NEPAL                          0                                 0      217    229
ki0047075b-MAL-ED           NEPAL                          0                                 1        2    229
ki0047075b-MAL-ED           NEPAL                          1                                 0        8    229
ki0047075b-MAL-ED           NEPAL                          1                                 1        2    229
ki0047075b-MAL-ED           PERU                           0                                 0      211    222
ki0047075b-MAL-ED           PERU                           0                                 1        4    222
ki0047075b-MAL-ED           PERU                           1                                 0        5    222
ki0047075b-MAL-ED           PERU                           1                                 1        2    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                 0      230    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                 1        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                 0        7    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                 1        0    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 0      218    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 1        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 0        6    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 1        1    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                                 0      288    369
ki1000108-CMC-V-BCS-2002    INDIA                          0                                 1        8    369
ki1000108-CMC-V-BCS-2002    INDIA                          1                                 0       59    369
ki1000108-CMC-V-BCS-2002    INDIA                          1                                 1       14    369
ki1000108-IRC               INDIA                          0                                 0      329    405
ki1000108-IRC               INDIA                          0                                 1       16    405
ki1000108-IRC               INDIA                          1                                 0       51    405
ki1000108-IRC               INDIA                          1                                 1        9    405
ki1000109-EE                PAKISTAN                       0                                 0      185    350
ki1000109-EE                PAKISTAN                       0                                 1       31    350
ki1000109-EE                PAKISTAN                       1                                 0       90    350
ki1000109-EE                PAKISTAN                       1                                 1       44    350
ki1000109-ResPak            PAKISTAN                       0                                 0        6      9
ki1000109-ResPak            PAKISTAN                       0                                 1        0      9
ki1000109-ResPak            PAKISTAN                       1                                 0        3      9
ki1000109-ResPak            PAKISTAN                       1                                 1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                                 0      995   1259
ki1000304b-SAS-CompFeed     INDIA                          0                                 1       75   1259
ki1000304b-SAS-CompFeed     INDIA                          1                                 0      136   1259
ki1000304b-SAS-CompFeed     INDIA                          1                                 1       53   1259
ki1000304b-SAS-FoodSuppl    INDIA                          0                                 0      216    310
ki1000304b-SAS-FoodSuppl    INDIA                          0                                 1       36    310
ki1000304b-SAS-FoodSuppl    INDIA                          1                                 0       37    310
ki1000304b-SAS-FoodSuppl    INDIA                          1                                 1       21    310
ki1017093-NIH-Birth         BANGLADESH                     0                                 0      368    462
ki1017093-NIH-Birth         BANGLADESH                     0                                 1       32    462
ki1017093-NIH-Birth         BANGLADESH                     1                                 0       43    462
ki1017093-NIH-Birth         BANGLADESH                     1                                 1       19    462
ki1017093b-PROVIDE          BANGLADESH                     0                                 0      486    551
ki1017093b-PROVIDE          BANGLADESH                     0                                 1       26    551
ki1017093b-PROVIDE          BANGLADESH                     1                                 0       29    551
ki1017093b-PROVIDE          BANGLADESH                     1                                 1       10    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                                 0      567    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                                 1       19    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                                 0       38    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                                 1       10    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                 0      943    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                 1       17    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                 0       16    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                 1        4    980
ki1101329-Keneba            GAMBIA                         0                                 0     1583   1756
ki1101329-Keneba            GAMBIA                         0                                 1       68   1756
ki1101329-Keneba            GAMBIA                         1                                 0       74   1756
ki1101329-Keneba            GAMBIA                         1                                 1       31   1756
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                 0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                 1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                 0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                 1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                                 0      451    548
ki1113344-GMS-Nepal         NEPAL                          0                                 1       35    548
ki1113344-GMS-Nepal         NEPAL                          1                                 0       40    548
ki1113344-GMS-Nepal         NEPAL                          1                                 1       22    548
ki1114097-CMIN              BANGLADESH                     0                                 0      180    237
ki1114097-CMIN              BANGLADESH                     0                                 1       15    237
ki1114097-CMIN              BANGLADESH                     1                                 0       31    237
ki1114097-CMIN              BANGLADESH                     1                                 1       11    237
ki1114097-CMIN              BRAZIL                         0                                 0      112    115
ki1114097-CMIN              BRAZIL                         0                                 1        0    115
ki1114097-CMIN              BRAZIL                         1                                 0        3    115
ki1114097-CMIN              BRAZIL                         1                                 1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                                 0      468    489
ki1114097-CMIN              GUINEA-BISSAU                  0                                 1       15    489
ki1114097-CMIN              GUINEA-BISSAU                  1                                 0        5    489
ki1114097-CMIN              GUINEA-BISSAU                  1                                 1        1    489
ki1114097-CMIN              PERU                           0                                 0      361    373
ki1114097-CMIN              PERU                           0                                 1        0    373
ki1114097-CMIN              PERU                           1                                 0       12    373
ki1114097-CMIN              PERU                           1                                 1        0    373
ki1114097-CONTENT           PERU                           0                                 0      197    200
ki1114097-CONTENT           PERU                           0                                 1        0    200
ki1114097-CONTENT           PERU                           1                                 0        2    200
ki1114097-CONTENT           PERU                           1                                 1        1    200
ki1119695-PROBIT            BELARUS                        0                                 0     2136   2146
ki1119695-PROBIT            BELARUS                        0                                 1        0   2146
ki1119695-PROBIT            BELARUS                        1                                 0       10   2146
ki1119695-PROBIT            BELARUS                        1                                 1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                                 0     1498   1667
ki1126311-ZVITAMBO          ZIMBABWE                       0                                 1       70   1667
ki1126311-ZVITAMBO          ZIMBABWE                       1                                 0       80   1667
ki1126311-ZVITAMBO          ZIMBABWE                       1                                 1       19   1667
ki1135781-COHORTS           GUATEMALA                      0                                 0      667    738
ki1135781-COHORTS           GUATEMALA                      0                                 1       27    738
ki1135781-COHORTS           GUATEMALA                      1                                 0       35    738
ki1135781-COHORTS           GUATEMALA                      1                                 1        9    738
ki1135781-COHORTS           PHILIPPINES                    0                                 0     2215   2487
ki1135781-COHORTS           PHILIPPINES                    0                                 1      157   2487
ki1135781-COHORTS           PHILIPPINES                    1                                 0       85   2487
ki1135781-COHORTS           PHILIPPINES                    1                                 1       30   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                                 0      820    875
ki1148112-iLiNS-DOSE        MALAWI                         0                                 1       30    875
ki1148112-iLiNS-DOSE        MALAWI                         1                                 0       22    875
ki1148112-iLiNS-DOSE        MALAWI                         1                                 1        3    875
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                 0      988   1046
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                 1       22   1046
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                 0       33   1046
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                 1        3   1046
ki1148112-LCNI-5            MALAWI                         0                                 0      227    235
ki1148112-LCNI-5            MALAWI                         0                                 1        6    235
ki1148112-LCNI-5            MALAWI                         1                                 0        2    235
ki1148112-LCNI-5            MALAWI                         1                                 1        0    235
kiGH5241-JiVitA-4           BANGLADESH                     0                                 0     3763   4448
kiGH5241-JiVitA-4           BANGLADESH                     0                                 1      302   4448
kiGH5241-JiVitA-4           BANGLADESH                     1                                 0      259   4448
kiGH5241-JiVitA-4           BANGLADESH                     1                                 1      124   4448


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
![](/tmp/ae890547-bb99-4aae-81f0-cedfebb69295/e4515737-bcfd-452b-b27b-e80711346682/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae890547-bb99-4aae-81f0-cedfebb69295/e4515737-bcfd-452b-b27b-e80711346682/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae890547-bb99-4aae-81f0-cedfebb69295/e4515737-bcfd-452b-b27b-e80711346682/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae890547-bb99-4aae-81f0-cedfebb69295/e4515737-bcfd-452b-b27b-e80711346682/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0502513   0.0198316   0.0806709
ki0047075b-MAL-ED          INDIA         1                    NA                0.2413793   0.0852926   0.3974660
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0270270   0.0085283   0.0455257
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1917808   0.1013445   0.2822172
ki1000108-IRC              INDIA         0                    NA                0.0463768   0.0241583   0.0685953
ki1000108-IRC              INDIA         1                    NA                0.1500000   0.0595384   0.2404616
ki1000109-EE               PAKISTAN      0                    NA                0.1435185   0.0966959   0.1903411
ki1000109-EE               PAKISTAN      1                    NA                0.3283582   0.2487313   0.4079851
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0700935   0.0579658   0.0822211
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2804233   0.2114211   0.3494255
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1428571   0.0995831   0.1861311
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3620690   0.2381841   0.4859538
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0800000   0.0533849   0.1066151
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3064516   0.1915722   0.4213310
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0507813   0.0317467   0.0698158
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2564103   0.1192448   0.3935757
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0324232   0.0180712   0.0467752
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.2083333   0.0933537   0.3233129
ki1101329-Keneba           GAMBIA        0                    NA                0.0411872   0.0315988   0.0507756
ki1101329-Keneba           GAMBIA        1                    NA                0.2952381   0.2079642   0.3825120
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0720165   0.0490120   0.0950210
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3548387   0.2356326   0.4740448
ki1114097-CMIN             BANGLADESH    0                    NA                0.0769231   0.0394434   0.1144028
ki1114097-CMIN             BANGLADESH    1                    NA                0.2619048   0.1286541   0.3951555
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0446429   0.0344178   0.0548679
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1919192   0.1143218   0.2695166
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0389049   0.0245087   0.0533011
ki1135781-COHORTS          GUATEMALA     1                    NA                0.2045455   0.0852789   0.3238120
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0661889   0.0561820   0.0761958
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2608696   0.1805986   0.3411406
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0742927   0.0651211   0.0834644
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3237598   0.2641086   0.3834110


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0596206   0.0354285   0.0838127
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1838710   0.1406788   0.2270631
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563781   0.0455871   0.0671692
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1040146   0.0784316   0.1295976
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0533893   0.0425943   0.0641843
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0487805   0.0332288   0.0643322
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0957734   0.0852493   0.1062974


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.803448   1.980913   11.647715
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 7.095890   3.090539   16.292192
ki1000108-IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC              INDIA         1                    0                 3.234375   1.497241    6.986971
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.287915   1.523696    3.435433
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 4.000705   2.741980    5.837258
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.534483   1.604815    4.002705
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 3.830645   2.320600    6.323295
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 5.049310   2.627556    9.703134
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 6.425439   3.166992   13.036427
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 7.168207   4.920382   10.442927
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.927189   3.099371    7.832941
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.404762   1.683245    6.886936
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.298990   2.701183    6.841933
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 5.257576   2.635527   10.488263
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 3.941291   2.797334    5.553063
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.357893   3.504082    5.419744


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0243101   0.0024528   0.0461675
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0325936   0.0131397   0.0520475
ki1000108-IRC              INDIA         0                    NA                0.0153516   0.0010923   0.0296108
ki1000109-EE               PAKISTAN      0                    NA                0.0707672   0.0341668   0.1073676
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0315745   0.0197432   0.0434058
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0410138   0.0146765   0.0673511
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0303896   0.0130667   0.0477125
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0145545   0.0038076   0.0253014
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0133181   0.0038260   0.0228102
ki1101329-Keneba           GAMBIA        0                    NA                0.0151910   0.0092324   0.0211495
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0319981   0.0163446   0.0476517
ki1114097-CMIN             BANGLADESH    0                    NA                0.0327816   0.0066482   0.0589149
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0087465   0.0038069   0.0136861
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0098756   0.0021738   0.0175774
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0090021   0.0049310   0.0130733
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0214806   0.0154627   0.0274986


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.3260420   0.0132207   0.5396950
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5466830   0.2215195   0.7360290
ki1000108-IRC              INDIA         0                    NA                0.2486956   0.0026326   0.4340518
ki1000109-EE               PAKISTAN      0                    NA                0.3302469   0.1464420   0.4744713
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.3105651   0.1970285   0.4080482
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2230576   0.0733943   0.3485477
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2752941   0.1171998   0.4050764
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2227648   0.0567607   0.3595532
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.2911616   0.0838895   0.4515379
ki1101329-Keneba           GAMBIA        0                    NA                0.2694480   0.1696995   0.3572131
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.3076312   0.1602952   0.4291154
ki1114097-CMIN             BANGLADESH    0                    NA                0.2988166   0.0448005   0.4852822
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1638242   0.0721545   0.2464371
ki1135781-COHORTS          GUATEMALA     0                    NA                0.2024496   0.0431095   0.3352566
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1197234   0.0662166   0.1701643
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.2242861   0.1673494   0.2773295
