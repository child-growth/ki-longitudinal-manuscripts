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
![](/tmp/541b0efb-8c68-4d6e-9dc9-1dd31218d9b5/6cf6a816-1a16-4f27-a3f3-75070941fbe0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/541b0efb-8c68-4d6e-9dc9-1dd31218d9b5/6cf6a816-1a16-4f27-a3f3-75070941fbe0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/541b0efb-8c68-4d6e-9dc9-1dd31218d9b5/6cf6a816-1a16-4f27-a3f3-75070941fbe0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/541b0efb-8c68-4d6e-9dc9-1dd31218d9b5/6cf6a816-1a16-4f27-a3f3-75070941fbe0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0814230   0.0435512   0.1192949
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5229483   0.3043385   0.7415580
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0388078   0.0165444   0.0610712
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2105053   0.1162015   0.3048091
ki1000108-IRC              INDIA                          0                    NA                0.1096480   0.0767658   0.1425301
ki1000108-IRC              INDIA                          1                    NA                0.1715943   0.0807986   0.2623899
ki1000109-EE               PAKISTAN                       0                    NA                0.0513059   0.0227781   0.0798338
ki1000109-EE               PAKISTAN                       1                    NA                0.2298610   0.1597531   0.2999689
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1792550   0.1235130   0.2349970
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3308195   0.1712863   0.4903526
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1090273   0.0954726   0.1225819
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3532121   0.3045245   0.4018998
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1220091   0.1030184   0.1409998
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4295957   0.3695822   0.4896092
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1074673   0.0720430   0.1428916
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4187680   0.3056331   0.5319028
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0890988   0.0626867   0.1155110
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2799265   0.1708905   0.3889625
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0458541   0.0286259   0.0630823
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3032395   0.1566717   0.4498072
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0466529   0.0307278   0.0625780
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2135294   0.0929965   0.3340623
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0402136   0.0313027   0.0491245
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3321573   0.1950875   0.4692272
ki1101329-Keneba           GAMBIA                         0                    NA                0.0695383   0.0583396   0.0807370
ki1101329-Keneba           GAMBIA                         1                    NA                0.3473945   0.2512680   0.4435209
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1392968   0.1094339   0.1691597
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5250211   0.3997360   0.6503061
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0528764   0.0222592   0.0834935
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2967312   0.1546365   0.4388259
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0383137   0.0341037   0.0425237
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1766930   0.1356373   0.2177488
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0268860   0.0160521   0.0377200
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1596770   0.0740817   0.2452723
ki1135781-COHORTS          INDIA                          0                    NA                0.1183929   0.1097396   0.1270462
ki1135781-COHORTS          INDIA                          1                    NA                0.3598915   0.3023619   0.4174212
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0653941   0.0558403   0.0749480
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3079374   0.2127450   0.4031299
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0453401   0.0308600   0.0598201
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.3636364   0.1625006   0.5647722
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0204678   0.0117997   0.0291359
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.1750000   0.0571939   0.2928061
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1877884   0.1774635   0.1981132
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3696903   0.3356387   0.4037419
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0891091   0.0789223   0.0992958
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3593071   0.2881240   0.4304902


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
ki0047075b-MAL-ED          INDIA                          1                    0                 6.422608   3.4326072   12.017073
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 5.424307   2.6073468   11.284692
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.564956   0.8512196    2.877150
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 4.480204   2.3665596    8.481605
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.845525   1.0423174    3.267681
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 3.239668   2.6909486    3.900278
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.521014   2.7069788    4.579843
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 3.896701   2.5417233    5.974008
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.141752   1.9226277    5.133915
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 6.613138   3.5834533   12.204315
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.576980   2.3650179    8.857753
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 8.259821   5.1694208   13.197736
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 4.995728   3.6287408    6.877673
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.769081   2.7329598    5.198017
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 5.611794   2.6479669   11.892983
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 4.611748   3.5669323    5.962608
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 5.939032   3.0391641   11.605855
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 3.039808   2.5498499    3.623912
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 4.708945   3.3452569    6.628539
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 8.020202   4.2344866   15.190422
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 8.550000   3.8598198   18.939355
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.968654   1.7668660    2.193487
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 4.032217   3.2032308    5.075743


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0382351    0.0120535    0.0644166
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0362592    0.0156086    0.0569098
ki1000108-IRC              INDIA                          0                    NA                 0.0074252   -0.0074559    0.0223063
ki1000109-EE               PAKISTAN                       0                    NA                 0.0672925    0.0367885    0.0977964
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0252905   -0.0023894    0.0529703
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0535744    0.0432624    0.0638864
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0398534    0.0207079    0.0589990
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0614335    0.0349892    0.0878778
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0237416    0.0084977    0.0389855
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0182906    0.0071831    0.0293981
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0142889    0.0049501    0.0236278
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0092398    0.0048639    0.0136157
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0192489    0.0129001    0.0255976
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0462702    0.0284879    0.0640525
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0427412    0.0159017    0.0695806
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0055552    0.0037301    0.0073803
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0098310    0.0029948    0.0166672
ki1135781-COHORTS          INDIA                          0                    NA                -0.0101907   -0.0154441   -0.0049373
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0125892    0.0079072    0.0172711
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0085815    0.0020941    0.0150689
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.0057986    0.0010281    0.0105691
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0174137    0.0097031    0.0251244
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0175681    0.0125134    0.0226229


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3195360    0.0930862    0.4894430
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.4830249    0.2038238    0.6643165
ki1000108-IRC              INDIA                          0                    NA                 0.0634234   -0.0716802    0.1814949
ki1000109-EE               PAKISTAN                       0                    NA                 0.5673977    0.3032585    0.7314000
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1236423   -0.0206367    0.2475257
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.3294823    0.2675841    0.3861493
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2462178    0.1319050    0.3454775
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3637252    0.2060749    0.4900708
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2104000    0.0724881    0.3278057
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2851464    0.1154528    0.4222855
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2344684    0.0823477    0.3613717
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1868383    0.1014669    0.2640983
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2167979    0.1476704    0.2803188
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2493448    0.1548657    0.3332619
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.4470015    0.1598920    0.6359904
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1266315    0.0857350    0.1656986
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2677510    0.0822704    0.4157445
ki1135781-COHORTS          INDIA                          0                    NA                -0.0941822   -0.1455268   -0.0451389
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1614342    0.1027756    0.2162578
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.1591482    0.0391575    0.2641543
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.2207602    0.0388032    0.3682724
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0848614    0.0466382    0.1215521
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1646851    0.1179895    0.2089084
