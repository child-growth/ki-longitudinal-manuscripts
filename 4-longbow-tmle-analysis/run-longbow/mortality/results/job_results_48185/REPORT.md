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
![](/tmp/ebaa5add-e1b4-4bf3-b548-115ea9849878/5c859e14-a545-4420-ac30-e24859b991f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ebaa5add-e1b4-4bf3-b548-115ea9849878/5c859e14-a545-4420-ac30-e24859b991f8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ebaa5add-e1b4-4bf3-b548-115ea9849878/5c859e14-a545-4420-ac30-e24859b991f8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ebaa5add-e1b4-4bf3-b548-115ea9849878/5c859e14-a545-4420-ac30-e24859b991f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0497738   0.0210408   0.0785067
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4117647   0.1773213   0.6462081
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0658734   0.0304712   0.1012756
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2927690   0.1489286   0.4366093
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0206612   0.0027136   0.0386087
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1481481   0.0810535   0.2152428
ki1000108-IRC              INDIA                          0                    NA                0.0538047   0.0258919   0.0817176
ki1000108-IRC              INDIA                          1                    NA                0.2075280   0.1375001   0.2775560
ki1000109-EE               PAKISTAN                       0                    NA                0.0613002   0.0338129   0.0887875
ki1000109-EE               PAKISTAN                       1                    NA                0.3209937   0.2100131   0.4319743
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1256595   0.0753328   0.1759862
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4498605   0.3097439   0.5899771
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1312877   0.1161493   0.1464261
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.5833333   0.5163711   0.6502956
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1122951   0.0918542   0.1327360
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4235780   0.3557471   0.4914088
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0841508   0.0584913   0.1098103
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3254266   0.1812300   0.4696232
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0419708   0.0254327   0.0585089
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3166841   0.1402185   0.4931497
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531609   0.0364815   0.0698404
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.0600946   0.4399054
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0258431   0.0183844   0.0333019
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2255071   0.1610906   0.2899237
ki1101329-Keneba           GAMBIA                         0                    NA                0.0530171   0.0429014   0.0631329
ki1101329-Keneba           GAMBIA                         1                    NA                0.2550351   0.2019599   0.3081104
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1136920   0.0848795   0.1425046
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3929597   0.2831268   0.5027927
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0639271   0.0318591   0.0959950
ki1114097-CMIN             BANGLADESH                     1                    NA                0.5083083   0.3358833   0.6807334
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0361727   0.0235499   0.0487955
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3571429   0.1956767   0.5186091
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006582   0.0000015   0.0013150
ki1119695-PROBIT           BELARUS                        1                    NA                0.0067114   0.0018519   0.0115710
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0355298   0.0314930   0.0395667
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1716625   0.1293309   0.2139941
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0278746   0.0167840   0.0389651
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3333333   0.1698433   0.4968234
ki1135781-COHORTS          INDIA                          0                    NA                0.0664183   0.0594654   0.0733712
ki1135781-COHORTS          INDIA                          1                    NA                0.2935926   0.2517184   0.3354669
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0547124   0.0457646   0.0636601
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2684995   0.2146137   0.3223854
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1787050   0.1712499   0.1861601
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4661066   0.4307153   0.5014979
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0860594   0.0758145   0.0963043
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4542329   0.3697133   0.5387525


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
ki0047075b-MAL-ED          INDIA                          1                    0                  4.444419   2.144579    9.210599
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  7.170370   2.692106   19.098139
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.857060   2.071496    7.181722
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.236422   2.968233    9.237859
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.579996   2.156373    5.943484
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  4.443167   3.775988    5.228230
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.772007   2.933413    4.850335
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.867182   2.258032    6.623067
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  7.545346   3.812162   14.934373
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.702703   2.067355   10.697444
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  8.725998   5.812700   13.099426
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.810431   3.630575    6.373713
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.456353   2.370832    5.038896
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  7.951380   4.354058   14.520810
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  9.873272   5.577368   17.478047
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 10.195973   3.648746   28.491398
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.831502   3.682786    6.338520
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 11.958333   6.358997   22.488096
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.420358   3.707922    5.269680
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.907473   3.793825    6.348024
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.608246   2.391562    2.844562
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.278132   4.248897    6.556684


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0258565    0.0052285   0.0464845
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0345633    0.0085629   0.0605637
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0393388    0.0170347   0.0616430
ki1000108-IRC              INDIA                          0                    NA                0.0538876    0.0271100   0.0806652
ki1000109-EE               PAKISTAN                       0                    NA                0.0510286    0.0266367   0.0754205
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0734146    0.0352955   0.1115337
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0027123    0.0004128   0.0050118
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0426557    0.0317790   0.0535325
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0192974    0.0058768   0.0327181
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0163626    0.0059745   0.0267506
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0054983   -0.0003334   0.0113300
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0171789    0.0110856   0.0232722
ki1101329-Keneba           GAMBIA                         0                    NA                0.0295856    0.0218888   0.0372824
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0426716    0.0239467   0.0613965
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0320729    0.0087566   0.0553893
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0051591    0.0003023   0.0100159
ki1119695-PROBIT           BELARUS                        0                    NA                0.0003889    0.0000647   0.0007130
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0050896    0.0034280   0.0067511
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0052305    0.0003646   0.0100963
ki1135781-COHORTS          INDIA                          0                    NA                0.0209372    0.0168609   0.0250134
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0209455    0.0152762   0.0266149
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0190161    0.0163357   0.0216965
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0094221    0.0066506   0.0121936


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3418803    0.0640167   0.5372551
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3441301    0.0694170   0.5377464
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6556474    0.2684814   0.8379006
ki1000108-IRC              INDIA                          0                    NA                0.5003847    0.2395420   0.6717564
ki1000109-EE               PAKISTAN                       0                    NA                0.4542787    0.2415850   0.6073235
ki1000109-ResPak           PAKISTAN                       0                    NA                0.3687802    0.1695592   0.5202085
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0202408    0.0027498   0.0374251
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2752856    0.1974594   0.3455646
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1865420    0.0548432   0.2998898
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2805009    0.1057649   0.4210930
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0937329   -0.0075107   0.1848026
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3993048    0.2722032   0.5042095
ki1101329-Keneba           GAMBIA                         0                    NA                0.3581672    0.2728543   0.4334707
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2728999    0.1536044   0.3753812
ki1114097-CMIN             BANGLADESH                     0                    NA                0.3340932    0.0867472   0.5144478
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1248217    0.0053667   0.2299303
ki1119695-PROBIT           BELARUS                        0                    NA                0.3713797    0.0377469   0.5893352
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1252989    0.0854761   0.1633877
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1579959    0.0088100   0.2847276
ki1135781-COHORTS          INDIA                          0                    NA                0.2396779    0.1956548   0.2812916
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2768451    0.2065753   0.3408914
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0961763    0.0826691   0.1094845
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0986798    0.0694073   0.1270315
