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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sstunted06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  ----------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                               0      208     239
ki0047075b-MAL-ED           BANGLADESH                     0                               1       16     239
ki0047075b-MAL-ED           BANGLADESH                     1                               0       13     239
ki0047075b-MAL-ED           BANGLADESH                     1                               1        2     239
ki0047075b-MAL-ED           BRAZIL                         0                               0      186     202
ki0047075b-MAL-ED           BRAZIL                         0                               1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                               0       14     202
ki0047075b-MAL-ED           BRAZIL                         1                               1        0     202
ki0047075b-MAL-ED           INDIA                          0                               0      193     234
ki0047075b-MAL-ED           INDIA                          0                               1       22     234
ki0047075b-MAL-ED           INDIA                          1                               0       13     234
ki0047075b-MAL-ED           INDIA                          1                               1        6     234
ki0047075b-MAL-ED           NEPAL                          0                               0      224     234
ki0047075b-MAL-ED           NEPAL                          0                               1        2     234
ki0047075b-MAL-ED           NEPAL                          1                               0        8     234
ki0047075b-MAL-ED           NEPAL                          1                               1        0     234
ki0047075b-MAL-ED           PERU                           0                               0      231     264
ki0047075b-MAL-ED           PERU                           0                               1        1     264
ki0047075b-MAL-ED           PERU                           1                               0       31     264
ki0047075b-MAL-ED           PERU                           1                               1        1     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               0      231     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               0       25     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      211     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       33     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                               0      260     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                               1       17     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                               0       80     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                               1       11     368
ki1000108-IRC               INDIA                          0                               0      310     410
ki1000108-IRC               INDIA                          0                               1       38     410
ki1000108-IRC               INDIA                          1                               0       52     410
ki1000108-IRC               INDIA                          1                               1       10     410
ki1000109-EE                PAKISTAN                       0                               0      186     371
ki1000109-EE                PAKISTAN                       0                               1       23     371
ki1000109-EE                PAKISTAN                       1                               0      141     371
ki1000109-EE                PAKISTAN                       1                               1       21     371
ki1000109-ResPak            PAKISTAN                       0                               0      112     220
ki1000109-ResPak            PAKISTAN                       0                               1       32     220
ki1000109-ResPak            PAKISTAN                       1                               0       63     220
ki1000109-ResPak            PAKISTAN                       1                               1       13     220
ki1000304-VITAMIN-A         INDIA                          0                               0     1784    2304
ki1000304-VITAMIN-A         INDIA                          0                               1      329    2304
ki1000304-VITAMIN-A         INDIA                          1                               0      145    2304
ki1000304-VITAMIN-A         INDIA                          1                               1       46    2304
ki1000304b-SAS-CompFeed     INDIA                          0                               0     1004    1352
ki1000304b-SAS-CompFeed     INDIA                          0                               1      155    1352
ki1000304b-SAS-CompFeed     INDIA                          1                               0      130    1352
ki1000304b-SAS-CompFeed     INDIA                          1                               1       63    1352
ki1000304b-SAS-FoodSuppl    INDIA                          0                               0      285     386
ki1000304b-SAS-FoodSuppl    INDIA                          0                               1       53     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                               0       32     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                               1       16     386
ki1017093-NIH-Birth         BANGLADESH                     0                               0      415     514
ki1017093-NIH-Birth         BANGLADESH                     0                               1       50     514
ki1017093-NIH-Birth         BANGLADESH                     1                               0       41     514
ki1017093-NIH-Birth         BANGLADESH                     1                               1        8     514
ki1017093b-PROVIDE          BANGLADESH                     0                               0      543     608
ki1017093b-PROVIDE          BANGLADESH                     0                               1       37     608
ki1017093b-PROVIDE          BANGLADESH                     1                               0       26     608
ki1017093b-PROVIDE          BANGLADESH                     1                               1        2     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                               0      641     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                               1       36     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                               0       37     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                               1        8     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     1743    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1       86    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0       83    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        9    1921
ki1101329-Keneba            GAMBIA                         0                               0     1785    2209
ki1101329-Keneba            GAMBIA                         0                               1      162    2209
ki1101329-Keneba            GAMBIA                         1                               0      226    2209
ki1101329-Keneba            GAMBIA                         1                               1       36    2209
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               1        5      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               1        1      26
ki1112895-Guatemala BSC     GUATEMALA                      0                               0      212     236
ki1112895-Guatemala BSC     GUATEMALA                      0                               1        2     236
ki1112895-Guatemala BSC     GUATEMALA                      1                               0       20     236
ki1112895-Guatemala BSC     GUATEMALA                      1                               1        2     236
ki1113344-GMS-Nepal         NEPAL                          0                               0      456     584
ki1113344-GMS-Nepal         NEPAL                          0                               1       88     584
ki1113344-GMS-Nepal         NEPAL                          1                               0       19     584
ki1113344-GMS-Nepal         NEPAL                          1                               1       21     584
ki1114097-CMIN              BANGLADESH                     0                               0      181     251
ki1114097-CMIN              BANGLADESH                     0                               1       13     251
ki1114097-CMIN              BANGLADESH                     1                               0       46     251
ki1114097-CMIN              BANGLADESH                     1                               1       11     251
ki1114097-CMIN              BRAZIL                         0                               0      112     119
ki1114097-CMIN              BRAZIL                         0                               1        0     119
ki1114097-CMIN              BRAZIL                         1                               0        7     119
ki1114097-CMIN              BRAZIL                         1                               1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                               0      810     878
ki1114097-CMIN              GUINEA-BISSAU                  0                               1       34     878
ki1114097-CMIN              GUINEA-BISSAU                  1                               0       30     878
ki1114097-CMIN              GUINEA-BISSAU                  1                               1        4     878
ki1114097-CMIN              PERU                           0                               0      611     630
ki1114097-CMIN              PERU                           0                               1        1     630
ki1114097-CMIN              PERU                           1                               0       17     630
ki1114097-CMIN              PERU                           1                               1        1     630
ki1114097-CONTENT           PERU                           0                               0      206     215
ki1114097-CONTENT           PERU                           0                               1        0     215
ki1114097-CONTENT           PERU                           1                               0        9     215
ki1114097-CONTENT           PERU                           1                               1        0     215
ki1119695-PROBIT            BELARUS                        0                               0    16206   16449
ki1119695-PROBIT            BELARUS                        0                               1       20   16449
ki1119695-PROBIT            BELARUS                        1                               0      223   16449
ki1119695-PROBIT            BELARUS                        1                               1        0   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                               0     7405    8558
ki1126311-ZVITAMBO          ZIMBABWE                       0                               1      318    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                               0      778    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                               1       57    8558
ki1135781-COHORTS           GUATEMALA                      0                               0      789     905
ki1135781-COHORTS           GUATEMALA                      0                               1       23     905
ki1135781-COHORTS           GUATEMALA                      1                               0       84     905
ki1135781-COHORTS           GUATEMALA                      1                               1        9     905
ki1135781-COHORTS           INDIA                          0                               0     5061    5917
ki1135781-COHORTS           INDIA                          0                               1      575    5917
ki1135781-COHORTS           INDIA                          1                               0      207    5917
ki1135781-COHORTS           INDIA                          1                               1       74    5917
ki1135781-COHORTS           PHILIPPINES                    0                               0     2404    2757
ki1135781-COHORTS           PHILIPPINES                    0                               1      186    2757
ki1135781-COHORTS           PHILIPPINES                    1                               0      138    2757
ki1135781-COHORTS           PHILIPPINES                    1                               1       29    2757
ki1148112-iLiNS-DOSE        MALAWI                         0                               0      723     807
ki1148112-iLiNS-DOSE        MALAWI                         0                               1       36     807
ki1148112-iLiNS-DOSE        MALAWI                         1                               0       40     807
ki1148112-iLiNS-DOSE        MALAWI                         1                               1        8     807
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               0      979    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               1       26    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               0       40    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               1        2    1047
ki1148112-LCNI-5            MALAWI                         0                               0      224     249
ki1148112-LCNI-5            MALAWI                         0                               1        6     249
ki1148112-LCNI-5            MALAWI                         1                               0       19     249
ki1148112-LCNI-5            MALAWI                         1                               1        0     249
kiGH5241-JiVitA-3           BANGLADESH                     0                               0    10077   14239
kiGH5241-JiVitA-3           BANGLADESH                     0                               1     2410   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                               0     1234   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                               1      518   14239
kiGH5241-JiVitA-4           BANGLADESH                     0                               0     4101    5059
kiGH5241-JiVitA-4           BANGLADESH                     0                               1      447    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                               0      419    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                               1       92    5059


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/7bd09ccd-d94a-4f0e-8133-c82cf0906c6a/be727da6-6847-42d4-a990-e976c96f2edc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7bd09ccd-d94a-4f0e-8133-c82cf0906c6a/be727da6-6847-42d4-a990-e976c96f2edc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7bd09ccd-d94a-4f0e-8133-c82cf0906c6a/be727da6-6847-42d4-a990-e976c96f2edc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7bd09ccd-d94a-4f0e-8133-c82cf0906c6a/be727da6-6847-42d4-a990-e976c96f2edc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1023256   0.0617270   0.1429241
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3157895   0.1063324   0.5252465
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0613718   0.0330690   0.0896747
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1208791   0.0538107   0.1879476
ki1000108-IRC              INDIA                          0                    NA                0.1091954   0.0763872   0.1420036
ki1000108-IRC              INDIA                          1                    NA                0.1612903   0.0696277   0.2529530
ki1000109-EE               PAKISTAN                       0                    NA                0.1100478   0.0675629   0.1525328
ki1000109-EE               PAKISTAN                       1                    NA                0.1296296   0.0778355   0.1814238
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2222222   0.1541645   0.2902800
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1710526   0.0862012   0.2559040
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1557028   0.1402400   0.1711656
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.2408377   0.1801843   0.3014911
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1337360   0.1080820   0.1593900
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3264249   0.2305024   0.4223474
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1568047   0.1179900   0.1956195
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3333333   0.1998016   0.4668651
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1075269   0.0793430   0.1357107
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1632653   0.0596763   0.2668543
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531758   0.0362618   0.0700898
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1777778   0.0659947   0.2895609
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0470202   0.0373165   0.0567240
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0978261   0.0371050   0.1585472
ki1101329-Keneba           GAMBIA                         0                    NA                0.0832049   0.0709341   0.0954758
ki1101329-Keneba           GAMBIA                         1                    NA                0.1374046   0.0957080   0.1791011
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1617647   0.1307944   0.1927350
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5250000   0.3701124   0.6798876
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0670103   0.0317551   0.1022655
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1929825   0.0903280   0.2956369
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0411757   0.0367440   0.0456074
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0682635   0.0511566   0.0853704
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0283251   0.0169080   0.0397422
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0967742   0.0366534   0.1568950
ki1135781-COHORTS          INDIA                          0                    NA                0.1020227   0.0941199   0.1099255
ki1135781-COHORTS          INDIA                          1                    NA                0.2633452   0.2118429   0.3148475
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0718147   0.0618698   0.0817596
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1736527   0.1161894   0.2311160
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0474308   0.0322996   0.0625621
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.1666667   0.0611720   0.2721613
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1930007   0.1849546   0.2010468
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2956621   0.2720494   0.3192748
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0982850   0.0870406   0.1095293
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1800391   0.1414209   0.2186574


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1627604   0.1476839   0.1778369
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1612426   0.1416314   0.1808538
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1787565   0.1404842   0.2170288
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1128405   0.0854611   0.1402198
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0896333   0.0777184   0.1015482
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0956175   0.0591654   0.1320697
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0438186   0.0394817   0.0481556
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0353591   0.0233199   0.0473983
ki1135781-COHORTS          INDIA                          NA                   NA                0.1096840   0.1017209   0.1176470
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0779833   0.0679723   0.0879943
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0545229   0.0388484   0.0701975
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056324   0.1980748   0.2131900
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1065428   0.0957758   0.1173098


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 3.0861244   1.4247928   6.684596
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.9696186   0.9573045   4.052417
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.4770798   0.7766418   2.809229
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.1779388   0.6758198   2.053121
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.7697368   0.4296923   1.378882
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 1.5467783   1.1799327   2.027677
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.4408156   1.5988846   3.726086
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.1257862   1.3274210   3.404321
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5183673   0.7642537   3.016589
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.3432099   1.6524803   6.763804
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.0805106   1.0816633   4.001730
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.6513995   1.1784814   2.314097
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.2454545   2.2831469   4.613359
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.8798920   1.3628594   6.085572
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6578579   1.2621171   2.177684
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 3.4165498   1.6291833   7.164825
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.5812409   2.0915786   3.185539
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.4180671   1.6891941   3.461443
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 3.5138888   1.7296293   7.138764
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5319223   1.3980645   1.678596
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.8318076   1.4314955   2.344065


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0173325   -0.0015396   0.0362047
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0147151   -0.0034766   0.0329069
ki1000108-IRC              INDIA                          0                    NA                 0.0078778   -0.0069552   0.0227108
ki1000109-EE               PAKISTAN                       0                    NA                 0.0085505   -0.0207177   0.0378188
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0176768   -0.0553909   0.0200374
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0070576    0.0017808   0.0123344
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0275066    0.0086667   0.0463465
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0219517    0.0037068   0.0401967
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0053136   -0.0050182   0.0156453
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0077661    0.0003846   0.0151475
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0024332   -0.0005515   0.0054178
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0064284    0.0012217   0.0116351
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0248791    0.0117447   0.0380135
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0286072    0.0031053   0.0541091
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0026429    0.0009103   0.0043755
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0070340    0.0006011   0.0134669
ki1135781-COHORTS          INDIA                          0                    NA                 0.0076613    0.0050368   0.0102857
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0061686    0.0025216   0.0098157
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0070921    0.0004608   0.0137233
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0126317    0.0094602   0.0158032
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0082578    0.0040801   0.0124356


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1448505   -0.0207766   0.2836036
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1933987   -0.0731571   0.3937461
ki1000108-IRC              INDIA                          0                    NA                 0.0672893   -0.0673230   0.1849241
ki1000109-EE               PAKISTAN                       0                    NA                 0.0720966   -0.2098228   0.2883216
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0864198   -0.2866465   0.0826479
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0433620    0.0105479   0.0750879
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1705915    0.0456308   0.2791905
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1228025    0.0169346   0.2172693
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0470894   -0.0484184   0.1338966
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1274339    0.0032097   0.2361767
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0492015   -0.0123635   0.1070224
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0717187    0.0124578   0.1274235
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1332974    0.0623927   0.1988400
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2991838    0.0058233   0.5059799
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0603154    0.0203632   0.0986383
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1989301    0.0099812   0.3518174
ki1135781-COHORTS          INDIA                          0                    NA                 0.0698484    0.0460397   0.0930629
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0791021    0.0321159   0.1238074
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.1300755    0.0056017   0.2389682
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0614285    0.0458265   0.0767754
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0775072    0.0372653   0.1160670
