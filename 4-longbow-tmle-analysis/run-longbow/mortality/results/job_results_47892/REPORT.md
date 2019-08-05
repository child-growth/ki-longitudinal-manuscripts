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
![](/tmp/57915aa8-7436-493f-ae88-341855d3616b/268a3a41-08f2-4230-92bb-9777413b5436/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57915aa8-7436-493f-ae88-341855d3616b/268a3a41-08f2-4230-92bb-9777413b5436/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57915aa8-7436-493f-ae88-341855d3616b/268a3a41-08f2-4230-92bb-9777413b5436/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57915aa8-7436-493f-ae88-341855d3616b/268a3a41-08f2-4230-92bb-9777413b5436/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0301205   0.0040653   0.0561757
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1780822   0.0901351   0.2660293
ki1000108-IRC              INDIA                          0                    NA                0.0575813   0.0258645   0.0892981
ki1000108-IRC              INDIA                          1                    NA                0.1795636   0.1256077   0.2335196
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1242824   0.0695576   0.1790072
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3566064   0.2520812   0.4611316
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0548931   0.0395082   0.0702780
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.2628363   0.2385377   0.2871349
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0494278   0.0346995   0.0641561
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3133709   0.2893911   0.3373507
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0487928   0.0191216   0.0784639
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3098614   0.2402376   0.3794851
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0470185   0.0229828   0.0710542
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2059817   0.1518394   0.2601240
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0194647   0.0060975   0.0328319
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1573604   0.1064694   0.2082514
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0220566   0.0092428   0.0348705
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1491383   0.0999735   0.1983031
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0186809   0.0122552   0.0251066
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3050541   0.2418722   0.3682360
ki1101329-Keneba           GAMBIA                         0                    NA                0.0397763   0.0301814   0.0493712
ki1101329-Keneba           GAMBIA                         1                    NA                0.2789409   0.2300920   0.3277899
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0522446   0.0295664   0.0749229
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4202872   0.3541049   0.4864694
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0283115   0.0168988   0.0397243
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2272580   0.1231031   0.3314129
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007852   0.0000497   0.0015207
ki1119695-PROBIT           BELARUS                        1                    NA                0.0068552   0.0013591   0.0123513
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0372227   0.0335998   0.0408455
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1583704   0.1211299   0.1956109
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0127660   0.0044746   0.0210573
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1131222   0.0713399   0.1549045
ki1135781-COHORTS          INDIA                          0                    NA                0.0584903   0.0521749   0.0648056
ki1135781-COHORTS          INDIA                          1                    NA                0.2441493   0.2067560   0.2815425
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0505820   0.0420799   0.0590842
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2387120   0.1713398   0.3060842
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0327964   0.0181472   0.0474456
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.2357503   0.1257918   0.3457089
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0191531   0.0103810   0.0279251
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0778058   0.0302826   0.1253290
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1269535   0.1191772   0.1347299
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3566545   0.3303425   0.3829664
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0670434   0.0548866   0.0792002
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2671177   0.2187247   0.3155107


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
ki1000108-IRC              INDIA                          1                    0                  3.118437    1.663980    5.844212
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.869323    1.689112    4.874168
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  4.788150    3.564942    6.431065
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  6.339971    4.635727    8.670750
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.350561    3.317664   12.156027
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.380864    2.464825    7.786342
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.084391    3.784280   17.270755
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.761605    3.468110   13.182770
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.329757   10.927689   24.402318
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.012742    5.207725    9.443384
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  8.044602    5.076027   12.749266
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  8.027047    4.358862   14.782178
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  8.730077    3.986648   19.117378
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.254678    3.297847    5.489122
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  8.861237    4.197626   18.706174
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.174186    3.461956    5.032942
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.719305    3.398090    6.554224
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                  7.188298    3.766309   13.719436
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  4.062311    1.892472    8.720005
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.809331    2.549854    3.095212
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.984252    3.070580    5.169793


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0451933   0.0158694   0.0745173
ki1000108-IRC              INDIA                          0                    NA                0.0594919   0.0284715   0.0905122
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0802630   0.0347875   0.1257386
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1077085   0.0909554   0.1244617
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1124347   0.1001355   0.1247339
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1201080   0.0831039   0.1571122
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0658220   0.0401942   0.0914497
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0446800   0.0268751   0.0624849
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0388852   0.0233737   0.0543967
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0307725   0.0229039   0.0386412
ki1101329-Keneba           GAMBIA                         0                    NA                0.0490109   0.0390375   0.0589842
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1333224   0.1040043   0.1626405
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0149686   0.0065637   0.0233736
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004306   0.0000672   0.0007940
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0066462   0.0038130   0.0094794
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0239511   0.0134177   0.0344845
ki1135781-COHORTS          INDIA                          0                    NA                0.0497119   0.0428833   0.0565404
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0274013   0.0193604   0.0354422
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0211252   0.0088871   0.0333632
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0071133   0.0013092   0.0129175
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0782486   0.0709854   0.0855117
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0396338   0.0278820   0.0513856


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6000669   0.1713348   0.8069830
ki1000108-IRC              INDIA                          0                    NA                0.5081599   0.2106897   0.6935214
ki1000109-ResPak           PAKISTAN                       0                    NA                0.3923971   0.1491497   0.5661032
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.6624075   0.5598893   0.7410455
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6946309   0.6192926   0.7550605
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7111159   0.4985901   0.8335613
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5833188   0.3528635   0.7317054
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6965500   0.4422711   0.8348985
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6380705   0.4035098   0.7803938
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6222531   0.5011803   0.7139393
ki1101329-Keneba           GAMBIA                         0                    NA                0.5520040   0.4555216   0.6313896
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7184595   0.5853009   0.8088613
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3458545   0.1597910   0.4907144
ki1119695-PROBIT           BELARUS                        0                    NA                0.3541814   0.1165915   0.5278722
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1515014   0.0919129   0.2071798
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6523154   0.3946600   0.8003030
ki1135781-COHORTS          INDIA                          0                    NA                0.4594352   0.4079905   0.5064094
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.3513737   0.2599398   0.4315111
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.3917758   0.1531008   0.5631868
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2708147   0.0426633   0.4445933
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3813244   0.3488035   0.4122212
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3715304   0.2618288   0.4649289
