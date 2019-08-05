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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      209     239
ki0047075b-MAL-ED           BANGLADESH                     0                              1       14     239
ki0047075b-MAL-ED           BANGLADESH                     1                              0       12     239
ki0047075b-MAL-ED           BANGLADESH                     1                              1        4     239
ki0047075b-MAL-ED           BRAZIL                         0                              0      198     202
ki0047075b-MAL-ED           BRAZIL                         0                              1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                              0        2     202
ki0047075b-MAL-ED           BRAZIL                         1                              1        0     202
ki0047075b-MAL-ED           INDIA                          0                              0      197     234
ki0047075b-MAL-ED           INDIA                          0                              1       18     234
ki0047075b-MAL-ED           INDIA                          1                              0        9     234
ki0047075b-MAL-ED           INDIA                          1                              1       10     234
ki0047075b-MAL-ED           NEPAL                          0                              0      226     234
ki0047075b-MAL-ED           NEPAL                          0                              1        1     234
ki0047075b-MAL-ED           NEPAL                          1                              0        6     234
ki0047075b-MAL-ED           NEPAL                          1                              1        1     234
ki0047075b-MAL-ED           PERU                           0                              0      261     264
ki0047075b-MAL-ED           PERU                           0                              1        2     264
ki0047075b-MAL-ED           PERU                           1                              0        1     264
ki0047075b-MAL-ED           PERU                           1                              1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      252     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0        4     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      241     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        3     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                              0      282     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                              1       16     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                              0       58     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                              1       12     368
ki1000108-IRC               INDIA                          0                              0      265     410
ki1000108-IRC               INDIA                          0                              1       19     410
ki1000108-IRC               INDIA                          1                              0       97     410
ki1000108-IRC               INDIA                          1                              1       29     410
ki1000109-EE                PAKISTAN                       0                              0      309     371
ki1000109-EE                PAKISTAN                       0                              1       35     371
ki1000109-EE                PAKISTAN                       1                              0       18     371
ki1000109-EE                PAKISTAN                       1                              1        9     371
ki1000109-ResPak            PAKISTAN                       0                              0      156     220
ki1000109-ResPak            PAKISTAN                       0                              1       27     220
ki1000109-ResPak            PAKISTAN                       1                              0       19     220
ki1000109-ResPak            PAKISTAN                       1                              1       18     220
ki1000304-VITAMIN-A         INDIA                          0                              0     1890    2300
ki1000304-VITAMIN-A         INDIA                          0                              1      344    2300
ki1000304-VITAMIN-A         INDIA                          1                              0       38    2300
ki1000304-VITAMIN-A         INDIA                          1                              1       28    2300
ki1000304b-SAS-CompFeed     INDIA                          0                              0     1084    1347
ki1000304b-SAS-CompFeed     INDIA                          0                              1      177    1347
ki1000304b-SAS-CompFeed     INDIA                          1                              0       47    1347
ki1000304b-SAS-CompFeed     INDIA                          1                              1       39    1347
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0      311     388
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1       60     388
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0        8     388
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1        9     388
ki1017093-NIH-Birth         BANGLADESH                     0                              0      420     512
ki1017093-NIH-Birth         BANGLADESH                     0                              1       44     512
ki1017093-NIH-Birth         BANGLADESH                     1                              0       34     512
ki1017093-NIH-Birth         BANGLADESH                     1                              1       14     512
ki1017093b-PROVIDE          BANGLADESH                     0                              0      551     608
ki1017093b-PROVIDE          BANGLADESH                     0                              1       33     608
ki1017093b-PROVIDE          BANGLADESH                     1                              0       18     608
ki1017093b-PROVIDE          BANGLADESH                     1                              1        6     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                              0      637     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                              1       37     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                              0       41     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                              1        7     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1786    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1       71    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       40    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1       24    1921
ki1101329-Keneba            GAMBIA                         0                              0     1918    2184
ki1101329-Keneba            GAMBIA                         0                              1      143    2184
ki1101329-Keneba            GAMBIA                         1                              0       74    2184
ki1101329-Keneba            GAMBIA                         1                              1       49    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1        6      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1        0      26
ki1112895-Guatemala BSC     GUATEMALA                      0                              0      232     236
ki1112895-Guatemala BSC     GUATEMALA                      0                              1        3     236
ki1112895-Guatemala BSC     GUATEMALA                      1                              0        0     236
ki1112895-Guatemala BSC     GUATEMALA                      1                              1        1     236
ki1113344-GMS-Nepal         NEPAL                          0                              0      444     584
ki1113344-GMS-Nepal         NEPAL                          0                              1       84     584
ki1113344-GMS-Nepal         NEPAL                          1                              0       31     584
ki1113344-GMS-Nepal         NEPAL                          1                              1       25     584
ki1114097-CMIN              BANGLADESH                     0                              0      222     251
ki1114097-CMIN              BANGLADESH                     0                              1       20     251
ki1114097-CMIN              BANGLADESH                     1                              0        5     251
ki1114097-CMIN              BANGLADESH                     1                              1        4     251
ki1114097-CMIN              BRAZIL                         0                              0      118     119
ki1114097-CMIN              BRAZIL                         0                              1        0     119
ki1114097-CMIN              BRAZIL                         1                              0        1     119
ki1114097-CMIN              BRAZIL                         1                              1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                              0      832     879
ki1114097-CMIN              GUINEA-BISSAU                  0                              1       38     879
ki1114097-CMIN              GUINEA-BISSAU                  1                              0        9     879
ki1114097-CMIN              GUINEA-BISSAU                  1                              1        0     879
ki1114097-CMIN              PERU                           0                              0      617     630
ki1114097-CMIN              PERU                           0                              1        1     630
ki1114097-CMIN              PERU                           1                              0       11     630
ki1114097-CMIN              PERU                           1                              1        1     630
ki1114097-CONTENT           PERU                           0                              0      215     215
ki1114097-CONTENT           PERU                           0                              1        0     215
ki1114097-CONTENT           PERU                           1                              0        0     215
ki1114097-CONTENT           PERU                           1                              1        0     215
ki1119695-PROBIT            BELARUS                        0                              0    15170   16449
ki1119695-PROBIT            BELARUS                        0                              1       14   16449
ki1119695-PROBIT            BELARUS                        1                              0     1259   16449
ki1119695-PROBIT            BELARUS                        1                              1        6   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0     7643    8516
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      316    8516
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0      505    8516
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1       52    8516
ki1135781-COHORTS           GUATEMALA                      0                              0      807     897
ki1135781-COHORTS           GUATEMALA                      0                              1       30     897
ki1135781-COHORTS           GUATEMALA                      1                              0       58     897
ki1135781-COHORTS           GUATEMALA                      1                              1        2     897
ki1135781-COHORTS           INDIA                          0                              0     4954    5884
ki1135781-COHORTS           INDIA                          0                              1      497    5884
ki1135781-COHORTS           INDIA                          1                              0      290    5884
ki1135781-COHORTS           INDIA                          1                              1      143    5884
ki1135781-COHORTS           PHILIPPINES                    0                              0     2398    2756
ki1135781-COHORTS           PHILIPPINES                    0                              1      178    2756
ki1135781-COHORTS           PHILIPPINES                    1                              0      143    2756
ki1135781-COHORTS           PHILIPPINES                    1                              1       37    2756
ki1148112-iLiNS-DOSE        MALAWI                         0                              0      763     808
ki1148112-iLiNS-DOSE        MALAWI                         0                              1       44     808
ki1148112-iLiNS-DOSE        MALAWI                         1                              0        1     808
ki1148112-iLiNS-DOSE        MALAWI                         1                              1        0     808
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0      987    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       28    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0        7    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1        0    1022
ki1148112-LCNI-5            MALAWI                         0                              0      243     249
ki1148112-LCNI-5            MALAWI                         0                              1        6     249
ki1148112-LCNI-5            MALAWI                         1                              0        0     249
ki1148112-LCNI-5            MALAWI                         1                              1        0     249
kiGH5241-JiVitA-3           BANGLADESH                     0                              0    10996   14223
kiGH5241-JiVitA-3           BANGLADESH                     0                              1     2745   14223
kiGH5241-JiVitA-3           BANGLADESH                     1                              0      302   14223
kiGH5241-JiVitA-3           BANGLADESH                     1                              1      180   14223
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     4416    5025
kiGH5241-JiVitA-4           BANGLADESH                     0                              1      500    5025
kiGH5241-JiVitA-4           BANGLADESH                     1                              0       77    5025
kiGH5241-JiVitA-4           BANGLADESH                     1                              1       32    5025


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
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/fda56564-4aa7-40a1-b6a1-207e3b08a49d/1daf3820-ef77-4f89-98af-38014c703624/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fda56564-4aa7-40a1-b6a1-207e3b08a49d/1daf3820-ef77-4f89-98af-38014c703624/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fda56564-4aa7-40a1-b6a1-207e3b08a49d/1daf3820-ef77-4f89-98af-38014c703624/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fda56564-4aa7-40a1-b6a1-207e3b08a49d/1daf3820-ef77-4f89-98af-38014c703624/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0837209    0.0466196   0.1208223
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5263158    0.3013228   0.7513087
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0536913    0.0280642   0.0793184
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1714286    0.0830196   0.2598376
ki1000108-IRC              INDIA                          0                    NA                0.0669014    0.0378076   0.0959952
ki1000108-IRC              INDIA                          1                    NA                0.2301587    0.1565707   0.3037468
ki1000109-EE               PAKISTAN                       0                    NA                0.1017442    0.0697545   0.1337339
ki1000109-EE               PAKISTAN                       1                    NA                0.3333333    0.1552817   0.5113850
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1475410    0.0960413   0.1990407
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4864865    0.3250700   0.6479030
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1539839    0.1390137   0.1689541
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.4242424    0.3049817   0.5435031
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1403648    0.1209577   0.1597719
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4534884    0.3963909   0.5105859
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1617251    0.1242102   0.1992399
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5294118    0.2918364   0.7669871
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0948276    0.0681439   0.1215113
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2916667    0.1629561   0.4203772
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0565068    0.0377647   0.0752490
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2500000    0.0766194   0.4233806
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0548961    0.0376882   0.0721041
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1458333    0.0459189   0.2457477
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0382337    0.0295098   0.0469577
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3750000    0.2563612   0.4936388
ki1101329-Keneba           GAMBIA                         0                    NA                0.0693838    0.0584109   0.0803567
ki1101329-Keneba           GAMBIA                         1                    NA                0.3983740    0.3118366   0.4849114
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1590909    0.1278661   0.1903158
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4464286    0.3161152   0.5767420
ki1119695-PROBIT           BELARUS                        0                    NA                0.0009220    0.0001900   0.0016540
ki1119695-PROBIT           BELARUS                        1                    NA                0.0047431   -0.0002339   0.0097201
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0397035    0.0354134   0.0439935
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0933573    0.0691950   0.1175196
ki1135781-COHORTS          INDIA                          0                    NA                0.0911759    0.0835336   0.0988183
ki1135781-COHORTS          INDIA                          1                    NA                0.3302540    0.2859524   0.3745557
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0690994    0.0593035   0.0788952
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2055556    0.1465100   0.2646011
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1997671    0.1922610   0.2072733
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3734440    0.3247396   0.4221484
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1017087    0.0909066   0.1125109
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2935780    0.2161239   0.3710320


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1617391   0.1466878   0.1767905
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1603563   0.1395035   0.1812092
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1778351   0.1397389   0.2159312
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0641447   0.0446535   0.0836359
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997906
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0012159   0.0002433   0.0021885
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432128   0.0388939   0.0475316
ki1135781-COHORTS          INDIA                          NA                   NA                0.1087695   0.1008135   0.1167256
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056528   0.1980793   0.2132263
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058706   0.0951082   0.1166331


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 6.286550   3.396264   11.636523
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 3.192857   1.581252    6.447001
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 3.440267   2.005288    5.902116
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 3.276190   1.762725    6.089107
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 3.297297   2.037069    5.337163
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 2.755109   2.046245    3.709540
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.230784   2.706712    3.856327
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 3.273529   1.975274    5.425068
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.075758   1.822440    5.190999
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 4.424242   2.051034    9.543441
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.656531   1.250558    5.643210
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 9.808099   6.640184   14.487369
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 5.741600   4.388733    7.511501
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.806122   1.973981    3.989057
ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 5.144212   2.183254   12.120863
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.351362   1.776295    3.112605
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 3.622162   3.092231    4.242912
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.974782   2.159430    4.097992
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.869397   1.635119    2.137241
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.886459   2.177635    3.826006


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0359372    0.0117760   0.0600983
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0223957    0.0042595   0.0405319
ki1000108-IRC              INDIA                          0                    NA                0.0501718    0.0247815   0.0755620
ki1000109-EE               PAKISTAN                       0                    NA                0.0168542    0.0023317   0.0313767
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0570045    0.0239301   0.0900788
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0077552    0.0038440   0.0116665
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0199916    0.0134133   0.0265699
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0161100    0.0031765   0.0290435
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0184537    0.0051643   0.0317431
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0076379    0.0001298   0.0151459
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0060457   -0.0008945   0.0129859
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0112197    0.0064223   0.0160171
ki1101329-Keneba           GAMBIA                         0                    NA                0.0185283    0.0126753   0.0243812
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0275529    0.0129833   0.0421226
ki1119695-PROBIT           BELARUS                        0                    NA                0.0002939   -0.0000417   0.0006294
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0035093    0.0018797   0.0051389
ki1135781-COHORTS          INDIA                          0                    NA                0.0175936    0.0139208   0.0212664
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0089122    0.0048054   0.0130191
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0058857    0.0040646   0.0077068
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0041619    0.0021337   0.0061902


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3003322    0.0968199   0.4579874
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2943432    0.0402926   0.4811424
ki1000108-IRC              INDIA                          0                    NA                0.4285505    0.2035296   0.5899978
ki1000109-EE               PAKISTAN                       0                    NA                0.1421115    0.0162356   0.2518812
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2786885    0.1106706   0.4149634
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0479491    0.0237253   0.0715718
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1246696    0.0856993   0.1619789
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0905895    0.0165935   0.1590177
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1629013    0.0431098   0.2676963
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1190727   -0.0003859   0.2242665
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0992042   -0.0185911   0.2033770
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2268741    0.1346521   0.3092678
ki1101329-Keneba           GAMBIA                         0                    NA                0.2107593    0.1471283   0.2696430
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1476230    0.0685892   0.2199505
ki1119695-PROBIT           BELARUS                        0                    NA                0.2416820    0.0541509   0.3920318
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0812097    0.0435566   0.1173805
ki1135781-COHORTS          INDIA                          0                    NA                0.1617513    0.1290542   0.1932208
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1142424    0.0618753   0.1636863
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0286196    0.0198282   0.0373320
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0393116    0.0198406   0.0583957
