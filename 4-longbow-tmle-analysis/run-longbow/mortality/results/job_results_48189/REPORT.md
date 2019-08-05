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

**Intervention Variable:** ever_co06

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

studyid                     country                        ever_co06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  ----------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      215     239
ki0047075b-MAL-ED           BANGLADESH                     0                         1       16     239
ki0047075b-MAL-ED           BANGLADESH                     1                         0        6     239
ki0047075b-MAL-ED           BANGLADESH                     1                         1        2     239
ki0047075b-MAL-ED           BRAZIL                         0                         0      200     202
ki0047075b-MAL-ED           BRAZIL                         0                         1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                         0        0     202
ki0047075b-MAL-ED           BRAZIL                         1                         1        0     202
ki0047075b-MAL-ED           INDIA                          0                         0      196     234
ki0047075b-MAL-ED           INDIA                          0                         1       21     234
ki0047075b-MAL-ED           INDIA                          1                         0       10     234
ki0047075b-MAL-ED           INDIA                          1                         1        7     234
ki0047075b-MAL-ED           NEPAL                          0                         0      227     234
ki0047075b-MAL-ED           NEPAL                          0                         1        1     234
ki0047075b-MAL-ED           NEPAL                          1                         0        5     234
ki0047075b-MAL-ED           NEPAL                          1                         1        1     234
ki0047075b-MAL-ED           PERU                           0                         0      261     264
ki0047075b-MAL-ED           PERU                           0                         1        2     264
ki0047075b-MAL-ED           PERU                           1                         0        1     264
ki0047075b-MAL-ED           PERU                           1                         1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      252     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0        4     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      240     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        4     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                         0      315     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                         1       22     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                         0       25     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                         1        6     368
ki1000108-IRC               INDIA                          0                         0      342     409
ki1000108-IRC               INDIA                          0                         1       42     409
ki1000108-IRC               INDIA                          1                         0       19     409
ki1000108-IRC               INDIA                          1                         1        6     409
ki1000109-EE                PAKISTAN                       0                         0      301     371
ki1000109-EE                PAKISTAN                       0                         1       19     371
ki1000109-EE                PAKISTAN                       1                         0       26     371
ki1000109-EE                PAKISTAN                       1                         1       25     371
ki1000109-ResPak            PAKISTAN                       0                         0      168     220
ki1000109-ResPak            PAKISTAN                       0                         1       42     220
ki1000109-ResPak            PAKISTAN                       1                         0        7     220
ki1000109-ResPak            PAKISTAN                       1                         1        3     220
ki1000304-VITAMIN-A         INDIA                          0                         0     1884    2300
ki1000304-VITAMIN-A         INDIA                          0                         1      340    2300
ki1000304-VITAMIN-A         INDIA                          1                         0       44    2300
ki1000304-VITAMIN-A         INDIA                          1                         1       32    2300
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1088    1346
ki1000304b-SAS-CompFeed     INDIA                          0                         1      168    1346
ki1000304b-SAS-CompFeed     INDIA                          1                         0       42    1346
ki1000304b-SAS-CompFeed     INDIA                          1                         1       48    1346
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      298     386
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1       58     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0       19     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1       11     386
ki1017093-NIH-Birth         BANGLADESH                     0                         0      429     512
ki1017093-NIH-Birth         BANGLADESH                     0                         1       46     512
ki1017093-NIH-Birth         BANGLADESH                     1                         0       25     512
ki1017093-NIH-Birth         BANGLADESH                     1                         1       12     512
ki1017093b-PROVIDE          BANGLADESH                     0                         0      551     608
ki1017093b-PROVIDE          BANGLADESH                     0                         1       30     608
ki1017093b-PROVIDE          BANGLADESH                     1                         0       18     608
ki1017093b-PROVIDE          BANGLADESH                     1                         1        9     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                         0      665     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                         1       40     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                         0       13     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                         1        4     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1819    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1       85    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0        7    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1       10    1921
ki1101329-Keneba            GAMBIA                         0                         0     1960    2184
ki1101329-Keneba            GAMBIA                         0                         1      166    2184
ki1101329-Keneba            GAMBIA                         1                         0       32    2184
ki1101329-Keneba            GAMBIA                         1                         1       26    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        4      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        2      26
ki1112895-Guatemala BSC     GUATEMALA                      0                         0      228     236
ki1112895-Guatemala BSC     GUATEMALA                      0                         1        3     236
ki1112895-Guatemala BSC     GUATEMALA                      1                         0        4     236
ki1112895-Guatemala BSC     GUATEMALA                      1                         1        1     236
ki1113344-GMS-Nepal         NEPAL                          0                         0      464     584
ki1113344-GMS-Nepal         NEPAL                          0                         1       96     584
ki1113344-GMS-Nepal         NEPAL                          1                         0       11     584
ki1113344-GMS-Nepal         NEPAL                          1                         1       13     584
ki1114097-CMIN              BANGLADESH                     0                         0      222     251
ki1114097-CMIN              BANGLADESH                     0                         1       19     251
ki1114097-CMIN              BANGLADESH                     1                         0        5     251
ki1114097-CMIN              BANGLADESH                     1                         1        5     251
ki1114097-CMIN              BRAZIL                         0                         0      119     119
ki1114097-CMIN              BRAZIL                         0                         1        0     119
ki1114097-CMIN              BRAZIL                         1                         0        0     119
ki1114097-CMIN              BRAZIL                         1                         1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                         0      836     877
ki1114097-CMIN              GUINEA-BISSAU                  0                         1       37     877
ki1114097-CMIN              GUINEA-BISSAU                  1                         0        3     877
ki1114097-CMIN              GUINEA-BISSAU                  1                         1        1     877
ki1114097-CMIN              PERU                           0                         0      621     630
ki1114097-CMIN              PERU                           0                         1        1     630
ki1114097-CMIN              PERU                           1                         0        7     630
ki1114097-CMIN              PERU                           1                         1        1     630
ki1114097-CONTENT           PERU                           0                         0      215     215
ki1114097-CONTENT           PERU                           0                         1        0     215
ki1114097-CONTENT           PERU                           1                         0        0     215
ki1114097-CONTENT           PERU                           1                         1        0     215
ki1119695-PROBIT            BELARUS                        0                         0    16411   16449
ki1119695-PROBIT            BELARUS                        0                         1       20   16449
ki1119695-PROBIT            BELARUS                        1                         0       18   16449
ki1119695-PROBIT            BELARUS                        1                         1        0   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     8076    8513
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      351    8513
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0       70    8513
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1       16    8513
ki1135781-COHORTS           GUATEMALA                      0                         0      851     896
ki1135781-COHORTS           GUATEMALA                      0                         1       28     896
ki1135781-COHORTS           GUATEMALA                      1                         0       13     896
ki1135781-COHORTS           GUATEMALA                      1                         1        4     896
ki1135781-COHORTS           INDIA                          0                         0     5177    5883
ki1135781-COHORTS           INDIA                          0                         1      569    5883
ki1135781-COHORTS           INDIA                          1                         0       67    5883
ki1135781-COHORTS           INDIA                          1                         1       70    5883
ki1135781-COHORTS           PHILIPPINES                    0                         0     2505    2756
ki1135781-COHORTS           PHILIPPINES                    0                         1      190    2756
ki1135781-COHORTS           PHILIPPINES                    1                         0       36    2756
ki1135781-COHORTS           PHILIPPINES                    1                         1       25    2756
ki1148112-iLiNS-DOSE        MALAWI                         0                         0      760     807
ki1148112-iLiNS-DOSE        MALAWI                         0                         1       43     807
ki1148112-iLiNS-DOSE        MALAWI                         1                         0        3     807
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        1     807
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0      989    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       27    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0        5    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        1    1022
ki1148112-LCNI-5            MALAWI                         0                         0      243     249
ki1148112-LCNI-5            MALAWI                         0                         1        6     249
ki1148112-LCNI-5            MALAWI                         1                         0        0     249
ki1148112-LCNI-5            MALAWI                         1                         1        0     249
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    11023   14213
kiGH5241-JiVitA-3           BANGLADESH                     0                         1     2732   14213
kiGH5241-JiVitA-3           BANGLADESH                     1                         0      269   14213
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      189   14213
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4407    5021
kiGH5241-JiVitA-4           BANGLADESH                     0                         1      485    5021
kiGH5241-JiVitA-4           BANGLADESH                     1                         0       83    5021
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       46    5021


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
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/60a6cdea-0ed2-4ca9-9380-35fcbe62c405/0bbc1f45-633d-4e4a-941b-31e889c18126/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60a6cdea-0ed2-4ca9-9380-35fcbe62c405/0bbc1f45-633d-4e4a-941b-31e889c18126/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60a6cdea-0ed2-4ca9-9380-35fcbe62c405/0bbc1f45-633d-4e4a-941b-31e889c18126/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60a6cdea-0ed2-4ca9-9380-35fcbe62c405/0bbc1f45-633d-4e4a-941b-31e889c18126/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0967742   0.0573533   0.1361951
ki0047075b-MAL-ED          INDIA                          1                    NA                0.4117647   0.1773128   0.6462166
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0652819   0.0388724   0.0916914
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1935484   0.0542834   0.3328134
ki1000108-IRC              INDIA                          0                    NA                0.1093750   0.0781199   0.1406301
ki1000108-IRC              INDIA                          1                    NA                0.2400000   0.0723815   0.4076185
ki1000109-EE               PAKISTAN                       0                    NA                0.0597494   0.0337900   0.0857089
ki1000109-EE               PAKISTAN                       1                    NA                0.5038157   0.3631261   0.6445052
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1532868   0.1383153   0.1682584
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3893204   0.2780992   0.5005416
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1352753   0.1162253   0.1543252
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5161358   0.4680081   0.5642635
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1634043   0.1249829   0.2018258
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4046190   0.2244840   0.5847540
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0964427   0.0698293   0.1230561
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3191472   0.1578541   0.4804404
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0516351   0.0336266   0.0696436
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3333333   0.1553754   0.5112913
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0446429   0.0352105   0.0540752
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5882353   0.5053994   0.6710711
ki1101329-Keneba           GAMBIA                         0                    NA                0.0781522   0.0667135   0.0895909
ki1101329-Keneba           GAMBIA                         1                    NA                0.4607568   0.3391089   0.5824046
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1718506   0.1405278   0.2031733
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5218777   0.3122554   0.7315001
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0788382   0.0447469   0.1129294
ki1114097-CMIN             BANGLADESH                     1                    NA                0.5000000   0.1894833   0.8105167
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0416531   0.0373220   0.0459842
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1858535   0.1516399   0.2200670
ki1135781-COHORTS          INDIA                          0                    NA                0.0995501   0.0916576   0.1074427
ki1135781-COHORTS          INDIA                          1                    NA                0.5148395   0.4701519   0.5595271
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0706775   0.0609435   0.0804115
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4354659   0.3416739   0.5292579
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2077495   0.2000264   0.2154726
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3553518   0.3229837   0.3877198
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1036032   0.0928605   0.1143459
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4108940   0.3353178   0.4864703


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1173594   0.0861296   0.1485892
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1617391   0.1466878   0.1767905
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1604755   0.1397079   0.1812430
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1787565   0.1404842   0.2170288
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0641447   0.0446535   0.0836359
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997906
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0956175   0.0591654   0.1320697
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0431105   0.0387958   0.0474253
ki1135781-COHORTS          INDIA                          NA                   NA                0.1086181   0.1006662   0.1165699
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2055161   0.1979472   0.2130849
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1057558   0.0949876   0.1165240


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  4.254902    2.112725    8.569117
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.964809    1.298682    6.768476
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  2.194286    1.031740    4.666768
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  8.432142    5.027755   14.141703
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  2.539816    1.878085    3.434705
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.815449    3.230577    4.506208
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.476183    1.496185    4.098075
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.309191    1.859577    5.888837
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  6.455556    3.411812   12.214682
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 13.176470   10.221764   16.985265
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.895632    4.359694    7.972686
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.036811    1.954027    4.719598
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  6.342105    2.975646   13.517164
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.461934    3.611522    5.512595
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.171661    4.600290    5.814000
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.161309    4.772731    7.953880
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.710482    1.552169    1.884941
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.966037    3.212811    4.895853


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0228839    0.0026719    0.0430960
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0108051   -0.0016795    0.0232896
ki1000108-IRC              INDIA                          0                    NA                 0.0079844   -0.0028711    0.0188399
ki1000109-EE               PAKISTAN                       0                    NA                 0.0588490    0.0343999    0.0832981
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0084523    0.0043105    0.0125941
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0252002    0.0173370    0.0330635
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0153521    0.0006055    0.0300988
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0168386    0.0045477    0.0291295
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0125096    0.0033225    0.0216968
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0048106    0.0017235    0.0078976
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0097599    0.0055404    0.0139793
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0147933    0.0045557    0.0250309
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0167794    0.0006811    0.0328776
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0014574    0.0005653    0.0023496
ki1135781-COHORTS          INDIA                          0                    NA                 0.0090679    0.0065832    0.0115527
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0073341    0.0040394    0.0106288
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0022334   -0.0042150   -0.0002519
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0021527   -0.0012194    0.0055247


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1912442    0.0163422    0.3350473
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1420093   -0.0305521    0.2856761
ki1000108-IRC              INDIA                          0                    NA                 0.0680339   -0.0277289    0.1548735
ki1000109-EE               PAKISTAN                       0                    NA                 0.4962037    0.3066149    0.6339542
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0522587    0.0266124    0.0772294
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1570347    0.1108719    0.2008008
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0858830    0.0009910    0.1635611
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1486439    0.0382226    0.2463878
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1950218    0.0517373    0.3166558
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0972744    0.0345319    0.1559395
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1110184    0.0636977    0.1559475
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0792593    0.0237334    0.1316272
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1754841    0.0025370    0.3184444
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0338065    0.0129000    0.0542703
ki1135781-COHORTS          INDIA                          0                    NA                 0.0834846    0.0606134    0.1057989
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0940131    0.0521341    0.1340418
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0108675   -0.0205849   -0.0012425
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0203549   -0.0117716    0.0514614
