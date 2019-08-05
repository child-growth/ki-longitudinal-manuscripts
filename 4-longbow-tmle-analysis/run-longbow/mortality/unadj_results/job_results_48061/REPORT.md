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

unadjusted

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
![](/tmp/03dab394-2d47-430e-beb0-cb31beb968ad/d3995165-0ece-46f1-9955-382d6c3416ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03dab394-2d47-430e-beb0-cb31beb968ad/d3995165-0ece-46f1-9955-382d6c3416ff/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03dab394-2d47-430e-beb0-cb31beb968ad/d3995165-0ece-46f1-9955-382d6c3416ff/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03dab394-2d47-430e-beb0-cb31beb968ad/d3995165-0ece-46f1-9955-382d6c3416ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0257235   0.0081049   0.0433421
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.2641509   0.1452931   0.3830088
ki1000109-EE               PAKISTAN      0                    NA                0.1894410   0.1465792   0.2323028
ki1000109-EE               PAKISTAN      1                    NA                0.5000000   0.3145357   0.6854643
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0846561   0.0746912   0.0946209
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2666667   0.2042947   0.3290386
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1592593   0.1155450   0.2029735
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3207547   0.1948960   0.4466134
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0859375   0.0578745   0.1140005
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2368421   0.1411556   0.3325286
ki1101329-Keneba           GAMBIA        0                    NA                0.0490941   0.0388534   0.0593348
ki1101329-Keneba           GAMBIA        1                    NA                0.2954545   0.1606063   0.4303028
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0912863   0.0655506   0.1170220
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2058824   0.1096899   0.3020748
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0466752   0.0362178   0.0571326
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1477273   0.0735693   0.2218852
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0438449   0.0273537   0.0603360
ki1135781-COHORTS          GUATEMALA     1                    NA                0.0677966   0.0224054   0.1131878
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0658734   0.0558484   0.0758983
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2388060   0.1666033   0.3110086
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0793130   0.0690539   0.0895720
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2270742   0.1809670   0.2731815


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
ki1000109-EE               PAKISTAN      1                    0                  2.639344   1.7092307    4.075599
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  3.150000   2.4405232    4.065727
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  2.014041   1.2476775    3.251130
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  2.755981   1.6393393    4.633227
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  6.018128   3.6435503    9.940266
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  2.255348   1.3068454    3.892268
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  3.165006   1.8265589    5.484227
ki1135781-COHORTS          GUATEMALA     0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                  1.546284   0.7174282    3.332730
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  3.625229   2.5842310    5.085568
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  2.863016   2.2572850    3.631291


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0347161    0.0151987   0.0542334
ki1000109-EE               PAKISTAN      0                    NA                0.0248447    0.0072370   0.0424524
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0174173    0.0108905   0.0239441
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0264993    0.0036821   0.0493164
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0249321    0.0076778   0.0421863
ki1101329-Keneba           GAMBIA        0                    NA                0.0061766    0.0023367   0.0100165
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0141682    0.0014591   0.0268773
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0053829    0.0012461   0.0095198
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0039751   -0.0040667   0.0120169
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0093176    0.0051008   0.0135345
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0153214    0.0101678   0.0204750


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5743935    0.2690804   0.7521739
ki1000109-EE               PAKISTAN      0                    NA                0.1159420    0.0317268   0.1928326
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1706349    0.1122270   0.2252001
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1426543    0.0136593   0.2547792
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2248775    0.0635381   0.3584203
ki1101329-Keneba           GAMBIA        0                    NA                0.1117511    0.0428157   0.1757219
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1343540    0.0091634   0.2437269
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1034021    0.0231589   0.1770537
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0831267   -0.0990260   0.2350893
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1239196    0.0684288   0.1761051
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1619011    0.1082330   0.2123394
