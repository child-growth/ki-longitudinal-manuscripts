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

**Intervention Variable:** ever_swasted06_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06_noBW    co_occurence   n_cell      n
--------------------------  -----------------------------  --------------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                                 0      201    220
ki0047075b-MAL-ED           BANGLADESH                     0                                 1       13    220
ki0047075b-MAL-ED           BANGLADESH                     1                                 0        5    220
ki0047075b-MAL-ED           BANGLADESH                     1                                 1        1    220
ki0047075b-MAL-ED           BRAZIL                         0                                 0      177    179
ki0047075b-MAL-ED           BRAZIL                         0                                 1        1    179
ki0047075b-MAL-ED           BRAZIL                         1                                 0        1    179
ki0047075b-MAL-ED           BRAZIL                         1                                 1        0    179
ki0047075b-MAL-ED           INDIA                          0                                 0      203    223
ki0047075b-MAL-ED           INDIA                          0                                 1       15    223
ki0047075b-MAL-ED           INDIA                          1                                 0        3    223
ki0047075b-MAL-ED           INDIA                          1                                 1        2    223
ki0047075b-MAL-ED           NEPAL                          0                                 0      222    227
ki0047075b-MAL-ED           NEPAL                          0                                 1        4    227
ki0047075b-MAL-ED           NEPAL                          1                                 0        1    227
ki0047075b-MAL-ED           NEPAL                          1                                 1        0    227
ki0047075b-MAL-ED           PERU                           0                                 0      215    222
ki0047075b-MAL-ED           PERU                           0                                 1        6    222
ki0047075b-MAL-ED           PERU                           1                                 0        1    222
ki0047075b-MAL-ED           PERU                           1                                 1        0    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                 0      233    240
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                 1        4    240
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                 0        3    240
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                 1        0    240
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 0      222    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                 1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 0        2    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                 1        0    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                                 0      304    346
ki1000108-CMC-V-BCS-2002    INDIA                          0                                 1       13    346
ki1000108-CMC-V-BCS-2002    INDIA                          1                                 0       27    346
ki1000108-CMC-V-BCS-2002    INDIA                          1                                 1        2    346
ki1000108-IRC               INDIA                          0                                 0      308    387
ki1000108-IRC               INDIA                          0                                 1       22    387
ki1000108-IRC               INDIA                          1                                 0       55    387
ki1000108-IRC               INDIA                          1                                 1        2    387
ki1000109-EE                PAKISTAN                       0                                 0      262    344
ki1000109-EE                PAKISTAN                       0                                 1       66    344
ki1000109-EE                PAKISTAN                       1                                 0       10    344
ki1000109-EE                PAKISTAN                       1                                 1        6    344
ki1000109-ResPak            PAKISTAN                       0                                 0        6      9
ki1000109-ResPak            PAKISTAN                       0                                 1        0      9
ki1000109-ResPak            PAKISTAN                       1                                 0        3      9
ki1000109-ResPak            PAKISTAN                       1                                 1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                                 0     1088   1234
ki1000304b-SAS-CompFeed     INDIA                          0                                 1      108   1234
ki1000304b-SAS-CompFeed     INDIA                          1                                 0       24   1234
ki1000304b-SAS-CompFeed     INDIA                          1                                 1       14   1234
ki1000304b-SAS-FoodSuppl    INDIA                          0                                 0      228    271
ki1000304b-SAS-FoodSuppl    INDIA                          0                                 1       43    271
ki1000304b-SAS-FoodSuppl    INDIA                          1                                 0        0    271
ki1000304b-SAS-FoodSuppl    INDIA                          1                                 1        0    271
ki1017093-NIH-Birth         BANGLADESH                     0                                 0      393    442
ki1017093-NIH-Birth         BANGLADESH                     0                                 1       43    442
ki1017093-NIH-Birth         BANGLADESH                     1                                 0        4    442
ki1017093-NIH-Birth         BANGLADESH                     1                                 1        2    442
ki1017093b-PROVIDE          BANGLADESH                     0                                 0      506    543
ki1017093b-PROVIDE          BANGLADESH                     0                                 1       34    543
ki1017093b-PROVIDE          BANGLADESH                     1                                 0        3    543
ki1017093b-PROVIDE          BANGLADESH                     1                                 1        0    543
ki1017093c-NIH-Crypto       BANGLADESH                     0                                 0      601    629
ki1017093c-NIH-Crypto       BANGLADESH                     0                                 1       27    629
ki1017093c-NIH-Crypto       BANGLADESH                     1                                 0        1    629
ki1017093c-NIH-Crypto       BANGLADESH                     1                                 1        0    629
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                 0      940    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                 1       21    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                 0       13    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                 1        0    974
ki1101329-Keneba            GAMBIA                         0                                 0     1600   1742
ki1101329-Keneba            GAMBIA                         0                                 1       78   1742
ki1101329-Keneba            GAMBIA                         1                                 0       50   1742
ki1101329-Keneba            GAMBIA                         1                                 1       14   1742
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                 0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                 1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                 0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                 1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                                 0      454    521
ki1113344-GMS-Nepal         NEPAL                          0                                 1       50    521
ki1113344-GMS-Nepal         NEPAL                          1                                 0       12    521
ki1113344-GMS-Nepal         NEPAL                          1                                 1        5    521
ki1114097-CMIN              BANGLADESH                     0                                 0      206    236
ki1114097-CMIN              BANGLADESH                     0                                 1       24    236
ki1114097-CMIN              BANGLADESH                     1                                 0        4    236
ki1114097-CMIN              BANGLADESH                     1                                 1        2    236
ki1114097-CMIN              BRAZIL                         0                                 0      113    113
ki1114097-CMIN              BRAZIL                         0                                 1        0    113
ki1114097-CMIN              BRAZIL                         1                                 0        0    113
ki1114097-CMIN              BRAZIL                         1                                 1        0    113
ki1114097-CMIN              GUINEA-BISSAU                  0                                 0      470    487
ki1114097-CMIN              GUINEA-BISSAU                  0                                 1       16    487
ki1114097-CMIN              GUINEA-BISSAU                  1                                 0        1    487
ki1114097-CMIN              GUINEA-BISSAU                  1                                 1        0    487
ki1114097-CMIN              PERU                           0                                 0      368    370
ki1114097-CMIN              PERU                           0                                 1        0    370
ki1114097-CMIN              PERU                           1                                 0        2    370
ki1114097-CMIN              PERU                           1                                 1        0    370
ki1114097-CONTENT           PERU                           0                                 0      199    200
ki1114097-CONTENT           PERU                           0                                 1        1    200
ki1114097-CONTENT           PERU                           1                                 0        0    200
ki1114097-CONTENT           PERU                           1                                 1        0    200
ki1119695-PROBIT            BELARUS                        0                                 0     2098   2125
ki1119695-PROBIT            BELARUS                        0                                 1        0   2125
ki1119695-PROBIT            BELARUS                        1                                 0       27   2125
ki1119695-PROBIT            BELARUS                        1                                 1        0   2125
ki1126311-ZVITAMBO          ZIMBABWE                       0                                 0     1533   1629
ki1126311-ZVITAMBO          ZIMBABWE                       0                                 1       79   1629
ki1126311-ZVITAMBO          ZIMBABWE                       1                                 0       13   1629
ki1126311-ZVITAMBO          ZIMBABWE                       1                                 1        4   1629
ki1135781-COHORTS           GUATEMALA                      0                                 0      664    696
ki1135781-COHORTS           GUATEMALA                      0                                 1       32    696
ki1135781-COHORTS           GUATEMALA                      1                                 0        0    696
ki1135781-COHORTS           GUATEMALA                      1                                 1        0    696
ki1135781-COHORTS           PHILIPPINES                    0                                 0     2245   2469
ki1135781-COHORTS           PHILIPPINES                    0                                 1      173   2469
ki1135781-COHORTS           PHILIPPINES                    1                                 0       41   2469
ki1135781-COHORTS           PHILIPPINES                    1                                 1       10   2469
ki1148112-iLiNS-DOSE        MALAWI                         0                                 0      830    863
ki1148112-iLiNS-DOSE        MALAWI                         0                                 1       33    863
ki1148112-iLiNS-DOSE        MALAWI                         1                                 0        0    863
ki1148112-iLiNS-DOSE        MALAWI                         1                                 1        0    863
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                 0      949    974
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                 1       25    974
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                 0        0    974
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                 1        0    974
ki1148112-LCNI-5            MALAWI                         0                                 0      226    232
ki1148112-LCNI-5            MALAWI                         0                                 1        6    232
ki1148112-LCNI-5            MALAWI                         1                                 0        0    232
ki1148112-LCNI-5            MALAWI                         1                                 1        0    232
kiGH5241-JiVitA-4           BANGLADESH                     0                                 0     3913   4304
kiGH5241-JiVitA-4           BANGLADESH                     0                                 1      373   4304
kiGH5241-JiVitA-4           BANGLADESH                     1                                 0       15   4304
kiGH5241-JiVitA-4           BANGLADESH                     1                                 1        3   4304


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

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/bdd130a2-2f48-4ffd-9973-b6083b242497/68d9dbf5-a68b-4c8f-b9e2-bd5ea5d755c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bdd130a2-2f48-4ffd-9973-b6083b242497/68d9dbf5-a68b-4c8f-b9e2-bd5ea5d755c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bdd130a2-2f48-4ffd-9973-b6083b242497/68d9dbf5-a68b-4c8f-b9e2-bd5ea5d755c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bdd130a2-2f48-4ffd-9973-b6083b242497/68d9dbf5-a68b-4c8f-b9e2-bd5ea5d755c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE              PAKISTAN      0                    NA                0.2012195   0.1577693   0.2446697
ki1000109-EE              PAKISTAN      1                    NA                0.3750000   0.1374386   0.6125614
ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.0903010   0.0794079   0.1011941
ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.3684211   0.2888165   0.4480256
ki1101329-Keneba          GAMBIA        0                    NA                0.0464839   0.0364078   0.0565600
ki1101329-Keneba          GAMBIA        1                    NA                0.2187500   0.1174401   0.3200599
ki1113344-GMS-Nepal       NEPAL         0                    NA                0.0992064   0.0730828   0.1253299
ki1113344-GMS-Nepal       NEPAL         1                    NA                0.2941176   0.0773135   0.5109218
ki1135781-COHORTS         PHILIPPINES   0                    NA                0.0715467   0.0612259   0.0818675
ki1135781-COHORTS         PHILIPPINES   1                    NA                0.1960784   0.1060288   0.2861280


