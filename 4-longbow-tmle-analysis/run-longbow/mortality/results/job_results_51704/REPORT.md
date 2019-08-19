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

studyid                    country                        ever_sstunted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ----------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                               0      206     240
ki0047075b-MAL-ED          BANGLADESH                     0                               1       16     240
ki0047075b-MAL-ED          BANGLADESH                     1                               0       16     240
ki0047075b-MAL-ED          BANGLADESH                     1                               1        2     240
ki0047075b-MAL-ED          BRAZIL                         0                               0      190     207
ki0047075b-MAL-ED          BRAZIL                         0                               1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                               0       15     207
ki0047075b-MAL-ED          BRAZIL                         1                               1        0     207
ki0047075b-MAL-ED          INDIA                          0                               0      194     235
ki0047075b-MAL-ED          INDIA                          0                               1       22     235
ki0047075b-MAL-ED          INDIA                          1                               0       13     235
ki0047075b-MAL-ED          INDIA                          1                               1        6     235
ki0047075b-MAL-ED          NEPAL                          0                               0      224     235
ki0047075b-MAL-ED          NEPAL                          0                               1        2     235
ki0047075b-MAL-ED          NEPAL                          1                               0        9     235
ki0047075b-MAL-ED          NEPAL                          1                               1        0     235
ki0047075b-MAL-ED          PERU                           0                               0      234     270
ki0047075b-MAL-ED          PERU                           0                               1        1     270
ki0047075b-MAL-ED          PERU                           1                               0       34     270
ki0047075b-MAL-ED          PERU                           1                               1        1     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                               0      230     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                               1        2     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                               0       27     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                               1        0     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                               0      209     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                               1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                               0       36     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                               1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                               0      260     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                               1       16     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                               0       82     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                               1       12     370
ki1000108-IRC              INDIA                          0                               0      310     410
ki1000108-IRC              INDIA                          0                               1       38     410
ki1000108-IRC              INDIA                          1                               0       52     410
ki1000108-IRC              INDIA                          1                               1       10     410
ki1000109-EE               PAKISTAN                       0                               0      182     374
ki1000109-EE               PAKISTAN                       0                               1       20     374
ki1000109-EE               PAKISTAN                       1                               0      147     374
ki1000109-EE               PAKISTAN                       1                               1       25     374
ki1000109-ResPak           PAKISTAN                       0                               0      114     230
ki1000109-ResPak           PAKISTAN                       0                               1       32     230
ki1000109-ResPak           PAKISTAN                       1                               0       69     230
ki1000109-ResPak           PAKISTAN                       1                               1       15     230
ki1000304b-SAS-CompFeed    INDIA                          0                               0     1018    1388
ki1000304b-SAS-CompFeed    INDIA                          0                               1      163    1388
ki1000304b-SAS-CompFeed    INDIA                          1                               0      140    1388
ki1000304b-SAS-CompFeed    INDIA                          1                               1       67    1388
ki1000304b-SAS-FoodSuppl   INDIA                          0                               0      283     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                               1       55     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                               0       43     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                               1       21     402
ki1017093-NIH-Birth        BANGLADESH                     0                               0      427     541
ki1017093-NIH-Birth        BANGLADESH                     0                               1       48     541
ki1017093-NIH-Birth        BANGLADESH                     1                               0       54     541
ki1017093-NIH-Birth        BANGLADESH                     1                               1       12     541
ki1017093b-PROVIDE         BANGLADESH                     0                               0      549     615
ki1017093b-PROVIDE         BANGLADESH                     0                               1       37     615
ki1017093b-PROVIDE         BANGLADESH                     1                               0       26     615
ki1017093b-PROVIDE         BANGLADESH                     1                               1        3     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                               0      641     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                               1       36     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                               0       45     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                               1        8     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               0     1828    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               1       90    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               0       88    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               1       12    2018
ki1101329-Keneba           GAMBIA                         0                               0     1862    2299
ki1101329-Keneba           GAMBIA                         0                               1      164    2299
ki1101329-Keneba           GAMBIA                         1                               0      234    2299
ki1101329-Keneba           GAMBIA                         1                               1       39    2299
ki1112895-Guatemala BSC    GUATEMALA                      0                               0      246     274
ki1112895-Guatemala BSC    GUATEMALA                      0                               1        2     274
ki1112895-Guatemala BSC    GUATEMALA                      1                               0       24     274
ki1112895-Guatemala BSC    GUATEMALA                      1                               1        2     274
ki1113344-GMS-Nepal        NEPAL                          0                               0      461     590
ki1113344-GMS-Nepal        NEPAL                          0                               1       88     590
ki1113344-GMS-Nepal        NEPAL                          1                               0       20     590
ki1113344-GMS-Nepal        NEPAL                          1                               1       21     590
ki1114097-CMIN             BANGLADESH                     0                               0      181     252
ki1114097-CMIN             BANGLADESH                     0                               1       12     252
ki1114097-CMIN             BANGLADESH                     1                               0       46     252
ki1114097-CMIN             BANGLADESH                     1                               1       13     252
ki1114097-CMIN             BRAZIL                         0                               0      112     119
ki1114097-CMIN             BRAZIL                         0                               1        0     119
ki1114097-CMIN             BRAZIL                         1                               0        7     119
ki1114097-CMIN             BRAZIL                         1                               1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                               0      936    1017
ki1114097-CMIN             GUINEA-BISSAU                  0                               1       43    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                               0       32    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                               1        6    1017
ki1114097-CMIN             PERU                           0                               0      632     653
ki1114097-CMIN             PERU                           0                               1        1     653
ki1114097-CMIN             PERU                           1                               0       19     653
ki1114097-CMIN             PERU                           1                               1        1     653
ki1114097-CONTENT          PERU                           0                               0      206     215
ki1114097-CONTENT          PERU                           0                               1        0     215
ki1114097-CONTENT          PERU                           1                               0        9     215
ki1114097-CONTENT          PERU                           1                               1        0     215
ki1119695-PROBIT           BELARUS                        0                               0    16190   16595
ki1119695-PROBIT           BELARUS                        0                               1       23   16595
ki1119695-PROBIT           BELARUS                        1                               0      381   16595
ki1119695-PROBIT           BELARUS                        1                               1        1   16595
ki1126311-ZVITAMBO         ZIMBABWE                       0                               0     9152   10679
ki1126311-ZVITAMBO         ZIMBABWE                       0                               1      380   10679
ki1126311-ZVITAMBO         ZIMBABWE                       1                               0     1054   10679
ki1126311-ZVITAMBO         ZIMBABWE                       1                               1       93   10679
ki1135781-COHORTS          GUATEMALA                      0                               0      843    1023
ki1135781-COHORTS          GUATEMALA                      0                               1       24    1023
ki1135781-COHORTS          GUATEMALA                      1                               0      139    1023
ki1135781-COHORTS          GUATEMALA                      1                               1       17    1023
ki1135781-COHORTS          INDIA                          0                               0     5774    6893
ki1135781-COHORTS          INDIA                          0                               1      648    6893
ki1135781-COHORTS          INDIA                          1                               0      348    6893
ki1135781-COHORTS          INDIA                          1                               1      123    6893
ki1135781-COHORTS          PHILIPPINES                    0                               0     2411    2809
ki1135781-COHORTS          PHILIPPINES                    0                               1      184    2809
ki1135781-COHORTS          PHILIPPINES                    1                               0      172    2809
ki1135781-COHORTS          PHILIPPINES                    1                               1       42    2809
ki1148112-LCNI-5           MALAWI                         0                               0      721     797
ki1148112-LCNI-5           MALAWI                         0                               1        9     797
ki1148112-LCNI-5           MALAWI                         1                               0       64     797
ki1148112-LCNI-5           MALAWI                         1                               1        3     797
kiGH5241-JiVitA-3          BANGLADESH                     0                               0    12188   17265
kiGH5241-JiVitA-3          BANGLADESH                     0                               1     2584   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                               0     1835   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                               1      658   17265
kiGH5241-JiVitA-4          BANGLADESH                     0                               0     4210    5257
kiGH5241-JiVitA-4          BANGLADESH                     0                               1      449    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                               0      483    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                               1      115    5257


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/5d179250-1dc7-49fe-8be5-84fe94b5a961/1521ebde-8711-41ee-af43-ff1bc049f079/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d179250-1dc7-49fe-8be5-84fe94b5a961/1521ebde-8711-41ee-af43-ff1bc049f079/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d179250-1dc7-49fe-8be5-84fe94b5a961/1521ebde-8711-41ee-af43-ff1bc049f079/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d179250-1dc7-49fe-8be5-84fe94b5a961/1521ebde-8711-41ee-af43-ff1bc049f079/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1018519   0.0614310   0.1422727
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3157895   0.1063343   0.5252446
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0572337   0.0295840   0.0848835
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1241840   0.0557890   0.1925790
ki1000108-IRC              INDIA                          0                    NA                0.1100742   0.0769251   0.1432232
ki1000108-IRC              INDIA                          1                    NA                0.1588284   0.0630926   0.2545642
ki1000109-EE               PAKISTAN                       0                    NA                0.1057039   0.0604950   0.1509127
ki1000109-EE               PAKISTAN                       1                    NA                0.1611474   0.1046586   0.2176363
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2159588   0.1480967   0.2838208
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1875446   0.1025416   0.2725475
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1466492   0.1169377   0.1763606
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3097582   0.2113561   0.4081604
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1629050   0.1233303   0.2024796
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3442698   0.2266309   0.4619088
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1010348   0.0738900   0.1281795
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1657163   0.0705223   0.2609102
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469331   0.0374645   0.0564016
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1271213   0.0647749   0.1894677
ki1101329-Keneba           GAMBIA                         0                    NA                0.0804325   0.0685896   0.0922753
ki1101329-Keneba           GAMBIA                         1                    NA                0.1290742   0.0841972   0.1739513
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1594924   0.1287722   0.1902126
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5367421   0.3704845   0.7029997
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0617159   0.0274474   0.0959843
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2016202   0.0943846   0.3088557
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0439224   0.0310796   0.0567652
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1578947   0.0419004   0.2738891
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0467964   0.0423331   0.0512597
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0749817   0.0506377   0.0993258
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0280869   0.0170340   0.0391398
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1123473   0.0594541   0.1652404
ki1135781-COHORTS          INDIA                          0                    NA                0.1071126   0.0993509   0.1148742
ki1135781-COHORTS          INDIA                          1                    NA                0.2145953   0.1720029   0.2571877
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0745974   0.0641629   0.0850319
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2416460   0.1598607   0.3234313
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2071561   0.2001266   0.2141857
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2442005   0.2162694   0.2721316
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1131977   0.1011530   0.1252423
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1499219   0.1118411   0.1880028


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1203209   0.0873047   0.1533370
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0481809   0.0350130   0.0613488
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0442925   0.0403901   0.0481949
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 3.1004784   1.4313529   6.716000
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.1697694   1.0434624   4.511806
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.4429219   0.7345678   2.834352
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.5245177   0.8744199   2.657938
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.8684276   0.4996308   1.509448
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.1122402   1.3170055   3.387654
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.1133169   1.3882547   3.217067
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.6401903   0.8696925   3.093305
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.7085647   1.5928501   4.605784
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.6047529   1.1004093   2.340249
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.3653154   2.3381470   4.843728
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 3.2669091   1.5125520   7.056085
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 3.5948591   1.6303945   7.926310
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6022981   1.1424903   2.247161
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 3.9999905   2.1694376   7.375148
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.0034560   1.6236230   2.472148
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.2393366   2.2450781   4.673914
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1788235   1.0468091   1.327486
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3244261   1.0046687   1.745953


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0172971   -0.0014992    0.0360934
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0184419   -0.0003729    0.0372568
ki1000108-IRC              INDIA                          0                    NA                 0.0069990   -0.0080931    0.0220912
ki1000109-EE               PAKISTAN                       0                    NA                 0.0146170   -0.0196393    0.0488733
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0116109   -0.0515398    0.0283179
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0190569   -0.0031615    0.0412753
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0261498    0.0056834    0.0466161
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0098710   -0.0022133    0.0219553
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0070982   -0.0002455    0.0144419
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036120    0.0003259    0.0068981
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0078668    0.0026323    0.0131012
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0252534    0.0121879    0.0383189
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0374905    0.0100201    0.0649609
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0042586   -0.0003001    0.0088172
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0025038   -0.0050501    0.0000424
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0119913    0.0041490    0.0198336
ki1135781-COHORTS          INDIA                          0                    NA                 0.0047400    0.0013327    0.0081474
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0058583    0.0009973    0.0107193
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0193774   -0.0229790   -0.0157758
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0059121   -0.0114510   -0.0003732


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1451720   -0.0204566    0.2839176
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2436971   -0.0337090    0.4466585
ki1000108-IRC              INDIA                          0                    NA                 0.0597833   -0.0775728    0.1796308
ki1000109-EE               PAKISTAN                       0                    NA                 0.1214833   -0.2129921    0.3637291
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0568195   -0.2709073    0.1212046
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1150042   -0.0313116    0.2405617
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1383184    0.0253854    0.2381654
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0890032   -0.0249244    0.1902668
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1177655   -0.0080550    0.2278818
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0714613    0.0055180    0.1330320
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0890923    0.0288482    0.1455993
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1366927    0.0653317    0.2026054
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.3779040    0.0773619    0.5805468
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0883867   -0.0081653    0.1756920
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0565296   -0.1163073    0.0000469
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2991980    0.1000911    0.4542521
ki1135781-COHORTS          INDIA                          0                    NA                 0.0423776    0.0116777    0.0721239
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0728140    0.0112428    0.1305512
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1031927   -0.1233517   -0.0833954
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0551066   -0.1081551   -0.0045977
