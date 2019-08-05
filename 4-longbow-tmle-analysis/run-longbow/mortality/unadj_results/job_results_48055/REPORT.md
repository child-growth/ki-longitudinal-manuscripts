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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sstunted06    co_occurence   n_cell      n
--------------------------  -----------------------------  ----------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                             0      195    221
ki0047075b-MAL-ED           BANGLADESH                     0                             1       12    221
ki0047075b-MAL-ED           BANGLADESH                     1                             0       12    221
ki0047075b-MAL-ED           BANGLADESH                     1                             1        2    221
ki0047075b-MAL-ED           BRAZIL                         0                             0      168    180
ki0047075b-MAL-ED           BRAZIL                         0                             1        0    180
ki0047075b-MAL-ED           BRAZIL                         1                             0       11    180
ki0047075b-MAL-ED           BRAZIL                         1                             1        1    180
ki0047075b-MAL-ED           INDIA                          0                             0      196    228
ki0047075b-MAL-ED           INDIA                          0                             1       14    228
ki0047075b-MAL-ED           INDIA                          1                             0       15    228
ki0047075b-MAL-ED           INDIA                          1                             1        3    228
ki0047075b-MAL-ED           NEPAL                          0                             0      217    229
ki0047075b-MAL-ED           NEPAL                          0                             1        4    229
ki0047075b-MAL-ED           NEPAL                          1                             0        8    229
ki0047075b-MAL-ED           NEPAL                          1                             1        0    229
ki0047075b-MAL-ED           PERU                           0                             0      190    222
ki0047075b-MAL-ED           PERU                           0                             1        2    222
ki0047075b-MAL-ED           PERU                           1                             0       26    222
ki0047075b-MAL-ED           PERU                           1                             1        4    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      215    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        3    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0       22    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        1    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      195    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       29    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        1    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                             0      261    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                             1       12    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                             0       81    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                             1       10    364
ki1000108-IRC               INDIA                          0                             0      331    405
ki1000108-IRC               INDIA                          0                             1       13    405
ki1000108-IRC               INDIA                          1                             0       49    405
ki1000108-IRC               INDIA                          1                             1       12    405
ki1000109-EE                PAKISTAN                       0                             0      162    350
ki1000109-EE                PAKISTAN                       0                             1       35    350
ki1000109-EE                PAKISTAN                       1                             0      113    350
ki1000109-EE                PAKISTAN                       1                             1       40    350
ki1000109-ResPak            PAKISTAN                       0                             0        3      9
ki1000109-ResPak            PAKISTAN                       0                             1        0      9
ki1000109-ResPak            PAKISTAN                       1                             0        6      9
ki1000109-ResPak            PAKISTAN                       1                             1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                             0      996   1258
ki1000304b-SAS-CompFeed     INDIA                          0                             1       85   1258
ki1000304b-SAS-CompFeed     INDIA                          1                             0      134   1258
ki1000304b-SAS-CompFeed     INDIA                          1                             1       43   1258
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      235    321
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1       48    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0       26    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1       12    321
ki1017093-NIH-Birth         BANGLADESH                     0                             0      376    462
ki1017093-NIH-Birth         BANGLADESH                     0                             1       42    462
ki1017093-NIH-Birth         BANGLADESH                     1                             0       35    462
ki1017093-NIH-Birth         BANGLADESH                     1                             1        9    462
ki1017093b-PROVIDE          BANGLADESH                     0                             0      492    551
ki1017093b-PROVIDE          BANGLADESH                     0                             1       32    551
ki1017093b-PROVIDE          BANGLADESH                     1                             0       23    551
ki1017093b-PROVIDE          BANGLADESH                     1                             1        4    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                             0      570    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                             1       24    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                             0       35    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                             1        5    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0      916    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1       17    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0       43    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        4    980
ki1101329-Keneba            GAMBIA                         0                             0     1491   1774
ki1101329-Keneba            GAMBIA                         0                             1       73   1774
ki1101329-Keneba            GAMBIA                         1                             0      183   1774
ki1101329-Keneba            GAMBIA                         1                             1       27   1774
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                             0      471    550
ki1113344-GMS-Nepal         NEPAL                          0                             1       46    550
ki1113344-GMS-Nepal         NEPAL                          1                             0       21    550
ki1113344-GMS-Nepal         NEPAL                          1                             1       12    550
ki1114097-CMIN              BANGLADESH                     0                             0      166    237
ki1114097-CMIN              BANGLADESH                     0                             1       16    237
ki1114097-CMIN              BANGLADESH                     1                             0       45    237
ki1114097-CMIN              BANGLADESH                     1                             1       10    237
ki1114097-CMIN              BRAZIL                         0                             0      108    115
ki1114097-CMIN              BRAZIL                         0                             1        0    115
ki1114097-CMIN              BRAZIL                         1                             0        7    115
ki1114097-CMIN              BRAZIL                         1                             1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                             0      458    490
ki1114097-CMIN              GUINEA-BISSAU                  0                             1       13    490
ki1114097-CMIN              GUINEA-BISSAU                  1                             0       16    490
ki1114097-CMIN              GUINEA-BISSAU                  1                             1        3    490
ki1114097-CMIN              PERU                           0                             0      361    374
ki1114097-CMIN              PERU                           0                             1        0    374
ki1114097-CMIN              PERU                           1                             0       13    374
ki1114097-CMIN              PERU                           1                             1        0    374
ki1114097-CONTENT           PERU                           0                             0      191    200
ki1114097-CONTENT           PERU                           0                             1        0    200
ki1114097-CONTENT           PERU                           1                             0        8    200
ki1114097-CONTENT           PERU                           1                             1        1    200
ki1119695-PROBIT            BELARUS                        0                             0     2122   2146
ki1119695-PROBIT            BELARUS                        0                             1        0   2146
ki1119695-PROBIT            BELARUS                        1                             0       24   2146
ki1119695-PROBIT            BELARUS                        1                             1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0     1368   1664
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1       69   1664
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0      208   1664
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1       19   1664
ki1135781-COHORTS           GUATEMALA                      0                             0      619    715
ki1135781-COHORTS           GUATEMALA                      0                             1       27    715
ki1135781-COHORTS           GUATEMALA                      1                             0       62    715
ki1135781-COHORTS           GUATEMALA                      1                             1        7    715
ki1135781-COHORTS           PHILIPPINES                    0                             0     2192   2487
ki1135781-COHORTS           PHILIPPINES                    0                             1      160   2487
ki1135781-COHORTS           PHILIPPINES                    1                             0      108   2487
ki1135781-COHORTS           PHILIPPINES                    1                             1       27   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                             0      788    867
ki1148112-iLiNS-DOSE        MALAWI                         0                             1       28    867
ki1148112-iLiNS-DOSE        MALAWI                         1                             0       46    867
ki1148112-iLiNS-DOSE        MALAWI                         1                             1        5    867
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             0      962   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             1       24   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             0       42   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             1        1   1029
ki1148112-LCNI-5            MALAWI                         0                             0      213    235
ki1148112-LCNI-5            MALAWI                         0                             1        6    235
ki1148112-LCNI-5            MALAWI                         1                             0       16    235
ki1148112-LCNI-5            MALAWI                         1                             1        0    235
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     3684   4444
kiGH5241-JiVitA-4           BANGLADESH                     0                             1      313   4444
kiGH5241-JiVitA-4           BANGLADESH                     1                             0      335   4444
kiGH5241-JiVitA-4           BANGLADESH                     1                             1      112   4444


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
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
![](/tmp/cb1521b7-a822-4cf5-be48-d55e26e676df/59f690eb-cc26-4e22-ac40-02aff5113df6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cb1521b7-a822-4cf5-be48-d55e26e676df/59f690eb-cc26-4e22-ac40-02aff5113df6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cb1521b7-a822-4cf5-be48-d55e26e676df/59f690eb-cc26-4e22-ac40-02aff5113df6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cb1521b7-a822-4cf5-be48-d55e26e676df/59f690eb-cc26-4e22-ac40-02aff5113df6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0439560   0.0196053   0.0683068
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1098901   0.0455435   0.1742368
ki1000108-IRC              INDIA         0                    NA                0.0377907   0.0176148   0.0579666
ki1000108-IRC              INDIA         1                    NA                0.1967213   0.0968412   0.2966014
ki1000109-EE               PAKISTAN      0                    NA                0.1776650   0.1242133   0.2311167
ki1000109-EE               PAKISTAN      1                    NA                0.2614379   0.1917108   0.3311650
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0786309   0.0667823   0.0904795
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2429379   0.1834685   0.3024072
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1696113   0.1258187   0.2134039
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3157895   0.1677670   0.4638119
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1004785   0.0716267   0.1293303
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2045455   0.0852305   0.3238604
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0404040   0.0245568   0.0562513
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1250000   0.0224301   0.2275699
ki1101329-Keneba           GAMBIA        0                    NA                0.0466752   0.0362180   0.0571324
ki1101329-Keneba           GAMBIA        1                    NA                0.1285714   0.0832870   0.1738559
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0889749   0.0644110   0.1135387
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3636364   0.1993609   0.5279118
ki1114097-CMIN             BANGLADESH    0                    NA                0.0879121   0.0466859   0.1291383
ki1114097-CMIN             BANGLADESH    1                    NA                0.1818182   0.0796705   0.2839659
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0480167   0.0369591   0.0590743
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0837004   0.0476635   0.1197374
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0417957   0.0263527   0.0572386
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1014493   0.0301602   0.1727384
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0680272   0.0578493   0.0782051
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2000000   0.1325117   0.2674883
ki1148112-iLiNS-DOSE       MALAWI        0                    NA                0.0343137   0.0218167   0.0468107
ki1148112-iLiNS-DOSE       MALAWI        1                    NA                0.0980392   0.0163796   0.1796988
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0783087   0.0684331   0.0881844
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2505593   0.1998483   0.3012702


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1017488   0.0903508   0.1131468
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563698   0.0456344   0.0671052
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0528846   0.0421282   0.0636410
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0475524   0.0319423   0.0631626
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-iLiNS-DOSE       MALAWI        NA                   NA                0.0380623   0.0253182   0.0508064
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0956346   0.0850945   0.1061746


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 2.500000   1.1165116    5.597792
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 5.205548   2.4916969   10.875213
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.471522   0.9843673    2.199765
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.089598   2.2008572    4.337226
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.861842   1.0902668    3.179457
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.035714   1.0625635    3.900127
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 3.093750   1.2459572    7.681876
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 2.754599   1.8145566    4.181636
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.086957   2.4069588    6.939551
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 2.068182   0.9948736    4.299417
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.743153   1.0697558    2.840444
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 2.427268   1.0972869    5.369269
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.940000   2.0325411    4.252608
ki1148112-iLiNS-DOSE       MALAWI        0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI        1                    0                 2.857143   1.1511385    7.091471
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 3.199634   2.5200187    4.062533


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0164835   -0.0009655   0.0339325
ki1000108-IRC              INDIA         0                    NA                0.0239377    0.0076198   0.0402556
ki1000109-EE               PAKISTAN      0                    NA                0.0366207   -0.0020322   0.0752737
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0231179    0.0126530   0.0335828
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0173046   -0.0016875   0.0362967
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0099111   -0.0021077   0.0219300
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0053373   -0.0014040   0.0120785
ki1101329-Keneba           GAMBIA        0                    NA                0.0096946    0.0040568   0.0153324
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0164797    0.0051177   0.0278417
ki1114097-CMIN             BANGLADESH    0                    NA                0.0217926   -0.0042660   0.0478511
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0048679   -0.0003080   0.0100438
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0057568   -0.0014000   0.0129136
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0071638    0.0032769   0.0110506
ki1148112-iLiNS-DOSE       MALAWI        0                    NA                0.0037486   -0.0012124   0.0087095
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0173258    0.0116234   0.0230283


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2727273   -0.0524864   0.4974513
ki1000108-IRC              INDIA         0                    NA                0.3877907    0.1182202   0.5749503
ki1000109-EE               PAKISTAN      0                    NA                0.1708968   -0.0283760   0.3315556
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.2272057    0.1259566   0.3167261
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0925795   -0.0134914   0.1875492
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0897833   -0.0236861   0.1906753
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.1166841   -0.0372773   0.2477932
ki1101329-Keneba           GAMBIA        0                    NA                0.1719821    0.0712507   0.2617883
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1562729    0.0476116   0.2525367
ki1114097-CMIN             BANGLADESH    0                    NA                0.1986475   -0.0658383   0.3975016
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0920478   -0.0094880   0.1833710
ki1135781-COHORTS          GUATEMALA     0                    NA                0.1210617   -0.0373376   0.2552739
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0952745    0.0436034   0.1441540
ki1148112-iLiNS-DOSE       MALAWI        0                    NA                0.0984848   -0.0372119   0.2164286
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1811671    0.1241198   0.2344987
