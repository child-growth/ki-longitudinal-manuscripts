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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sunderweight06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                                   0      212     239
ki0047075b-MAL-ED           BANGLADESH                     0                                   1       15     239
ki0047075b-MAL-ED           BANGLADESH                     1                                   0        9     239
ki0047075b-MAL-ED           BANGLADESH                     1                                   1        3     239
ki0047075b-MAL-ED           BRAZIL                         0                                   0      200     202
ki0047075b-MAL-ED           BRAZIL                         0                                   1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                                   0        0     202
ki0047075b-MAL-ED           BRAZIL                         1                                   1        0     202
ki0047075b-MAL-ED           INDIA                          0                                   0      188     234
ki0047075b-MAL-ED           INDIA                          0                                   1       17     234
ki0047075b-MAL-ED           INDIA                          1                                   0       18     234
ki0047075b-MAL-ED           INDIA                          1                                   1       11     234
ki0047075b-MAL-ED           NEPAL                          0                                   0      223     234
ki0047075b-MAL-ED           NEPAL                          0                                   1        1     234
ki0047075b-MAL-ED           NEPAL                          1                                   0        9     234
ki0047075b-MAL-ED           NEPAL                          1                                   1        1     234
ki0047075b-MAL-ED           PERU                           0                                   0      254     264
ki0047075b-MAL-ED           PERU                           0                                   1        2     264
ki0047075b-MAL-ED           PERU                           1                                   0        8     264
ki0047075b-MAL-ED           PERU                           1                                   1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                   0      248     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                   1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                   0        8     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                   1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      237     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        7     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                                   0      287     373
ki1000108-CMC-V-BCS-2002    INDIA                          0                                   1       12     373
ki1000108-CMC-V-BCS-2002    INDIA                          1                                   0       58     373
ki1000108-CMC-V-BCS-2002    INDIA                          1                                   1       16     373
ki1000108-IRC               INDIA                          0                                   0      309     410
ki1000108-IRC               INDIA                          0                                   1       38     410
ki1000108-IRC               INDIA                          1                                   0       53     410
ki1000108-IRC               INDIA                          1                                   1       10     410
ki1000109-EE                PAKISTAN                       0                                   0      216     371
ki1000109-EE                PAKISTAN                       0                                   1       11     371
ki1000109-EE                PAKISTAN                       1                                   0      111     371
ki1000109-EE                PAKISTAN                       1                                   1       33     371
ki1000109-ResPak            PAKISTAN                       0                                   0      150     220
ki1000109-ResPak            PAKISTAN                       0                                   1       33     220
ki1000109-ResPak            PAKISTAN                       1                                   0       25     220
ki1000109-ResPak            PAKISTAN                       1                                   1       12     220
ki1000304-VITAMIN-A         INDIA                          0                                   0     2044    2952
ki1000304-VITAMIN-A         INDIA                          0                                   1      249    2952
ki1000304-VITAMIN-A         INDIA                          1                                   0      428    2952
ki1000304-VITAMIN-A         INDIA                          1                                   1      231    2952
ki1000304b-SAS-CompFeed     INDIA                          0                                   0     1017    1353
ki1000304b-SAS-CompFeed     INDIA                          0                                   1      128    1353
ki1000304b-SAS-CompFeed     INDIA                          1                                   0      117    1353
ki1000304b-SAS-CompFeed     INDIA                          1                                   1       91    1353
ki1000304b-SAS-FoodSuppl    INDIA                          0                                   0      268     373
ki1000304b-SAS-FoodSuppl    INDIA                          0                                   1       33     373
ki1000304b-SAS-FoodSuppl    INDIA                          1                                   0       42     373
ki1000304b-SAS-FoodSuppl    INDIA                          1                                   1       30     373
ki1017093-NIH-Birth         BANGLADESH                     0                                   0      409     514
ki1017093-NIH-Birth         BANGLADESH                     0                                   1       40     514
ki1017093-NIH-Birth         BANGLADESH                     1                                   0       47     514
ki1017093-NIH-Birth         BANGLADESH                     1                                   1       18     514
ki1017093b-PROVIDE          BANGLADESH                     0                                   0      541     608
ki1017093b-PROVIDE          BANGLADESH                     0                                   1       26     608
ki1017093b-PROVIDE          BANGLADESH                     1                                   0       28     608
ki1017093b-PROVIDE          BANGLADESH                     1                                   1       13     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                                   0      639     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                                   1       31     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                                   0       39     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                                   1       13     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                   0     1792    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                   1       75    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                   0       34    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                   1       20    1921
ki1101329-Keneba            GAMBIA                         0                                   0     1912    2185
ki1101329-Keneba            GAMBIA                         0                                   1      138    2185
ki1101329-Keneba            GAMBIA                         1                                   0       79    2185
ki1101329-Keneba            GAMBIA                         1                                   1       56    2185
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                   0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                   1        3      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                   0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                   1        3      26
ki1112895-Guatemala BSC     GUATEMALA                      0                                   0      224     235
ki1112895-Guatemala BSC     GUATEMALA                      0                                   1        2     235
ki1112895-Guatemala BSC     GUATEMALA                      1                                   0        7     235
ki1112895-Guatemala BSC     GUATEMALA                      1                                   1        2     235
ki1113344-GMS-Nepal         NEPAL                          0                                   0      443     582
ki1113344-GMS-Nepal         NEPAL                          0                                   1       71     582
ki1113344-GMS-Nepal         NEPAL                          1                                   0       31     582
ki1113344-GMS-Nepal         NEPAL                          1                                   1       37     582
ki1114097-CMIN              BANGLADESH                     0                                   0      196     251
ki1114097-CMIN              BANGLADESH                     0                                   1       11     251
ki1114097-CMIN              BANGLADESH                     1                                   0       31     251
ki1114097-CMIN              BANGLADESH                     1                                   1       13     251
ki1114097-CMIN              BRAZIL                         0                                   0      116     119
ki1114097-CMIN              BRAZIL                         0                                   1        0     119
ki1114097-CMIN              BRAZIL                         1                                   0        3     119
ki1114097-CMIN              BRAZIL                         1                                   1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                                   0      828     878
ki1114097-CMIN              GUINEA-BISSAU                  0                                   1       34     878
ki1114097-CMIN              GUINEA-BISSAU                  1                                   0       12     878
ki1114097-CMIN              GUINEA-BISSAU                  1                                   1        4     878
ki1114097-CMIN              PERU                           0                                   0      609     629
ki1114097-CMIN              PERU                           0                                   1        1     629
ki1114097-CMIN              PERU                           1                                   0       18     629
ki1114097-CMIN              PERU                           1                                   1        1     629
ki1114097-CONTENT           PERU                           0                                   0      212     215
ki1114097-CONTENT           PERU                           0                                   1        0     215
ki1114097-CONTENT           PERU                           1                                   0        3     215
ki1114097-CONTENT           PERU                           1                                   1        0     215
ki1119695-PROBIT            BELARUS                        0                                   0    16308   16449
ki1119695-PROBIT            BELARUS                        0                                   1       20   16449
ki1119695-PROBIT            BELARUS                        1                                   0      121   16449
ki1119695-PROBIT            BELARUS                        1                                   1        0   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                                   0     7859    8571
ki1126311-ZVITAMBO          ZIMBABWE                       0                                   1      312    8571
ki1126311-ZVITAMBO          ZIMBABWE                       1                                   0      336    8571
ki1126311-ZVITAMBO          ZIMBABWE                       1                                   1       64    8571
ki1135781-COHORTS           GUATEMALA                      0                                   0      836     926
ki1135781-COHORTS           GUATEMALA                      0                                   1       23     926
ki1135781-COHORTS           GUATEMALA                      1                                   0       56     926
ki1135781-COHORTS           GUATEMALA                      1                                   1       11     926
ki1135781-COHORTS           INDIA                          0                                   0     5055    6035
ki1135781-COHORTS           INDIA                          0                                   1      475    6035
ki1135781-COHORTS           INDIA                          1                                   0      327    6035
ki1135781-COHORTS           INDIA                          1                                   1      178    6035
ki1135781-COHORTS           PHILIPPINES                    0                                   0     2435    2757
ki1135781-COHORTS           PHILIPPINES                    0                                   1      167    2757
ki1135781-COHORTS           PHILIPPINES                    1                                   0      107    2757
ki1135781-COHORTS           PHILIPPINES                    1                                   1       48    2757
ki1148112-iLiNS-DOSE        MALAWI                         0                                   0      758     816
ki1148112-iLiNS-DOSE        MALAWI                         0                                   1       36     816
ki1148112-iLiNS-DOSE        MALAWI                         1                                   0       14     816
ki1148112-iLiNS-DOSE        MALAWI                         1                                   1        8     816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                   0     1005    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                   1       21    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                   0       33    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                   1        7    1066
ki1148112-LCNI-5            MALAWI                         0                                   0      239     249
ki1148112-LCNI-5            MALAWI                         0                                   1        5     249
ki1148112-LCNI-5            MALAWI                         1                                   0        4     249
ki1148112-LCNI-5            MALAWI                         1                                   1        1     249
kiGH5241-JiVitA-3           BANGLADESH                     0                                   0    10158   14225
kiGH5241-JiVitA-3           BANGLADESH                     0                                   1     2245   14225
kiGH5241-JiVitA-3           BANGLADESH                     1                                   0     1148   14225
kiGH5241-JiVitA-3           BANGLADESH                     1                                   1      674   14225
kiGH5241-JiVitA-4           BANGLADESH                     0                                   0     4208    5062
kiGH5241-JiVitA-4           BANGLADESH                     0                                   1      416    5062
kiGH5241-JiVitA-4           BANGLADESH                     1                                   0      314    5062
kiGH5241-JiVitA-4           BANGLADESH                     1                                   1      124    5062


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c5a4a25e-6922-421c-becc-7efa79666bb1/a85141a5-f2c9-4121-85be-ee33c50a282e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c5a4a25e-6922-421c-becc-7efa79666bb1/a85141a5-f2c9-4121-85be-ee33c50a282e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c5a4a25e-6922-421c-becc-7efa79666bb1/a85141a5-f2c9-4121-85be-ee33c50a282e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c5a4a25e-6922-421c-becc-7efa79666bb1/a85141a5-f2c9-4121-85be-ee33c50a282e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0829268   0.0450956   0.1207581
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3793103   0.2023346   0.5562861
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0401338   0.0178568   0.0624107
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2162162   0.1222964   0.3101361
ki1000108-IRC              INDIA                          0                    NA                0.1095101   0.0766132   0.1424070
ki1000108-IRC              INDIA                          1                    NA                0.1587302   0.0683849   0.2490754
ki1000109-EE               PAKISTAN                       0                    NA                0.0484582   0.0204865   0.0764298
ki1000109-EE               PAKISTAN                       1                    NA                0.2291667   0.1604268   0.2979066
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1803279   0.1244984   0.2361573
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3243243   0.1731440   0.4755047
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1085914   0.0958547   0.1213280
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3505311   0.3140959   0.3869663
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1117904   0.0937654   0.1298154
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4375000   0.3667197   0.5082803
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1096346   0.0742914   0.1449777
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4166667   0.3026371   0.5306963
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0890869   0.0627118   0.1154619
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2769231   0.1680335   0.3858126
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0458554   0.0286242   0.0630866
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3170732   0.1745188   0.4596275
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0462687   0.0303514   0.0621859
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.1322264   0.3677736
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0401714   0.0312621   0.0490807
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3703704   0.2415380   0.4992027
ki1101329-Keneba           GAMBIA                         0                    NA                0.0673171   0.0564678   0.0781663
ki1101329-Keneba           GAMBIA                         1                    NA                0.4148148   0.3316855   0.4979442
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1381323   0.1082779   0.1679867
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5441176   0.4256391   0.6625962
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0531401   0.0225216   0.0837586
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2954545   0.1603754   0.4305337
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0381838   0.0340283   0.0423393
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1600000   0.1240712   0.1959288
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0267753   0.0159744   0.0375762
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1641791   0.0754306   0.2529276
ki1135781-COHORTS          INDIA                          0                    NA                0.0858951   0.0785092   0.0932810
ki1135781-COHORTS          INDIA                          1                    NA                0.3524752   0.3108045   0.3941460
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0641814   0.0547631   0.0735997
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3096774   0.2368757   0.3824792
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0453401   0.0308600   0.0598201
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.3636364   0.1625006   0.5647722
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0204678   0.0117997   0.0291359
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.1750000   0.0571939   0.2928061
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1810046   0.1732455   0.1887637
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3699232   0.3460950   0.3937513
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0899654   0.0797692   0.1001616
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2831050   0.2349807   0.3312293


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1626016   0.1492881   0.1759151
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1618625   0.1426768   0.1810483
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1689008   0.1308276   0.2069740
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1128405   0.0854611   0.1402198
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0641447   0.0446535   0.0836359
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0887872   0.0768581   0.1007163
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1855670   0.1539560   0.2171780
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0956175   0.0591654   0.1320697
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0438689   0.0395328   0.0482049
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0367171   0.0245975   0.0488367
ki1135781-COHORTS          INDIA                          NA                   NA                0.1082022   0.1003643   0.1160400
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0779833   0.0679723   0.0879943
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0539216   0.0384151   0.0694281
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0262664   0.0166615   0.0358713
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2052021   0.1976666   0.2127376
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1066772   0.0962568   0.1170977


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 4.574037   2.3817990    8.784037
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 5.387387   2.6624069   10.901393
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.449457   0.7615529    2.758739
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 4.729167   2.4675652    9.063597
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.798526   1.0277583    3.147331
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 3.227983   2.7597441    3.775667
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.913574   3.0195343    5.072326
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 3.800505   2.4899506    5.800853
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.108462   1.9001283    5.085200
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 6.914634   3.8485142   12.423538
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 5.403226   3.0151882    9.682596
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 9.219753   6.1031989   13.927753
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 6.162104   4.7647759    7.969216
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.939105   2.8983939    5.353499
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 5.559917   2.6645841   11.601316
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 4.190256   3.2648867    5.377904
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 6.131733   3.1236250   12.036703
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 4.103554   3.5454558    4.749504
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 4.825034   3.6571631    6.365850
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 8.020202   4.2344866   15.190422
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 8.550000   3.8598198   18.939355
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.043722   1.8904411    2.209432
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.146821   2.5621334    3.864937


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0367313    0.0110355   0.0624271
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0349332    0.0144971   0.0553694
ki1000108-IRC              INDIA                          0                    NA                0.0075631   -0.0073107   0.0224369
ki1000109-EE               PAKISTAN                       0                    NA                0.0701402    0.0399699   0.1003106
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0242176   -0.0038095   0.0522446
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0540103    0.0446585   0.0633620
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0500721    0.0340106   0.0661337
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0592663    0.0331384   0.0853941
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0237536    0.0085903   0.0389169
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0182894    0.0071972   0.0293815
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0146732    0.0052900   0.0240563
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0092820    0.0049073   0.0136567
ki1101329-Keneba           GAMBIA                         0                    NA                0.0214701    0.0152138   0.0277264
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0474347    0.0296515   0.0652180
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0424774    0.0156456   0.0693093
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0056850    0.0039116   0.0074585
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0099417    0.0030783   0.0168052
ki1135781-COHORTS          INDIA                          0                    NA                0.0223070    0.0183058   0.0263083
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0138019    0.0091662   0.0184376
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0085815    0.0020941   0.0150689
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0057986    0.0010281   0.0105691
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0241975    0.0208497   0.0275453
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0167118    0.0120475   0.0213761


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3069686    0.0858243   0.4746169
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4653607    0.1913083   0.6465413
ki1000108-IRC              INDIA                          0                    NA                0.0646013   -0.0704727   0.1826315
ki1000109-EE               PAKISTAN                       0                    NA                0.5914097    0.3305661   0.7506161
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1183971   -0.0276046   0.2436549
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.3321631    0.2775064   0.3826850
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3093498    0.2162033   0.3914267
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3508938    0.1958744   0.4760286
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2105061    0.0734455   0.3272920
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2851264    0.1156443   0.4221281
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2407734    0.0878252   0.3680761
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1876920    0.1023519   0.2649189
ki1101329-Keneba           GAMBIA                         0                    NA                0.2418154    0.1752956   0.3029699
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2556204    0.1610192   0.3395547
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4442432    0.1575919   0.6333539
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1295917    0.0902135   0.1672655
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2707663    0.0849510   0.4188488
ki1135781-COHORTS          INDIA                          0                    NA                0.2061607    0.1709432   0.2398823
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1769855    0.1194836   0.2307323
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.1591482    0.0391575   0.2641543
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2207602    0.0388032   0.3682724
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1179204    0.1015496   0.1339929
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1566577    0.1133602   0.1978408
