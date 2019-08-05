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
![](/tmp/24301bf3-bd6d-4ed5-b5e1-63469c9dfb20/d2e8e153-d71d-49fa-9046-a150ce071c33/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/24301bf3-bd6d-4ed5-b5e1-63469c9dfb20/d2e8e153-d71d-49fa-9046-a150ce071c33/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/24301bf3-bd6d-4ed5-b5e1-63469c9dfb20/d2e8e153-d71d-49fa-9046-a150ce071c33/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/24301bf3-bd6d-4ed5-b5e1-63469c9dfb20/d2e8e153-d71d-49fa-9046-a150ce071c33/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
ki1000109-EE               PAKISTAN                       0                    NA                0.0518225   0.0253311   0.0783138
ki1000109-EE               PAKISTAN                       1                    NA                0.2911622   0.2008112   0.3815132
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1129377   0.0586866   0.1671888
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3363719   0.2375569   0.4351869
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1302897   0.1154446   0.1451349
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3479195   0.2957677   0.4000714
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1036082   0.0833916   0.1238248
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4163459   0.3416636   0.4910282
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1109021   0.0762794   0.1455248
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4734270   0.3540035   0.5928504
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0541393   0.0296594   0.0786192
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2278501   0.1672082   0.2884921
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0421839   0.0235900   0.0607777
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1253587   0.0710012   0.1797163
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0448882   0.0274635   0.0623130
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1036319   0.0576433   0.1496205
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0248105   0.0172786   0.0323424
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1930941   0.1457876   0.2404006
ki1101329-Keneba           GAMBIA                         0                    NA                0.0523064   0.0421568   0.0624560
ki1101329-Keneba           GAMBIA                         1                    NA                0.2489349   0.2022154   0.2956545
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0950392   0.0668383   0.1232401
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4000248   0.3281656   0.4718839
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0588546   0.0272224   0.0904868
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3946075   0.2693047   0.5199103
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0356295   0.0231019   0.0481570
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2162162   0.0834961   0.3489363
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004875   0.0000008   0.0009742
ki1119695-PROBIT           BELARUS                        1                    NA                0.0033800   0.0000091   0.0067509
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0354188   0.0311599   0.0396778
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1369484   0.0959472   0.1779495
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0316333   0.0185792   0.0446874
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0529079   0.0183427   0.0874731
ki1135781-COHORTS          INDIA                          0                    NA                0.0827293   0.0744298   0.0910288
ki1135781-COHORTS          INDIA                          1                    NA                0.2707707   0.2319097   0.3096316
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0577829   0.0469089   0.0686569
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1950944   0.1302298   0.2599590
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1934962   0.1844029   0.2025896
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4184037   0.3808808   0.4559266
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0892615   0.0733253   0.1051977
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4276946   0.3495049   0.5058843


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
ki1000109-EE               PAKISTAN                       1                    0                 5.618455   3.0890185   10.219117
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 2.978385   1.6944609    5.235163
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 2.670352   2.2135155    3.221474
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 4.018466   2.9245363    5.521583
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 4.268873   2.8544968    6.384059
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 4.208587   2.4857644    7.125456
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.971722   1.6007351    5.516923
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.308665   1.2800576    4.163824
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 7.782753   5.2681084   11.497721
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 4.759171   3.6367702    6.227975
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 4.209049   2.9783988    5.948193
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 6.704789   3.5819028   12.550367
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 6.068468   2.9912946   12.311161
ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.0000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 6.932963   1.8068114   26.602654
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 3.866541   2.8003590    5.338651
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.672540   0.7714828    3.625990
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 3.272971   2.7486013    3.897379
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.376334   2.3056289    4.944262
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.162335   1.9584434    2.387454
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 4.791478   3.6463496    6.296231


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0482868    0.0195900   0.0769836
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0821581    0.0445166   0.1197996
ki1000108-IRC              INDIA                          0                    NA                0.0796400    0.0474529   0.1118271
ki1000109-EE               PAKISTAN                       0                    NA                0.0667759    0.0390680   0.0944839
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0916078    0.0438110   0.1394045
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0314494    0.0232068   0.0396919
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0567482    0.0446869   0.0688095
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0669330    0.0405337   0.0933323
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0591419    0.0349191   0.0833647
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0219609    0.0073488   0.0365729
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0160536    0.0032024   0.0289048
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0246429    0.0173159   0.0319699
ki1101329-Keneba           GAMBIA                         0                    NA                0.0356057    0.0271886   0.0440228
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0916046    0.0656364   0.1175728
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0367630    0.0107650   0.0627609
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0076015    0.0014989   0.0137041
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007284   -0.0001416   0.0015983
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0077939    0.0045979   0.0109900
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0040412   -0.0034161   0.0114985
ki1135781-COHORTS          INDIA                          0                    NA                0.0260402    0.0183825   0.0336980
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0202287    0.0112802   0.0291772
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0121566    0.0060479   0.0182653
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0166091    0.0028676   0.0303507


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6411411    0.2558997   0.8269324
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6866071    0.3757083   0.8426776
ki1000108-IRC              INDIA                          0                    NA                0.6802585    0.3765411   0.8360202
ki1000109-EE               PAKISTAN                       0                    NA                0.5630425    0.3379664   0.7115979
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4478602    0.1899601   0.6236502
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1944451    0.1442207   0.2417219
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3538879    0.2759583   0.4234299
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3763766    0.2302409   0.4947690
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5220803    0.3069509   0.6704313
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3423642    0.1015511   0.5186317
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2634248    0.0390565   0.4354059
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4983053    0.3705256   0.6001465
ki1101329-Keneba           GAMBIA                         0                    NA                0.4050151    0.3190082   0.4801597
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4907989    0.3582110   0.5959954
ki1114097-CMIN             BANGLADESH                     0                    NA                0.3844792    0.1047075   0.5768245
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1758345    0.0338712   0.2969377
ki1119695-PROBIT           BELARUS                        0                    NA                0.5990331   -0.0451102   0.8461650
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1803621    0.1083903   0.2465242
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1132800   -0.1181163   0.2967884
ki1135781-COHORTS          INDIA                          0                    NA                0.2394073    0.1718460   0.3014569
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2593038    0.1432748   0.3596186
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0591121    0.0291438   0.0881554
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1568812    0.0186192   0.2756642
