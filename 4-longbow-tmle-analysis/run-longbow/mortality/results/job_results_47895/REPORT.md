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

**Intervention Variable:** pers_wasted06

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

studyid                     country                        pers_wasted06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                             0      218     239
ki0047075b-MAL-ED           BANGLADESH                     0                             1       15     239
ki0047075b-MAL-ED           BANGLADESH                     1                             0        3     239
ki0047075b-MAL-ED           BANGLADESH                     1                             1        3     239
ki0047075b-MAL-ED           BRAZIL                         0                             0      200     202
ki0047075b-MAL-ED           BRAZIL                         0                             1        1     202
ki0047075b-MAL-ED           BRAZIL                         1                             0        0     202
ki0047075b-MAL-ED           BRAZIL                         1                             1        1     202
ki0047075b-MAL-ED           INDIA                          0                             0      198     234
ki0047075b-MAL-ED           INDIA                          0                             1       18     234
ki0047075b-MAL-ED           INDIA                          1                             0        8     234
ki0047075b-MAL-ED           INDIA                          1                             1       10     234
ki0047075b-MAL-ED           NEPAL                          0                             0      229     234
ki0047075b-MAL-ED           NEPAL                          0                             1        1     234
ki0047075b-MAL-ED           NEPAL                          1                             0        3     234
ki0047075b-MAL-ED           NEPAL                          1                             1        1     234
ki0047075b-MAL-ED           PERU                           0                             0      262     264
ki0047075b-MAL-ED           PERU                           0                             1        2     264
ki0047075b-MAL-ED           PERU                           1                             0        0     264
ki0047075b-MAL-ED           PERU                           1                             1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      255     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        1     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0        1     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        1     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      244     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                             0      302     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                             1       12     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                             0       38     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                             1       16     368
ki1000108-IRC               INDIA                          0                             0      318     410
ki1000108-IRC               INDIA                          0                             1       25     410
ki1000108-IRC               INDIA                          1                             0       44     410
ki1000108-IRC               INDIA                          1                             1       23     410
ki1000109-EE                PAKISTAN                       0                             0      313     371
ki1000109-EE                PAKISTAN                       0                             1       30     371
ki1000109-EE                PAKISTAN                       1                             0       14     371
ki1000109-EE                PAKISTAN                       1                             1       14     371
ki1000109-ResPak            PAKISTAN                       0                             0      165     220
ki1000109-ResPak            PAKISTAN                       0                             1       30     220
ki1000109-ResPak            PAKISTAN                       1                             0       10     220
ki1000109-ResPak            PAKISTAN                       1                             1       15     220
ki1000304-VITAMIN-A         INDIA                          0                             0     1714    2300
ki1000304-VITAMIN-A         INDIA                          0                             1      257    2300
ki1000304-VITAMIN-A         INDIA                          1                             0      214    2300
ki1000304-VITAMIN-A         INDIA                          1                             1      115    2300
ki1000304b-SAS-CompFeed     INDIA                          0                             0     1056    1347
ki1000304b-SAS-CompFeed     INDIA                          0                             1      156    1347
ki1000304b-SAS-CompFeed     INDIA                          1                             0       75    1347
ki1000304b-SAS-CompFeed     INDIA                          1                             1       60    1347
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      282     388
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1       35     388
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0       37     388
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1       34     388
ki1017093-NIH-Birth         BANGLADESH                     0                             0      393     512
ki1017093-NIH-Birth         BANGLADESH                     0                             1       33     512
ki1017093-NIH-Birth         BANGLADESH                     1                             0       61     512
ki1017093-NIH-Birth         BANGLADESH                     1                             1       25     512
ki1017093b-PROVIDE          BANGLADESH                     0                             0      562     608
ki1017093b-PROVIDE          BANGLADESH                     0                             1       33     608
ki1017093b-PROVIDE          BANGLADESH                     1                             0        7     608
ki1017093b-PROVIDE          BANGLADESH                     1                             1        6     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                             0      664     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                             1       40     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                             0       14     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                             1        4     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1807    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1       69    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0       19    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1       26    1921
ki1101329-Keneba            GAMBIA                         0                             0     1966    2184
ki1101329-Keneba            GAMBIA                         0                             1      160    2184
ki1101329-Keneba            GAMBIA                         1                             0       26    2184
ki1101329-Keneba            GAMBIA                         1                             1       32    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1        4      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        2      26
ki1112895-Guatemala BSC     GUATEMALA                      0                             0      226     236
ki1112895-Guatemala BSC     GUATEMALA                      0                             1        3     236
ki1112895-Guatemala BSC     GUATEMALA                      1                             0        6     236
ki1112895-Guatemala BSC     GUATEMALA                      1                             1        1     236
ki1113344-GMS-Nepal         NEPAL                          0                             0      443     584
ki1113344-GMS-Nepal         NEPAL                          0                             1       68     584
ki1113344-GMS-Nepal         NEPAL                          1                             0       32     584
ki1113344-GMS-Nepal         NEPAL                          1                             1       41     584
ki1114097-CMIN              BANGLADESH                     0                             0      222     251
ki1114097-CMIN              BANGLADESH                     0                             1       20     251
ki1114097-CMIN              BANGLADESH                     1                             0        5     251
ki1114097-CMIN              BANGLADESH                     1                             1        4     251
ki1114097-CMIN              BRAZIL                         0                             0      114     119
ki1114097-CMIN              BRAZIL                         0                             1        0     119
ki1114097-CMIN              BRAZIL                         1                             0        5     119
ki1114097-CMIN              BRAZIL                         1                             1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                             0      816     879
ki1114097-CMIN              GUINEA-BISSAU                  0                             1       32     879
ki1114097-CMIN              GUINEA-BISSAU                  1                             0       25     879
ki1114097-CMIN              GUINEA-BISSAU                  1                             1        6     879
ki1114097-CMIN              PERU                           0                             0      617     630
ki1114097-CMIN              PERU                           0                             1        1     630
ki1114097-CMIN              PERU                           1                             0       11     630
ki1114097-CMIN              PERU                           1                             1        1     630
ki1114097-CONTENT           PERU                           0                             0      215     215
ki1114097-CONTENT           PERU                           0                             1        0     215
ki1114097-CONTENT           PERU                           1                             0        0     215
ki1114097-CONTENT           PERU                           1                             1        0     215
ki1119695-PROBIT            BELARUS                        0                             0    15120   16449
ki1119695-PROBIT            BELARUS                        0                             1       11   16449
ki1119695-PROBIT            BELARUS                        1                             0     1309   16449
ki1119695-PROBIT            BELARUS                        1                             1        9   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0     7783    8516
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1      311    8516
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0      365    8516
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1       57    8516
ki1135781-COHORTS           GUATEMALA                      0                             0      723     897
ki1135781-COHORTS           GUATEMALA                      0                             1       25     897
ki1135781-COHORTS           GUATEMALA                      1                             0      142     897
ki1135781-COHORTS           GUATEMALA                      1                             1        7     897
ki1135781-COHORTS           INDIA                          0                             0     4112    5884
ki1135781-COHORTS           INDIA                          0                             1      269    5884
ki1135781-COHORTS           INDIA                          1                             0     1132    5884
ki1135781-COHORTS           INDIA                          1                             1      371    5884
ki1135781-COHORTS           PHILIPPINES                    0                             0     2431    2756
ki1135781-COHORTS           PHILIPPINES                    0                             1      166    2756
ki1135781-COHORTS           PHILIPPINES                    1                             0      110    2756
ki1135781-COHORTS           PHILIPPINES                    1                             1       49    2756
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
kiGH5241-JiVitA-3           BANGLADESH                     0                             0    10862   14223
kiGH5241-JiVitA-3           BANGLADESH                     0                             1     2490   14223
kiGH5241-JiVitA-3           BANGLADESH                     1                             0      436   14223
kiGH5241-JiVitA-3           BANGLADESH                     1                             1      435   14223
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     4124    5025
kiGH5241-JiVitA-4           BANGLADESH                     0                             1      369    5025
kiGH5241-JiVitA-4           BANGLADESH                     1                             0      369    5025
kiGH5241-JiVitA-4           BANGLADESH                     1                             1      163    5025


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
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/d18cb6b4-b297-4daf-a904-e5677c14e5f3/2cc06c6f-0180-4856-8097-a42668224c4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d18cb6b4-b297-4daf-a904-e5677c14e5f3/2cc06c6f-0180-4856-8097-a42668224c4e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d18cb6b4-b297-4daf-a904-e5677c14e5f3/2cc06c6f-0180-4856-8097-a42668224c4e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d18cb6b4-b297-4daf-a904-e5677c14e5f3/2cc06c6f-0180-4856-8097-a42668224c4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0833333    0.0463959   0.1202707
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5555556    0.3255098   0.7856013
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0380601    0.0167858   0.0593344
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2981935    0.1711381   0.4252488
ki1000108-IRC              INDIA                          0                    NA                0.0729574    0.0453553   0.1005594
ki1000108-IRC              INDIA                          1                    NA                0.3334213    0.2182939   0.4485486
ki1000109-EE               PAKISTAN                       0                    NA                0.0873686    0.0574280   0.1173091
ki1000109-EE               PAKISTAN                       1                    NA                0.4813015    0.2860666   0.6765363
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1536607    0.1027771   0.2045442
ki1000109-ResPak           PAKISTAN                       1                    NA                0.5824223    0.3831837   0.7816610
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1304414    0.1155848   0.1452979
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3506802    0.2986579   0.4027026
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1321442    0.1123855   0.1519029
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4412594    0.3705268   0.5119919
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1109576    0.0764144   0.1455007
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4712203    0.3489025   0.5935382
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0785675    0.0531649   0.1039701
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3435530    0.2516654   0.4354407
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0554622    0.0369881   0.0739363
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4615385    0.2295775   0.6934994
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0367172    0.0281708   0.0452636
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5974614    0.4778077   0.7171152
ki1101329-Keneba           GAMBIA                         0                    NA                0.0753215    0.0640844   0.0865586
ki1101329-Keneba           GAMBIA                         1                    NA                0.5577328    0.4383269   0.6771387
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1344354    0.1048678   0.1640030
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5555546    0.4467246   0.6643847
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0377358    0.0249030   0.0505687
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1935484    0.0543935   0.3327032
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007270    0.0001693   0.0012847
ki1119695-PROBIT           BELARUS                        1                    NA                0.0068285   -0.0005804   0.0142374
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0383668    0.0341835   0.0425501
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1415113    0.1070770   0.1759457
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0334225    0.0205347   0.0463102
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0469799    0.0129857   0.0809740
ki1135781-COHORTS          INDIA                          0                    NA                0.0883351    0.0801941   0.0964762
ki1135781-COHORTS          INDIA                          1                    NA                0.2709899    0.2312226   0.3107571
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0635944    0.0541906   0.0729981
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3300696    0.2599632   0.4001760
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1885687    0.1803438   0.1967936
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5272041    0.4905455   0.5638628
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0821893    0.0715629   0.0928157
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4347308    0.3581621   0.5112995


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1617391   0.1466878   0.1767905
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1603563   0.1395035   0.1812092
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1778351   0.1397389   0.2159312
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0641447   0.0446535   0.0836359
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997906
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0432309   0.0297785   0.0566834
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0012159   0.0002433   0.0021885
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432128   0.0388939   0.0475316
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0356745   0.0235298   0.0478191
ki1135781-COHORTS          INDIA                          NA                   NA                0.1087695   0.1008135   0.1167256
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056528   0.1980793   0.2132263
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058706   0.0951082   0.1166330


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  6.666667    3.6347655   12.227596
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  7.834803    3.8802902   15.819473
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  4.570083    2.7397295    7.623257
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.508863    3.2376740    9.373265
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.790315    2.3555807    6.098915
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  2.688413    2.2312467    3.239249
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.339227    2.9639571    3.762011
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.246852    2.8298759    6.373338
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.372713    2.8673091    6.668489
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.321678    4.5536120   15.207780
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.271974   11.9691355   22.121659
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.404698    5.7041181    9.612274
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.132502    3.0842856    5.536961
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  5.129032    2.3153952   11.361763
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  9.392951    3.6435746   24.214551
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.688381    2.8254312    4.814894
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  1.405638    0.6191362    3.191248
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  3.067748    2.5807962    3.646578
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.190233    4.0110201    6.716128
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.795820    2.5764028    3.033924
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.289385    4.2523718    6.579292


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0363248    0.0121946   0.0604550
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0380268    0.0175917   0.0584620
ki1000108-IRC              INDIA                          0                    NA                0.0441158    0.0227768   0.0654548
ki1000109-EE               PAKISTAN                       0                    NA                0.0312298    0.0131862   0.0492735
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0508848    0.0214728   0.0802968
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0312978    0.0230592   0.0395364
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0282122    0.0188785   0.0375459
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0668775    0.0405339   0.0932211
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0347138    0.0164546   0.0529729
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0086826    0.0012208   0.0161443
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0127362    0.0077446   0.0177279
ki1101329-Keneba           GAMBIA                         0                    NA                0.0125906    0.0079217   0.0172595
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0522084    0.0338681   0.0705488
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0054951    0.0002127   0.0107775
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004889   -0.0000743   0.0010521
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0048460    0.0031589   0.0065331
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0022520   -0.0037959   0.0083000
ki1135781-COHORTS          INDIA                          0                    NA                0.0204344    0.0130483   0.0278206
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0144172    0.0097718   0.0190627
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0170841    0.0129877   0.0211806
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0236814    0.0176262   0.0297366


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3035714    0.1010431   0.4604716
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4997815    0.2414436   0.6701384
ki1000108-IRC              INDIA                          0                    NA                0.3768225    0.1967749   0.5165113
ki1000109-EE               PAKISTAN                       0                    NA                0.2633242    0.1123300   0.3886340
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2487701    0.1010831   0.3721929
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1935078    0.1432850   0.2407864
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1759343    0.1191907   0.2290224
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3760648    0.2305245   0.4940772
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3064389    0.1456063   0.4369960
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1353588    0.0179429   0.2387362
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2575395    0.1631025   0.3413200
ki1101329-Keneba           GAMBIA                         0                    NA                0.1432181    0.0915576   0.1919408
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2797221    0.1832954   0.3647639
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1271102    0.0028857   0.2358584
ki1119695-PROBIT           BELARUS                        0                    NA                0.4020917    0.1022350   0.6017952
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1121422    0.0737902   0.1489062
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0631267   -0.1211887   0.2171419
ki1135781-COHORTS          INDIA                          0                    NA                0.1878690    0.1222572   0.2485762
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1848089    0.1272499   0.2385719
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0830726    0.0630226   0.1026936
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2236821    0.1669465   0.2765537
