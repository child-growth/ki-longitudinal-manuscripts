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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_swasted06_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06_noBW    pers_wasted624   n_cell       n
--------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                                   0      216     238
ki0047075b-MAL-ED           BANGLADESH                     0                                   1       15     238
ki0047075b-MAL-ED           BANGLADESH                     1                                   0        4     238
ki0047075b-MAL-ED           BANGLADESH                     1                                   1        3     238
ki0047075b-MAL-ED           BRAZIL                         0                                   0      198     201
ki0047075b-MAL-ED           BRAZIL                         0                                   1        1     201
ki0047075b-MAL-ED           BRAZIL                         1                                   0        2     201
ki0047075b-MAL-ED           BRAZIL                         1                                   1        0     201
ki0047075b-MAL-ED           INDIA                          0                                   0      203     229
ki0047075b-MAL-ED           INDIA                          0                                   1       21     229
ki0047075b-MAL-ED           INDIA                          1                                   0        3     229
ki0047075b-MAL-ED           INDIA                          1                                   1        2     229
ki0047075b-MAL-ED           NEPAL                          0                                   0      230     232
ki0047075b-MAL-ED           NEPAL                          0                                   1        1     232
ki0047075b-MAL-ED           NEPAL                          1                                   0        1     232
ki0047075b-MAL-ED           NEPAL                          1                                   1        0     232
ki0047075b-MAL-ED           PERU                           0                                   0      261     264
ki0047075b-MAL-ED           PERU                           0                                   1        2     264
ki0047075b-MAL-ED           PERU                           1                                   0        1     264
ki0047075b-MAL-ED           PERU                           1                                   1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                   0      253     257
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                   1        1     257
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                   0        3     257
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                   1        0     257
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      242     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        2     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                                   0      304     350
ki1000108-CMC-V-BCS-2002    INDIA                          0                                   1       16     350
ki1000108-CMC-V-BCS-2002    INDIA                          1                                   0       25     350
ki1000108-CMC-V-BCS-2002    INDIA                          1                                   1        5     350
ki1000108-IRC               INDIA                          0                                   0      309     390
ki1000108-IRC               INDIA                          0                                   1       24     390
ki1000108-IRC               INDIA                          1                                   0       39     390
ki1000108-IRC               INDIA                          1                                   1       18     390
ki1000109-EE                PAKISTAN                       0                                   0      315     365
ki1000109-EE                PAKISTAN                       0                                   1       34     365
ki1000109-EE                PAKISTAN                       1                                   0        9     365
ki1000109-EE                PAKISTAN                       1                                   1        7     365
ki1000109-ResPak            PAKISTAN                       0                                   0      167     216
ki1000109-ResPak            PAKISTAN                       0                                   1       31     216
ki1000109-ResPak            PAKISTAN                       1                                   0        6     216
ki1000109-ResPak            PAKISTAN                       1                                   1       12     216
ki1000304-VITAMIN-A         INDIA                          0                                   0     1731    2000
ki1000304-VITAMIN-A         INDIA                          0                                   1      267    2000
ki1000304-VITAMIN-A         INDIA                          1                                   0        1    2000
ki1000304-VITAMIN-A         INDIA                          1                                   1        1    2000
ki1000304b-SAS-CompFeed     INDIA                          0                                   0     1101    1323
ki1000304b-SAS-CompFeed     INDIA                          0                                   1      183    1323
ki1000304b-SAS-CompFeed     INDIA                          1                                   0       17    1323
ki1000304b-SAS-CompFeed     INDIA                          1                                   1       22    1323
ki1000304b-SAS-FoodSuppl    INDIA                          0                                   0      283     318
ki1000304b-SAS-FoodSuppl    INDIA                          0                                   1       35     318
ki1000304b-SAS-FoodSuppl    INDIA                          1                                   0        0     318
ki1000304b-SAS-FoodSuppl    INDIA                          1                                   1        0     318
ki1017093-NIH-Birth         BANGLADESH                     0                                   0      438     493
ki1017093-NIH-Birth         BANGLADESH                     0                                   1       48     493
ki1017093-NIH-Birth         BANGLADESH                     1                                   0        4     493
ki1017093-NIH-Birth         BANGLADESH                     1                                   1        3     493
ki1017093b-PROVIDE          BANGLADESH                     0                                   0      563     600
ki1017093b-PROVIDE          BANGLADESH                     0                                   1       34     600
ki1017093b-PROVIDE          BANGLADESH                     1                                   0        2     600
ki1017093b-PROVIDE          BANGLADESH                     1                                   1        1     600
ki1017093c-NIH-Crypto       BANGLADESH                     0                                   0      673     716
ki1017093c-NIH-Crypto       BANGLADESH                     0                                   1       42     716
ki1017093c-NIH-Crypto       BANGLADESH                     1                                   0        1     716
ki1017093c-NIH-Crypto       BANGLADESH                     1                                   1        0     716
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                   0     1804    1906
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                   1       69    1906
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                   0       20    1906
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                   1       13    1906
ki1101329-Keneba            GAMBIA                         0                                   0     1932    2167
ki1101329-Keneba            GAMBIA                         0                                   1      143    2167
ki1101329-Keneba            GAMBIA                         1                                   0       56    2167
ki1101329-Keneba            GAMBIA                         1                                   1       36    2167
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                   0       20      24
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                   1        4      24
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                   0        0      24
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                   1        0      24
ki1112895-Guatemala BSC     GUATEMALA                      0                                   0      230     233
ki1112895-Guatemala BSC     GUATEMALA                      0                                   1        3     233
ki1112895-Guatemala BSC     GUATEMALA                      1                                   0        0     233
ki1112895-Guatemala BSC     GUATEMALA                      1                                   1        0     233
ki1113344-GMS-Nepal         NEPAL                          0                                   0      454     550
ki1113344-GMS-Nepal         NEPAL                          0                                   1       79     550
ki1113344-GMS-Nepal         NEPAL                          1                                   0       10     550
ki1113344-GMS-Nepal         NEPAL                          1                                   1        7     550
ki1114097-CMIN              BANGLADESH                     0                                   0      224     250
ki1114097-CMIN              BANGLADESH                     0                                   1       20     250
ki1114097-CMIN              BANGLADESH                     1                                   0        2     250
ki1114097-CMIN              BANGLADESH                     1                                   1        4     250
ki1114097-CMIN              BRAZIL                         0                                   0      117     117
ki1114097-CMIN              BRAZIL                         0                                   1        0     117
ki1114097-CMIN              BRAZIL                         1                                   0        0     117
ki1114097-CMIN              BRAZIL                         1                                   1        0     117
ki1114097-CMIN              GUINEA-BISSAU                  0                                   0      833     871
ki1114097-CMIN              GUINEA-BISSAU                  0                                   1       36     871
ki1114097-CMIN              GUINEA-BISSAU                  1                                   0        2     871
ki1114097-CMIN              GUINEA-BISSAU                  1                                   1        0     871
ki1114097-CMIN              PERU                           0                                   0      622     626
ki1114097-CMIN              PERU                           0                                   1        1     626
ki1114097-CMIN              PERU                           1                                   0        3     626
ki1114097-CMIN              PERU                           1                                   1        0     626
ki1114097-CONTENT           PERU                           0                                   0      215     215
ki1114097-CONTENT           PERU                           0                                   1        0     215
ki1114097-CONTENT           PERU                           1                                   0        0     215
ki1114097-CONTENT           PERU                           1                                   1        0     215
ki1119695-PROBIT            BELARUS                        0                                   0    16043   16235
ki1119695-PROBIT            BELARUS                        0                                   1       15   16235
ki1119695-PROBIT            BELARUS                        1                                   0      175   16235
ki1119695-PROBIT            BELARUS                        1                                   1        2   16235
ki1126311-ZVITAMBO          ZIMBABWE                       0                                   0     7979    8395
ki1126311-ZVITAMBO          ZIMBABWE                       0                                   1      325    8395
ki1126311-ZVITAMBO          ZIMBABWE                       1                                   0       75    8395
ki1126311-ZVITAMBO          ZIMBABWE                       1                                   1       16    8395
ki1135781-COHORTS           GUATEMALA                      0                                   0      846     876
ki1135781-COHORTS           GUATEMALA                      0                                   1       29     876
ki1135781-COHORTS           GUATEMALA                      1                                   0        1     876
ki1135781-COHORTS           GUATEMALA                      1                                   1        0     876
ki1135781-COHORTS           INDIA                          0                                   0     4914    5449
ki1135781-COHORTS           INDIA                          0                                   1      429    5449
ki1135781-COHORTS           INDIA                          1                                   0       59    5449
ki1135781-COHORTS           INDIA                          1                                   1       47    5449
ki1135781-COHORTS           PHILIPPINES                    0                                   0     2486    2736
ki1135781-COHORTS           PHILIPPINES                    0                                   1      189    2736
ki1135781-COHORTS           PHILIPPINES                    1                                   0       43    2736
ki1135781-COHORTS           PHILIPPINES                    1                                   1       18    2736
ki1148112-iLiNS-DOSE        MALAWI                         0                                   0      760     802
ki1148112-iLiNS-DOSE        MALAWI                         0                                   1       42     802
ki1148112-iLiNS-DOSE        MALAWI                         1                                   0        0     802
ki1148112-iLiNS-DOSE        MALAWI                         1                                   1        0     802
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                   0      963     989
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                   1       26     989
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                   0        0     989
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                   1        0     989
ki1148112-LCNI-5            MALAWI                         0                                   0      240     246
ki1148112-LCNI-5            MALAWI                         0                                   1        6     246
ki1148112-LCNI-5            MALAWI                         1                                   0        0     246
ki1148112-LCNI-5            MALAWI                         1                                   1        0     246
kiGH5241-JiVitA-3           BANGLADESH                     0                                   0    11084   13954
kiGH5241-JiVitA-3           BANGLADESH                     0                                   1     2688   13954
kiGH5241-JiVitA-3           BANGLADESH                     1                                   0      111   13954
kiGH5241-JiVitA-3           BANGLADESH                     1                                   1       71   13954
kiGH5241-JiVitA-4           BANGLADESH                     0                                   0     4411    4891
kiGH5241-JiVitA-4           BANGLADESH                     0                                   1      459    4891
kiGH5241-JiVitA-4           BANGLADESH                     1                                   0       13    4891
kiGH5241-JiVitA-4           BANGLADESH                     1                                   1        8    4891


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: INDIA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/09fe4913-da2f-4e2c-b8e3-990a3abe335c/5ccb87b0-e4ba-4b81-9ebb-27a786318c3f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/09fe4913-da2f-4e2c-b8e3-990a3abe335c/5ccb87b0-e4ba-4b81-9ebb-27a786318c3f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/09fe4913-da2f-4e2c-b8e3-990a3abe335c/5ccb87b0-e4ba-4b81-9ebb-27a786318c3f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/09fe4913-da2f-4e2c-b8e3-990a3abe335c/5ccb87b0-e4ba-4b81-9ebb-27a786318c3f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0500000   0.0260866   0.0739134
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1666667   0.0331171   0.3002162
ki1000108-IRC              INDIA                          0                    NA                0.0720721   0.0442606   0.0998836
ki1000108-IRC              INDIA                          1                    NA                0.3157895   0.1949631   0.4366159
ki1000109-EE               PAKISTAN                       0                    NA                0.0974212   0.0662682   0.1285742
ki1000109-EE               PAKISTAN                       1                    NA                0.4375000   0.1940924   0.6809076
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1565657   0.1058319   0.2072994
ki1000109-ResPak           PAKISTAN                       1                    NA                0.6666667   0.4483870   0.8849463
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1425234   0.1208664   0.1641803
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5641026   0.4719219   0.6562832
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0368393   0.0282391   0.0454395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3939394   0.2784535   0.5094253
ki1101329-Keneba           GAMBIA                         0                    NA                0.0689157   0.0580140   0.0798173
ki1101329-Keneba           GAMBIA                         1                    NA                0.3913043   0.2915546   0.4910541
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1482176   0.1180255   0.1784098
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4117647   0.1776014   0.6459280
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0391378   0.0349060   0.0433695
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1758242   0.1419099   0.2097385
ki1135781-COHORTS          INDIA                          0                    NA                0.0802920   0.0729634   0.0876206
ki1135781-COHORTS          INDIA                          1                    NA                0.4433962   0.3698004   0.5169920
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0706542   0.0609149   0.0803935
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2950820   0.1929934   0.3971705
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1951786   0.1876119   0.2027454
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3901099   0.3512180   0.4290018
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0942505   0.0835755   0.1049255
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3809524   0.3339979   0.4279069


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0600000   0.0350842   0.0849158
ki1000108-IRC              INDIA                          NA                   NA                0.1076923   0.0768872   0.1384974
ki1000109-EE               PAKISTAN                       NA                   NA                0.1123288   0.0798897   0.1447679
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1990741   0.1456997   0.2524484
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1549509   0.1362795   0.1736222
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430220   0.0339104   0.0521337
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0826027   0.0710097   0.0941956
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1563636   0.1259823   0.1867450
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406194   0.0363964   0.0448425
ki1135781-COHORTS          INDIA                          NA                   NA                0.0873555   0.0798578   0.0948531
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0756579   0.0657470   0.0855688
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1977211   0.1902810   0.2051611
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0954815   0.0850302   0.1059328


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  3.333333   1.311008    8.475240
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  4.381579   2.544647    7.544558
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  4.490809   2.363920    8.531323
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  4.258064   2.686277    6.749533
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.957965   2.960535    5.291439
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.693456   7.351307   15.555057
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.678018   4.206338    7.664596
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.778109   1.518474    5.082661
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.492443   3.601213    5.604234
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.522298   4.569351    6.673984
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.176425   2.877838    6.060982
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.998733   1.794197    2.226585
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.041913   3.415745    4.782869


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0100000   -0.0021235   0.0221235
ki1000108-IRC              INDIA                          0                    NA                0.0356202    0.0155810   0.0556595
ki1000109-EE               PAKISTAN                       0                    NA                0.0149076    0.0019897   0.0278254
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0425084    0.0159775   0.0690393
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0124275    0.0064491   0.0184059
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0061827    0.0026111   0.0097544
ki1101329-Keneba           GAMBIA                         0                    NA                0.0136870    0.0086232   0.0187508
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0081460   -0.0000889   0.0163809
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0014817    0.0005752   0.0023881
ki1135781-COHORTS          INDIA                          0                    NA                0.0070635    0.0047849   0.0093421
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0050037    0.0021550   0.0078524
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0025425    0.0014060   0.0036789
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0012310   -0.0000152   0.0024772


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1666667   -0.0482113   0.3374957
ki1000108-IRC              INDIA                          0                    NA                0.3307593    0.1440478   0.4767429
ki1000109-EE               PAKISTAN                       0                    NA                0.1327137    0.0155440   0.2359378
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2135307    0.0773932   0.3295800
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0802029    0.0359898   0.1223882
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1437110    0.0617618   0.2185024
ki1101329-Keneba           GAMBIA                         0                    NA                0.1656970    0.1062414   0.2211974
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0520965   -0.0013884   0.1027247
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0364764    0.0139487   0.0584895
ki1135781-COHORTS          INDIA                          0                    NA                0.0808594    0.0550683   0.1059465
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0661357    0.0285190   0.1022958
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0128588    0.0070563   0.0186275
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0128924   -0.0004948   0.0261005
