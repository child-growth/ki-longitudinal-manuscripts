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

**Intervention Variable:** ever_sunderweight06

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

studyid                     country                        ever_sunderweight06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                                   0      212     239
ki0047075b-MAL-ED           BANGLADESH                     0                                   1       15     239
ki0047075b-MAL-ED           BANGLADESH                     1                                   0        9     239
ki0047075b-MAL-ED           BANGLADESH                     1                                   1        3     239
ki0047075b-MAL-ED           BRAZIL                         0                                   0      200     202
ki0047075b-MAL-ED           BRAZIL                         0                                   1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                                   0        0     202
ki0047075b-MAL-ED           BRAZIL                         1                                   1        0     202
ki0047075b-MAL-ED           INDIA                          0                                   0      188     234
ki0047075b-MAL-ED           INDIA                          0                                   1       17     234
ki0047075b-MAL-ED           INDIA                          1                                   0       18     234
ki0047075b-MAL-ED           INDIA                          1                                   1       11     234
ki0047075b-MAL-ED           NEPAL                          0                                   0      223     234
ki0047075b-MAL-ED           NEPAL                          0                                   1        1     234
ki0047075b-MAL-ED           NEPAL                          1                                   0        9     234
ki0047075b-MAL-ED           NEPAL                          1                                   1        1     234
ki0047075b-MAL-ED           PERU                           0                                   0      254     264
ki0047075b-MAL-ED           PERU                           0                                   1        2     264
ki0047075b-MAL-ED           PERU                           1                                   0        8     264
ki0047075b-MAL-ED           PERU                           1                                   1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                   0      248     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                                   1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                   0        8     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                                   1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   0      237     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                   1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   0        7     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                   1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                                   0      287     373
ki1000108-CMC-V-BCS-2002    INDIA                          0                                   1       12     373
ki1000108-CMC-V-BCS-2002    INDIA                          1                                   0       58     373
ki1000108-CMC-V-BCS-2002    INDIA                          1                                   1       16     373
ki1000108-IRC               INDIA                          0                                   0      309     410
ki1000108-IRC               INDIA                          0                                   1       38     410
ki1000108-IRC               INDIA                          1                                   0       53     410
ki1000108-IRC               INDIA                          1                                   1       10     410
ki1000109-EE                PAKISTAN                       0                                   0      216     371
ki1000109-EE                PAKISTAN                       0                                   1       11     371
ki1000109-EE                PAKISTAN                       1                                   0      111     371
ki1000109-EE                PAKISTAN                       1                                   1       33     371
ki1000109-ResPak            PAKISTAN                       0                                   0      150     220
ki1000109-ResPak            PAKISTAN                       0                                   1       33     220
ki1000109-ResPak            PAKISTAN                       1                                   0       25     220
ki1000109-ResPak            PAKISTAN                       1                                   1       12     220
ki1000304-VITAMIN-A         INDIA                          0                                   0     2044    2952
ki1000304-VITAMIN-A         INDIA                          0                                   1      249    2952
ki1000304-VITAMIN-A         INDIA                          1                                   0      428    2952
ki1000304-VITAMIN-A         INDIA                          1                                   1      231    2952
ki1000304b-SAS-CompFeed     INDIA                          0                                   0     1017    1353
ki1000304b-SAS-CompFeed     INDIA                          0                                   1      128    1353
ki1000304b-SAS-CompFeed     INDIA                          1                                   0      117    1353
ki1000304b-SAS-CompFeed     INDIA                          1                                   1       91    1353
ki1000304b-SAS-FoodSuppl    INDIA                          0                                   0      268     373
ki1000304b-SAS-FoodSuppl    INDIA                          0                                   1       33     373
ki1000304b-SAS-FoodSuppl    INDIA                          1                                   0       42     373
ki1000304b-SAS-FoodSuppl    INDIA                          1                                   1       30     373
ki1017093-NIH-Birth         BANGLADESH                     0                                   0      409     514
ki1017093-NIH-Birth         BANGLADESH                     0                                   1       40     514
ki1017093-NIH-Birth         BANGLADESH                     1                                   0       47     514
ki1017093-NIH-Birth         BANGLADESH                     1                                   1       18     514
ki1017093b-PROVIDE          BANGLADESH                     0                                   0      541     608
ki1017093b-PROVIDE          BANGLADESH                     0                                   1       26     608
ki1017093b-PROVIDE          BANGLADESH                     1                                   0       28     608
ki1017093b-PROVIDE          BANGLADESH                     1                                   1       13     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                                   0      639     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                                   1       31     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                                   0       39     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                                   1       13     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                   0     1792    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                                   1       75    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                   0       34    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                                   1       20    1921
ki1101329-Keneba            GAMBIA                         0                                   0     1912    2185
ki1101329-Keneba            GAMBIA                         0                                   1      138    2185
ki1101329-Keneba            GAMBIA                         1                                   0       79    2185
ki1101329-Keneba            GAMBIA                         1                                   1       56    2185
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                   0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                                   1        3      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                   0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                                   1        3      26
ki1112895-Guatemala BSC     GUATEMALA                      0                                   0      224     235
ki1112895-Guatemala BSC     GUATEMALA                      0                                   1        2     235
ki1112895-Guatemala BSC     GUATEMALA                      1                                   0        7     235
ki1112895-Guatemala BSC     GUATEMALA                      1                                   1        2     235
ki1113344-GMS-Nepal         NEPAL                          0                                   0      443     582
ki1113344-GMS-Nepal         NEPAL                          0                                   1       71     582
ki1113344-GMS-Nepal         NEPAL                          1                                   0       31     582
ki1113344-GMS-Nepal         NEPAL                          1                                   1       37     582
ki1114097-CMIN              BANGLADESH                     0                                   0      196     251
ki1114097-CMIN              BANGLADESH                     0                                   1       11     251
ki1114097-CMIN              BANGLADESH                     1                                   0       31     251
ki1114097-CMIN              BANGLADESH                     1                                   1       13     251
ki1114097-CMIN              BRAZIL                         0                                   0      116     119
ki1114097-CMIN              BRAZIL                         0                                   1        0     119
ki1114097-CMIN              BRAZIL                         1                                   0        3     119
ki1114097-CMIN              BRAZIL                         1                                   1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                                   0      828     878
ki1114097-CMIN              GUINEA-BISSAU                  0                                   1       34     878
ki1114097-CMIN              GUINEA-BISSAU                  1                                   0       12     878
ki1114097-CMIN              GUINEA-BISSAU                  1                                   1        4     878
ki1114097-CMIN              PERU                           0                                   0      609     629
ki1114097-CMIN              PERU                           0                                   1        1     629
ki1114097-CMIN              PERU                           1                                   0       18     629
ki1114097-CMIN              PERU                           1                                   1        1     629
ki1114097-CONTENT           PERU                           0                                   0      212     215
ki1114097-CONTENT           PERU                           0                                   1        0     215
ki1114097-CONTENT           PERU                           1                                   0        3     215
ki1114097-CONTENT           PERU                           1                                   1        0     215
ki1119695-PROBIT            BELARUS                        0                                   0    16308   16449
ki1119695-PROBIT            BELARUS                        0                                   1       20   16449
ki1119695-PROBIT            BELARUS                        1                                   0      121   16449
ki1119695-PROBIT            BELARUS                        1                                   1        0   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                                   0     7859    8571
ki1126311-ZVITAMBO          ZIMBABWE                       0                                   1      312    8571
ki1126311-ZVITAMBO          ZIMBABWE                       1                                   0      336    8571
ki1126311-ZVITAMBO          ZIMBABWE                       1                                   1       64    8571
ki1135781-COHORTS           GUATEMALA                      0                                   0      836     926
ki1135781-COHORTS           GUATEMALA                      0                                   1       23     926
ki1135781-COHORTS           GUATEMALA                      1                                   0       56     926
ki1135781-COHORTS           GUATEMALA                      1                                   1       11     926
ki1135781-COHORTS           INDIA                          0                                   0     5055    6035
ki1135781-COHORTS           INDIA                          0                                   1      475    6035
ki1135781-COHORTS           INDIA                          1                                   0      327    6035
ki1135781-COHORTS           INDIA                          1                                   1      178    6035
ki1135781-COHORTS           PHILIPPINES                    0                                   0     2435    2757
ki1135781-COHORTS           PHILIPPINES                    0                                   1      167    2757
ki1135781-COHORTS           PHILIPPINES                    1                                   0      107    2757
ki1135781-COHORTS           PHILIPPINES                    1                                   1       48    2757
ki1148112-iLiNS-DOSE        MALAWI                         0                                   0      758     816
ki1148112-iLiNS-DOSE        MALAWI                         0                                   1       36     816
ki1148112-iLiNS-DOSE        MALAWI                         1                                   0       14     816
ki1148112-iLiNS-DOSE        MALAWI                         1                                   1        8     816
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                   0     1005    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         0                                   1       21    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                   0       33    1066
ki1148112-iLiNS-DYAD-M      MALAWI                         1                                   1        7    1066
ki1148112-LCNI-5            MALAWI                         0                                   0      239     249
ki1148112-LCNI-5            MALAWI                         0                                   1        5     249
ki1148112-LCNI-5            MALAWI                         1                                   0        4     249
ki1148112-LCNI-5            MALAWI                         1                                   1        1     249
kiGH5241-JiVitA-3           BANGLADESH                     0                                   0    10158   14225
kiGH5241-JiVitA-3           BANGLADESH                     0                                   1     2245   14225
kiGH5241-JiVitA-3           BANGLADESH                     1                                   0     1148   14225
kiGH5241-JiVitA-3           BANGLADESH                     1                                   1      674   14225
kiGH5241-JiVitA-4           BANGLADESH                     0                                   0     4208    5062
kiGH5241-JiVitA-4           BANGLADESH                     0                                   1      416    5062
kiGH5241-JiVitA-4           BANGLADESH                     1                                   0      314    5062
kiGH5241-JiVitA-4           BANGLADESH                     1                                   1      124    5062


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
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
![](/tmp/413f5a9b-45ae-4639-962f-692268247ea7/db67e65d-5c84-45dc-8a9b-97d1b116e7a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/413f5a9b-45ae-4639-962f-692268247ea7/db67e65d-5c84-45dc-8a9b-97d1b116e7a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/413f5a9b-45ae-4639-962f-692268247ea7/db67e65d-5c84-45dc-8a9b-97d1b116e7a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/413f5a9b-45ae-4639-962f-692268247ea7/db67e65d-5c84-45dc-8a9b-97d1b116e7a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0811363   0.0431087   0.1191640
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5348229   0.3344274   0.7352185
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0392561   0.0169222   0.0615899
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2157758   0.1206588   0.3108928
ki1000108-IRC              INDIA                          0                    NA                0.1102314   0.0772706   0.1431922
ki1000108-IRC              INDIA                          1                    NA                0.1735522   0.0860169   0.2610876
ki1000109-EE               PAKISTAN                       0                    NA                0.0515508   0.0224845   0.0806172
ki1000109-EE               PAKISTAN                       1                    NA                0.2298449   0.1593103   0.3003796
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1798144   0.1238603   0.2357686
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3275985   0.1752201   0.4799769
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1088688   0.0953018   0.1224357
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3629555   0.3136990   0.4122120
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1220091   0.1030184   0.1409998
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4295957   0.3695822   0.4896092
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1081998   0.0728368   0.1435627
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4272508   0.3090163   0.5454854
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0887940   0.0624005   0.1151875
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2522340   0.1419263   0.3625416
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0456956   0.0284796   0.0629117
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3212948   0.1672303   0.4753593
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0464998   0.0305818   0.0624179
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2370833   0.1147807   0.3593858
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0401821   0.0312726   0.0490915
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3964377   0.2642914   0.5285841
ki1101329-Keneba           GAMBIA                         0                    NA                0.0691494   0.0580858   0.0802130
ki1101329-Keneba           GAMBIA                         1                    NA                0.3673490   0.2752917   0.4594063
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1395044   0.1096258   0.1693830
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5267354   0.3997040   0.6537667
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0532851   0.0224081   0.0841622
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2588319   0.1191100   0.3985537
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0381558   0.0339696   0.0423420
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1837419   0.1418642   0.2256196
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0268043   0.0159735   0.0376351
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1655399   0.0779112   0.2531686
ki1135781-COHORTS          INDIA                          0                    NA                0.1188597   0.1099586   0.1277607
ki1135781-COHORTS          INDIA                          1                    NA                0.3434149   0.2878001   0.3990298
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0653811   0.0558319   0.0749302
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3156685   0.2200850   0.4112520
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0453401   0.0308600   0.0598201
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.3636364   0.1625006   0.5647722
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0204678   0.0117997   0.0291359
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.1750000   0.0571939   0.2928061
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1916213   0.1818659   0.2013767
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3628281   0.3296321   0.3960241
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0909316   0.0807123   0.1011509
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3494599   0.2703051   0.4286146


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
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
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0956175   0.0591654   0.1320697
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0438689   0.0395328   0.0482049
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0367171   0.0245975   0.0488367
ki1135781-COHORTS          INDIA                          NA                   NA                0.1082022   0.1003643   0.1160400
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0779833   0.0679723   0.0879943
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0539216   0.0384151   0.0694281
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0262664   0.0166615   0.0358713
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2052021   0.1976666   0.2127376
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1066772   0.0962568   0.1170977


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 6.591658   3.6156821   12.017083
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 5.496624   2.6656297   11.334238
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.574436   0.8762041    2.829075
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 4.458609   2.3383492    8.501380
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.821870   1.0416514    3.186487
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 3.333881   2.7731497    4.007992
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.521014   2.7069788    4.579843
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 3.948723   2.5723228    6.061608
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.840665   1.6748896    4.817856
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 7.031194   3.8168479   12.952492
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 5.098583   2.7429725    9.477147
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 9.866032   6.6088953   14.728421
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 5.312394   3.9472706    7.149632
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.775762   2.7367449    5.209246
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 4.857486   2.1933370   10.757658
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 4.815573   3.7400586    6.200370
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 6.175866   3.1760356   12.009099
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.889247   2.4172915    3.453347
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 4.828134   3.4500916    6.756597
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 8.020202   4.2344866   15.190422
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 8.550000   3.8598198   18.939355
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.893465   1.7034686    2.104652
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.843108   2.9831289    4.951004


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0385218    0.0123773    0.0646662
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0358110    0.0152243    0.0563976
ki1000108-IRC              INDIA                          0                    NA                 0.0068418   -0.0082444    0.0219279
ki1000109-EE               PAKISTAN                       0                    NA                 0.0670476    0.0362897    0.0978054
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0247310   -0.0031518    0.0526138
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0537329    0.0434188    0.0640469
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0398534    0.0207079    0.0589990
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0607010    0.0344243    0.0869777
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0240465    0.0088601    0.0392329
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0184491    0.0073374    0.0295608
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0144420    0.0050683    0.0238157
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0092713    0.0048919    0.0136508
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0196378    0.0133964    0.0258791
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0460626    0.0284256    0.0636997
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0423324    0.0153974    0.0692673
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0057131    0.0039151    0.0075111
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0099127    0.0030754    0.0167501
ki1135781-COHORTS          INDIA                          0                    NA                -0.0106575   -0.0162339   -0.0050812
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0126023    0.0079225    0.0172820
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0085815    0.0020941    0.0150689
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.0057986    0.0010281    0.0105691
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0135808    0.0066220    0.0205396
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0157456    0.0106536    0.0208376


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3219321    0.0946966    0.4921303
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.4770531    0.1986627    0.6587287
ki1000108-IRC              INDIA                          0                    NA                 0.0584401   -0.0786028    0.1780709
ki1000109-EE               PAKISTAN                       0                    NA                 0.5653329    0.2948357    0.7320688
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1209071   -0.0246109    0.2457583
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.3304570    0.2685006    0.3871659
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2462178    0.1319050    0.3454775
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3593887    0.2030875    0.4850341
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2131016    0.0756948    0.3300816
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2876170    0.1178841    0.4246906
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2369801    0.0842806    0.3642164
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1874759    0.1020422    0.2647813
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2211779    0.1538220    0.2831722
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2482263    0.1544406    0.3316097
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.4427262    0.1526672    0.6334921
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1302311    0.0900848    0.1686061
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2699763    0.0844324    0.4179190
ki1135781-COHORTS          INDIA                          0                    NA                -0.0984964   -0.1528927   -0.0466667
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1616020    0.1029917    0.2163827
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.1591482    0.0391575    0.2641543
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.2207602    0.0388032    0.3682724
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0661827    0.0317988    0.0993455
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1476008    0.1005651    0.1921767
