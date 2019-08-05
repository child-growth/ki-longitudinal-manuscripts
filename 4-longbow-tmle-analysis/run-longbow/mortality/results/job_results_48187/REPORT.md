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
![](/tmp/a2bda42a-596f-46ef-9a9f-608205e8fcab/3618c375-7945-4b81-a3cb-4222004fa704/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2bda42a-596f-46ef-9a9f-608205e8fcab/3618c375-7945-4b81-a3cb-4222004fa704/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2bda42a-596f-46ef-9a9f-608205e8fcab/3618c375-7945-4b81-a3cb-4222004fa704/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2bda42a-596f-46ef-9a9f-608205e8fcab/3618c375-7945-4b81-a3cb-4222004fa704/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0301205   0.0040653   0.0561757
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1780822   0.0901351   0.2660293
ki1000108-IRC              INDIA                          0                    NA                0.0582565   0.0261737   0.0903392
ki1000108-IRC              INDIA                          1                    NA                0.1796357   0.1256910   0.2335803
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1243033   0.0695902   0.1790164
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3535110   0.2497207   0.4573014
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0555797   0.0402837   0.0708757
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.2633743   0.2391494   0.2875991
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0494278   0.0346995   0.0641561
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3133709   0.2893911   0.3373507
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0493040   0.0191495   0.0794586
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3056972   0.2363372   0.3750572
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0476898   0.0237192   0.0716603
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2110166   0.1568272   0.2652060
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0194647   0.0060975   0.0328319
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1573604   0.1064694   0.2082514
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0223266   0.0094402   0.0352130
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1460274   0.0974844   0.1945703
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0187739   0.0123261   0.0252217
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3008895   0.2375749   0.3642040
ki1101329-Keneba           GAMBIA                         0                    NA                0.0396646   0.0302365   0.0490928
ki1101329-Keneba           GAMBIA                         1                    NA                0.2822114   0.2311366   0.3332861
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0511981   0.0285938   0.0738025
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4131937   0.3470536   0.4793339
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0283802   0.0169546   0.0398057
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2276384   0.1230004   0.3322765
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007852   0.0000497   0.0015207
ki1119695-PROBIT           BELARUS                        1                    NA                0.0068552   0.0013591   0.0123513
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0321264   0.0285365   0.0357163
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1531920   0.1167383   0.1896457
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0127660   0.0044746   0.0210573
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1131222   0.0713399   0.1549045
ki1135781-COHORTS          INDIA                          0                    NA                0.0567594   0.0507167   0.0628021
ki1135781-COHORTS          INDIA                          1                    NA                0.2443431   0.2089499   0.2797363
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0456493   0.0371523   0.0541463
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2360496   0.1719360   0.3001631
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0326430   0.0184720   0.0468141
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.2508149   0.1437798   0.3578500
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0191412   0.0103699   0.0279124
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0789070   0.0307770   0.1270370
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1313324   0.1233535   0.1393113
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3579688   0.3320416   0.3838959
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0520173   0.0422277   0.0618069
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2688806   0.2208696   0.3168916


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
ki1000108-IRC              INDIA                          1                    0                  3.083532    1.645182    5.779405
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.843939    1.674193    4.830978
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  4.738678    3.545767    6.332922
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  6.339971    4.635727    8.670750
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.200247    3.228769   11.906414
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.424779    2.514728    7.785598
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.084391    3.784280   17.270755
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.540505    3.358689   12.736577
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.027029   10.712457   23.978218
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.114937    5.281031    9.585691
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  8.070486    5.051226   12.894444
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  8.021034    4.352760   14.780736
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  8.730077    3.986648   19.117378
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.768412    3.665608    6.202997
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  8.861237    4.197626   18.706174
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.304894    3.598192    5.150395
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.170932    3.721423    7.185030
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                  7.683568    4.179276   14.126182
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  4.122370    1.922819    8.838032
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.725671    2.477674    2.998489
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.169063    3.975683    6.720659


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0451933   0.0158694   0.0745173
ki1000108-IRC              INDIA                          0                    NA                0.0588167   0.0275761   0.0900573
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0802422   0.0347356   0.1257487
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1070219   0.0904189   0.1236250
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1124347   0.1001355   0.1247339
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1195968   0.0824018   0.1567917
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0651507   0.0395370   0.0907644
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0446800   0.0268751   0.0624849
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0386152   0.0230954   0.0541350
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0306795   0.0228126   0.0385465
ki1101329-Keneba           GAMBIA                         0                    NA                0.0491226   0.0392489   0.0589962
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1343689   0.1050051   0.1637326
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0149000   0.0064990   0.0233010
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004306   0.0000672   0.0007940
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0117424   0.0089099   0.0145750
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0239511   0.0134177   0.0344845
ki1135781-COHORTS          INDIA                          0                    NA                0.0514428   0.0447941   0.0580914
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0323340   0.0242548   0.0404132
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0212785   0.0094943   0.0330628
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0071252   0.0013262   0.0129243
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0738697   0.0664077   0.0813318
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0546599   0.0451593   0.0641605


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6000669   0.1713348   0.8069830
ki1000108-IRC              INDIA                          0                    NA                0.5023928   0.2012493   0.6899997
ki1000109-ResPak           PAKISTAN                       0                    NA                0.3922950   0.1489582   0.5660549
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.6581849   0.5568225   0.7363640
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6946309   0.6192926   0.7550605
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7080888   0.4916373   0.8323792
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5773701   0.3484586   0.7258562
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6965500   0.4422711   0.8348985
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6336405   0.3983262   0.7769235
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6203725   0.4989713   0.7123576
ki1101329-Keneba           GAMBIA                         0                    NA                0.5532617   0.4590933   0.6310360
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7240990   0.5906028   0.8140648
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3442684   0.1581561   0.4892355
ki1119695-PROBIT           BELARUS                        0                    NA                0.3541814   0.1165915   0.5278722
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2676716   0.2114860   0.3198536
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6523154   0.3946600   0.8003030
ki1135781-COHORTS          INDIA                          0                    NA                0.4754320   0.4268966   0.5198570
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4146270   0.3232780   0.4936450
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.3946202   0.1702971   0.5582941
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2712682   0.0433179   0.4449044
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3599853   0.3262651   0.3920177
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5123861   0.4299698   0.5828864
