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

**Intervention Variable:** ever_stunted06

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

studyid                     country                        ever_stunted06    co_occurence   n_cell      n
--------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                            0      144    221
ki0047075b-MAL-ED           BANGLADESH                     0                            1        5    221
ki0047075b-MAL-ED           BANGLADESH                     1                            0       63    221
ki0047075b-MAL-ED           BANGLADESH                     1                            1        9    221
ki0047075b-MAL-ED           BRAZIL                         0                            0      147    180
ki0047075b-MAL-ED           BRAZIL                         0                            1        0    180
ki0047075b-MAL-ED           BRAZIL                         1                            0       32    180
ki0047075b-MAL-ED           BRAZIL                         1                            1        1    180
ki0047075b-MAL-ED           INDIA                          0                            0      143    228
ki0047075b-MAL-ED           INDIA                          0                            1        7    228
ki0047075b-MAL-ED           INDIA                          1                            0       68    228
ki0047075b-MAL-ED           INDIA                          1                            1       10    228
ki0047075b-MAL-ED           NEPAL                          0                            0      189    229
ki0047075b-MAL-ED           NEPAL                          0                            1        1    229
ki0047075b-MAL-ED           NEPAL                          1                            0       36    229
ki0047075b-MAL-ED           NEPAL                          1                            1        3    229
ki0047075b-MAL-ED           PERU                           0                            0      118    222
ki0047075b-MAL-ED           PERU                           0                            1        0    222
ki0047075b-MAL-ED           PERU                           1                            0       98    222
ki0047075b-MAL-ED           PERU                           1                            1        6    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      145    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0       92    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        2    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      135    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0       89    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        1    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                            0      172    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                            1        8    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                            0      170    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                            1       14    364
ki1000108-IRC               INDIA                          0                            0      231    405
ki1000108-IRC               INDIA                          0                            1        4    405
ki1000108-IRC               INDIA                          1                            0      149    405
ki1000108-IRC               INDIA                          1                            1       21    405
ki1000109-EE                PAKISTAN                       0                            0       78    350
ki1000109-EE                PAKISTAN                       0                            1       13    350
ki1000109-EE                PAKISTAN                       1                            0      197    350
ki1000109-EE                PAKISTAN                       1                            1       62    350
ki1000109-ResPak            PAKISTAN                       0                            0        2      9
ki1000109-ResPak            PAKISTAN                       0                            1        0      9
ki1000109-ResPak            PAKISTAN                       1                            0        7      9
ki1000109-ResPak            PAKISTAN                       1                            1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                            0      696   1258
ki1000304b-SAS-CompFeed     INDIA                          0                            1       38   1258
ki1000304b-SAS-CompFeed     INDIA                          1                            0      434   1258
ki1000304b-SAS-CompFeed     INDIA                          1                            1       90   1258
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      162    321
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1       31    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0       99    321
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1       29    321
ki1017093-NIH-Birth         BANGLADESH                     0                            0      271    462
ki1017093-NIH-Birth         BANGLADESH                     0                            1       25    462
ki1017093-NIH-Birth         BANGLADESH                     1                            0      140    462
ki1017093-NIH-Birth         BANGLADESH                     1                            1       26    462
ki1017093b-PROVIDE          BANGLADESH                     0                            0      390    551
ki1017093b-PROVIDE          BANGLADESH                     0                            1       20    551
ki1017093b-PROVIDE          BANGLADESH                     1                            0      125    551
ki1017093b-PROVIDE          BANGLADESH                     1                            1       16    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                            0      427    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                            1       10    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                            0      178    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                            1       19    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0      768    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        5    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      191    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1       16    980
ki1101329-Keneba            GAMBIA                         0                            0     1174   1774
ki1101329-Keneba            GAMBIA                         0                            1       40   1774
ki1101329-Keneba            GAMBIA                         1                            0      500   1774
ki1101329-Keneba            GAMBIA                         1                            1       60   1774
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                            0      368    550
ki1113344-GMS-Nepal         NEPAL                          0                            1       30    550
ki1113344-GMS-Nepal         NEPAL                          1                            0      124    550
ki1113344-GMS-Nepal         NEPAL                          1                            1       28    550
ki1114097-CMIN              BANGLADESH                     0                            0       96    237
ki1114097-CMIN              BANGLADESH                     0                            1        5    237
ki1114097-CMIN              BANGLADESH                     1                            0      115    237
ki1114097-CMIN              BANGLADESH                     1                            1       21    237
ki1114097-CMIN              BRAZIL                         0                            0      100    115
ki1114097-CMIN              BRAZIL                         0                            1        0    115
ki1114097-CMIN              BRAZIL                         1                            0       15    115
ki1114097-CMIN              BRAZIL                         1                            1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                            0      409    490
ki1114097-CMIN              GUINEA-BISSAU                  0                            1       11    490
ki1114097-CMIN              GUINEA-BISSAU                  1                            0       65    490
ki1114097-CMIN              GUINEA-BISSAU                  1                            1        5    490
ki1114097-CMIN              PERU                           0                            0      331    374
ki1114097-CMIN              PERU                           0                            1        0    374
ki1114097-CMIN              PERU                           1                            0       43    374
ki1114097-CMIN              PERU                           1                            1        0    374
ki1114097-CONTENT           PERU                           0                            0      156    200
ki1114097-CONTENT           PERU                           0                            1        0    200
ki1114097-CONTENT           PERU                           1                            0       43    200
ki1114097-CONTENT           PERU                           1                            1        1    200
ki1119695-PROBIT            BELARUS                        0                            0     1943   2146
ki1119695-PROBIT            BELARUS                        0                            1        0   2146
ki1119695-PROBIT            BELARUS                        1                            0      203   2146
ki1119695-PROBIT            BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0     1013   1664
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1       36   1664
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0      563   1664
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1       52   1664
ki1135781-COHORTS           GUATEMALA                      0                            0      458    715
ki1135781-COHORTS           GUATEMALA                      0                            1       14    715
ki1135781-COHORTS           GUATEMALA                      1                            0      223    715
ki1135781-COHORTS           GUATEMALA                      1                            1       20    715
ki1135781-COHORTS           PHILIPPINES                    0                            0     1790   2487
ki1135781-COHORTS           PHILIPPINES                    0                            1      106   2487
ki1135781-COHORTS           PHILIPPINES                    1                            0      510   2487
ki1135781-COHORTS           PHILIPPINES                    1                            1       81   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                            0      609    867
ki1148112-iLiNS-DOSE        MALAWI                         0                            1       14    867
ki1148112-iLiNS-DOSE        MALAWI                         1                            0      225    867
ki1148112-iLiNS-DOSE        MALAWI                         1                            1       19    867
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0      854   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       16   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0      150   1029
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        9   1029
ki1148112-LCNI-5            MALAWI                         0                            0      150    235
ki1148112-LCNI-5            MALAWI                         0                            1        2    235
ki1148112-LCNI-5            MALAWI                         1                            0       79    235
ki1148112-LCNI-5            MALAWI                         1                            1        4    235
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     2766   4444
kiGH5241-JiVitA-4           BANGLADESH                     0                            1      146   4444
kiGH5241-JiVitA-4           BANGLADESH                     1                            0     1253   4444
kiGH5241-JiVitA-4           BANGLADESH                     1                            1      279   4444


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
![](/tmp/ed6d529d-a5d0-4153-ba7c-20cbdb4ef867/e0ee487a-fa55-4231-b1cf-3584a05976fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ed6d529d-a5d0-4153-ba7c-20cbdb4ef867/e0ee487a-fa55-4231-b1cf-3584a05976fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ed6d529d-a5d0-4153-ba7c-20cbdb4ef867/e0ee487a-fa55-4231-b1cf-3584a05976fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ed6d529d-a5d0-4153-ba7c-20cbdb4ef867/e0ee487a-fa55-4231-b1cf-3584a05976fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0335570   0.0045756   0.0625385
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1250000   0.0484358   0.2015642
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0466667   0.0128382   0.0804952
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1282051   0.0538493   0.2025610
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0444444   0.0142973   0.0745916
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0760870   0.0377244   0.1144495
ki1000109-EE               PAKISTAN                       0                    NA                0.1502566   0.0779046   0.2226085
ki1000109-EE               PAKISTAN                       1                    NA                0.2405498   0.1884703   0.2926293
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0456835   0.0334175   0.0579494
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1591921   0.1197092   0.1986750
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1575268   0.1059386   0.2091150
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2287983   0.1547594   0.3028373
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0807913   0.0497133   0.1118694
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1474228   0.0743876   0.2204581
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0521426   0.0306335   0.0736516
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1019100   0.0491099   0.1547101
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0204488   0.0083564   0.0325412
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0763962   0.0338248   0.1189675
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0064683   0.0008142   0.0121224
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0772947   0.0408956   0.1136938
ki1101329-Keneba           GAMBIA                         0                    NA                0.0366735   0.0255986   0.0477484
ki1101329-Keneba           GAMBIA                         1                    NA                0.0913442   0.0650062   0.1176823
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0757885   0.0497985   0.1017785
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1848264   0.1225799   0.2470728
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0495050   0.0071109   0.0918990
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1544118   0.0935539   0.2152696
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0261905   0.0109016   0.0414794
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0714286   0.0110356   0.1318215
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0326596   0.0209883   0.0443308
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0772116   0.0505292   0.1038941
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0297671   0.0141352   0.0453991
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0875673   0.0509472   0.1241873
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0728013   0.0598434   0.0857592
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1160095   0.0642659   0.1677530
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0175548   0.0089563   0.0261533
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.3979781   0.3814411   0.4145151
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0183908   0.0094584   0.0273232
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0566038   0.0206677   0.0925398
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0521068   0.0456228   0.0585908
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1629792   0.1119505   0.2140078


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0633484   0.0311604   0.0955364
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0604396   0.0359254   0.0849538
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1017488   0.0903508   0.1131468
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563698   0.0456344   0.0671052
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0326531   0.0169007   0.0484055
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0528846   0.0421282   0.0636410
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0475524   0.0319423   0.0631626
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0380623   0.0253182   0.0508064
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0242954   0.0148836   0.0337072
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0956346   0.0850945   0.1061746


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.725000    1.2920971   10.738840
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  2.747253    1.0857212    6.951506
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.711957    0.7352570    3.986082
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  1.600927    0.9431859    2.717350
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.484677    2.3509607    5.165111
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.452441    0.9162389    2.302439
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.824736    0.9740753    3.418280
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  1.954448    1.0086881    3.786967
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.735974    1.6573754    8.421448
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 11.949758    4.4273686   32.253178
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  2.490743    1.6427006    3.776587
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.438712    1.5063668    3.948120
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  3.119118    1.2151260    8.006491
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  2.727273    0.9761452    7.619785
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.364135    1.4374124    3.888330
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.941745    1.5025498    5.759453
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.593508    0.9863804    2.574331
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 22.670631   13.8964682   36.984758
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  3.077830    1.3838532    6.845407
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.127792    2.2355352    4.376171


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0297914    0.0025256   0.0570572
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0278947   -0.0005011   0.0562906
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0159951   -0.0087220   0.0407122
ki1000109-EE               PAKISTAN                       0                    NA                0.0640291   -0.0023886   0.1304469
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0560653    0.0396379   0.0724927
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0293891   -0.0065445   0.0653227
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0295983    0.0058669   0.0533297
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0131932   -0.0016273   0.0280136
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0252925    0.0118760   0.0387091
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0149603    0.0069717   0.0229488
ki1101329-Keneba           GAMBIA                         0                    NA                0.0196963    0.0102400   0.0291526
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0296660    0.0106768   0.0486553
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0601997    0.0171274   0.1032720
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0064626   -0.0025471   0.0154722
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0202251    0.0099935   0.0304566
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0177853    0.0045355   0.0310352
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0023897   -0.0071887   0.0119681
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0205075    0.0107890   0.0302260
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0059046    0.0001209   0.0116884
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0435278    0.0347040   0.0523516


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4702780   -0.0524278   0.7333733
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3741176   -0.0850804   0.6389865
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2646464   -0.2599934   0.5708352
ki1000109-EE               PAKISTAN                       0                    NA                0.2988027   -0.0831558   0.5460692
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5510172    0.4017536   0.6630392
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1572316   -0.0562343   0.3275558
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2681258    0.0319463   0.4466837
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2019287   -0.0467062   0.3915029
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.5529470    0.2784224   0.7230286
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6981457    0.3537738   0.8590029
ki1101329-Keneba           GAMBIA                         0                    NA                0.3494122    0.1763381   0.4861187
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2813158    0.0914300   0.4315166
ki1114097-CMIN             BANGLADESH                     0                    NA                0.5487433    0.0314149   0.7897628
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1979167   -0.1089310   0.4198578
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3824374    0.1750562   0.5376853
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3740152    0.0629004   0.5818407
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0317819   -0.1036624   0.1506041
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.5387879    0.3298093   0.6826029
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2430345   -0.0114858   0.4335098
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4551470    0.3906257   0.5128366
