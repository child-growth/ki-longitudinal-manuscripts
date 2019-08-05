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
![](/tmp/a4da84be-9141-4bff-b663-e3523085ce16/c6048445-6168-4cec-92f0-a83eb714352b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4da84be-9141-4bff-b663-e3523085ce16/c6048445-6168-4cec-92f0-a83eb714352b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4da84be-9141-4bff-b663-e3523085ce16/c6048445-6168-4cec-92f0-a83eb714352b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4da84be-9141-4bff-b663-e3523085ce16/c6048445-6168-4cec-92f0-a83eb714352b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0815285   0.0439690   0.1190881
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5582752   0.3509398   0.7656107
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0397681   0.0175487   0.0619874
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2711683   0.1778024   0.3645341
ki1000108-IRC              INDIA                          0                    NA                0.1089502   0.0760366   0.1418638
ki1000108-IRC              INDIA                          1                    NA                0.1446620   0.0524346   0.2368894
ki1000109-EE               PAKISTAN                       0                    NA                0.0504106   0.0215088   0.0793125
ki1000109-EE               PAKISTAN                       1                    NA                0.2256582   0.1555378   0.2957786
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1785528   0.1226532   0.2344524
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3120107   0.1564780   0.4675435
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1090815   0.0956008   0.1225622
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3535906   0.3045463   0.4026348
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1220091   0.1030184   0.1409998
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4295957   0.3695822   0.4896092
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1079868   0.0726727   0.1433010
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4321979   0.3140923   0.5503035
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0893558   0.0628972   0.1158144
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2749716   0.1623857   0.3875575
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0458167   0.0285873   0.0630461
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3123193   0.1611924   0.4634463
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0466038   0.0306892   0.0625185
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2333188   0.1071485   0.3594891
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0402225   0.0313110   0.0491341
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3954564   0.2643810   0.5265317
ki1101329-Keneba           GAMBIA                         0                    NA                0.0694692   0.0582931   0.0806454
ki1101329-Keneba           GAMBIA                         1                    NA                0.3990149   0.3000541   0.4979756
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1393767   0.1095353   0.1692180
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5284792   0.4044355   0.6525229
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0531401   0.0224483   0.0838318
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2903007   0.1493899   0.4312115
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0382772   0.0340765   0.0424778
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1859957   0.1442514   0.2277400
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0268614   0.0160620   0.0376608
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2085148   0.1273866   0.2896430
ki1135781-COHORTS          INDIA                          0                    NA                0.1189323   0.1103039   0.1275608
ki1135781-COHORTS          INDIA                          1                    NA                0.3235203   0.2674850   0.3795556
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0659040   0.0562471   0.0755609
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3320381   0.2387841   0.4252922
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0453401   0.0308600   0.0598201
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.3636364   0.1625006   0.5647722
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0204678   0.0117997   0.0291359
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.1750000   0.0571939   0.2928061
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1840492   0.1738214   0.1942770
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3638338   0.3313170   0.3963506
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0895973   0.0792937   0.0999009
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3723299   0.2896568   0.4550030


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
ki0047075b-MAL-ED          INDIA                          1                    0                 6.847605   3.7817494   12.398943
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 6.818743   3.5172992   13.219021
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.327781   0.6555133    2.689498
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 4.476401   2.3219621    8.629843
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.747442   0.9709383    3.144953
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 3.241526   2.6923131    3.902775
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.521014   2.7069788    4.579843
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 4.002320   2.6116277    6.133556
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.077265   1.8561477    5.101729
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 6.816719   3.6933951   12.581285
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 5.006428   2.6397104    9.495101
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 9.831713   6.5992289   14.647555
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 5.743765   4.2754066    7.716421
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.791734   2.7605986    5.208018
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 5.462932   2.5690564   11.616570
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 4.859182   3.7857944    6.236907
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 7.762613   4.4423613   13.564443
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.720205   2.2546187    3.281936
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 5.038208   3.6709877    6.914634
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 8.020202   4.2344866   15.190422
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 8.550000   3.8598198   18.939355
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.976829   1.7770596    2.199055
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 4.155593   3.2396251    5.330540


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0381296    0.0121069    0.0641522
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0352989    0.0146988    0.0558991
ki1000108-IRC              INDIA                          0                    NA                 0.0081230   -0.0068457    0.0230916
ki1000109-EE               PAKISTAN                       0                    NA                 0.0681877    0.0375342    0.0988413
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0259926   -0.0020058    0.0539911
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0535201    0.0432710    0.0637692
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0398534    0.0207079    0.0589990
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0609140    0.0346458    0.0871821
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0234846    0.0083210    0.0386483
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0183281    0.0072367    0.0294194
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0143380    0.0049855    0.0236905
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0092309    0.0048556    0.0136061
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0193180    0.0130254    0.0256105
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0461903    0.0285065    0.0638742
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0424774    0.0156284    0.0693265
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0055917    0.0037834    0.0074000
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0098556    0.0030445    0.0166667
ki1135781-COHORTS          INDIA                          0                    NA                -0.0107302   -0.0159568   -0.0055035
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0120793    0.0073277    0.0168309
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0085815    0.0020941    0.0150689
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.0057986    0.0010281    0.0105691
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0211529    0.0134240    0.0288818
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0170799    0.0120264    0.0221334


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3186544    0.0954196    0.4867987
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.4702324    0.1940903    0.6517554
ki1000108-IRC              INDIA                          0                    NA                 0.0693837   -0.0666649    0.1880799
ki1000109-EE               PAKISTAN                       0                    NA                 0.5749467    0.3049864    0.7400478
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1270751   -0.0191586    0.2523266
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.3291487    0.2677881    0.3853673
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2462178    0.1319050    0.3454775
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3606493    0.2045219    0.4861339
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2081224    0.0707842    0.3251620
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2857299    0.1162561    0.4227041
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2352732    0.0829970    0.3622627
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1866580    0.1012949    0.2639130
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2175760    0.1491389    0.2805086
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2489147    0.1549867    0.3324020
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.4442432    0.1566929    0.6337448
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1274640    0.0869975    0.1661370
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2684213    0.0841882    0.4155924
ki1135781-COHORTS          INDIA                          0                    NA                -0.0991679   -0.1503858   -0.0502305
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1548959    0.0949373    0.2108823
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.1591482    0.0391575    0.2641543
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.2207602    0.0388032    0.3682724
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1030832    0.0648221    0.1397790
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1601082    0.1130632    0.2046579
