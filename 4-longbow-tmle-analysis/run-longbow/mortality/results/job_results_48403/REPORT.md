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
![](/tmp/79bec4f3-fc2a-4e82-a974-d9369f27ace2/b2671fd7-2cfd-47e2-9a29-f4a6d5aecbdc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79bec4f3-fc2a-4e82-a974-d9369f27ace2/b2671fd7-2cfd-47e2-9a29-f4a6d5aecbdc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/79bec4f3-fc2a-4e82-a974-d9369f27ace2/b2671fd7-2cfd-47e2-9a29-f4a6d5aecbdc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/79bec4f3-fc2a-4e82-a974-d9369f27ace2/b2671fd7-2cfd-47e2-9a29-f4a6d5aecbdc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1018519   0.0614310   0.1422727
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3157895   0.1063343   0.5252446
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0561338   0.0284122   0.0838555
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1136822   0.0444929   0.1828716
ki1000108-IRC              INDIA                          0                    NA                0.1098336   0.0766473   0.1430199
ki1000108-IRC              INDIA                          1                    NA                0.1533156   0.0609960   0.2456352
ki1000109-EE               PAKISTAN                       0                    NA                0.1059315   0.0609575   0.1509055
ki1000109-EE               PAKISTAN                       1                    NA                0.1601136   0.1030886   0.2171387
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2176263   0.1496325   0.2856201
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1852509   0.0994022   0.2710995
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1466492   0.1169377   0.1763606
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3097582   0.2113561   0.4081604
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1628571   0.1232628   0.2024513
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3442650   0.2244800   0.4640500
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1013241   0.0741798   0.1284683
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1820158   0.0878496   0.2761821
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469432   0.0374736   0.0564127
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1139550   0.0502272   0.1776829
ki1101329-Keneba           GAMBIA                         0                    NA                0.0804076   0.0685780   0.0922371
ki1101329-Keneba           GAMBIA                         1                    NA                0.1315503   0.0871354   0.1759653
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1596267   0.1289177   0.1903358
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5370926   0.3761596   0.6980257
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0621278   0.0279295   0.0963262
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2204317   0.1130807   0.3277827
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0439224   0.0310796   0.0567652
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1578947   0.0419004   0.2738891
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0426058   0.0383763   0.0468353
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0781545   0.0539262   0.1023829
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0279376   0.0169362   0.0389390
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1149658   0.0622141   0.1677175
ki1135781-COHORTS          INDIA                          0                    NA                0.1074624   0.0998275   0.1150973
ki1135781-COHORTS          INDIA                          1                    NA                0.2056961   0.1641406   0.2472516
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0746901   0.0640858   0.0852944
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2379775   0.1546387   0.3213164
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2250904   0.2179146   0.2322662
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2514715   0.2226866   0.2802565
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1159403   0.1036926   0.1281880
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1547160   0.1121105   0.1973215


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
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.0252003   0.9240292   4.438644
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.3958902   0.7109901   2.740558
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.5114826   0.8662821   2.637224
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.8512338   0.4857641   1.491669
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.1122402   1.3170055   3.387654
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.1139091   1.3822193   3.232925
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.7963733   1.0029605   3.217432
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.4275106   1.3387788   4.401629
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.6360434   1.1323029   2.363889
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.3646786   2.3591647   4.798759
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 3.5480347   1.6999324   7.405324
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 3.5948591   1.6303945   7.926310
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8343638   1.3249619   2.539613
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 4.1150913   2.2534583   7.514661
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 1.9141223   1.5469355   2.368466
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.1862001   2.1828806   4.650676
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1172025   0.9924375   1.257652
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3344454   0.9914523   1.796097


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0172971   -0.0014992    0.0360934
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0195419    0.0005967    0.0384870
ki1000108-IRC              INDIA                          0                    NA                 0.0072396   -0.0078753    0.0223545
ki1000109-EE               PAKISTAN                       0                    NA                 0.0143893   -0.0196543    0.0484330
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0132785   -0.0536242    0.0270673
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0190569   -0.0031615    0.0412753
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0261977    0.0057946    0.0466007
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0095817   -0.0024733    0.0216366
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0070982   -0.0002455    0.0144419
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036019    0.0003177    0.0068862
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0078917    0.0026779    0.0131055
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0251190    0.0121023    0.0381358
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0370785    0.0096720    0.0644850
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0042586   -0.0003001    0.0088172
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0016867   -0.0005079    0.0038814
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0121406    0.0043258    0.0199554
ki1135781-COHORTS          INDIA                          0                    NA                 0.0043902    0.0012301    0.0075504
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0057656    0.0006195    0.0109117
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0373116   -0.0412438   -0.0333794
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0086548   -0.0145278   -0.0027818


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1451720   -0.0204566    0.2839176
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2582316   -0.0227917    0.4620407
ki1000108-IRC              INDIA                          0                    NA                 0.0618383   -0.0758106    0.1818752
ki1000109-EE               PAKISTAN                       0                    NA                 0.1195914   -0.2121663    0.3605504
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0649798   -0.2814724    0.1149385
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1150042   -0.0313116    0.2405617
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1385718    0.0259344    0.2381843
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0863947   -0.0272223    0.1874450
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1177655   -0.0080550    0.2278818
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0712618    0.0053527    0.1328035
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0893741    0.0293924    0.1456490
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1359654    0.0648930    0.2016360
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.3737515    0.0749539    0.5760350
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0883867   -0.0081653    0.1756920
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0380818   -0.0124392    0.0860817
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3029227    0.1051260    0.4569998
ki1135781-COHORTS          INDIA                          0                    NA                 0.0392501    0.0108586    0.0668267
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0716618    0.0061892    0.1328210
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1986999   -0.2218092   -0.1760278
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0806705   -0.1371270   -0.0270169
