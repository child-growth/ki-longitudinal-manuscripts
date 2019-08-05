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

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_underweight06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  -------------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                                  0      161     239
ki0047075b-MAL-ED           BANGLADESH                     0                                  1        5     239
ki0047075b-MAL-ED           BANGLADESH                     1                                  0       60     239
ki0047075b-MAL-ED           BANGLADESH                     1                                  1       13     239
ki0047075b-MAL-ED           BRAZIL                         0                                  0      188     202
ki0047075b-MAL-ED           BRAZIL                         0                                  1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                                  0       12     202
ki0047075b-MAL-ED           BRAZIL                         1                                  1        0     202
ki0047075b-MAL-ED           INDIA                          0                                  0      142     234
ki0047075b-MAL-ED           INDIA                          0                                  1        1     234
ki0047075b-MAL-ED           INDIA                          1                                  0       64     234
ki0047075b-MAL-ED           INDIA                          1                                  1       27     234
ki0047075b-MAL-ED           NEPAL                          0                                  0      197     234
ki0047075b-MAL-ED           NEPAL                          0                                  1        0     234
ki0047075b-MAL-ED           NEPAL                          1                                  0       35     234
ki0047075b-MAL-ED           NEPAL                          1                                  1        2     234
ki0047075b-MAL-ED           PERU                           0                                  0      222     264
ki0047075b-MAL-ED           PERU                           0                                  1        1     264
ki0047075b-MAL-ED           PERU                           1                                  0       40     264
ki0047075b-MAL-ED           PERU                           1                                  1        1     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                  0      218     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                  1        0     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                  0       38     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                  1        2     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  0      206     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  0       38     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                                  0      186     373
ki1000108-CMC-V-BCS-2002    INDIA                          0                                  1        4     373
ki1000108-CMC-V-BCS-2002    INDIA                          1                                  0      159     373
ki1000108-CMC-V-BCS-2002    INDIA                          1                                  1       24     373
ki1000108-IRC               INDIA                          0                                  0      199     410
ki1000108-IRC               INDIA                          0                                  1       12     410
ki1000108-IRC               INDIA                          1                                  0      163     410
ki1000108-IRC               INDIA                          1                                  1       36     410
ki1000109-EE                PAKISTAN                       0                                  0      107     371
ki1000109-EE                PAKISTAN                       0                                  1        2     371
ki1000109-EE                PAKISTAN                       1                                  0      220     371
ki1000109-EE                PAKISTAN                       1                                  1       42     371
ki1000109-ResPak            PAKISTAN                       0                                  0      122     220
ki1000109-ResPak            PAKISTAN                       0                                  1       17     220
ki1000109-ResPak            PAKISTAN                       1                                  0       53     220
ki1000109-ResPak            PAKISTAN                       1                                  1       28     220
ki1000304-VITAMIN-A         INDIA                          0                                  0     1353    2952
ki1000304-VITAMIN-A         INDIA                          0                                  1       74    2952
ki1000304-VITAMIN-A         INDIA                          1                                  0     1119    2952
ki1000304-VITAMIN-A         INDIA                          1                                  1      406    2952
ki1000304b-SAS-CompFeed     INDIA                          0                                  0      750    1353
ki1000304b-SAS-CompFeed     INDIA                          0                                  1       44    1353
ki1000304b-SAS-CompFeed     INDIA                          1                                  0      384    1353
ki1000304b-SAS-CompFeed     INDIA                          1                                  1      175    1353
ki1000304b-SAS-FoodSuppl    INDIA                          0                                  0      191     373
ki1000304b-SAS-FoodSuppl    INDIA                          0                                  1       10     373
ki1000304b-SAS-FoodSuppl    INDIA                          1                                  0      119     373
ki1000304b-SAS-FoodSuppl    INDIA                          1                                  1       53     373
ki1017093-NIH-Birth         BANGLADESH                     0                                  0      285     514
ki1017093-NIH-Birth         BANGLADESH                     0                                  1       14     514
ki1017093-NIH-Birth         BANGLADESH                     1                                  0      171     514
ki1017093-NIH-Birth         BANGLADESH                     1                                  1       44     514
ki1017093b-PROVIDE          BANGLADESH                     0                                  0      403     608
ki1017093b-PROVIDE          BANGLADESH                     0                                  1        8     608
ki1017093b-PROVIDE          BANGLADESH                     1                                  0      166     608
ki1017093b-PROVIDE          BANGLADESH                     1                                  1       31     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                                  0      495     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                                  1       11     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                                  0      183     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                                  1       33     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                  0     1680    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                  1       32    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                  0      146    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                  1       63    1921
ki1101329-Keneba            GAMBIA                         0                                  0     1690    2185
ki1101329-Keneba            GAMBIA                         0                                  1       67    2185
ki1101329-Keneba            GAMBIA                         1                                  0      301    2185
ki1101329-Keneba            GAMBIA                         1                                  1      127    2185
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                  0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                  1        1      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                  0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                  1        5      26
ki1112895-Guatemala BSC     GUATEMALA                      0                                  0      186     235
ki1112895-Guatemala BSC     GUATEMALA                      0                                  1        0     235
ki1112895-Guatemala BSC     GUATEMALA                      1                                  0       45     235
ki1112895-Guatemala BSC     GUATEMALA                      1                                  1        4     235
ki1113344-GMS-Nepal         NEPAL                          0                                  0      349     582
ki1113344-GMS-Nepal         NEPAL                          0                                  1       19     582
ki1113344-GMS-Nepal         NEPAL                          1                                  0      125     582
ki1113344-GMS-Nepal         NEPAL                          1                                  1       89     582
ki1114097-CMIN              BANGLADESH                     0                                  0      121     251
ki1114097-CMIN              BANGLADESH                     0                                  1        1     251
ki1114097-CMIN              BANGLADESH                     1                                  0      106     251
ki1114097-CMIN              BANGLADESH                     1                                  1       23     251
ki1114097-CMIN              BRAZIL                         0                                  0      108     119
ki1114097-CMIN              BRAZIL                         0                                  1        0     119
ki1114097-CMIN              BRAZIL                         1                                  0       11     119
ki1114097-CMIN              BRAZIL                         1                                  1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                                  0      790     878
ki1114097-CMIN              GUINEA-BISSAU                  0                                  1       23     878
ki1114097-CMIN              GUINEA-BISSAU                  1                                  0       50     878
ki1114097-CMIN              GUINEA-BISSAU                  1                                  1       15     878
ki1114097-CMIN              PERU                           0                                  0      579     629
ki1114097-CMIN              PERU                           0                                  1        0     629
ki1114097-CMIN              PERU                           1                                  0       48     629
ki1114097-CMIN              PERU                           1                                  1        2     629
ki1114097-CONTENT           PERU                           0                                  0      200     215
ki1114097-CONTENT           PERU                           0                                  1        0     215
ki1114097-CONTENT           PERU                           1                                  0       15     215
ki1114097-CONTENT           PERU                           1                                  1        0     215
ki1119695-PROBIT            BELARUS                        0                                  0    15270   16449
ki1119695-PROBIT            BELARUS                        0                                  1       12   16449
ki1119695-PROBIT            BELARUS                        1                                  0     1159   16449
ki1119695-PROBIT            BELARUS                        1                                  1        8   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                                  0     6958    8571
ki1126311-ZVITAMBO          ZIMBABWE                       0                                  1      214    8571
ki1126311-ZVITAMBO          ZIMBABWE                       1                                  0     1237    8571
ki1126311-ZVITAMBO          ZIMBABWE                       1                                  1      162    8571
ki1135781-COHORTS           GUATEMALA                      0                                  0      696     926
ki1135781-COHORTS           GUATEMALA                      0                                  1        9     926
ki1135781-COHORTS           GUATEMALA                      1                                  0      196     926
ki1135781-COHORTS           GUATEMALA                      1                                  1       25     926
ki1135781-COHORTS           INDIA                          0                                  0     4048    6035
ki1135781-COHORTS           INDIA                          0                                  1      201    6035
ki1135781-COHORTS           INDIA                          1                                  0     1334    6035
ki1135781-COHORTS           INDIA                          1                                  1      452    6035
ki1135781-COHORTS           PHILIPPINES                    0                                  0     2121    2757
ki1135781-COHORTS           PHILIPPINES                    0                                  1       87    2757
ki1135781-COHORTS           PHILIPPINES                    1                                  0      421    2757
ki1135781-COHORTS           PHILIPPINES                    1                                  1      128    2757
ki1148112-iLiNS-DOSE        MALAWI                         0                                  0      691     816
ki1148112-iLiNS-DOSE        MALAWI                         0                                  1       22     816
ki1148112-iLiNS-DOSE        MALAWI                         1                                  0       81     816
ki1148112-iLiNS-DOSE        MALAWI                         1                                  1       22     816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                  0      917    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                  1       18    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                  0      121    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                  1       10    1066
ki1148112-LCNI-5            MALAWI                         0                                  0      211     249
ki1148112-LCNI-5            MALAWI                         0                                  1        2     249
ki1148112-LCNI-5            MALAWI                         1                                  0       32     249
ki1148112-LCNI-5            MALAWI                         1                                  1        4     249
kiGH5241-JiVitA-3           BANGLADESH                     0                                  0     7321   14225
kiGH5241-JiVitA-3           BANGLADESH                     0                                  1     1094   14225
kiGH5241-JiVitA-3           BANGLADESH                     1                                  0     3985   14225
kiGH5241-JiVitA-3           BANGLADESH                     1                                  1     1825   14225
kiGH5241-JiVitA-4           BANGLADESH                     0                                  0     3321    5062
kiGH5241-JiVitA-4           BANGLADESH                     0                                  1      168    5062
kiGH5241-JiVitA-4           BANGLADESH                     1                                  0     1201    5062
kiGH5241-JiVitA-4           BANGLADESH                     1                                  1      372    5062


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d96c87e6-59b9-448d-8546-192b6bbac1f9/fcc4c635-7b93-469d-ab7a-843c9d51a9b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d96c87e6-59b9-448d-8546-192b6bbac1f9/fcc4c635-7b93-469d-ab7a-843c9d51a9b6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d96c87e6-59b9-448d-8546-192b6bbac1f9/fcc4c635-7b93-469d-ab7a-843c9d51a9b6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d96c87e6-59b9-448d-8546-192b6bbac1f9/fcc4c635-7b93-469d-ab7a-843c9d51a9b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0301205   0.0040653   0.0561757
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1780822   0.0901351   0.2660293
ki1000108-IRC              INDIA                          0                    NA                0.0568720   0.0255845   0.0881596
ki1000108-IRC              INDIA                          1                    NA                0.1809045   0.1273565   0.2344526
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1223022   0.0677113   0.1768930
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3456790   0.2418720   0.4494860
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0518570   0.0403504   0.0633637
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.2662295   0.2440427   0.2884163
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0554156   0.0388909   0.0719403
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3130590   0.2896449   0.3364731
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0497512   0.0196521   0.0798504
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3081395   0.2390440   0.3772350
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0468227   0.0228537   0.0707918
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2046512   0.1506706   0.2586318
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0194647   0.0060975   0.0328319
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1573604   0.1064694   0.2082514
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0217391   0.0090240   0.0344543
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1527778   0.1047657   0.2007899
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0186916   0.0122745   0.0251086
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3014354   0.2392070   0.3636638
ki1101329-Keneba           GAMBIA                         0                    NA                0.0381332   0.0291760   0.0470903
ki1101329-Keneba           GAMBIA                         1                    NA                0.2967290   0.2534410   0.3400169
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0516304   0.0290028   0.0742581
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4158879   0.3497956   0.4819802
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0282903   0.0168868   0.0396938
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2307692   0.1282852   0.3332532
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007852   0.0000497   0.0015207
ki1119695-PROBIT           BELARUS                        1                    NA                0.0068552   0.0013591   0.0123513
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0298383   0.0259004   0.0337761
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1157970   0.0990287   0.1325653
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0127660   0.0044746   0.0210573
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1131222   0.0713399   0.1549045
ki1135781-COHORTS          INDIA                          0                    NA                0.0473052   0.0409216   0.0536889
ki1135781-COHORTS          INDIA                          1                    NA                0.2530795   0.2329140   0.2732450
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0394022   0.0312859   0.0475185
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2331512   0.1977747   0.2685276
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0308555   0.0181548   0.0435563
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.2135922   0.1343946   0.2927899
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0192513   0.0104397   0.0280629
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0763359   0.0308436   0.1218282
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1300059   0.1216259   0.1383860
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3141136   0.3012366   0.3269906
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0481513   0.0386653   0.0576373
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2364908   0.2124403   0.2605412


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0753138   0.0417869   0.1088408
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
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
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0432802   0.0298127   0.0567476
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0012159   0.0002433   0.0021885
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0438689   0.0395328   0.0482049
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0367171   0.0245975   0.0488367
ki1135781-COHORTS          INDIA                          NA                   NA                0.1082022   0.1003643   0.1160400
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0779833   0.0679723   0.0879943
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0539216   0.0384151   0.0694281
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0262664   0.0166615   0.0358713
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2052021   0.1976666   0.2127376
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1066772   0.0962568   0.1170977


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  5.912329    2.183566   16.008504
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.180905    1.703098    5.941028
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.826434    1.650439    4.840368
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  5.133912    4.050506    6.507102
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  5.649293    4.255149    7.500208
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.193605    3.248869   11.807415
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.370764    2.457312    7.774177
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.084391    3.784280   17.270755
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  7.027778    3.617899   13.651476
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.126794   10.803626   24.072797
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.781385    5.901622   10.259883
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  8.055091    5.053693   12.839024
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  8.157191    4.477871   14.859685
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  8.730077    3.986648   19.117378
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.880823    3.190324    4.720769
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  8.861237    4.197626   18.706174
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.349924    4.573905    6.257606
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.917216    4.581510    7.642339
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                  6.922330    3.977893   12.046240
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  3.965225    1.870350    8.406451
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.416148    2.240060    2.606078
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.911407    3.934388    6.131047


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0451933   0.0158694   0.0745173
ki1000108-IRC              INDIA                          0                    NA                0.0602011   0.0295058   0.0908965
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0822433   0.0367642   0.1277223
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1107446   0.0972670   0.1242221
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1064469   0.0925294   0.1203644
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1191496   0.0820129   0.1562862
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0660177   0.0404103   0.0916251
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0446800   0.0268751   0.0624849
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0392027   0.0237118   0.0546936
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0307618   0.0228984   0.0386252
ki1101329-Keneba           GAMBIA                         0                    NA                0.0506540   0.0409843   0.0603237
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1339366   0.1045465   0.1633266
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0149899   0.0065883   0.0233915
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004306   0.0000672   0.0007940
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0140306   0.0111398   0.0169214
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0239511   0.0134177   0.0344845
ki1135781-COHORTS          INDIA                          0                    NA                0.0608969   0.0542036   0.0675902
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0385811   0.0307977   0.0463645
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0230660   0.0121177   0.0340143
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0070151   0.0012105   0.0128197
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0751962   0.0688272   0.0815651
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0585259   0.0498579   0.0671939


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6000669   0.1713348   0.8069830
ki1000108-IRC              INDIA                          0                    NA                0.5142180   0.2217101   0.6967915
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4020783   0.1583273   0.5752383
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.6810792   0.6097328   0.7393825
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6576378   0.5689304   0.7280905
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7054410   0.4903219   0.8297651
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5850536   0.3551119   0.7330072
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6965500   0.4422711   0.8348985
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6432806   0.4100184   0.7843175
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6220364   0.5012337   0.7135803
ki1101329-Keneba           GAMBIA                         0                    NA                0.5705103   0.4819926   0.6439020
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7217693   0.5883166   0.8119616
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3463456   0.1604901   0.4910553
ki1119695-PROBIT           BELARUS                        0                    NA                0.3541814   0.1165915   0.5278722
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3198305   0.2588987   0.3757527
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6523154   0.3946600   0.8003030
ki1135781-COHORTS          INDIA                          0                    NA                0.5628068   0.5116457   0.6086081
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4947358   0.4089896   0.5680416
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.4277700   0.2371081   0.5707817
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2670741   0.0381922   0.4414888
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3664493   0.3355815   0.3958830
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5486258   0.4724458   0.6138053
