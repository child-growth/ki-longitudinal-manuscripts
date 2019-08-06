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

**Intervention Variable:** ever_underweight06

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

studyid                    country                        ever_underweight06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  -------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                                  0      160     240
ki0047075b-MAL-ED          BANGLADESH                     0                                  1        3     240
ki0047075b-MAL-ED          BANGLADESH                     1                                  0       62     240
ki0047075b-MAL-ED          BANGLADESH                     1                                  1       15     240
ki0047075b-MAL-ED          BRAZIL                         0                                  0      193     207
ki0047075b-MAL-ED          BRAZIL                         0                                  1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                                  0       12     207
ki0047075b-MAL-ED          BRAZIL                         1                                  1        0     207
ki0047075b-MAL-ED          INDIA                          0                                  0      140     235
ki0047075b-MAL-ED          INDIA                          0                                  1        1     235
ki0047075b-MAL-ED          INDIA                          1                                  0       67     235
ki0047075b-MAL-ED          INDIA                          1                                  1       27     235
ki0047075b-MAL-ED          NEPAL                          0                                  0      196     235
ki0047075b-MAL-ED          NEPAL                          0                                  1        0     235
ki0047075b-MAL-ED          NEPAL                          1                                  0       37     235
ki0047075b-MAL-ED          NEPAL                          1                                  1        2     235
ki0047075b-MAL-ED          PERU                           0                                  0      227     270
ki0047075b-MAL-ED          PERU                           0                                  1        1     270
ki0047075b-MAL-ED          PERU                           1                                  0       41     270
ki0047075b-MAL-ED          PERU                           1                                  1        1     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  0      217     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  1        0     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  0       40     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  1        2     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  0      204     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  0       41     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  0      186     373
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  1        4     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  0      159     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  1       24     373
ki1000108-IRC              INDIA                          0                                  0      199     410
ki1000108-IRC              INDIA                          0                                  1       12     410
ki1000108-IRC              INDIA                          1                                  0      163     410
ki1000108-IRC              INDIA                          1                                  1       36     410
ki1000109-EE               PAKISTAN                       0                                  0      104     375
ki1000109-EE               PAKISTAN                       0                                  1        1     375
ki1000109-EE               PAKISTAN                       1                                  0      226     375
ki1000109-EE               PAKISTAN                       1                                  1       44     375
ki1000109-ResPak           PAKISTAN                       0                                  0      125     230
ki1000109-ResPak           PAKISTAN                       0                                  1       17     230
ki1000109-ResPak           PAKISTAN                       1                                  0       58     230
ki1000109-ResPak           PAKISTAN                       1                                  1       30     230
ki1000304b-SAS-CompFeed    INDIA                          0                                  0      760    1389
ki1000304b-SAS-CompFeed    INDIA                          0                                  1       47    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                  0      398    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                  1      184    1389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  0      180     389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  1        8     389
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  0      141     389
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  1       60     389
ki1017093-NIH-Birth        BANGLADESH                     0                                  0      289     541
ki1017093-NIH-Birth        BANGLADESH                     0                                  1        9     541
ki1017093-NIH-Birth        BANGLADESH                     1                                  0      192     541
ki1017093-NIH-Birth        BANGLADESH                     1                                  1       51     541
ki1017093b-PROVIDE         BANGLADESH                     0                                  0      406     615
ki1017093b-PROVIDE         BANGLADESH                     0                                  1        8     615
ki1017093b-PROVIDE         BANGLADESH                     1                                  0      169     615
ki1017093b-PROVIDE         BANGLADESH                     1                                  1       32     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  0      494     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  1       10     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  0      192     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  1       34     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  0     1741    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  1       31    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  0      175    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  1       71    2018
ki1101329-Keneba           GAMBIA                         0                                  0     1753    2271
ki1101329-Keneba           GAMBIA                         0                                  1       64    2271
ki1101329-Keneba           GAMBIA                         1                                  0      319    2271
ki1101329-Keneba           GAMBIA                         1                                  1      135    2271
ki1112895-Guatemala BSC    GUATEMALA                      0                                  0      216     273
ki1112895-Guatemala BSC    GUATEMALA                      0                                  1        0     273
ki1112895-Guatemala BSC    GUATEMALA                      1                                  0       53     273
ki1112895-Guatemala BSC    GUATEMALA                      1                                  1        4     273
ki1113344-GMS-Nepal        NEPAL                          0                                  0      352     588
ki1113344-GMS-Nepal        NEPAL                          0                                  1       19     588
ki1113344-GMS-Nepal        NEPAL                          1                                  0      128     588
ki1113344-GMS-Nepal        NEPAL                          1                                  1       89     588
ki1114097-CMIN             BANGLADESH                     0                                  0      118     252
ki1114097-CMIN             BANGLADESH                     0                                  1        1     252
ki1114097-CMIN             BANGLADESH                     1                                  0      109     252
ki1114097-CMIN             BANGLADESH                     1                                  1       24     252
ki1114097-CMIN             BRAZIL                         0                                  0      106     119
ki1114097-CMIN             BRAZIL                         0                                  1        0     119
ki1114097-CMIN             BRAZIL                         1                                  0       13     119
ki1114097-CMIN             BRAZIL                         1                                  1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                                  0      894    1017
ki1114097-CMIN             GUINEA-BISSAU                  0                                  1       24    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                                  0       75    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                                  1       24    1017
ki1114097-CMIN             PERU                           0                                  0      597     652
ki1114097-CMIN             PERU                           0                                  1        0     652
ki1114097-CMIN             PERU                           1                                  0       53     652
ki1114097-CMIN             PERU                           1                                  1        2     652
ki1114097-CONTENT          PERU                           0                                  0      200     215
ki1114097-CONTENT          PERU                           0                                  1        0     215
ki1114097-CONTENT          PERU                           1                                  0       15     215
ki1114097-CONTENT          PERU                           1                                  1        0     215
ki1119695-PROBIT           BELARUS                        0                                  0    15356   16596
ki1119695-PROBIT           BELARUS                        0                                  1       12   16596
ki1119695-PROBIT           BELARUS                        1                                  0     1216   16596
ki1119695-PROBIT           BELARUS                        1                                  1       12   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  0     8595   10693
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  1      215   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  0     1624   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  1      259   10693
ki1135781-COHORTS          GUATEMALA                      0                                  0      731    1022
ki1135781-COHORTS          GUATEMALA                      0                                  1        4    1022
ki1135781-COHORTS          GUATEMALA                      1                                  0      251    1022
ki1135781-COHORTS          GUATEMALA                      1                                  1       36    1022
ki1135781-COHORTS          INDIA                          0                                  0     4369    6890
ki1135781-COHORTS          INDIA                          0                                  1      114    6890
ki1135781-COHORTS          INDIA                          1                                  0     1754    6890
ki1135781-COHORTS          INDIA                          1                                  1      653    6890
ki1135781-COHORTS          PHILIPPINES                    0                                  0     2084    2809
ki1135781-COHORTS          PHILIPPINES                    0                                  1       73    2809
ki1135781-COHORTS          PHILIPPINES                    1                                  0      499    2809
ki1135781-COHORTS          PHILIPPINES                    1                                  1      153    2809
ki1148112-LCNI-5           MALAWI                         0                                  0      683     795
ki1148112-LCNI-5           MALAWI                         0                                  1        2     795
ki1148112-LCNI-5           MALAWI                         1                                  0      101     795
ki1148112-LCNI-5           MALAWI                         1                                  1        9     795
kiGH5241-JiVitA-3          BANGLADESH                     0                                  0     8697   17254
kiGH5241-JiVitA-3          BANGLADESH                     0                                  1      841   17254
kiGH5241-JiVitA-3          BANGLADESH                     1                                  0     5322   17254
kiGH5241-JiVitA-3          BANGLADESH                     1                                  1     2394   17254
kiGH5241-JiVitA-4          BANGLADESH                     0                                  0     3358    5256
kiGH5241-JiVitA-4          BANGLADESH                     0                                  1      124    5256
kiGH5241-JiVitA-4          BANGLADESH                     1                                  0     1335    5256
kiGH5241-JiVitA-4          BANGLADESH                     1                                  1      439    5256


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/b6d878b7-1c8e-4afc-b3f4-4a5d67f9b979/1e926eed-2d0e-4c4a-89ce-41dcfc8ad48c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6d878b7-1c8e-4afc-b3f4-4a5d67f9b979/1e926eed-2d0e-4c4a-89ce-41dcfc8ad48c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b6d878b7-1c8e-4afc-b3f4-4a5d67f9b979/1e926eed-2d0e-4c4a-89ce-41dcfc8ad48c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6d878b7-1c8e-4afc-b3f4-4a5d67f9b979/1e926eed-2d0e-4c4a-89ce-41dcfc8ad48c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0580669   0.0258532   0.0902807
ki1000108-IRC              INDIA                          1                    NA                0.1826902   0.1282048   0.2371755
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1184171   0.0647107   0.1721236
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3392674   0.2398394   0.4386955
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0542741   0.0425500   0.0659981
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3254812   0.3068253   0.3441370
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0425532   0.0136629   0.0714435
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2985075   0.2351645   0.3618504
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0302013   0.0107524   0.0496503
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2098765   0.1586286   0.2611245
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0193237   0.0060525   0.0325948
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1592040   0.1085836   0.2098244
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0204457   0.0081184   0.0327729
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1441976   0.0967459   0.1916494
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0175306   0.0114078   0.0236534
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2881428   0.2303753   0.3459103
ki1101329-Keneba           GAMBIA                         0                    NA                0.0355597   0.0268635   0.0442559
ki1101329-Keneba           GAMBIA                         1                    NA                0.2761529   0.2291590   0.3231468
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0514467   0.0288867   0.0740066
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4073299   0.3413860   0.4732739
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0262867   0.0159279   0.0366456
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2236117   0.1420639   0.3051595
ki1119695-PROBIT           BELARUS                        0                    NA                0.0008019   0.0000540   0.0015498
ki1119695-PROBIT           BELARUS                        1                    NA                0.0093614   0.0053752   0.0133475
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0326855   0.0296115   0.0357594
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2134759   0.1757452   0.2512066
ki1135781-COHORTS          INDIA                          0                    NA                0.0296386   0.0254535   0.0338237
ki1135781-COHORTS          INDIA                          1                    NA                0.2768516   0.2450106   0.3086927
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0571120   0.0485806   0.0656434
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2328458   0.1742513   0.2914403
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0859172   0.0801615   0.0916730
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3884807   0.3696124   0.4073490
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0413494   0.0320680   0.0506308
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2845732   0.2432007   0.3259457


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1748072   0.1370161   0.2125983
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0876266   0.0759950   0.0992582
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1836735   0.1523490   0.2149980
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0471976   0.0341581   0.0602372
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0443281   0.0404267   0.0482294
ki1135781-COHORTS          INDIA                          NA                   NA                0.1113208   0.1038935   0.1187480
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1874928   0.1809540   0.1940315
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1071157   0.0969298   0.1173015


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.146199    1.674497    5.911371
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.865020    1.669748    4.915914
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  5.996994    4.813144    7.472026
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  7.014925    3.444331   14.287003
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.949245    3.490055   13.837033
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.238806    3.865305   17.560819
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  7.052728    3.546845   14.024005
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.436526   10.986580   24.589943
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.765893    5.768761   10.454428
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  7.917516    4.961569   12.634525
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  8.506638    4.972989   14.551184
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 11.674411    5.212262   26.148316
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  6.531219    5.344856    7.980911
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  9.340915    7.786644   11.205429
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.077002    3.042280    5.463648
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.521569    4.163424    4.910522
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  6.882158    5.274669    8.979539


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0590062   0.0277216   0.0902909
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0859307   0.0404347   0.1314266
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1120326   0.0978203   0.1262449
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1322540   0.0940956   0.1704124
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0807044   0.0549555   0.1064533
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0457170   0.0278436   0.0635904
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0398283   0.0242443   0.0554123
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330145   0.0250595   0.0409694
ki1101329-Keneba           GAMBIA                         0                    NA                0.0520669   0.0423761   0.0617577
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1322268   0.1030853   0.1613683
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0209109   0.0117623   0.0300596
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006443   0.0002324   0.0010561
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0116426   0.0087168   0.0145684
ki1135781-COHORTS          INDIA                          0                    NA                0.0816822   0.0747864   0.0885779
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0233437   0.0145642   0.0321231
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1015755   0.0954882   0.1076628
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0657663   0.0558551   0.0756774


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.5040116   0.2011969   0.6920336
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4205119   0.1751615   0.5928822
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6736508   0.6136235   0.7243523
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7565707   0.5420949   0.8705893
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7276846   0.5090700   0.8489485
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7028985   0.4528294   0.8386805
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6607880   0.4256923   0.7996461
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6531683   0.5367896   0.7403076
ki1101329-Keneba           GAMBIA                         0                    NA                0.5941905   0.5044974   0.6676478
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7199014   0.5855331   0.8107081
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.4430499   0.2668646   0.5768948
ki1119695-PROBIT           BELARUS                        0                    NA                0.4455072   0.2050111   0.6132496
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2626463   0.2060322   0.3152236
ki1135781-COHORTS          INDIA                          0                    NA                0.7337549   0.6969391   0.7660984
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2901432   0.1917250   0.3765777
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5417570   0.5146888   0.5673156
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6139742   0.5300134   0.6829358
