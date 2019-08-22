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
![](/tmp/3ecf8675-f76b-4ddd-a481-87be11d69ae8/ee78b970-e20e-432a-b81d-90a8bda5bbf3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ecf8675-f76b-4ddd-a481-87be11d69ae8/ee78b970-e20e-432a-b81d-90a8bda5bbf3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3ecf8675-f76b-4ddd-a481-87be11d69ae8/ee78b970-e20e-432a-b81d-90a8bda5bbf3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ecf8675-f76b-4ddd-a481-87be11d69ae8/ee78b970-e20e-432a-b81d-90a8bda5bbf3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1018519   0.0614310   0.1422727
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3157895   0.1063343   0.5252446
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0566721   0.0290044   0.0843398
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1217531   0.0523741   0.1911321
ki1000108-IRC              INDIA                          0                    NA                0.1100137   0.0768583   0.1431691
ki1000108-IRC              INDIA                          1                    NA                0.1562440   0.0632009   0.2492871
ki1000109-EE               PAKISTAN                       0                    NA                0.1078873   0.0609113   0.1548634
ki1000109-EE               PAKISTAN                       1                    NA                0.1596977   0.1026896   0.2167057
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2148672   0.1458245   0.2839100
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1873202   0.1010007   0.2736396
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1466492   0.1169377   0.1763606
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3097582   0.2113561   0.4081604
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1624432   0.1230453   0.2018411
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3264618   0.2022176   0.4507060
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1015537   0.0743977   0.1287097
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1842947   0.0903464   0.2782431
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0468874   0.0374234   0.0563513
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1325272   0.0697853   0.1952692
ki1101329-Keneba           GAMBIA                         0                    NA                0.0805652   0.0687547   0.0923757
ki1101329-Keneba           GAMBIA                         1                    NA                0.1374655   0.0874718   0.1874592
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1597549   0.1290280   0.1904818
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5287690   0.3654833   0.6920548
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0615569   0.0274250   0.0956889
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2147639   0.1056848   0.3238430
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0439224   0.0310796   0.0567652
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1578947   0.0419004   0.2738891
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0434326   0.0392196   0.0476456
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0761687   0.0514576   0.1008798
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0278221   0.0168621   0.0387822
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1200414   0.0651603   0.1749226
ki1135781-COHORTS          INDIA                          0                    NA                0.1088531   0.1012136   0.1164925
ki1135781-COHORTS          INDIA                          1                    NA                0.2067938   0.1644402   0.2491474
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0740985   0.0637824   0.0844146
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2344271   0.1515393   0.3173150
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2093598   0.2022661   0.2164534
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2517876   0.2230863   0.2804889
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1038546   0.0920052   0.1157041
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1474911   0.1100304   0.1849518


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
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.1483794   1.0142964   4.550479
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.4202237   0.7284291   2.769021
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.4802261   0.8415694   2.603552
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.8717949   0.4954981   1.533863
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.1122402   1.3170055   3.387654
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.0096981   1.2804858   3.154183
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.8147520   1.0203256   3.227719
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.8265021   1.6882211   4.732268
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.7062642   1.1532019   2.524569
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.3098765   2.3024753   4.758045
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 3.4888655   1.6462390   7.393934
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 3.5948591   1.6303945   7.926310
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7537212   1.2501491   2.460137
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 4.3146014   2.3646081   7.872672
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 1.8997516   1.5316668   2.356293
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.1637232   2.1624986   4.628509
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2026550   1.0686353   1.353482
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4201683   1.0747415   1.876617


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0172971   -0.0014992    0.0360934
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0190036    0.0001193    0.0378879
ki1000108-IRC              INDIA                          0                    NA                 0.0070595   -0.0079790    0.0220980
ki1000109-EE               PAKISTAN                       0                    NA                 0.0124335   -0.0233445    0.0482115
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0105194   -0.0522750    0.0312362
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0190569   -0.0031615    0.0412753
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0266115    0.0064092    0.0468138
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0093521   -0.0027183    0.0214224
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0070982   -0.0002455    0.0144419
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036577    0.0003777    0.0069377
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0077341    0.0025384    0.0129298
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0249909    0.0119458    0.0380359
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0376494    0.0102610    0.0650378
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0042586   -0.0003001    0.0088172
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008599   -0.0013376    0.0030574
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0122561    0.0044568    0.0200554
ki1135781-COHORTS          INDIA                          0                    NA                 0.0029995   -0.0001587    0.0061578
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0063572    0.0016745    0.0110398
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0215810   -0.0253121   -0.0178500
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0034309   -0.0020608    0.0089225


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1451720   -0.0204566    0.2839176
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2511189   -0.0280182    0.4544621
ki1000108-IRC              INDIA                          0                    NA                 0.0603000   -0.0765763    0.1797737
ki1000109-EE               PAKISTAN                       0                    NA                 0.1033363   -0.2484082    0.3559753
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0514780   -0.2764490    0.1338424
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1150042   -0.0313116    0.2405617
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1407610    0.0294550    0.2393020
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0843244   -0.0294366    0.1855139
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1177655   -0.0080550    0.2278818
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0723658    0.0065617    0.1338111
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0875894    0.0278654    0.1436443
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1352716    0.0640285    0.2010920
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.3795060    0.0807098    0.5811847
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0883867   -0.0081653    0.1756920
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0194145   -0.0312635    0.0676021
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3058036    0.1089023    0.4591967
ki1135781-COHORTS          INDIA                          0                    NA                 0.0268168   -0.0016172    0.0544437
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0790147    0.0199163    0.1345495
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1149279   -0.1358912   -0.0943516
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0319789   -0.0206637    0.0819065
