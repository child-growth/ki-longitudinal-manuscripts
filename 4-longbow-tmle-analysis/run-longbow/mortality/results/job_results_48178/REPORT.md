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

**Intervention Variable:** ever_co06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_month
* delta_brthmon
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_co06    co_occurence   n_cell      n
--------------------------  -----------------------------  ----------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                       0      202    221
ki0047075b-MAL-ED           BANGLADESH                     0                       1       12    221
ki0047075b-MAL-ED           BANGLADESH                     1                       0        5    221
ki0047075b-MAL-ED           BANGLADESH                     1                       1        2    221
ki0047075b-MAL-ED           BRAZIL                         0                       0      179    180
ki0047075b-MAL-ED           BRAZIL                         0                       1        1    180
ki0047075b-MAL-ED           BRAZIL                         1                       0        0    180
ki0047075b-MAL-ED           BRAZIL                         1                       1        0    180
ki0047075b-MAL-ED           INDIA                          0                       0      198    228
ki0047075b-MAL-ED           INDIA                          0                       1       13    228
ki0047075b-MAL-ED           INDIA                          1                       0       13    228
ki0047075b-MAL-ED           INDIA                          1                       1        4    228
ki0047075b-MAL-ED           NEPAL                          0                       0      220    229
ki0047075b-MAL-ED           NEPAL                          0                       1        3    229
ki0047075b-MAL-ED           NEPAL                          1                       0        5    229
ki0047075b-MAL-ED           NEPAL                          1                       1        1    229
ki0047075b-MAL-ED           PERU                           0                       0      216    222
ki0047075b-MAL-ED           PERU                           0                       1        5    222
ki0047075b-MAL-ED           PERU                           1                       0        0    222
ki0047075b-MAL-ED           PERU                           1                       1        1    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       0      233    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       1        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       0        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       1        0    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      220    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        4    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                       0      317    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                       1       16    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                       0       25    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                       1        6    364
ki1000108-IRC               INDIA                          0                       0      362    404
ki1000108-IRC               INDIA                          0                       1       20    404
ki1000108-IRC               INDIA                          1                       0       17    404
ki1000108-IRC               INDIA                          1                       1        5    404
ki1000109-EE                PAKISTAN                       0                       0      249    350
ki1000109-EE                PAKISTAN                       0                       1       51    350
ki1000109-EE                PAKISTAN                       1                       0       26    350
ki1000109-EE                PAKISTAN                       1                       1       24    350
ki1000109-ResPak            PAKISTAN                       0                       0        7      9
ki1000109-ResPak            PAKISTAN                       0                       1        0      9
ki1000109-ResPak            PAKISTAN                       1                       0        2      9
ki1000109-ResPak            PAKISTAN                       1                       1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                       0     1069   1254
ki1000304b-SAS-CompFeed     INDIA                          0                       1      100   1254
ki1000304b-SAS-CompFeed     INDIA                          1                       0       57   1254
ki1000304b-SAS-CompFeed     INDIA                          1                       1       28   1254
ki1000304b-SAS-FoodSuppl    INDIA                          0                       0      246    321
ki1000304b-SAS-FoodSuppl    INDIA                          0                       1       54    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                       0       15    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                       1        6    321
ki1017093-NIH-Birth         BANGLADESH                     0                       0      386    460
ki1017093-NIH-Birth         BANGLADESH                     0                       1       38    460
ki1017093-NIH-Birth         BANGLADESH                     1                       0       23    460
ki1017093-NIH-Birth         BANGLADESH                     1                       1       13    460
ki1017093b-PROVIDE          BANGLADESH                     0                       0      495    551
ki1017093b-PROVIDE          BANGLADESH                     0                       1       31    551
ki1017093b-PROVIDE          BANGLADESH                     1                       0       20    551
ki1017093b-PROVIDE          BANGLADESH                     1                       1        5    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                       0      595    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                       1       24    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                       0       10    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                       1        5    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0      956    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1       18    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0        3    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        3    980
ki1101329-Keneba            GAMBIA                         0                       0     1630   1755
ki1101329-Keneba            GAMBIA                         0                       1       80   1755
ki1101329-Keneba            GAMBIA                         1                       0       28   1755
ki1101329-Keneba            GAMBIA                         1                       1       17   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                       0      481    550
ki1113344-GMS-Nepal         NEPAL                          0                       1       50    550
ki1113344-GMS-Nepal         NEPAL                          1                       0       11    550
ki1113344-GMS-Nepal         NEPAL                          1                       1        8    550
ki1114097-CMIN              BANGLADESH                     0                       0      204    237
ki1114097-CMIN              BANGLADESH                     0                       1       23    237
ki1114097-CMIN              BANGLADESH                     1                       0        7    237
ki1114097-CMIN              BANGLADESH                     1                       1        3    237
ki1114097-CMIN              BRAZIL                         0                       0      115    115
ki1114097-CMIN              BRAZIL                         0                       1        0    115
ki1114097-CMIN              BRAZIL                         1                       0        0    115
ki1114097-CMIN              BRAZIL                         1                       1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                       0      471    489
ki1114097-CMIN              GUINEA-BISSAU                  0                       1       16    489
ki1114097-CMIN              GUINEA-BISSAU                  1                       0        2    489
ki1114097-CMIN              GUINEA-BISSAU                  1                       1        0    489
ki1114097-CMIN              PERU                           0                       0      370    374
ki1114097-CMIN              PERU                           0                       1        0    374
ki1114097-CMIN              PERU                           1                       0        4    374
ki1114097-CMIN              PERU                           1                       1        0    374
ki1114097-CONTENT           PERU                           0                       0      199    200
ki1114097-CONTENT           PERU                           0                       1        1    200
ki1114097-CONTENT           PERU                           1                       0        0    200
ki1114097-CONTENT           PERU                           1                       1        0    200
ki1119695-PROBIT            BELARUS                        0                       0     2145   2146
ki1119695-PROBIT            BELARUS                        0                       1        0   2146
ki1119695-PROBIT            BELARUS                        1                       0        1   2146
ki1119695-PROBIT            BELARUS                        1                       1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                       0     1549   1651
ki1126311-ZVITAMBO          ZIMBABWE                       0                       1       80   1651
ki1126311-ZVITAMBO          ZIMBABWE                       1                       0       17   1651
ki1126311-ZVITAMBO          ZIMBABWE                       1                       1        5   1651
ki1135781-COHORTS           GUATEMALA                      0                       0      668    711
ki1135781-COHORTS           GUATEMALA                      0                       1       31    711
ki1135781-COHORTS           GUATEMALA                      1                       0        9    711
ki1135781-COHORTS           GUATEMALA                      1                       1        3    711
ki1135781-COHORTS           PHILIPPINES                    0                       0     2273   2487
ki1135781-COHORTS           PHILIPPINES                    0                       1      173   2487
ki1135781-COHORTS           PHILIPPINES                    1                       0       27   2487
ki1135781-COHORTS           PHILIPPINES                    1                       1       14   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                       0      830    867
ki1148112-iLiNS-DOSE        MALAWI                         0                       1       33    867
ki1148112-iLiNS-DOSE        MALAWI                         1                       0        4    867
ki1148112-iLiNS-DOSE        MALAWI                         1                       1        0    867
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       0      976   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       1       24   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       0        3   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       1        1   1004
ki1148112-LCNI-5            MALAWI                         0                       0      229    235
ki1148112-LCNI-5            MALAWI                         0                       1        6    235
ki1148112-LCNI-5            MALAWI                         1                       0        0    235
ki1148112-LCNI-5            MALAWI                         1                       1        0    235
kiGH5241-JiVitA-4           BANGLADESH                     0                       0     3928   4413
kiGH5241-JiVitA-4           BANGLADESH                     0                       1      378   4413
kiGH5241-JiVitA-4           BANGLADESH                     1                       0       68   4413
kiGH5241-JiVitA-4           BANGLADESH                     1                       1       39   4413


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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




