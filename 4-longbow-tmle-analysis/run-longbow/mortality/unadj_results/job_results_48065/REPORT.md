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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      149     239
ki0047075b-MAL-ED           BANGLADESH                     0                              1       10     239
ki0047075b-MAL-ED           BANGLADESH                     1                              0       72     239
ki0047075b-MAL-ED           BANGLADESH                     1                              1        8     239
ki0047075b-MAL-ED           BRAZIL                         0                              0      163     202
ki0047075b-MAL-ED           BRAZIL                         0                              1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                              0       37     202
ki0047075b-MAL-ED           BRAZIL                         1                              1        0     202
ki0047075b-MAL-ED           INDIA                          0                              0      139     234
ki0047075b-MAL-ED           INDIA                          0                              1       15     234
ki0047075b-MAL-ED           INDIA                          1                              0       67     234
ki0047075b-MAL-ED           INDIA                          1                              1       13     234
ki0047075b-MAL-ED           NEPAL                          0                              0      194     234
ki0047075b-MAL-ED           NEPAL                          0                              1        1     234
ki0047075b-MAL-ED           NEPAL                          1                              0       38     234
ki0047075b-MAL-ED           NEPAL                          1                              1        1     234
ki0047075b-MAL-ED           PERU                           0                              0      143     264
ki0047075b-MAL-ED           PERU                           0                              1        0     264
ki0047075b-MAL-ED           PERU                           1                              0      119     264
ki0047075b-MAL-ED           PERU                           1                              1        2     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      157     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0       99     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      144     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0      100     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                              0      169     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                              1       11     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                              0      171     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                              1       17     368
ki1000108-IRC               INDIA                          0                              0      208     410
ki1000108-IRC               INDIA                          0                              1       28     410
ki1000108-IRC               INDIA                          1                              0      154     410
ki1000108-IRC               INDIA                          1                              1       20     410
ki1000109-EE                PAKISTAN                       0                              0       89     371
ki1000109-EE                PAKISTAN                       0                              1        7     371
ki1000109-EE                PAKISTAN                       1                              0      238     371
ki1000109-EE                PAKISTAN                       1                              1       37     371
ki1000109-ResPak            PAKISTAN                       0                              0       77     220
ki1000109-ResPak            PAKISTAN                       0                              1       16     220
ki1000109-ResPak            PAKISTAN                       1                              0       98     220
ki1000109-ResPak            PAKISTAN                       1                              1       29     220
ki1000304-VITAMIN-A         INDIA                          0                              0     1458    2304
ki1000304-VITAMIN-A         INDIA                          0                              1      227    2304
ki1000304-VITAMIN-A         INDIA                          1                              0      471    2304
ki1000304-VITAMIN-A         INDIA                          1                              1      148    2304
ki1000304b-SAS-CompFeed     INDIA                          0                              0      698    1352
ki1000304b-SAS-CompFeed     INDIA                          0                              1       94    1352
ki1000304b-SAS-CompFeed     INDIA                          1                              0      436    1352
ki1000304b-SAS-CompFeed     INDIA                          1                              1      124    1352
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0      198     386
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1       35     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0      119     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1       34     386
ki1017093-NIH-Birth         BANGLADESH                     0                              0      299     514
ki1017093-NIH-Birth         BANGLADESH                     0                              1       30     514
ki1017093-NIH-Birth         BANGLADESH                     1                              0      157     514
ki1017093-NIH-Birth         BANGLADESH                     1                              1       28     514
ki1017093b-PROVIDE          BANGLADESH                     0                              0      431     608
ki1017093b-PROVIDE          BANGLADESH                     0                              1       20     608
ki1017093b-PROVIDE          BANGLADESH                     1                              0      138     608
ki1017093b-PROVIDE          BANGLADESH                     1                              1       19     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                              0      479     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                              1       21     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                              0      199     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                              1       23     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1458    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1       61    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0      368    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1       34    1921
ki1101329-Keneba            GAMBIA                         0                              0     1411    2209
ki1101329-Keneba            GAMBIA                         0                              1       98    2209
ki1101329-Keneba            GAMBIA                         1                              0      600    2209
ki1101329-Keneba            GAMBIA                         1                              1      100    2209
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1        3      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1        3      26
ki1112895-Guatemala BSC     GUATEMALA                      0                              0      161     236
ki1112895-Guatemala BSC     GUATEMALA                      0                              1        1     236
ki1112895-Guatemala BSC     GUATEMALA                      1                              0       71     236
ki1112895-Guatemala BSC     GUATEMALA                      1                              1        3     236
ki1113344-GMS-Nepal         NEPAL                          0                              0      358     584
ki1113344-GMS-Nepal         NEPAL                          0                              1       63     584
ki1113344-GMS-Nepal         NEPAL                          1                              0      117     584
ki1113344-GMS-Nepal         NEPAL                          1                              1       46     584
ki1114097-CMIN              BANGLADESH                     0                              0      108     251
ki1114097-CMIN              BANGLADESH                     0                              1        3     251
ki1114097-CMIN              BANGLADESH                     1                              0      119     251
ki1114097-CMIN              BANGLADESH                     1                              1       21     251
ki1114097-CMIN              BRAZIL                         0                              0      104     119
ki1114097-CMIN              BRAZIL                         0                              1        0     119
ki1114097-CMIN              BRAZIL                         1                              0       15     119
ki1114097-CMIN              BRAZIL                         1                              1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                              0      726     878
ki1114097-CMIN              GUINEA-BISSAU                  0                              1       29     878
ki1114097-CMIN              GUINEA-BISSAU                  1                              0      114     878
ki1114097-CMIN              GUINEA-BISSAU                  1                              1        9     878
ki1114097-CMIN              PERU                           0                              0      549     630
ki1114097-CMIN              PERU                           0                              1        1     630
ki1114097-CMIN              PERU                           1                              0       79     630
ki1114097-CMIN              PERU                           1                              1        1     630
ki1114097-CONTENT           PERU                           0                              0      167     215
ki1114097-CONTENT           PERU                           0                              1        0     215
ki1114097-CONTENT           PERU                           1                              0       48     215
ki1114097-CONTENT           PERU                           1                              1        0     215
ki1119695-PROBIT            BELARUS                        0                              0    14809   16449
ki1119695-PROBIT            BELARUS                        0                              1       16   16449
ki1119695-PROBIT            BELARUS                        1                              0     1620   16449
ki1119695-PROBIT            BELARUS                        1                              1        4   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0     5856    8558
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      219    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0     2327    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1      156    8558
ki1135781-COHORTS           GUATEMALA                      0                              0      586     905
ki1135781-COHORTS           GUATEMALA                      0                              1       13     905
ki1135781-COHORTS           GUATEMALA                      1                              0      287     905
ki1135781-COHORTS           GUATEMALA                      1                              1       19     905
ki1135781-COHORTS           INDIA                          0                              0     4393    5917
ki1135781-COHORTS           INDIA                          0                              1      430    5917
ki1135781-COHORTS           INDIA                          1                              0      875    5917
ki1135781-COHORTS           INDIA                          1                              1      219    5917
ki1135781-COHORTS           PHILIPPINES                    0                              0     1963    2757
ki1135781-COHORTS           PHILIPPINES                    0                              1      120    2757
ki1135781-COHORTS           PHILIPPINES                    1                              0      579    2757
ki1135781-COHORTS           PHILIPPINES                    1                              1       95    2757
ki1148112-iLiNS-DOSE        MALAWI                         0                              0      550     807
ki1148112-iLiNS-DOSE        MALAWI                         0                              1       20     807
ki1148112-iLiNS-DOSE        MALAWI                         1                              0      213     807
ki1148112-iLiNS-DOSE        MALAWI                         1                              1       24     807
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0      865    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       20    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0      154    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1        8    1047
ki1148112-LCNI-5            MALAWI                         0                              0      154     249
ki1148112-LCNI-5            MALAWI                         0                              1        2     249
ki1148112-LCNI-5            MALAWI                         1                              0       89     249
ki1148112-LCNI-5            MALAWI                         1                              1        4     249
kiGH5241-JiVitA-3           BANGLADESH                     0                              0     7215   14239
kiGH5241-JiVitA-3           BANGLADESH                     0                              1     1521   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                              0     4096   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                              1     1407   14239
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     3035    5059
kiGH5241-JiVitA-4           BANGLADESH                     0                              1      265    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                              0     1485    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                              1      274    5059


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
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
![](/tmp/ee1b98e4-b3c0-4f7d-ac7b-c293a721f256/190d1ea7-721f-4337-90a8-5506cf0572aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee1b98e4-b3c0-4f7d-ac7b-c293a721f256/190d1ea7-721f-4337-90a8-5506cf0572aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee1b98e4-b3c0-4f7d-ac7b-c293a721f256/190d1ea7-721f-4337-90a8-5506cf0572aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee1b98e4-b3c0-4f7d-ac7b-c293a721f256/190d1ea7-721f-4337-90a8-5506cf0572aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0628931   0.0250788   0.1007074
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1000000   0.0341228   0.1658772
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0974026   0.0504727   0.1443325
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1625000   0.0814875   0.2435125
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0611111   0.0260706   0.0961516
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0904255   0.0493744   0.1314766
ki1000108-IRC              INDIA                          0                    NA                0.1186441   0.0773373   0.1599508
ki1000108-IRC              INDIA                          1                    NA                0.1149425   0.0674932   0.1623918
ki1000109-EE               PAKISTAN                       0                    NA                0.0729167   0.0208366   0.1249967
ki1000109-EE               PAKISTAN                       1                    NA                0.1345455   0.0941600   0.1749309
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1720430   0.0951621   0.2489239
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2283465   0.1551746   0.3015183
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1347181   0.1184126   0.1510236
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.2390953   0.2054869   0.2727037
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1186869   0.0926811   0.1446926
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2214286   0.1889097   0.2539474
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1502146   0.1042796   0.1961496
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2222222   0.1562612   0.2881832
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0911854   0.0600487   0.1223222
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1513514   0.0996571   0.2030456
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0443459   0.0253310   0.0633608
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1210191   0.0699601   0.1720781
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0420000   0.0244057   0.0595943
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1036036   0.0634883   0.1437189
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0401580   0.0302823   0.0500337
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0845771   0.0573698   0.1117844
ki1101329-Keneba           GAMBIA                         0                    NA                0.0649437   0.0525074   0.0773799
ki1101329-Keneba           GAMBIA                         1                    NA                0.1428571   0.1169288   0.1687855
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1496437   0.1155394   0.1837480
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2822086   0.2130556   0.3513615
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0384106   0.0246941   0.0521271
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0731707   0.0271226   0.1192188
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0360494   0.0313615   0.0407373
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0628272   0.0532824   0.0723721
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0217028   0.0100275   0.0333781
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0620915   0.0350380   0.0891450
ki1135781-COHORTS          INDIA                          0                    NA                0.0891561   0.0811130   0.0971992
ki1135781-COHORTS          INDIA                          1                    NA                0.2001828   0.1764699   0.2238957
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0576092   0.0476013   0.0676171
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1409496   0.1146748   0.1672243
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0350877   0.0199730   0.0502025
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.1012658   0.0628341   0.1396976
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0225989   0.0128025   0.0323952
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0493827   0.0160026   0.0827629
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1741071   0.1650962   0.1831181
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2556787   0.2428929   0.2684646
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0803030   0.0688861   0.0917200
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1557703   0.1346445   0.1768961


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0753138   0.0417869   0.1088408
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1627604   0.1476839   0.1778369
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1612426   0.1416314   0.1808538
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1787565   0.1404842   0.2170288
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1128405   0.0854611   0.1402198
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0641447   0.0446535   0.0836359
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0896333   0.0777184   0.1015482
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0432802   0.0298127   0.0567476
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0438186   0.0394817   0.0481556
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0353591   0.0233199   0.0473983
ki1135781-COHORTS          INDIA                          NA                   NA                0.1096840   0.1017209   0.1176470
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0779833   0.0679723   0.0879943
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0545229   0.0388484   0.0701975
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0267431   0.0169662   0.0365200
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056324   0.1980748   0.2131900
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1065428   0.0957758   0.1173098


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.5900000   0.6517059   3.879204
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 1.6683333   0.8340268   3.337226
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4796905   0.7121153   3.074620
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 0.9688013   0.5645545   1.662507
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.8451948   0.8503012   4.004162
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.3272638   0.7658509   2.300225
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 1.7747824   1.4743018   2.136505
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.8656535   1.4164348   2.457341
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.4793651   0.9660387   2.265459
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.6598198   1.0240267   2.690361
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.7289808   1.4953740   4.980250
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.4667525   1.3943870   4.363830
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.1061088   1.4048396   3.157438
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.1997085   1.6895894   2.863842
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.8858701   1.3495174   2.635391
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.9049622   0.9239299   3.927658
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7428100   1.4269247   2.128624
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.8609854   1.4317442   5.716969
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.2453063   1.9346853   2.605799
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.4466494   1.8963081   3.156709
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 2.8860759   1.6254667   5.124334
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 2.1851852   0.9789204   4.877857
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4685137   1.3678872   1.576543
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.9397814   1.6005574   2.350901


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0124207   -0.0131019   0.0379434
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0222555   -0.0099973   0.0545083
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0149758   -0.0126378   0.0425895
ki1000108-IRC              INDIA                          0                    NA                -0.0015709   -0.0282699   0.0251281
ki1000109-EE               PAKISTAN                       0                    NA                 0.0456817   -0.0032462   0.0946096
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0325024   -0.0288774   0.0938823
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0280423    0.0178301   0.0382546
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0425557    0.0248697   0.0602418
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0285419   -0.0035121   0.0605959
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0216551   -0.0002085   0.0435187
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0197988    0.0054786   0.0341191
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0189418    0.0053141   0.0325696
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0092954    0.0031847   0.0154061
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0246896    0.0154525   0.0339268
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0370001    0.0149446   0.0590556
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0048696   -0.0019086   0.0116478
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0077693    0.0046732   0.0108653
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0136563    0.0036159   0.0236967
ki1135781-COHORTS          INDIA                          0                    NA                 0.0205278    0.0157697   0.0252860
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0203741    0.0133717   0.0273765
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0194352    0.0071298   0.0317406
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.0041442   -0.0012704   0.0095588
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0315253    0.0255950   0.0374556
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0262398    0.0178461   0.0346335


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1649196   -0.2426794   0.4388261
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1859926   -0.1250318   0.4110317
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1968254   -0.2526819   0.4850333
ki1000108-IRC              INDIA                          0                    NA                -0.0134181   -0.2691449   0.1907810
ki1000109-EE               PAKISTAN                       0                    NA                 0.3851799   -0.1799604   0.6796471
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1589008   -0.1993544   0.4101428
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.1722920    0.1086089   0.2314254
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2639236    0.1413854   0.3689737
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1596691   -0.0376462   0.3194636
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1919086   -0.0213502   0.3606388
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3086588    0.0705088   0.4857911
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3108182    0.0695845   0.4895059
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1879630    0.0604670   0.2981576
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2754517    0.1712951   0.3665172
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1982392    0.0744540   0.3054690
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1125131   -0.0544330   0.2530269
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1773050    0.1057519   0.2431329
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3862166    0.0727849   0.5936972
ki1135781-COHORTS          INDIA                          0                    NA                 0.1871544    0.1444252   0.2277496
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.2612623    0.1721500   0.3407822
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.3564593    0.1177732   0.5305690
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.1549637   -0.0640709   0.3289109
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1533089    0.1241248   0.1815206
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2462838    0.1675333   0.3175846
