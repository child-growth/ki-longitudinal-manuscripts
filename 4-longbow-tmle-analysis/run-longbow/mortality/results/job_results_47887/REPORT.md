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
![](/tmp/10f3c45a-20c4-4c8f-9d15-61180ee9027e/0d8dd1d8-e55e-403d-b99e-6ed4dd86b26a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/10f3c45a-20c4-4c8f-9d15-61180ee9027e/0d8dd1d8-e55e-403d-b99e-6ed4dd86b26a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/10f3c45a-20c4-4c8f-9d15-61180ee9027e/0d8dd1d8-e55e-403d-b99e-6ed4dd86b26a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/10f3c45a-20c4-4c8f-9d15-61180ee9027e/0d8dd1d8-e55e-403d-b99e-6ed4dd86b26a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0833333    0.0463959   0.1202707
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5555556    0.3255098   0.7856013
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0378580    0.0165877   0.0591282
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3072336    0.1812526   0.4332145
ki1000108-IRC              INDIA                          0                    NA                0.0727535    0.0451544   0.1003526
ki1000108-IRC              INDIA                          1                    NA                0.3346212    0.2198120   0.4494305
ki1000109-EE               PAKISTAN                       0                    NA                0.0872986    0.0573643   0.1172329
ki1000109-EE               PAKISTAN                       1                    NA                0.5011208    0.2986226   0.7036191
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1552769    0.1042364   0.2063174
ki1000109-ResPak           PAKISTAN                       1                    NA                0.5851474    0.3903895   0.7799053
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1304964    0.1156362   0.1453567
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3485568    0.2967499   0.4003637
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1321442    0.1123855   0.1519029
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4412594    0.3705268   0.5119919
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1122781    0.0775439   0.1470123
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4891048    0.3688298   0.6093797
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0776117    0.0521384   0.1030851
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2712620    0.1711952   0.3713289
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0554622    0.0369881   0.0739363
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4615385    0.2295775   0.6934994
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0367433    0.0282018   0.0452847
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5855432    0.4575425   0.7135439
ki1101329-Keneba           GAMBIA                         0                    NA                0.0753751    0.0641318   0.0866185
ki1101329-Keneba           GAMBIA                         1                    NA                0.5609603    0.4437255   0.6781952
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1340791    0.1045911   0.1635670
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5610606    0.4470774   0.6750439
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0377358    0.0249030   0.0505687
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1935484    0.0543935   0.3327032
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007270    0.0001693   0.0012847
ki1119695-PROBIT           BELARUS                        1                    NA                0.0068285   -0.0005804   0.0142374
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0383697    0.0341858   0.0425536
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1412644    0.1065353   0.1759935
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0334225    0.0205347   0.0463102
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0469799    0.0129857   0.0809740
ki1135781-COHORTS          INDIA                          0                    NA                0.0744486    0.0669927   0.0819046
ki1135781-COHORTS          INDIA                          1                    NA                0.2767190    0.2375419   0.3158961
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0635807    0.0541758   0.0729857
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3218753    0.2523176   0.3914330
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1890411    0.1810830   0.1969991
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5184827    0.4817929   0.5551725
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0841311    0.0732940   0.0949682
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4211139    0.3431529   0.4990750


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
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  8.115422    4.0485970   16.267384
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  4.599382    2.7538121    7.681831
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.740310    3.3756688    9.761372
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.768413    2.3640736    6.006977
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  2.671007    2.2162098    3.219134
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.339227    2.9639571    3.762011
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.356190    2.9328176    6.470361
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.495115    2.1291793    5.737343
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.321678    4.5536120   15.207780
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.936060   11.5824348   21.926133
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.442246    5.7568020    9.621144
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.184550    3.1059958    5.637631
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  5.129032    2.3153952   11.361763
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  9.392951    3.6435746   24.214551
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.681669    2.8137440    4.817313
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  1.405638    0.6191362    3.191248
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  3.716912    3.1276075    4.417254
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.062466    3.9001563    6.571161
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.742699    2.5285498    2.974984
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.005450    4.0050174    6.255784


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0363248    0.0121946   0.0604550
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0382290    0.0177404   0.0587175
ki1000108-IRC              INDIA                          0                    NA                0.0443197    0.0228837   0.0657556
ki1000109-EE               PAKISTAN                       0                    NA                0.0312998    0.0132349   0.0493647
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0492686    0.0199604   0.0785767
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0312427    0.0230033   0.0394821
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0282122    0.0188785   0.0375459
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0655569    0.0392649   0.0918489
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0356695    0.0174970   0.0538421
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0086826    0.0012208   0.0161443
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0127101    0.0077219   0.0176983
ki1101329-Keneba           GAMBIA                         0                    NA                0.0125369    0.0078705   0.0172034
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0525648    0.0341499   0.0709796
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0054951    0.0002127   0.0107775
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004889   -0.0000743   0.0010521
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0048431    0.0031559   0.0065303
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0022520   -0.0037959   0.0083000
ki1135781-COHORTS          INDIA                          0                    NA                0.0343209    0.0274621   0.0411797
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0144309    0.0097846   0.0190772
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0166117    0.0130131   0.0202103
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0217396    0.0158475   0.0276316


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3035714    0.1010431   0.4604716
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5024379    0.2431006   0.6729181
ki1000108-IRC              INDIA                          0                    NA                0.3785637    0.1976665   0.5186752
ki1000109-EE               PAKISTAN                       0                    NA                0.2639144    0.1127528   0.3893223
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2408686    0.0936295   0.3641888
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1931673    0.1429341   0.2404564
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1759343    0.1191907   0.2290224
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3686390    0.2229564   0.4870086
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3148756    0.1540983   0.4450946
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1353588    0.0179429   0.2387362
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2570121    0.1627058   0.3406965
ki1101329-Keneba           GAMBIA                         0                    NA                0.1426077    0.0909515   0.1913286
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2816314    0.1850388   0.3667754
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1271102    0.0028857   0.2358584
ki1119695-PROBIT           BELARUS                        0                    NA                0.4020917    0.1022350   0.6017952
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1120757    0.0737175   0.1488454
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0631267   -0.1211887   0.2171419
ki1135781-COHORTS          INDIA                          0                    NA                0.3155380    0.2580339   0.3685853
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1849837    0.1274063   0.2387618
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0807757    0.0632405   0.0979826
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2053407    0.1493588   0.2576384
