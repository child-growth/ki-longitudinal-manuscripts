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

**Intervention Variable:** ever_wasted06_noBW

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* single
* W_gagebrth
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_parity
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06_noBW    pers_wasted624   n_cell       n
--------------------------  -----------------------------  -------------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                                  0      210     238
ki0047075b-MAL-ED           BANGLADESH                     0                                  1       11     238
ki0047075b-MAL-ED           BANGLADESH                     1                                  0       10     238
ki0047075b-MAL-ED           BANGLADESH                     1                                  1        7     238
ki0047075b-MAL-ED           BRAZIL                         0                                  0      193     201
ki0047075b-MAL-ED           BRAZIL                         0                                  1        1     201
ki0047075b-MAL-ED           BRAZIL                         1                                  0        7     201
ki0047075b-MAL-ED           BRAZIL                         1                                  1        0     201
ki0047075b-MAL-ED           INDIA                          0                                  0      180     229
ki0047075b-MAL-ED           INDIA                          0                                  1       13     229
ki0047075b-MAL-ED           INDIA                          1                                  0       26     229
ki0047075b-MAL-ED           INDIA                          1                                  1       10     229
ki0047075b-MAL-ED           NEPAL                          0                                  0      217     232
ki0047075b-MAL-ED           NEPAL                          0                                  1        0     232
ki0047075b-MAL-ED           NEPAL                          1                                  0       14     232
ki0047075b-MAL-ED           NEPAL                          1                                  1        1     232
ki0047075b-MAL-ED           PERU                           0                                  0      257     264
ki0047075b-MAL-ED           PERU                           0                                  1        2     264
ki0047075b-MAL-ED           PERU                           1                                  0        5     264
ki0047075b-MAL-ED           PERU                           1                                  1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                  0      246     257
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                  1        0     257
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                  0       10     257
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                  1        1     257
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  0      236     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                  1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  0        8     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                  1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                                  0      237     350
ki1000108-CMC-V-BCS-2002    INDIA                          0                                  1        5     350
ki1000108-CMC-V-BCS-2002    INDIA                          1                                  0       92     350
ki1000108-CMC-V-BCS-2002    INDIA                          1                                  1       16     350
ki1000108-IRC               INDIA                          0                                  0      243     390
ki1000108-IRC               INDIA                          0                                  1       14     390
ki1000108-IRC               INDIA                          1                                  0      105     390
ki1000108-IRC               INDIA                          1                                  1       28     390
ki1000109-EE                PAKISTAN                       0                                  0      276     365
ki1000109-EE                PAKISTAN                       0                                  1       18     365
ki1000109-EE                PAKISTAN                       1                                  0       48     365
ki1000109-EE                PAKISTAN                       1                                  1       23     365
ki1000109-ResPak            PAKISTAN                       0                                  0      147     216
ki1000109-ResPak            PAKISTAN                       0                                  1       21     216
ki1000109-ResPak            PAKISTAN                       1                                  0       26     216
ki1000109-ResPak            PAKISTAN                       1                                  1       22     216
ki1000304-VITAMIN-A         INDIA                          0                                  0     1727    2000
ki1000304-VITAMIN-A         INDIA                          0                                  1      261    2000
ki1000304-VITAMIN-A         INDIA                          1                                  0        5    2000
ki1000304-VITAMIN-A         INDIA                          1                                  1        7    2000
ki1000304b-SAS-CompFeed     INDIA                          0                                  0     1024    1323
ki1000304b-SAS-CompFeed     INDIA                          0                                  1      128    1323
ki1000304b-SAS-CompFeed     INDIA                          1                                  0       94    1323
ki1000304b-SAS-CompFeed     INDIA                          1                                  1       77    1323
ki1000304b-SAS-FoodSuppl    INDIA                          0                                  0      283     318
ki1000304b-SAS-FoodSuppl    INDIA                          0                                  1       35     318
ki1000304b-SAS-FoodSuppl    INDIA                          1                                  0        0     318
ki1000304b-SAS-FoodSuppl    INDIA                          1                                  1        0     318
ki1017093-NIH-Birth         BANGLADESH                     0                                  0      413     493
ki1017093-NIH-Birth         BANGLADESH                     0                                  1       38     493
ki1017093-NIH-Birth         BANGLADESH                     1                                  0       29     493
ki1017093-NIH-Birth         BANGLADESH                     1                                  1       13     493
ki1017093b-PROVIDE          BANGLADESH                     0                                  0      545     600
ki1017093b-PROVIDE          BANGLADESH                     0                                  1       24     600
ki1017093b-PROVIDE          BANGLADESH                     1                                  0       20     600
ki1017093b-PROVIDE          BANGLADESH                     1                                  1       11     600
ki1017093c-NIH-Crypto       BANGLADESH                     0                                  0      659     716
ki1017093c-NIH-Crypto       BANGLADESH                     0                                  1       37     716
ki1017093c-NIH-Crypto       BANGLADESH                     1                                  0       15     716
ki1017093c-NIH-Crypto       BANGLADESH                     1                                  1        5     716
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                  0     1695    1906
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                  1       45    1906
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                  0      129    1906
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                  1       37    1906
ki1101329-Keneba            GAMBIA                         0                                  0     1785    2167
ki1101329-Keneba            GAMBIA                         0                                  1       98    2167
ki1101329-Keneba            GAMBIA                         1                                  0      203    2167
ki1101329-Keneba            GAMBIA                         1                                  1       81    2167
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                  0       20      24
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                  1        4      24
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                  0        0      24
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                  1        0      24
ki1112895-Guatemala BSC     GUATEMALA                      0                                  0      226     233
ki1112895-Guatemala BSC     GUATEMALA                      0                                  1        3     233
ki1112895-Guatemala BSC     GUATEMALA                      1                                  0        4     233
ki1112895-Guatemala BSC     GUATEMALA                      1                                  1        0     233
ki1113344-GMS-Nepal         NEPAL                          0                                  0      417     550
ki1113344-GMS-Nepal         NEPAL                          0                                  1       52     550
ki1113344-GMS-Nepal         NEPAL                          1                                  0       47     550
ki1113344-GMS-Nepal         NEPAL                          1                                  1       34     550
ki1114097-CMIN              BANGLADESH                     0                                  0      209     250
ki1114097-CMIN              BANGLADESH                     0                                  1       14     250
ki1114097-CMIN              BANGLADESH                     1                                  0       17     250
ki1114097-CMIN              BANGLADESH                     1                                  1       10     250
ki1114097-CMIN              BRAZIL                         0                                  0      116     117
ki1114097-CMIN              BRAZIL                         0                                  1        0     117
ki1114097-CMIN              BRAZIL                         1                                  0        1     117
ki1114097-CMIN              BRAZIL                         1                                  1        0     117
ki1114097-CMIN              GUINEA-BISSAU                  0                                  0      826     871
ki1114097-CMIN              GUINEA-BISSAU                  0                                  1       31     871
ki1114097-CMIN              GUINEA-BISSAU                  1                                  0        9     871
ki1114097-CMIN              GUINEA-BISSAU                  1                                  1        5     871
ki1114097-CMIN              PERU                           0                                  0      611     626
ki1114097-CMIN              PERU                           0                                  1        1     626
ki1114097-CMIN              PERU                           1                                  0       14     626
ki1114097-CMIN              PERU                           1                                  1        0     626
ki1114097-CONTENT           PERU                           0                                  0      212     215
ki1114097-CONTENT           PERU                           0                                  1        0     215
ki1114097-CONTENT           PERU                           1                                  0        3     215
ki1114097-CONTENT           PERU                           1                                  1        0     215
ki1119695-PROBIT            BELARUS                        0                                  0    15182   16235
ki1119695-PROBIT            BELARUS                        0                                  1       10   16235
ki1119695-PROBIT            BELARUS                        1                                  0     1036   16235
ki1119695-PROBIT            BELARUS                        1                                  1        7   16235
ki1126311-ZVITAMBO          ZIMBABWE                       0                                  0     7793    8395
ki1126311-ZVITAMBO          ZIMBABWE                       0                                  1      287    8395
ki1126311-ZVITAMBO          ZIMBABWE                       1                                  0      261    8395
ki1126311-ZVITAMBO          ZIMBABWE                       1                                  1       54    8395
ki1135781-COHORTS           GUATEMALA                      0                                  0      837     876
ki1135781-COHORTS           GUATEMALA                      0                                  1       24     876
ki1135781-COHORTS           GUATEMALA                      1                                  0       10     876
ki1135781-COHORTS           GUATEMALA                      1                                  1        5     876
ki1135781-COHORTS           INDIA                          0                                  0     4635    5449
ki1135781-COHORTS           INDIA                          0                                  1      329    5449
ki1135781-COHORTS           INDIA                          1                                  0      338    5449
ki1135781-COHORTS           INDIA                          1                                  1      147    5449
ki1135781-COHORTS           PHILIPPINES                    0                                  0     2338    2736
ki1135781-COHORTS           PHILIPPINES                    0                                  1      136    2736
ki1135781-COHORTS           PHILIPPINES                    1                                  0      191    2736
ki1135781-COHORTS           PHILIPPINES                    1                                  1       71    2736
ki1148112-iLiNS-DOSE        MALAWI                         0                                  0      760     802
ki1148112-iLiNS-DOSE        MALAWI                         0                                  1       42     802
ki1148112-iLiNS-DOSE        MALAWI                         1                                  0        0     802
ki1148112-iLiNS-DOSE        MALAWI                         1                                  1        0     802
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                  0      963     989
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                  1       25     989
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                  0        0     989
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                  1        1     989
ki1148112-LCNI-5            MALAWI                         0                                  0      240     246
ki1148112-LCNI-5            MALAWI                         0                                  1        6     246
ki1148112-LCNI-5            MALAWI                         1                                  0        0     246
ki1148112-LCNI-5            MALAWI                         1                                  1        0     246
kiGH5241-JiVitA-3           BANGLADESH                     0                                  0    10728   13954
kiGH5241-JiVitA-3           BANGLADESH                     0                                  1     2330   13954
kiGH5241-JiVitA-3           BANGLADESH                     1                                  0      467   13954
kiGH5241-JiVitA-3           BANGLADESH                     1                                  1      429   13954
kiGH5241-JiVitA-4           BANGLADESH                     0                                  0     4357    4891
kiGH5241-JiVitA-4           BANGLADESH                     0                                  1      410    4891
kiGH5241-JiVitA-4           BANGLADESH                     1                                  0       67    4891
kiGH5241-JiVitA-4           BANGLADESH                     1                                  1       57    4891


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/d123c08a-ae3d-47be-bb18-48c3f4303a5f/cd1eef2c-7342-434b-b0b4-3ad1c6ea3209/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d123c08a-ae3d-47be-bb18-48c3f4303a5f/cd1eef2c-7342-434b-b0b4-3ad1c6ea3209/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d123c08a-ae3d-47be-bb18-48c3f4303a5f/cd1eef2c-7342-434b-b0b4-3ad1c6ea3209/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d123c08a-ae3d-47be-bb18-48c3f4303a5f/cd1eef2c-7342-434b-b0b4-3ad1c6ea3209/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0497738   0.0210408   0.0785067
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4117647   0.1773213   0.6462081
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0663429   0.0308270   0.1018588
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2939821   0.1474259   0.4405384
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0206612   0.0027136   0.0386087
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1481481   0.0810535   0.2152428
ki1000108-IRC              INDIA                          0                    NA                0.0553272   0.0272704   0.0833841
ki1000108-IRC              INDIA                          1                    NA                0.2150177   0.1448302   0.2852051
ki1000109-EE               PAKISTAN                       0                    NA                0.0612448   0.0337841   0.0887055
ki1000109-EE               PAKISTAN                       1                    NA                0.3195691   0.2068657   0.4322725
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1255510   0.0752823   0.1758197
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4478697   0.3059203   0.5898191
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1312877   0.1161493   0.1464261
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.5833333   0.5163711   0.6502956
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1122951   0.0918542   0.1327360
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4235780   0.3557471   0.4914088
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0843033   0.0586583   0.1099484
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3310241   0.1845099   0.4775383
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0420663   0.0255291   0.0586036
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4850138   0.3236519   0.6463758
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531609   0.0364815   0.0698404
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.0600946   0.4399054
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0258129   0.0183509   0.0332749
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2198612   0.1545523   0.2851701
ki1101329-Keneba           GAMBIA                         0                    NA                0.0526200   0.0425865   0.0626535
ki1101329-Keneba           GAMBIA                         1                    NA                0.2534473   0.2025138   0.3043809
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1146489   0.0854813   0.1438165
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3905718   0.2804121   0.5007315
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0632591   0.0312005   0.0953178
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3700703   0.1768326   0.5633080
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0361727   0.0235499   0.0487955
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3571429   0.1956767   0.5186091
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006582   0.0000015   0.0013150
ki1119695-PROBIT           BELARUS                        1                    NA                0.0067114   0.0018519   0.0115710
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0355384   0.0315023   0.0395745
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1721547   0.1304600   0.2138493
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0278746   0.0167840   0.0389651
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3333333   0.1698433   0.4968234
ki1135781-COHORTS          INDIA                          0                    NA                0.0664100   0.0594771   0.0733429
ki1135781-COHORTS          INDIA                          1                    NA                0.3004377   0.2601057   0.3407697
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0548543   0.0458904   0.0638181
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2598048   0.2074541   0.3121556
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1786506   0.1711998   0.1861014
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4713256   0.4358781   0.5067732
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0860585   0.0758053   0.0963117
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4520811   0.3652930   0.5388693


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0756303   0.0419679   0.1092926
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1004367   0.0614207   0.1394527
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0600000   0.0350842   0.0849158
ki1000108-IRC              INDIA                          NA                   NA                0.1076923   0.0768872   0.1384974
ki1000109-EE               PAKISTAN                       NA                   NA                0.1123288   0.0798897   0.1447679
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1990741   0.1456997   0.2524484
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1340000   0.1190668   0.1489332
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1549509   0.1362795   0.1736222
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1034483   0.0765382   0.1303583
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0583333   0.0395643   0.0771024
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0586592   0.0414351   0.0758833
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430220   0.0339104   0.0521337
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0826027   0.0710097   0.0941956
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1563636   0.1259823   0.1867450
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0960000   0.0594095   0.1325905
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0413318   0.0281047   0.0545589
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0010471   0.0002517   0.0018425
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406194   0.0363964   0.0448425
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0331050   0.0212506   0.0449595
ki1135781-COHORTS          INDIA                          NA                   NA                0.0873555   0.0798578   0.0948531
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0756579   0.0657470   0.0855688
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1977211   0.1902810   0.2051611
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0954815   0.0850302   0.1059328


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  8.272727   3.677204   18.611427
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  4.431252   2.134329    9.200080
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  7.170370   2.692106   19.098139
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.886289   2.121411    7.119434
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.217899   2.946575    9.240040
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.567232   2.143774    5.935861
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  4.443167   3.775988    5.228230
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.772007   2.933413    4.850335
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.926584   2.292623    6.725075
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 11.529738   6.895009   19.279867
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.702703   2.067355   10.697444
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  8.517489   5.627995   12.890492
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.816559   3.654595    6.347965
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.406677   2.330986    4.978771
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.850069   2.827412   12.104113
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  9.873272   5.577368   17.478047
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 10.195973   3.648746   28.491398
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.844189   3.707373    6.329594
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 11.958333   6.358997   22.488096
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.523983   3.821923    5.355007
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.736276   3.659580    6.129749
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.638253   2.418332    2.878175
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.253186   4.203958    6.564282


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0258565    0.0052285   0.0464845
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0340938    0.0081254   0.0600622
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0393388    0.0170347   0.0616430
ki1000108-IRC              INDIA                          0                    NA                0.0523651    0.0256253   0.0791048
ki1000109-EE               PAKISTAN                       0                    NA                0.0510840    0.0266901   0.0754779
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0735230    0.0354853   0.1115608
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0027123    0.0004128   0.0050118
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0426557    0.0317790   0.0535325
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0191449    0.0057978   0.0324921
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0162670    0.0058955   0.0266385
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0054983   -0.0003334   0.0113300
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0172091    0.0111152   0.0233030
ki1101329-Keneba           GAMBIA                         0                    NA                0.0299827    0.0223094   0.0376560
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0417147    0.0228649   0.0605645
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0327409    0.0095021   0.0559796
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0051591    0.0003023   0.0100159
ki1119695-PROBIT           BELARUS                        0                    NA                0.0003889    0.0000647   0.0007130
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0050810    0.0034197   0.0067424
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0052305    0.0003646   0.0100963
ki1135781-COHORTS          INDIA                          0                    NA                0.0209455    0.0168916   0.0249993
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0208036    0.0151264   0.0264809
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0190705    0.0163879   0.0217530
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0094230    0.0066510   0.0121951


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3418803    0.0640167   0.5372551
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3394555    0.0647377   0.5334795
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6556474    0.2684814   0.8379006
ki1000108-IRC              INDIA                          0                    NA                0.4862471    0.2263381   0.6588405
ki1000109-EE               PAKISTAN                       0                    NA                0.4547721    0.2422225   0.6077035
ki1000109-ResPak           PAKISTAN                       0                    NA                0.3693250    0.1706440   0.5204099
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0202408    0.0027498   0.0374251
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2752856    0.1974594   0.3455646
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1850678    0.0541787   0.2978437
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2788628    0.1044895   0.4192822
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0937329   -0.0075107   0.1848026
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4000072    0.2728197   0.5049490
ki1101329-Keneba           GAMBIA                         0                    NA                0.3629746    0.2784588   0.4375909
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2667802    0.1457226   0.3706830
ki1114097-CMIN             BANGLADESH                     0                    NA                0.3410508    0.0940651   0.5207006
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1248217    0.0053667   0.2299303
ki1119695-PROBIT           BELARUS                        0                    NA                0.3713797    0.0377469   0.5893352
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1250886    0.0852773   0.1631671
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1579959    0.0088100   0.2847276
ki1135781-COHORTS          INDIA                          0                    NA                0.2397730    0.1960825   0.2810891
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2749699    0.2045128   0.3391866
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0964513    0.0829392   0.1097643
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0986896    0.0693791   0.1270769
