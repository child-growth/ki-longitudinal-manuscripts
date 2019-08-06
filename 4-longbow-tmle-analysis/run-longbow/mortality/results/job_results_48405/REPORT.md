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

studyid                    country                        ever_sunderweight06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                                   0      211     240
ki0047075b-MAL-ED          BANGLADESH                     0                                   1       15     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   0       11     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   1        3     240
ki0047075b-MAL-ED          BRAZIL                         0                                   0      205     207
ki0047075b-MAL-ED          BRAZIL                         0                                   1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                                   0        0     207
ki0047075b-MAL-ED          BRAZIL                         1                                   1        0     207
ki0047075b-MAL-ED          INDIA                          0                                   0      189     235
ki0047075b-MAL-ED          INDIA                          0                                   1       17     235
ki0047075b-MAL-ED          INDIA                          1                                   0       18     235
ki0047075b-MAL-ED          INDIA                          1                                   1       11     235
ki0047075b-MAL-ED          NEPAL                          0                                   0      223     235
ki0047075b-MAL-ED          NEPAL                          0                                   1        1     235
ki0047075b-MAL-ED          NEPAL                          1                                   0       10     235
ki0047075b-MAL-ED          NEPAL                          1                                   1        1     235
ki0047075b-MAL-ED          PERU                           0                                   0      260     270
ki0047075b-MAL-ED          PERU                           0                                   1        2     270
ki0047075b-MAL-ED          PERU                           1                                   0        8     270
ki0047075b-MAL-ED          PERU                           1                                   1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   0      248     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   0        9     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   1        1     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   0      285     373
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   1       12     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   0       60     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   1       16     373
ki1000108-IRC              INDIA                          0                                   0      308     410
ki1000108-IRC              INDIA                          0                                   1       37     410
ki1000108-IRC              INDIA                          1                                   0       54     410
ki1000108-IRC              INDIA                          1                                   1       11     410
ki1000109-EE               PAKISTAN                       0                                   0      211     375
ki1000109-EE               PAKISTAN                       0                                   1        8     375
ki1000109-EE               PAKISTAN                       1                                   0      119     375
ki1000109-EE               PAKISTAN                       1                                   1       37     375
ki1000109-ResPak           PAKISTAN                       0                                   0      156     230
ki1000109-ResPak           PAKISTAN                       0                                   1       33     230
ki1000109-ResPak           PAKISTAN                       1                                   0       27     230
ki1000109-ResPak           PAKISTAN                       1                                   1       14     230
ki1000304b-SAS-CompFeed    INDIA                          0                                   0     1040    1389
ki1000304b-SAS-CompFeed    INDIA                          0                                   1      133    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   0      118    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   1       98    1389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   0      261     389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   1       31     389
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   0       60     389
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   1       37     389
ki1017093-NIH-Birth        BANGLADESH                     0                                   0      429     541
ki1017093-NIH-Birth        BANGLADESH                     0                                   1       35     541
ki1017093-NIH-Birth        BANGLADESH                     1                                   0       52     541
ki1017093-NIH-Birth        BANGLADESH                     1                                   1       25     541
ki1017093b-PROVIDE         BANGLADESH                     0                                   0      546     615
ki1017093b-PROVIDE         BANGLADESH                     0                                   1       26     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   0       29     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   1       14     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   0      646     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   1       29     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   0       40     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   1       15     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1881    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       35    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018
ki1101329-Keneba           GAMBIA                         0                                   0     1987    2271
ki1101329-Keneba           GAMBIA                         0                                   1      139    2271
ki1101329-Keneba           GAMBIA                         1                                   0       85    2271
ki1101329-Keneba           GAMBIA                         1                                   1       60    2271
ki1112895-Guatemala BSC    GUATEMALA                      0                                   0      260     273
ki1112895-Guatemala BSC    GUATEMALA                      0                                   1        2     273
ki1112895-Guatemala BSC    GUATEMALA                      1                                   0        9     273
ki1112895-Guatemala BSC    GUATEMALA                      1                                   1        2     273
ki1113344-GMS-Nepal        NEPAL                          0                                   0      449     588
ki1113344-GMS-Nepal        NEPAL                          0                                   1       71     588
ki1113344-GMS-Nepal        NEPAL                          1                                   0       31     588
ki1113344-GMS-Nepal        NEPAL                          1                                   1       37     588
ki1114097-CMIN             BANGLADESH                     0                                   0      194     252
ki1114097-CMIN             BANGLADESH                     0                                   1       11     252
ki1114097-CMIN             BANGLADESH                     1                                   0       33     252
ki1114097-CMIN             BANGLADESH                     1                                   1       14     252
ki1114097-CMIN             BRAZIL                         0                                   0      116     119
ki1114097-CMIN             BRAZIL                         0                                   1        0     119
ki1114097-CMIN             BRAZIL                         1                                   0        3     119
ki1114097-CMIN             BRAZIL                         1                                   1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                                   0      951    1017
ki1114097-CMIN             GUINEA-BISSAU                  0                                   1       41    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                                   0       18    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                                   1        7    1017
ki1114097-CMIN             PERU                           0                                   0      631     652
ki1114097-CMIN             PERU                           0                                   1        1     652
ki1114097-CMIN             PERU                           1                                   0       19     652
ki1114097-CMIN             PERU                           1                                   1        1     652
ki1114097-CONTENT          PERU                           0                                   0      212     215
ki1114097-CONTENT          PERU                           0                                   1        0     215
ki1114097-CONTENT          PERU                           1                                   0        3     215
ki1114097-CONTENT          PERU                           1                                   1        0     215
ki1119695-PROBIT           BELARUS                        0                                   0    16440   16596
ki1119695-PROBIT           BELARUS                        0                                   1       21   16596
ki1119695-PROBIT           BELARUS                        1                                   0      132   16596
ki1119695-PROBIT           BELARUS                        1                                   1        3   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   0     9777   10693
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   1      354   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   0      442   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   1      120   10693
ki1135781-COHORTS          GUATEMALA                      0                                   0      907    1022
ki1135781-COHORTS          GUATEMALA                      0                                   1       20    1022
ki1135781-COHORTS          GUATEMALA                      1                                   0       75    1022
ki1135781-COHORTS          GUATEMALA                      1                                   1       20    1022
ki1135781-COHORTS          INDIA                          0                                   0     5700    6890
ki1135781-COHORTS          INDIA                          0                                   1      432    6890
ki1135781-COHORTS          INDIA                          1                                   0      423    6890
ki1135781-COHORTS          INDIA                          1                                   1      335    6890
ki1135781-COHORTS          PHILIPPINES                    0                                   0     2464    2809
ki1135781-COHORTS          PHILIPPINES                    0                                   1      155    2809
ki1135781-COHORTS          PHILIPPINES                    1                                   0      119    2809
ki1135781-COHORTS          PHILIPPINES                    1                                   1       71    2809
ki1148112-LCNI-5           MALAWI                         0                                   0      771     795
ki1148112-LCNI-5           MALAWI                         0                                   1        7     795
ki1148112-LCNI-5           MALAWI                         1                                   0       13     795
ki1148112-LCNI-5           MALAWI                         1                                   1        4     795
kiGH5241-JiVitA-3          BANGLADESH                     0                                   0    12413   17254
kiGH5241-JiVitA-3          BANGLADESH                     0                                   1     2252   17254
kiGH5241-JiVitA-3          BANGLADESH                     1                                   0     1606   17254
kiGH5241-JiVitA-3          BANGLADESH                     1                                   1      983   17254
kiGH5241-JiVitA-4          BANGLADESH                     0                                   0     4348    5256
kiGH5241-JiVitA-4          BANGLADESH                     0                                   1      404    5256
kiGH5241-JiVitA-4          BANGLADESH                     1                                   0      345    5256
kiGH5241-JiVitA-4          BANGLADESH                     1                                   1      159    5256


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
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/6b77101c-0e55-4fc3-b01c-1ab09d27ebeb/e13390f0-65f8-4438-be36-df71df9a1bb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b77101c-0e55-4fc3-b01c-1ab09d27ebeb/e13390f0-65f8-4438-be36-df71df9a1bb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b77101c-0e55-4fc3-b01c-1ab09d27ebeb/e13390f0-65f8-4438-be36-df71df9a1bb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b77101c-0e55-4fc3-b01c-1ab09d27ebeb/e13390f0-65f8-4438-be36-df71df9a1bb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0815496   0.0438135   0.1192857
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5334799   0.3293651   0.7375947
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0397323   0.0173073   0.0621572
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2458346   0.1561091   0.3355601
ki1000108-IRC              INDIA                          0                    NA                0.1075518   0.0748289   0.1402747
ki1000108-IRC              INDIA                          1                    NA                0.1754997   0.0840515   0.2669479
ki1000109-EE               PAKISTAN                       0                    NA                0.0365297   0.0116498   0.0614095
ki1000109-EE               PAKISTAN                       1                    NA                0.2371795   0.1703427   0.3040162
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1743699   0.1199857   0.2287541
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3596274   0.2145944   0.5046605
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1173908   0.1019091   0.1328724
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4281147   0.3768096   0.4794198
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1061501   0.0706419   0.1416583
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3916143   0.2929784   0.4902503
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0732604   0.0495476   0.0969732
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3472316   0.2272576   0.4672056
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0454588   0.0283631   0.0625545
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3365635   0.1848805   0.4882466
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0434389   0.0281190   0.0587589
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2951011   0.1793092   0.4108930
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388640   0.0303031   0.0474248
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4237059   0.3026554   0.5447565
ki1101329-Keneba           GAMBIA                         0                    NA                0.0681919   0.0572247   0.0791590
ki1101329-Keneba           GAMBIA                         1                    NA                0.3834365   0.2864862   0.4803868
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1382823   0.1087241   0.1678404
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5193842   0.3966935   0.6420748
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0537442   0.0228149   0.0846735
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3125073   0.1767428   0.4482718
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0413306   0.0289323   0.0537290
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2800000   0.1068526   0.4531474
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0595657   0.0510168   0.0681147
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3399313   0.2967413   0.3831213
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0222414   0.0125962   0.0318866
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2176485   0.1261374   0.3091597
ki1135781-COHORTS          INDIA                          0                    NA                0.1058326   0.0977700   0.1138953
ki1135781-COHORTS          INDIA                          1                    NA                0.4367145   0.3858573   0.4875717
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0721366   0.0625064   0.0817669
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4171768   0.3121498   0.5222039
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1641212   0.1560987   0.1721438
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4760040   0.4395898   0.5124182
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0859880   0.0762194   0.0957565
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3991848   0.3298573   0.4685122


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1200000   0.0870660   0.1529340
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1748072   0.1370161   0.2125983
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0876266   0.0759950   0.0992582
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1836735   0.1523490   0.2149980
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0471976   0.0341581   0.0602372
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0448485   0.0409472   0.0487498
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0391389   0.0272438   0.0510341
ki1135781-COHORTS          INDIA                          NA                   NA                0.1113208   0.1038935   0.1187480
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1874928   0.1809540   0.1940315
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1071157   0.0969298   0.1173015


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  6.541781   3.586211   11.933180
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  6.187278   3.142800   12.180990
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.631769   0.892179    2.984458
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  6.492788   3.106855   13.568803
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.062439   1.239111    3.432830
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.646920   2.971948    4.475187
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.689251   2.425213    5.612115
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.739690   2.950966    7.612647
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  7.403701   4.114220   13.323251
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.793472   4.010716   11.506987
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.902277   7.598038   15.643465
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.622908   4.167736    7.586154
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.755971   2.731291    5.165072
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.814717   2.826979   11.960094
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.774634   3.407171   13.470316
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.706829   4.709460    6.915419
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  9.785743   5.352246   17.891696
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.126463   3.590253    4.742757
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.783148   4.348047    7.691913
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.900319   2.643493    3.182097
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.642334   3.769886    5.716688


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0375993    0.0115909    0.0636076
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0353348    0.0146209    0.0560486
ki1000108-IRC              INDIA                          0                    NA                 0.0095214   -0.0060588    0.0251015
ki1000109-EE               PAKISTAN                       0                    NA                 0.0834703    0.0521549    0.1147857
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0299779    0.0010435    0.0589122
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0489159    0.0300080    0.0678239
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0686571    0.0402013    0.0971129
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0376453    0.0206582    0.0546325
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0195818    0.0082039    0.0309598
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0168350    0.0068973    0.0267728
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0116811    0.0069349    0.0164273
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0194347    0.0130610    0.0258084
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0453912    0.0278715    0.0629108
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0454621    0.0177448    0.0731795
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0058670    0.0009682    0.0107658
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0147172   -0.0226658   -0.0067687
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0168976    0.0084562    0.0253389
ki1135781-COHORTS          INDIA                          0                    NA                 0.0054881   -0.0004931    0.0114694
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0083190    0.0023797    0.0142584
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0233715    0.0172074    0.0295356
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0211277    0.0160475    0.0262080


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3155655    0.0898552    0.4853010
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.4707095    0.1903825    0.6539743
ki1000108-IRC              INDIA                          0                    NA                 0.0813284   -0.0602211    0.2039796
ki1000109-EE               PAKISTAN                       0                    NA                 0.6955860    0.4387525    0.8348894
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1467003   -0.0042658    0.2749725
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2941308    0.1918227    0.3834877
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3927591    0.2284368    0.5220851
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3394353    0.1896400    0.4615409
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3010705    0.1306212    0.4381018
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2793087    0.1183844    0.4108590
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2311027    0.1423699    0.3106551
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2217904    0.1513248    0.2864053
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2471298    0.1531793    0.3306569
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.4582585    0.1736199    0.6448560
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1243070    0.0200497    0.2174722
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3281545   -0.5231164   -0.1581481
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.4317324    0.2292668    0.5810119
ki1135781-COHORTS          INDIA                          0                    NA                 0.0493000   -0.0050607    0.1007206
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1033990    0.0304548    0.1708553
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1246529    0.0917762    0.1563395
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1972421    0.1510819    0.2408924
