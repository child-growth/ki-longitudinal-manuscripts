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

**Intervention Variable:** ever_wasted06

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

studyid                     country                        ever_wasted06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                             0      180     239
ki0047075b-MAL-ED           BANGLADESH                     0                             1        5     239
ki0047075b-MAL-ED           BANGLADESH                     1                             0       41     239
ki0047075b-MAL-ED           BANGLADESH                     1                             1       13     239
ki0047075b-MAL-ED           BRAZIL                         0                             0      187     202
ki0047075b-MAL-ED           BRAZIL                         0                             1        1     202
ki0047075b-MAL-ED           BRAZIL                         1                             0       13     202
ki0047075b-MAL-ED           BRAZIL                         1                             1        1     202
ki0047075b-MAL-ED           INDIA                          0                             0      154     234
ki0047075b-MAL-ED           INDIA                          0                             1        6     234
ki0047075b-MAL-ED           INDIA                          1                             0       52     234
ki0047075b-MAL-ED           INDIA                          1                             1       22     234
ki0047075b-MAL-ED           NEPAL                          0                             0      194     234
ki0047075b-MAL-ED           NEPAL                          0                             1        0     234
ki0047075b-MAL-ED           NEPAL                          1                             0       38     234
ki0047075b-MAL-ED           NEPAL                          1                             1        2     234
ki0047075b-MAL-ED           PERU                           0                             0      252     264
ki0047075b-MAL-ED           PERU                           0                             1        2     264
ki0047075b-MAL-ED           PERU                           1                             0       10     264
ki0047075b-MAL-ED           PERU                           1                             1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      232     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        0     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0       24     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        2     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      233     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       11     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                             0      174     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                             1        3     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                             0      166     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                             1       25     368
ki1000108-IRC               INDIA                          0                             0      180     410
ki1000108-IRC               INDIA                          0                             1        7     410
ki1000108-IRC               INDIA                          1                             0      182     410
ki1000108-IRC               INDIA                          1                             1       41     410
ki1000109-EE                PAKISTAN                       0                             0      256     371
ki1000109-EE                PAKISTAN                       0                             1       14     371
ki1000109-EE                PAKISTAN                       1                             0       71     371
ki1000109-EE                PAKISTAN                       1                             1       30     371
ki1000109-ResPak            PAKISTAN                       0                             0      119     220
ki1000109-ResPak            PAKISTAN                       0                             1       15     220
ki1000109-ResPak            PAKISTAN                       1                             0       56     220
ki1000109-ResPak            PAKISTAN                       1                             1       30     220
ki1000304-VITAMIN-A         INDIA                          0                             0     1714    2300
ki1000304-VITAMIN-A         INDIA                          0                             1      257    2300
ki1000304-VITAMIN-A         INDIA                          1                             0      214    2300
ki1000304-VITAMIN-A         INDIA                          1                             1      115    2300
ki1000304b-SAS-CompFeed     INDIA                          0                             0      939    1347
ki1000304b-SAS-CompFeed     INDIA                          0                             1      107    1347
ki1000304b-SAS-CompFeed     INDIA                          1                             0      192    1347
ki1000304b-SAS-CompFeed     INDIA                          1                             1      109    1347
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      282     388
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1       35     388
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0       37     388
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1       34     388
ki1017093-NIH-Birth         BANGLADESH                     0                             0      312     512
ki1017093-NIH-Birth         BANGLADESH                     0                             1       18     512
ki1017093-NIH-Birth         BANGLADESH                     1                             0      142     512
ki1017093-NIH-Birth         BANGLADESH                     1                             1       40     512
ki1017093b-PROVIDE          BANGLADESH                     0                             0      435     608
ki1017093b-PROVIDE          BANGLADESH                     0                             1       19     608
ki1017093b-PROVIDE          BANGLADESH                     1                             0      134     608
ki1017093b-PROVIDE          BANGLADESH                     1                             1       20     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                             0      511     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                             1       23     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                             0      167     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                             1       21     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1605    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1       41    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      221    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1       54    1921
ki1101329-Keneba            GAMBIA                         0                             0     1736    2184
ki1101329-Keneba            GAMBIA                         0                             1       93    2184
ki1101329-Keneba            GAMBIA                         1                             0      256    2184
ki1101329-Keneba            GAMBIA                         1                             1       99    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1        4      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        2      26
ki1112895-Guatemala BSC     GUATEMALA                      0                             0      226     236
ki1112895-Guatemala BSC     GUATEMALA                      0                             1        3     236
ki1112895-Guatemala BSC     GUATEMALA                      1                             0        6     236
ki1112895-Guatemala BSC     GUATEMALA                      1                             1        1     236
ki1113344-GMS-Nepal         NEPAL                          0                             0      370     584
ki1113344-GMS-Nepal         NEPAL                          0                             1       38     584
ki1113344-GMS-Nepal         NEPAL                          1                             0      105     584
ki1113344-GMS-Nepal         NEPAL                          1                             1       71     584
ki1114097-CMIN              BANGLADESH                     0                             0      197     251
ki1114097-CMIN              BANGLADESH                     0                             1       12     251
ki1114097-CMIN              BANGLADESH                     1                             0       30     251
ki1114097-CMIN              BANGLADESH                     1                             1       12     251
ki1114097-CMIN              BRAZIL                         0                             0      110     119
ki1114097-CMIN              BRAZIL                         0                             1        0     119
ki1114097-CMIN              BRAZIL                         1                             0        9     119
ki1114097-CMIN              BRAZIL                         1                             1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                             0      812     879
ki1114097-CMIN              GUINEA-BISSAU                  0                             1       30     879
ki1114097-CMIN              GUINEA-BISSAU                  1                             0       29     879
ki1114097-CMIN              GUINEA-BISSAU                  1                             1        8     879
ki1114097-CMIN              PERU                           0                             0      588     630
ki1114097-CMIN              PERU                           0                             1        0     630
ki1114097-CMIN              PERU                           1                             0       40     630
ki1114097-CMIN              PERU                           1                             1        2     630
ki1114097-CONTENT           PERU                           0                             0      211     215
ki1114097-CONTENT           PERU                           0                             1        0     215
ki1114097-CONTENT           PERU                           1                             0        4     215
ki1114097-CONTENT           PERU                           1                             1        0     215
ki1119695-PROBIT            BELARUS                        0                             0    12301   16449
ki1119695-PROBIT            BELARUS                        0                             1        6   16449
ki1119695-PROBIT            BELARUS                        1                             0     4128   16449
ki1119695-PROBIT            BELARUS                        1                             1       14   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0     6741    8516
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1      234    8516
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0     1407    8516
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1      134    8516
ki1135781-COHORTS           GUATEMALA                      0                             0      690     897
ki1135781-COHORTS           GUATEMALA                      0                             1       22     897
ki1135781-COHORTS           GUATEMALA                      1                             0      175     897
ki1135781-COHORTS           GUATEMALA                      1                             1       10     897
ki1135781-COHORTS           INDIA                          0                             0     4112    5884
ki1135781-COHORTS           INDIA                          0                             1      269    5884
ki1135781-COHORTS           INDIA                          1                             0     1132    5884
ki1135781-COHORTS           INDIA                          1                             1      371    5884
ki1135781-COHORTS           PHILIPPINES                    0                             0     2001    2756
ki1135781-COHORTS           PHILIPPINES                    0                             1      115    2756
ki1135781-COHORTS           PHILIPPINES                    1                             0      540    2756
ki1135781-COHORTS           PHILIPPINES                    1                             1      100    2756
ki1148112-iLiNS-DOSE        MALAWI                         0                             0      760     808
ki1148112-iLiNS-DOSE        MALAWI                         0                             1       42     808
ki1148112-iLiNS-DOSE        MALAWI                         1                             0        4     808
ki1148112-iLiNS-DOSE        MALAWI                         1                             1        2     808
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             0      963    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             1       25    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             0       31    1022
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             1        3    1022
ki1148112-LCNI-5            MALAWI                         0                             0      240     249
ki1148112-LCNI-5            MALAWI                         0                             1        6     249
ki1148112-LCNI-5            MALAWI                         1                             0        3     249
ki1148112-LCNI-5            MALAWI                         1                             1        0     249
kiGH5241-JiVitA-3           BANGLADESH                     0                             0     9865   14223
kiGH5241-JiVitA-3           BANGLADESH                     0                             1     2013   14223
kiGH5241-JiVitA-3           BANGLADESH                     1                             0     1433   14223
kiGH5241-JiVitA-3           BANGLADESH                     1                             1      912   14223
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     4119    5025
kiGH5241-JiVitA-4           BANGLADESH                     0                             1      368    5025
kiGH5241-JiVitA-4           BANGLADESH                     1                             0      374    5025
kiGH5241-JiVitA-4           BANGLADESH                     1                             1      164    5025


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
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/356e5ae8-c112-4dbb-9f5c-aa264c073f84/d9e6c337-dd5b-44ba-9e11-b1c64923d21d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/356e5ae8-c112-4dbb-9f5c-aa264c073f84/d9e6c337-dd5b-44ba-9e11-b1c64923d21d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/356e5ae8-c112-4dbb-9f5c-aa264c073f84/d9e6c337-dd5b-44ba-9e11-b1c64923d21d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/356e5ae8-c112-4dbb-9f5c-aa264c073f84/d9e6c337-dd5b-44ba-9e11-b1c64923d21d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0270270   0.0036105   0.0504435
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2407407   0.1264709   0.3550106
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0375000   0.0079992   0.0670008
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2972973   0.1929350   0.4016596
ki1000108-IRC              INDIA                          0                    NA                0.0374332   0.0101935   0.0646728
ki1000108-IRC              INDIA                          1                    NA                0.1838565   0.1329529   0.2347601
ki1000109-EE               PAKISTAN                       0                    NA                0.0514752   0.0250735   0.0778769
ki1000109-EE               PAKISTAN                       1                    NA                0.2939030   0.2022099   0.3855961
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1126262   0.0585171   0.1667353
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3429091   0.2429537   0.4428646
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1302055   0.1153666   0.1450444
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3517516   0.2993225   0.4041808
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1036082   0.0833916   0.1238248
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4163459   0.3416636   0.4910282
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1109472   0.0763132   0.1455813
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4695739   0.3502143   0.5889335
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0529958   0.0287971   0.0771945
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2204726   0.1598380   0.2811072
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0419756   0.0234745   0.0604767
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1302954   0.0761734   0.1844175
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0445828   0.0272053   0.0619603
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1058723   0.0588921   0.1528526
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0248362   0.0173018   0.0323706
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2013425   0.1538565   0.2488285
ki1101329-Keneba           GAMBIA                         0                    NA                0.0524084   0.0422469   0.0625698
ki1101329-Keneba           GAMBIA                         1                    NA                0.2489387   0.2020018   0.2958756
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0946430   0.0664594   0.1228266
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3990600   0.3256266   0.4724934
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0573677   0.0257700   0.0889654
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2918464   0.1486391   0.4350537
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0356295   0.0231019   0.0481570
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2162162   0.0834961   0.3489363
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004875   0.0000008   0.0009742
ki1119695-PROBIT           BELARUS                        1                    NA                0.0033800   0.0000091   0.0067509
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0323481   0.0284972   0.0361989
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1358160   0.0962149   0.1754170
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0315513   0.0186078   0.0444947
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0526900   0.0188240   0.0865561
ki1135781-COHORTS          INDIA                          0                    NA                0.0807850   0.0736804   0.0878895
ki1135781-COHORTS          INDIA                          1                    NA                0.2670764   0.2276397   0.3065131
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0574740   0.0464549   0.0684931
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1932955   0.1298803   0.2567107
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1999311   0.1914408   0.2084214
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4182166   0.3810014   0.4554318
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0987337   0.0845469   0.1129205
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4330903   0.3504519   0.5157286


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0753138   0.0417869   0.1088408
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
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
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997907
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0956175   0.0591654   0.1320697
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0432309   0.0297785   0.0566834
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0012159   0.0002433   0.0021885
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432128   0.0388939   0.0475316
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0356745   0.0235298   0.0478191
ki1135781-COHORTS          INDIA                          NA                   NA                0.1087695   0.1008135   0.1167256
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056528   0.1980793   0.2132263
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058706   0.0951082   0.1166330


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 8.907407   3.3167043   23.921912
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 7.927928   3.3499192   18.762256
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 4.911595   2.2547088   10.699283
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 5.709605   3.1323197   10.407490
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 3.044666   1.7371075    5.336452
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 2.701512   2.2405318    3.257336
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 4.018466   2.9245363    5.521583
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 4.232407   2.8277357    6.334847
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 4.160191   2.4383838    7.097811
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 3.104076   1.6946471    5.685719
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.374737   1.3152650    4.287635
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 8.106825   5.5186706   11.908775
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 4.749979   3.6288301    6.217513
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 4.216475   2.9736920    5.978649
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 5.087293   2.4318452   10.642353
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 6.068468   2.9912946   12.311161
ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.0000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 6.932963   1.8068114   26.602654
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 4.198582   3.0645313    5.752296
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.669982   0.7789104    3.580439
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 3.306017   2.7856799    3.923547
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.363182   2.3016456    4.914307
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.091803   1.8986385    2.304620
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 4.386447   3.4539707    5.570666


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0482868    0.0195900   0.0769836
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0821581    0.0445166   0.1197996
ki1000108-IRC              INDIA                          0                    NA                0.0796400    0.0474529   0.1118271
ki1000109-EE               PAKISTAN                       0                    NA                0.0671232    0.0394455   0.0948009
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0919193    0.0443756   0.1394629
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0315336    0.0232842   0.0397831
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0567482    0.0446869   0.0688095
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0668878    0.0405613   0.0932143
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0602855    0.0362041   0.0843668
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0221691    0.0075987   0.0367396
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0163591    0.0035126   0.0292055
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0246172    0.0172907   0.0319438
ki1101329-Keneba           GAMBIA                         0                    NA                0.0355037    0.0270917   0.0439157
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0920008    0.0660009   0.1180007
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0382498    0.0124673   0.0640323
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0076015    0.0014989   0.0137041
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007284   -0.0001416   0.0015983
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0108647    0.0081400   0.0135895
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0041232   -0.0032491   0.0114955
ki1135781-COHORTS          INDIA                          0                    NA                0.0279846    0.0215368   0.0344324
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0205376    0.0115070   0.0295682
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0057217    0.0004074   0.0110360
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0071369   -0.0034743   0.0177481


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6411411    0.2558997   0.8269324
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6866071    0.3757083   0.8426776
ki1000108-IRC              INDIA                          0                    NA                0.6802585    0.3765411   0.8360202
ki1000109-EE               PAKISTAN                       0                    NA                0.5659705    0.3415081   0.7139197
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4493830    0.1929696   0.6243276
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1949660    0.1447143   0.2422653
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3538879    0.2759583   0.4234299
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3761228    0.2303112   0.4943115
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5321751    0.3193274   0.6784649
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3456112    0.1061757   0.5209073
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2684374    0.0443520   0.4399780
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4977865    0.3699909   0.5996591
ki1101329-Keneba           GAMBIA                         0                    NA                0.4038547    0.3178226   0.4790370
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4929217    0.3601785   0.5981248
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4000293    0.1212427   0.5903706
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1758345    0.0338712   0.2969377
ki1119695-PROBIT           BELARUS                        0                    NA                0.5990331   -0.0451102   0.8461650
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2514238    0.1936925   0.3050216
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1155789   -0.1123887   0.2968279
ki1135781-COHORTS          INDIA                          0                    NA                0.2572833    0.2036135   0.3073363
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2632635    0.1455337   0.3647722
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0278221    0.0017908   0.0531745
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0674117   -0.0377520   0.1619183
