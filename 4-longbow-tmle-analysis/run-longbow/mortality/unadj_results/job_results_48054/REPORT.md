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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    co_occurence   n_cell      n
--------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                            0      144    221
ki0047075b-MAL-ED           BANGLADESH                     0                            1        5    221
ki0047075b-MAL-ED           BANGLADESH                     1                            0       63    221
ki0047075b-MAL-ED           BANGLADESH                     1                            1        9    221
ki0047075b-MAL-ED           BRAZIL                         0                            0      147    180
ki0047075b-MAL-ED           BRAZIL                         0                            1        0    180
ki0047075b-MAL-ED           BRAZIL                         1                            0       32    180
ki0047075b-MAL-ED           BRAZIL                         1                            1        1    180
ki0047075b-MAL-ED           INDIA                          0                            0      143    228
ki0047075b-MAL-ED           INDIA                          0                            1        7    228
ki0047075b-MAL-ED           INDIA                          1                            0       68    228
ki0047075b-MAL-ED           INDIA                          1                            1       10    228
ki0047075b-MAL-ED           NEPAL                          0                            0      189    229
ki0047075b-MAL-ED           NEPAL                          0                            1        1    229
ki0047075b-MAL-ED           NEPAL                          1                            0       36    229
ki0047075b-MAL-ED           NEPAL                          1                            1        3    229
ki0047075b-MAL-ED           PERU                           0                            0      118    222
ki0047075b-MAL-ED           PERU                           0                            1        0    222
ki0047075b-MAL-ED           PERU                           1                            0       98    222
ki0047075b-MAL-ED           PERU                           1                            1        6    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      145    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0       92    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        2    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      135    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0       89    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        1    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                            0      172    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                            1        8    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                            0      170    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                            1       14    364
ki1000108-IRC               INDIA                          0                            0      231    405
ki1000108-IRC               INDIA                          0                            1        4    405
ki1000108-IRC               INDIA                          1                            0      149    405
ki1000108-IRC               INDIA                          1                            1       21    405
ki1000109-EE                PAKISTAN                       0                            0       78    350
ki1000109-EE                PAKISTAN                       0                            1       13    350
ki1000109-EE                PAKISTAN                       1                            0      197    350
ki1000109-EE                PAKISTAN                       1                            1       62    350
ki1000109-ResPak            PAKISTAN                       0                            0        2      9
ki1000109-ResPak            PAKISTAN                       0                            1        0      9
ki1000109-ResPak            PAKISTAN                       1                            0        7      9
ki1000109-ResPak            PAKISTAN                       1                            1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                            0      696   1258
ki1000304b-SAS-CompFeed     INDIA                          0                            1       38   1258
ki1000304b-SAS-CompFeed     INDIA                          1                            0      434   1258
ki1000304b-SAS-CompFeed     INDIA                          1                            1       90   1258
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      162    321
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1       31    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0       99    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1       29    321
ki1017093-NIH-Birth         BANGLADESH                     0                            0      271    462
ki1017093-NIH-Birth         BANGLADESH                     0                            1       25    462
ki1017093-NIH-Birth         BANGLADESH                     1                            0      140    462
ki1017093-NIH-Birth         BANGLADESH                     1                            1       26    462
ki1017093b-PROVIDE          BANGLADESH                     0                            0      390    551
ki1017093b-PROVIDE          BANGLADESH                     0                            1       20    551
ki1017093b-PROVIDE          BANGLADESH                     1                            0      125    551
ki1017093b-PROVIDE          BANGLADESH                     1                            1       16    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                            0      427    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                            1       10    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                            0      178    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                            1       19    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0      768    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        5    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      191    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1       16    980
ki1101329-Keneba            GAMBIA                         0                            0     1174   1774
ki1101329-Keneba            GAMBIA                         0                            1       40   1774
ki1101329-Keneba            GAMBIA                         1                            0      500   1774
ki1101329-Keneba            GAMBIA                         1                            1       60   1774
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                            0      368    550
ki1113344-GMS-Nepal         NEPAL                          0                            1       30    550
ki1113344-GMS-Nepal         NEPAL                          1                            0      124    550
ki1113344-GMS-Nepal         NEPAL                          1                            1       28    550
ki1114097-CMIN              BANGLADESH                     0                            0       96    237
ki1114097-CMIN              BANGLADESH                     0                            1        5    237
ki1114097-CMIN              BANGLADESH                     1                            0      115    237
ki1114097-CMIN              BANGLADESH                     1                            1       21    237
ki1114097-CMIN              BRAZIL                         0                            0      100    115
ki1114097-CMIN              BRAZIL                         0                            1        0    115
ki1114097-CMIN              BRAZIL                         1                            0       15    115
ki1114097-CMIN              BRAZIL                         1                            1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                            0      409    490
ki1114097-CMIN              GUINEA-BISSAU                  0                            1       11    490
ki1114097-CMIN              GUINEA-BISSAU                  1                            0       65    490
ki1114097-CMIN              GUINEA-BISSAU                  1                            1        5    490
ki1114097-CMIN              PERU                           0                            0      331    374
ki1114097-CMIN              PERU                           0                            1        0    374
ki1114097-CMIN              PERU                           1                            0       43    374
ki1114097-CMIN              PERU                           1                            1        0    374
ki1114097-CONTENT           PERU                           0                            0      156    200
ki1114097-CONTENT           PERU                           0                            1        0    200
ki1114097-CONTENT           PERU                           1                            0       43    200
ki1114097-CONTENT           PERU                           1                            1        1    200
ki1119695-PROBIT            BELARUS                        0                            0     1943   2146
ki1119695-PROBIT            BELARUS                        0                            1        0   2146
ki1119695-PROBIT            BELARUS                        1                            0      203   2146
ki1119695-PROBIT            BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0     1013   1664
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1       36   1664
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0      563   1664
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1       52   1664
ki1135781-COHORTS           GUATEMALA                      0                            0      458    715
ki1135781-COHORTS           GUATEMALA                      0                            1       14    715
ki1135781-COHORTS           GUATEMALA                      1                            0      223    715
ki1135781-COHORTS           GUATEMALA                      1                            1       20    715
ki1135781-COHORTS           PHILIPPINES                    0                            0     1790   2487
ki1135781-COHORTS           PHILIPPINES                    0                            1      106   2487
ki1135781-COHORTS           PHILIPPINES                    1                            0      510   2487
ki1135781-COHORTS           PHILIPPINES                    1                            1       81   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                            0      609    867
ki1148112-iLiNS-DOSE        MALAWI                         0                            1       14    867
ki1148112-iLiNS-DOSE        MALAWI                         1                            0      225    867
ki1148112-iLiNS-DOSE        MALAWI                         1                            1       19    867
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0      854   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       16   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0      150   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        9   1029
ki1148112-LCNI-5            MALAWI                         0                            0      150    235
ki1148112-LCNI-5            MALAWI                         0                            1        2    235
ki1148112-LCNI-5            MALAWI                         1                            0       79    235
ki1148112-LCNI-5            MALAWI                         1                            1        4    235
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     2766   4444
kiGH5241-JiVitA-4           BANGLADESH                     0                            1      146   4444
kiGH5241-JiVitA-4           BANGLADESH                     1                            0     1253   4444
kiGH5241-JiVitA-4           BANGLADESH                     1                            1      279   4444


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
![](/tmp/4aea4da1-dc9f-4adb-8f9f-ff59e0627698/0cc16fb9-c9c2-4988-ad92-f08b6e5f8a01/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4aea4da1-dc9f-4adb-8f9f-ff59e0627698/0cc16fb9-c9c2-4988-ad92-f08b6e5f8a01/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4aea4da1-dc9f-4adb-8f9f-ff59e0627698/0cc16fb9-c9c2-4988-ad92-f08b6e5f8a01/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4aea4da1-dc9f-4adb-8f9f-ff59e0627698/0cc16fb9-c9c2-4988-ad92-f08b6e5f8a01/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0335570   0.0045756   0.0625385
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1250000   0.0484358   0.2015642
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0466667   0.0128382   0.0804952
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1282051   0.0538493   0.2025610
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0444444   0.0142973   0.0745916
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0760870   0.0377244   0.1144495
ki1000109-EE               PAKISTAN                       0                    NA                0.1428571   0.0708582   0.2148561
ki1000109-EE               PAKISTAN                       1                    NA                0.2393822   0.1873409   0.2914236
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0517711   0.0422327   0.0613095
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1717557   0.1392273   0.2042842
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1606218   0.1087384   0.2125051
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2265625   0.1539306   0.2991944
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0844595   0.0527466   0.1161723
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1566265   0.1012778   0.2119752
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0487805   0.0279109   0.0696501
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1134752   0.0610755   0.1658749
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0228833   0.0088525   0.0369141
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0964467   0.0551915   0.1377019
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0064683   0.0008142   0.0121224
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0772947   0.0408956   0.1136938
ki1101329-Keneba           GAMBIA                         0                    NA                0.0329489   0.0229049   0.0429929
ki1101329-Keneba           GAMBIA                         1                    NA                0.1071429   0.0815187   0.1327670
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0753769   0.0494170   0.1013368
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1842105   0.1225272   0.2458938
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0495050   0.0071109   0.0918990
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1544118   0.0935539   0.2152696
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0261905   0.0109016   0.0414794
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0714286   0.0110356   0.1318215
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0343184   0.0232987   0.0453381
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0845528   0.0625580   0.1065477
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0296610   0.0143454   0.0449767
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0823045   0.0477257   0.1168833
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0559072   0.0455639   0.0662504
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1370558   0.1093238   0.1647879
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0224719   0.0108269   0.0341169
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.0778689   0.0442268   0.1115109
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0183908   0.0094584   0.0273232
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0566038   0.0206677   0.0925398
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0501374   0.0414389   0.0588358
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1821149   0.1578740   0.2063558


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0633484   0.0311604   0.0955364
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0604396   0.0359254   0.0849538
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1017488   0.0903508   0.1131468
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563698   0.0456344   0.0671052
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0326531   0.0169007   0.0484055
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0528846   0.0421282   0.0636410
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0475524   0.0319423   0.0631626
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0380623   0.0253182   0.0508064
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0242954   0.0148836   0.0337072
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0956346   0.0850945   0.1061746


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.725000   1.2920971   10.738840
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  2.747253   1.0857212    6.951506
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.711957   0.7352570    3.986082
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  1.675676   0.9678627    2.901123
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.317597   2.3555652    4.672531
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.410534   0.8948251    2.223459
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.854458   1.1073539    3.105614
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.326241   1.2395573    4.365589
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.214721   1.9956591    8.901255
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 11.949758   4.4273686   32.253178
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  3.251786   2.2072542    4.790617
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.443860   1.5116869    3.950851
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  3.119118   1.2151260    8.006491
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  2.727273   0.9761452    7.619785
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.463776   1.6297798    3.724547
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.774838   1.4260498    5.399340
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.451489   1.8636270    3.224787
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                  3.465164   1.7648828    6.803489
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  3.077830   1.3838532    6.845407
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.632319   2.9209421    4.516947


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0297914    0.0025256   0.0570572
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0278947   -0.0005011   0.0562906
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0159951   -0.0087220   0.0407122
ki1000109-EE               PAKISTAN                       0                    NA                0.0714286    0.0055387   0.1373184
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0499777    0.0340815   0.0658739
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0262941   -0.0094738   0.0620621
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0259302    0.0027930   0.0490673
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0165553    0.0019303   0.0311802
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0228580    0.0090606   0.0366554
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0149603    0.0069717   0.0229488
ki1101329-Keneba           GAMBIA                         0                    NA                0.0234209    0.0145858   0.0322559
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0300777    0.0111397   0.0490157
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0601997    0.0171274   0.1032720
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0064626   -0.0025471   0.0154722
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0185662    0.0093995   0.0277329
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0178914    0.0049088   0.0308740
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0192838    0.0121204   0.0264472
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0155904    0.0054349   0.0257459
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0059046    0.0001209   0.0116884
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0454972    0.0362514   0.0547430


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4702780   -0.0524278   0.7333733
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3741176   -0.0850804   0.6389865
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2646464   -0.2599934   0.5708352
ki1000109-EE               PAKISTAN                       0                    NA                0.3333333   -0.0499580   0.5767027
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4911870    0.3601248   0.5954044
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1406736   -0.0716175   0.3109090
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2348967    0.0033194   0.4126673
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2533875    0.0100598   0.4369052
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4997238    0.1807471   0.6945067
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6981457    0.3537738   0.8590029
ki1101329-Keneba           GAMBIA                         0                    NA                0.4154860    0.2612267   0.5375353
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2852192    0.0957898   0.4349637
ki1114097-CMIN             BANGLADESH                     0                    NA                0.5487433    0.0314149   0.7897628
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1979167   -0.1089310   0.4198578
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3510703    0.1707597   0.4921740
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3762463    0.0755314   0.5791434
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2564645    0.1615625   0.3406246
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.4096016    0.1272184   0.6006215
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2430345   -0.0114858   0.4335098
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4757401    0.3937250   0.5466605
