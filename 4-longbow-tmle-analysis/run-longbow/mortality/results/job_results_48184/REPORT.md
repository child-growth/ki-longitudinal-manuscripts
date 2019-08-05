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

**Intervention Variable:** ever_sstunted06

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

studyid                     country                        ever_sstunted06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  ----------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                               0      208     239
ki0047075b-MAL-ED           BANGLADESH                     0                               1       16     239
ki0047075b-MAL-ED           BANGLADESH                     1                               0       13     239
ki0047075b-MAL-ED           BANGLADESH                     1                               1        2     239
ki0047075b-MAL-ED           BRAZIL                         0                               0      186     202
ki0047075b-MAL-ED           BRAZIL                         0                               1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                               0       14     202
ki0047075b-MAL-ED           BRAZIL                         1                               1        0     202
ki0047075b-MAL-ED           INDIA                          0                               0      193     234
ki0047075b-MAL-ED           INDIA                          0                               1       22     234
ki0047075b-MAL-ED           INDIA                          1                               0       13     234
ki0047075b-MAL-ED           INDIA                          1                               1        6     234
ki0047075b-MAL-ED           NEPAL                          0                               0      224     234
ki0047075b-MAL-ED           NEPAL                          0                               1        2     234
ki0047075b-MAL-ED           NEPAL                          1                               0        8     234
ki0047075b-MAL-ED           NEPAL                          1                               1        0     234
ki0047075b-MAL-ED           PERU                           0                               0      231     264
ki0047075b-MAL-ED           PERU                           0                               1        1     264
ki0047075b-MAL-ED           PERU                           1                               0       31     264
ki0047075b-MAL-ED           PERU                           1                               1        1     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               0      231     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               0       25     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      211     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       33     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                               0      260     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                               1       17     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                               0       80     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                               1       11     368
ki1000108-IRC               INDIA                          0                               0      310     410
ki1000108-IRC               INDIA                          0                               1       38     410
ki1000108-IRC               INDIA                          1                               0       52     410
ki1000108-IRC               INDIA                          1                               1       10     410
ki1000109-EE                PAKISTAN                       0                               0      186     371
ki1000109-EE                PAKISTAN                       0                               1       23     371
ki1000109-EE                PAKISTAN                       1                               0      141     371
ki1000109-EE                PAKISTAN                       1                               1       21     371
ki1000109-ResPak            PAKISTAN                       0                               0      112     220
ki1000109-ResPak            PAKISTAN                       0                               1       32     220
ki1000109-ResPak            PAKISTAN                       1                               0       63     220
ki1000109-ResPak            PAKISTAN                       1                               1       13     220
ki1000304-VITAMIN-A         INDIA                          0                               0     1784    2304
ki1000304-VITAMIN-A         INDIA                          0                               1      329    2304
ki1000304-VITAMIN-A         INDIA                          1                               0      145    2304
ki1000304-VITAMIN-A         INDIA                          1                               1       46    2304
ki1000304b-SAS-CompFeed     INDIA                          0                               0     1004    1352
ki1000304b-SAS-CompFeed     INDIA                          0                               1      155    1352
ki1000304b-SAS-CompFeed     INDIA                          1                               0      130    1352
ki1000304b-SAS-CompFeed     INDIA                          1                               1       63    1352
ki1000304b-SAS-FoodSuppl    INDIA                          0                               0      285     386
ki1000304b-SAS-FoodSuppl    INDIA                          0                               1       53     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                               0       32     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                               1       16     386
ki1017093-NIH-Birth         BANGLADESH                     0                               0      415     514
ki1017093-NIH-Birth         BANGLADESH                     0                               1       50     514
ki1017093-NIH-Birth         BANGLADESH                     1                               0       41     514
ki1017093-NIH-Birth         BANGLADESH                     1                               1        8     514
ki1017093b-PROVIDE          BANGLADESH                     0                               0      543     608
ki1017093b-PROVIDE          BANGLADESH                     0                               1       37     608
ki1017093b-PROVIDE          BANGLADESH                     1                               0       26     608
ki1017093b-PROVIDE          BANGLADESH                     1                               1        2     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                               0      641     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                               1       36     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                               0       37     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                               1        8     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     1743    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1       86    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0       83    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        9    1921
ki1101329-Keneba            GAMBIA                         0                               0     1785    2209
ki1101329-Keneba            GAMBIA                         0                               1      162    2209
ki1101329-Keneba            GAMBIA                         1                               0      226    2209
ki1101329-Keneba            GAMBIA                         1                               1       36    2209
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               1        5      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               1        1      26
ki1112895-Guatemala BSC     GUATEMALA                      0                               0      212     236
ki1112895-Guatemala BSC     GUATEMALA                      0                               1        2     236
ki1112895-Guatemala BSC     GUATEMALA                      1                               0       20     236
ki1112895-Guatemala BSC     GUATEMALA                      1                               1        2     236
ki1113344-GMS-Nepal         NEPAL                          0                               0      456     584
ki1113344-GMS-Nepal         NEPAL                          0                               1       88     584
ki1113344-GMS-Nepal         NEPAL                          1                               0       19     584
ki1113344-GMS-Nepal         NEPAL                          1                               1       21     584
ki1114097-CMIN              BANGLADESH                     0                               0      181     251
ki1114097-CMIN              BANGLADESH                     0                               1       13     251
ki1114097-CMIN              BANGLADESH                     1                               0       46     251
ki1114097-CMIN              BANGLADESH                     1                               1       11     251
ki1114097-CMIN              BRAZIL                         0                               0      112     119
ki1114097-CMIN              BRAZIL                         0                               1        0     119
ki1114097-CMIN              BRAZIL                         1                               0        7     119
ki1114097-CMIN              BRAZIL                         1                               1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                               0      810     878
ki1114097-CMIN              GUINEA-BISSAU                  0                               1       34     878
ki1114097-CMIN              GUINEA-BISSAU                  1                               0       30     878
ki1114097-CMIN              GUINEA-BISSAU                  1                               1        4     878
ki1114097-CMIN              PERU                           0                               0      611     630
ki1114097-CMIN              PERU                           0                               1        1     630
ki1114097-CMIN              PERU                           1                               0       17     630
ki1114097-CMIN              PERU                           1                               1        1     630
ki1114097-CONTENT           PERU                           0                               0      206     215
ki1114097-CONTENT           PERU                           0                               1        0     215
ki1114097-CONTENT           PERU                           1                               0        9     215
ki1114097-CONTENT           PERU                           1                               1        0     215
ki1119695-PROBIT            BELARUS                        0                               0    16206   16449
ki1119695-PROBIT            BELARUS                        0                               1       20   16449
ki1119695-PROBIT            BELARUS                        1                               0      223   16449
ki1119695-PROBIT            BELARUS                        1                               1        0   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                               0     7405    8558
ki1126311-ZVITAMBO          ZIMBABWE                       0                               1      318    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                               0      778    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                               1       57    8558
ki1135781-COHORTS           GUATEMALA                      0                               0      789     905
ki1135781-COHORTS           GUATEMALA                      0                               1       23     905
ki1135781-COHORTS           GUATEMALA                      1                               0       84     905
ki1135781-COHORTS           GUATEMALA                      1                               1        9     905
ki1135781-COHORTS           INDIA                          0                               0     5061    5917
ki1135781-COHORTS           INDIA                          0                               1      575    5917
ki1135781-COHORTS           INDIA                          1                               0      207    5917
ki1135781-COHORTS           INDIA                          1                               1       74    5917
ki1135781-COHORTS           PHILIPPINES                    0                               0     2404    2757
ki1135781-COHORTS           PHILIPPINES                    0                               1      186    2757
ki1135781-COHORTS           PHILIPPINES                    1                               0      138    2757
ki1135781-COHORTS           PHILIPPINES                    1                               1       29    2757
ki1148112-iLiNS-DOSE        MALAWI                         0                               0      723     807
ki1148112-iLiNS-DOSE        MALAWI                         0                               1       36     807
ki1148112-iLiNS-DOSE        MALAWI                         1                               0       40     807
ki1148112-iLiNS-DOSE        MALAWI                         1                               1        8     807
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               0      979    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               1       26    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               0       40    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               1        2    1047
ki1148112-LCNI-5            MALAWI                         0                               0      224     249
ki1148112-LCNI-5            MALAWI                         0                               1        6     249
ki1148112-LCNI-5            MALAWI                         1                               0       19     249
ki1148112-LCNI-5            MALAWI                         1                               1        0     249
kiGH5241-JiVitA-3           BANGLADESH                     0                               0    10077   14239
kiGH5241-JiVitA-3           BANGLADESH                     0                               1     2410   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                               0     1234   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                               1      518   14239
kiGH5241-JiVitA-4           BANGLADESH                     0                               0     4101    5059
kiGH5241-JiVitA-4           BANGLADESH                     0                               1      447    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                               0      419    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                               1       92    5059


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
![](/tmp/908e0cc0-e42a-4943-86e7-a089f59efab2/c3e47a9d-dad1-466a-a227-fd0319fa5221/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/908e0cc0-e42a-4943-86e7-a089f59efab2/c3e47a9d-dad1-466a-a227-fd0319fa5221/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/908e0cc0-e42a-4943-86e7-a089f59efab2/c3e47a9d-dad1-466a-a227-fd0319fa5221/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/908e0cc0-e42a-4943-86e7-a089f59efab2/c3e47a9d-dad1-466a-a227-fd0319fa5221/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1023256   0.0617270   0.1429241
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3157895   0.1063324   0.5252465
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0612151   0.0329507   0.0894795
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1306297   0.0628387   0.1984208
ki1000108-IRC              INDIA                          0                    NA                0.1102753   0.0770554   0.1434951
ki1000108-IRC              INDIA                          1                    NA                0.1525562   0.0565187   0.2485937
ki1000109-EE               PAKISTAN                       0                    NA                0.1185911   0.0725896   0.1645927
ki1000109-EE               PAKISTAN                       1                    NA                0.1405835   0.0830184   0.1981485
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2228992   0.1545797   0.2912188
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1735160   0.0878136   0.2592184
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1636487   0.1461271   0.1811703
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.0756957   0.0548214   0.0965701
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1440328   0.1133454   0.1747203
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3261987   0.2077788   0.4446186
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1578717   0.1190256   0.1967179
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3641658   0.2265092   0.5018223
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1075269   0.0793430   0.1357107
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1632653   0.0596763   0.2668543
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531758   0.0362618   0.0700898
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1777778   0.0659947   0.2895609
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0470202   0.0373165   0.0567240
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0978261   0.0371050   0.1585472
ki1101329-Keneba           GAMBIA                         0                    NA                0.0823607   0.0701776   0.0945439
ki1101329-Keneba           GAMBIA                         1                    NA                0.1217820   0.0784383   0.1651257
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1615610   0.1305356   0.1925865
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5117037   0.3393016   0.6841058
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0677873   0.0324279   0.1031468
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2089422   0.1023324   0.3155521
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0405855   0.0361557   0.0450153
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0680346   0.0434288   0.0926404
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0283251   0.0169080   0.0397422
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0967742   0.0366534   0.1568950
ki1135781-COHORTS          INDIA                          0                    NA                0.1097472   0.0998011   0.1196934
ki1135781-COHORTS          INDIA                          1                    NA                0.2767932   0.2245529   0.3290335
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0722817   0.0622785   0.0822849
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1769240   0.1124490   0.2413990
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0474308   0.0322996   0.0625621
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.1666667   0.0611720   0.2721613
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1963587   0.1884511   0.2042663
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2746856   0.2451322   0.3042391
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1057737   0.0936581   0.1178893
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0988008   0.0743667   0.1232348


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1627604   0.1476839   0.1778369
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1612426   0.1416314   0.1808538
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1787565   0.1404842   0.2170288
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1128405   0.0854611   0.1402198
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0896333   0.0777184   0.1015482
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0956175   0.0591654   0.1320697
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0438186   0.0394817   0.0481556
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0353591   0.0233199   0.0473983
ki1135781-COHORTS          INDIA                          NA                   NA                0.1096840   0.1017209   0.1176470
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0779833   0.0679723   0.0879943
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0545229   0.0388484   0.0701975
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056324   0.1980748   0.2131900
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1065428   0.0957758   0.1173098


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 3.0861244   1.4247928   6.684596
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.1339449   1.0643815   4.278279
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.3834126   0.6882976   2.780528
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.1854466   0.6716222   2.092372
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.7784505   0.4352308   1.392331
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 0.4625503   0.3448872   0.620356
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.2647525   1.3724255   3.737255
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.3067191   1.4684295   3.623568
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5183673   0.7642537   3.016589
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.3432099   1.6524803   6.763804
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.0805106   1.0816633   4.001730
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.4786414   1.0060320   2.173271
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.1672466   2.1504866   4.664735
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 3.0823192   1.4861436   6.392849
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6763295   1.1490487   2.445571
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 3.4165498   1.6291833   7.164825
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.5220971   2.0459482   3.109059
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.4477014   1.6574707   3.614690
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 3.5138888   1.7296293   7.138764
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3988973   1.2473266   1.568886
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9340766   0.7098038   1.229212


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0173325   -0.0015396   0.0362047
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0148718   -0.0032961   0.0330398
ki1000108-IRC              INDIA                          0                    NA                 0.0067979   -0.0083270   0.0219228
ki1000109-EE               PAKISTAN                       0                    NA                 0.0000072   -0.0328442   0.0328587
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0183538   -0.0562256   0.0195181
ki1000304-VITAMIN-A        INDIA                          0                    NA                -0.0008882   -0.0085106   0.0067341
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0172098   -0.0033605   0.0377800
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0208847    0.0026614   0.0391081
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0053136   -0.0050182   0.0156453
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0077661    0.0003846   0.0151475
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0024332   -0.0005515   0.0054178
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0072726    0.0020425   0.0125027
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0250828    0.0118963   0.0382693
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0278302    0.0022604   0.0534000
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0032332    0.0013760   0.0050904
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0070340    0.0006011   0.0134669
ki1135781-COHORTS          INDIA                          0                    NA                -0.0000633   -0.0063938   0.0062672
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0057016    0.0020413   0.0093620
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0070921    0.0004608   0.0137233
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0092737    0.0056332   0.0129142
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0007691   -0.0046750   0.0062131


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1448505   -0.0207766   0.2836036
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1954582   -0.0706600   0.3954313
ki1000108-IRC              INDIA                          0                    NA                 0.0580654   -0.0796573   0.1782200
ki1000109-EE               PAKISTAN                       0                    NA                 0.0000611   -0.3191045   0.2420026
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0897296   -0.2906931   0.0799435
ki1000304-VITAMIN-A        INDIA                          0                    NA                -0.0054573   -0.0533497   0.0402575
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1067321   -0.0336189   0.2280254
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1168335    0.0111422   0.2112282
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0470894   -0.0484184   0.1338966
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1274339    0.0032097   0.2361767
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0492015   -0.0123635   0.1070224
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0811369    0.0217644   0.1369059
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1343885    0.0630928   0.2002589
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2910573   -0.0030075   0.4989073
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0737853    0.0310127   0.1146699
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1989301    0.0099812   0.3518174
ki1135781-COHORTS          INDIA                          0                    NA                -0.0005769   -0.0599917   0.0555075
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0731133    0.0258127   0.1181174
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.1300755    0.0056017   0.2389682
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0450986    0.0273918   0.0624831
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0072185   -0.0452300   0.0570352
