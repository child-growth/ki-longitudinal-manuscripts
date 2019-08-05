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

**Intervention Variable:** ever_wasted06

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

studyid                     country                        ever_wasted06    co_occurence   n_cell      n
--------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                           0      165    221
ki0047075b-MAL-ED           BANGLADESH                     0                           1        5    221
ki0047075b-MAL-ED           BANGLADESH                     1                           0       42    221
ki0047075b-MAL-ED           BANGLADESH                     1                           1        9    221
ki0047075b-MAL-ED           BRAZIL                         0                           0      167    180
ki0047075b-MAL-ED           BRAZIL                         0                           1        1    180
ki0047075b-MAL-ED           BRAZIL                         1                           0       12    180
ki0047075b-MAL-ED           BRAZIL                         1                           1        0    180
ki0047075b-MAL-ED           INDIA                          0                           0      151    228
ki0047075b-MAL-ED           INDIA                          0                           1        4    228
ki0047075b-MAL-ED           INDIA                          1                           0       60    228
ki0047075b-MAL-ED           INDIA                          1                           1       13    228
ki0047075b-MAL-ED           NEPAL                          0                           0      187    229
ki0047075b-MAL-ED           NEPAL                          0                           1        2    229
ki0047075b-MAL-ED           NEPAL                          1                           0       38    229
ki0047075b-MAL-ED           NEPAL                          1                           1        2    229
ki0047075b-MAL-ED           PERU                           0                           0      208    222
ki0047075b-MAL-ED           PERU                           0                           1        5    222
ki0047075b-MAL-ED           PERU                           1                           0        8    222
ki0047075b-MAL-ED           PERU                           1                           1        1    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           0      215    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           1        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           0       22    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           1        2    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      213    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0       11    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                           0      170    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                           1        4    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                           0      172    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                           1       18    364
ki1000108-IRC               INDIA                          0                           0      176    405
ki1000108-IRC               INDIA                          0                           1       11    405
ki1000108-IRC               INDIA                          1                           0      204    405
ki1000108-IRC               INDIA                          1                           1       14    405
ki1000109-EE                PAKISTAN                       0                           0      211    350
ki1000109-EE                PAKISTAN                       0                           1       39    350
ki1000109-EE                PAKISTAN                       1                           0       64    350
ki1000109-EE                PAKISTAN                       1                           1       36    350
ki1000109-ResPak            PAKISTAN                       0                           0        4      9
ki1000109-ResPak            PAKISTAN                       0                           1        0      9
ki1000109-ResPak            PAKISTAN                       1                           0        5      9
ki1000109-ResPak            PAKISTAN                       1                           1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                           0      905   1254
ki1000304b-SAS-CompFeed     INDIA                          0                           1       73   1254
ki1000304b-SAS-CompFeed     INDIA                          1                           0      221   1254
ki1000304b-SAS-CompFeed     INDIA                          1                           1       55   1254
ki1000304b-SAS-FoodSuppl    INDIA                          0                           0      227    323
ki1000304b-SAS-FoodSuppl    INDIA                          0                           1       43    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                           0       36    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                           1       17    323
ki1017093-NIH-Birth         BANGLADESH                     0                           0      281    460
ki1017093-NIH-Birth         BANGLADESH                     0                           1       17    460
ki1017093-NIH-Birth         BANGLADESH                     1                           0      128    460
ki1017093-NIH-Birth         BANGLADESH                     1                           1       34    460
ki1017093b-PROVIDE          BANGLADESH                     0                           0      391    551
ki1017093b-PROVIDE          BANGLADESH                     0                           1       22    551
ki1017093b-PROVIDE          BANGLADESH                     1                           0      124    551
ki1017093b-PROVIDE          BANGLADESH                     1                           1       14    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                           0      442    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                           1       16    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                           0      163    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                           1       13    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0      837    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1       15    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      122    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        6    980
ki1101329-Keneba            GAMBIA                         0                           0     1417   1755
ki1101329-Keneba            GAMBIA                         0                           1       56   1755
ki1101329-Keneba            GAMBIA                         1                           0      241   1755
ki1101329-Keneba            GAMBIA                         1                           1       41   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                           0      354    550
ki1113344-GMS-Nepal         NEPAL                          0                           1       29    550
ki1113344-GMS-Nepal         NEPAL                          1                           0      138    550
ki1113344-GMS-Nepal         NEPAL                          1                           1       29    550
ki1114097-CMIN              BANGLADESH                     0                           0      180    237
ki1114097-CMIN              BANGLADESH                     0                           1       18    237
ki1114097-CMIN              BANGLADESH                     1                           0       31    237
ki1114097-CMIN              BANGLADESH                     1                           1        8    237
ki1114097-CMIN              BRAZIL                         0                           0      108    115
ki1114097-CMIN              BRAZIL                         0                           1        0    115
ki1114097-CMIN              BRAZIL                         1                           0        7    115
ki1114097-CMIN              BRAZIL                         1                           1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                           0      456    490
ki1114097-CMIN              GUINEA-BISSAU                  0                           1       16    490
ki1114097-CMIN              GUINEA-BISSAU                  1                           0       18    490
ki1114097-CMIN              GUINEA-BISSAU                  1                           1        0    490
ki1114097-CMIN              PERU                           0                           0      348    374
ki1114097-CMIN              PERU                           0                           1        0    374
ki1114097-CMIN              PERU                           1                           0       26    374
ki1114097-CMIN              PERU                           1                           1        0    374
ki1114097-CONTENT           PERU                           0                           0      196    200
ki1114097-CONTENT           PERU                           0                           1        1    200
ki1114097-CONTENT           PERU                           1                           0        3    200
ki1114097-CONTENT           PERU                           1                           1        0    200
ki1119695-PROBIT            BELARUS                        0                           0     1623   2146
ki1119695-PROBIT            BELARUS                        0                           1        0   2146
ki1119695-PROBIT            BELARUS                        1                           0      523   2146
ki1119695-PROBIT            BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                           0     1299   1652
ki1126311-ZVITAMBO          ZIMBABWE                       0                           1       57   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                           0      267   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                           1       29   1652
ki1135781-COHORTS           GUATEMALA                      0                           0      542    711
ki1135781-COHORTS           GUATEMALA                      0                           1       23    711
ki1135781-COHORTS           GUATEMALA                      1                           0      135    711
ki1135781-COHORTS           GUATEMALA                      1                           1       11    711
ki1135781-COHORTS           PHILIPPINES                    0                           0     1796   2487
ki1135781-COHORTS           PHILIPPINES                    0                           1      120   2487
ki1135781-COHORTS           PHILIPPINES                    1                           0      504   2487
ki1135781-COHORTS           PHILIPPINES                    1                           1       67   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                           0      830    868
ki1148112-iLiNS-DOSE        MALAWI                         0                           1       33    868
ki1148112-iLiNS-DOSE        MALAWI                         1                           0        5    868
ki1148112-iLiNS-DOSE        MALAWI                         1                           1        0    868
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           0      948   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           1       24   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           0       31   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           1        1   1004
ki1148112-LCNI-5            MALAWI                         0                           0      226    235
ki1148112-LCNI-5            MALAWI                         0                           1        6    235
ki1148112-LCNI-5            MALAWI                         1                           0        3    235
ki1148112-LCNI-5            MALAWI                         1                           1        0    235
kiGH5241-JiVitA-4           BANGLADESH                     0                           0     3640   4417
kiGH5241-JiVitA-4           BANGLADESH                     0                           1      314   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                           0      359   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                           1      104   4417


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/36b1751e-79d8-4906-9c83-32a42a92e599/d09a5c06-ad6d-47fa-9b4e-d03a6e6d0d16/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/36b1751e-79d8-4906-9c83-32a42a92e599/d09a5c06-ad6d-47fa-9b4e-d03a6e6d0d16/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/36b1751e-79d8-4906-9c83-32a42a92e599/d09a5c06-ad6d-47fa-9b4e-d03a6e6d0d16/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/36b1751e-79d8-4906-9c83-32a42a92e599/d09a5c06-ad6d-47fa-9b4e-d03a6e6d0d16/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0294118   0.0039560   0.0548675
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1764706   0.0716073   0.2813339
ki1000108-IRC              INDIA                          0                    NA                0.0537132   0.0220293   0.0853970
ki1000108-IRC              INDIA                          1                    NA                0.0674628   0.0340251   0.1009005
ki1000109-EE               PAKISTAN                       0                    NA                0.1575127   0.1120329   0.2029925
ki1000109-EE               PAKISTAN                       1                    NA                0.3619766   0.2630674   0.4608858
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0786252   0.0670705   0.0901800
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2087758   0.1683944   0.2491573
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1602053   0.1163671   0.2040436
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3155703   0.1842078   0.4469327
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0575631   0.0310360   0.0840902
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2161280   0.1543390   0.2779169
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0539844   0.0323421   0.0756268
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0941283   0.0420745   0.1461821
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0338031   0.0172477   0.0503584
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0927639   0.0518469   0.1336808
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176056   0.0087704   0.0264409
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0468750   0.0102388   0.0835112
ki1101329-Keneba           GAMBIA                         0                    NA                0.0378045   0.0281264   0.0474827
ki1101329-Keneba           GAMBIA                         1                    NA                0.1363607   0.0951526   0.1775687
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0762796   0.0497442   0.1028150
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1765222   0.1196948   0.2333496
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0909091   0.0507817   0.1310365
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2051282   0.0781307   0.3321257
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0415836   0.0307744   0.0523929
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1287475   0.0901955   0.1672995
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0410783   0.0246301   0.0575264
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0725976   0.0298236   0.1153717
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0621152   0.0507042   0.0735263
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1331103   0.0778873   0.1883333
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1041872   0.0914857   0.1168887
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2848315   0.1990092   0.3706537


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0633484   0.0311604   0.0955364
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1020734   0.0904618   0.1136850
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1108696   0.0821465   0.1395926
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0552707   0.0445768   0.0659645
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0520581   0.0413427   0.0627735
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0478200   0.0321242   0.0635158
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0946344   0.0840975   0.1051713


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 6.000000   2.0999382   17.143362
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.255982   0.5851493    2.695879
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 2.298079   1.5454665    3.417200
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.655329   2.1992819    3.205943
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.969786   1.1956510    3.245142
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.754626   2.1853765    6.450702
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.743618   0.8808937    3.451274
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.744244   1.4296593    5.267600
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.662500   1.0517430    6.740150
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 3.606991   2.4331672    5.347099
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.314146   1.4388272    3.721970
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.256410   1.0548754    4.826529
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 3.096110   2.0821497    4.603845
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.767300   0.8663861    3.605032
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.142957   1.3626593    3.370074
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.733844   1.9771872    3.780068


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0339367    0.0077232    0.0601501
ki1000108-IRC              INDIA                          0                    NA                 0.0080152   -0.0158901    0.0319205
ki1000109-EE               PAKISTAN                       0                    NA                 0.0567730    0.0248854    0.0886607
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0234481    0.0126168    0.0342795
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0255532    0.0026269    0.0484795
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0533064    0.0283841    0.0782288
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0113513   -0.0025730    0.0252756
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0119383    0.0004011    0.0234754
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0038229   -0.0011380    0.0087839
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0174661    0.0105288    0.0244034
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0291749    0.0094127    0.0489371
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0187956   -0.0037774    0.0413685
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0104745    0.0039099    0.0170391
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0067417   -0.0028146    0.0162980
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0130758    0.0049094    0.0212421
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0095528   -0.0184422   -0.0006634


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.5357143    0.0769639    0.7664650
ki1000108-IRC              INDIA                          0                    NA                 0.1298464   -0.3547216    0.4410901
ki1000109-EE               PAKISTAN                       0                    NA                 0.2649408    0.1074969    0.3946105
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2297185    0.1268251    0.3204872
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1375613    0.0078833    0.2502892
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.4808032    0.2479576    0.6415557
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1737381   -0.0596312    0.3557110
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2609949   -0.0202042    0.4646871
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1784037   -0.0729713    0.3708868
ki1101329-Keneba           GAMBIA                         0                    NA                 0.3160105    0.1952194    0.4186719
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2766587    0.0771603    0.4330298
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1713287   -0.0524818    0.3475458
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2012072    0.0709176    0.3132257
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1409810   -0.0776448    0.3152533
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1739005    0.0619671    0.2724772
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1009444   -0.2015811   -0.0087365