# Results Detail

## Results Plots
![](/tmp/66f450a9-a25c-42a0-bf60-5a8b2fecc6de/8aff347c-453e-4daf-bc74-5be3cd485607/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66f450a9-a25c-42a0-bf60-5a8b2fecc6de/8aff347c-453e-4daf-bc74-5be3cd485607/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66f450a9-a25c-42a0-bf60-5a8b2fecc6de/8aff347c-453e-4daf-bc74-5be3cd485607/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66f450a9-a25c-42a0-bf60-5a8b2fecc6de/8aff347c-453e-4daf-bc74-5be3cd485607/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0480480   0.0250459   0.0710502
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1935484   0.0542813   0.3328155
ki1000108-IRC              INDIA         0                    NA                0.0523560   0.0299915   0.0747206
ki1000108-IRC              INDIA         1                    NA                0.2272727   0.0519405   0.4026049
ki1000109-EE               PAKISTAN      0                    NA                0.1713603   0.1284365   0.2142841
ki1000109-EE               PAKISTAN      1                    NA                0.4833978   0.3350907   0.6317050
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0857202   0.0757843   0.0956562
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2946605   0.1941679   0.3951530
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1800000   0.1364580   0.2235420
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.2857143   0.0921978   0.4792308
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0899844   0.0625495   0.1174194
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3959889   0.2123330   0.5796448
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0589354   0.0387913   0.0790794
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2000000   0.0430604   0.3569396
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0387722   0.0235311   0.0540133
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.3333333   0.1073893   0.5592774
ki1101329-Keneba           GAMBIA        0                    NA                0.0469201   0.0368864   0.0569538
ki1101329-Keneba           GAMBIA        1                    NA                0.3536386   0.2181773   0.4890999
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0941620   0.0692986   0.1190253
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.4210526   0.1988474   0.6432578
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0491099   0.0384871   0.0597327
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2272727   0.1339063   0.3206391
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0709488   0.0606974   0.0812002
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2889427   0.1929720   0.3849133
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0949104   0.0836553   0.1061655
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.4118859   0.3398466   0.4839253


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000108-IRC              INDIA         NA                   NA                0.0618812   0.0383576   0.0854048
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1020734   0.0904618   0.1136850
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1108696   0.0821465   0.1395926
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0552707   0.0445768   0.0659645
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0514839   0.0408213   0.0621466
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0944935   0.0839579   0.1050291


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 4.028226   1.6973590    9.559912
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 4.340909   1.7972456   10.484651
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.820944   1.8962003    4.196670
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.437467   2.3322220    5.066491
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.587302   0.7732342    3.258426
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 4.400639   2.5268411    7.663967
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 3.393548   1.4419098    7.986748
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 8.597222   3.9269825   18.821635
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 7.537038   4.8628871   11.681730
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.471579   2.4784489    8.067553
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.627841   2.9090055    7.362279
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 4.072552   2.8353988    5.849506
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.339736   3.5170297    5.354890


### Parameter: PAR


studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0123915   -0.0003351   0.0251182
ki1000108-IRC              INDIA         0                    NA                 0.0095252   -0.0008508   0.0199011
ki1000109-EE               PAKISTAN      0                    NA                 0.0429254    0.0187757   0.0670751
ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0163531    0.0066647   0.0260416
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0069159   -0.0063729   0.0202046
ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0208852    0.0067442   0.0350262
ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0064004   -0.0011864   0.0139872
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.0069691    0.0003197   0.0136186
ki1101329-Keneba           GAMBIA        0                    NA                 0.0083506    0.0040026   0.0126985
ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0112926    0.0020948   0.0204904
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0023741   -0.0001736   0.0049217
ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0042422    0.0015308   0.0069536
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                -0.0004168   -0.0058911   0.0050574


### Parameter: PAF


studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.2050232   -0.0163219   0.3781615
ki1000108-IRC              INDIA         0                    NA                 0.1539267   -0.0202056   0.2983375
ki1000109-EE               PAKISTAN      0                    NA                 0.2003187    0.0843407   0.3016068
ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.1602097    0.0699958   0.2416725
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                 0.0370000   -0.0364828   0.1052732
ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.1883760    0.0586811   0.3002015
ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0979616   -0.0218027   0.2036884
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                 0.1523592    0.0049199   0.2779527
ki1101329-Keneba           GAMBIA        0                    NA                 0.1510847    0.0740939   0.2216736
ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.1070849    0.0189153   0.1873307
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0461127   -0.0042879   0.0939840
ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0564190    0.0201888   0.0913096
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                -0.0044112   -0.0641135   0.0519416