### Parameter: E(Y)


studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE              PAKISTAN      NA                   NA                0.2093023   0.1662503   0.2523543
ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0988655   0.0888927   0.1088383
ki1101329-Keneba          GAMBIA        NA                   NA                0.0528129   0.0423069   0.0633188
ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1055662   0.0791553   0.1319771
ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0741191   0.0637839   0.0844543


### Parameter: RR


studyid                   country       intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  ------------  -------------------  ---------------  ---------  ---------  ---------
ki1000109-EE              PAKISTAN      0                    0                 1.000000   1.000000   1.000000
ki1000109-EE              PAKISTAN      1                    0                 1.863636   0.954318   3.639395
ki1000304b-SAS-CompFeed   INDIA         0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA         1                    0                 4.079922   3.142653   5.296723
ki1101329-Keneba          GAMBIA        0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA        1                    0                 4.705929   2.822081   7.847319
ki1113344-GMS-Nepal       NEPAL         0                    0                 1.000000   1.000000   1.000000
ki1113344-GMS-Nepal       NEPAL         1                    0                 2.964706   1.355299   6.485272
ki1135781-COHORTS         PHILIPPINES   0                    0                 1.000000   1.000000   1.000000
ki1135781-COHORTS         PHILIPPINES   1                    0                 2.740564   1.693485   4.435051


### Parameter: PAR


studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000109-EE              PAKISTAN      0                    NA                0.0080828   -0.0037988   0.0199644
ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.0085645    0.0034251   0.0137038
ki1101329-Keneba          GAMBIA        0                    NA                0.0063289    0.0022906   0.0103673
ki1113344-GMS-Nepal       NEPAL         0                    NA                0.0063599   -0.0013622   0.0140819
ki1135781-COHORTS         PHILIPPINES   0                    NA                0.0025723    0.0002011   0.0049436


### Parameter: PAF


studyid                   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000109-EE              PAKISTAN      0                    NA                0.0386179   -0.0195691   0.0934841
ki1000304b-SAS-CompFeed   INDIA         0                    NA                0.0866276    0.0330098   0.1372723
ki1101329-Keneba          GAMBIA        0                    NA                0.1198373    0.0436848   0.1899256
ki1113344-GMS-Nepal       NEPAL         0                    NA                0.0602453   -0.0145094   0.1294917
ki1135781-COHORTS         PHILIPPINES   0                    NA                0.0347056    0.0024032   0.0659619
