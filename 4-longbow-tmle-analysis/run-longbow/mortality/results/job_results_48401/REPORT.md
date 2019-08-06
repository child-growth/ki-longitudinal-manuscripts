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

**Intervention Variable:** pers_wasted06

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

studyid                    country                        pers_wasted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      218     240
ki0047075b-MAL-ED          BANGLADESH                     0                             1       15     240
ki0047075b-MAL-ED          BANGLADESH                     1                             0        4     240
ki0047075b-MAL-ED          BANGLADESH                     1                             1        3     240
ki0047075b-MAL-ED          BRAZIL                         0                             0      205     207
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207
ki0047075b-MAL-ED          BRAZIL                         1                             0        0     207
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207
ki0047075b-MAL-ED          INDIA                          0                             0      201     235
ki0047075b-MAL-ED          INDIA                          0                             1       18     235
ki0047075b-MAL-ED          INDIA                          1                             0        6     235
ki0047075b-MAL-ED          INDIA                          1                             1       10     235
ki0047075b-MAL-ED          NEPAL                          0                             0      231     235
ki0047075b-MAL-ED          NEPAL                          0                             1        0     235
ki0047075b-MAL-ED          NEPAL                          1                             0        2     235
ki0047075b-MAL-ED          NEPAL                          1                             1        2     235
ki0047075b-MAL-ED          PERU                           0                             0      268     270
ki0047075b-MAL-ED          PERU                           0                             1        2     270
ki0047075b-MAL-ED          PERU                           1                             0        0     270
ki0047075b-MAL-ED          PERU                           1                             1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      256     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        1     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      245     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      307     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       35     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       17     370
ki1000108-IRC              INDIA                          0                             0      323     410
ki1000108-IRC              INDIA                          0                             1       26     410
ki1000108-IRC              INDIA                          1                             0       39     410
ki1000108-IRC              INDIA                          1                             1       22     410
ki1000109-EE               PAKISTAN                       0                             0      320     375
ki1000109-EE               PAKISTAN                       0                             1       30     375
ki1000109-EE               PAKISTAN                       1                             0       10     375
ki1000109-EE               PAKISTAN                       1                             1       15     375
ki1000109-ResPak           PAKISTAN                       0                             0      175     230
ki1000109-ResPak           PAKISTAN                       0                             1       32     230
ki1000109-ResPak           PAKISTAN                       1                             0        8     230
ki1000109-ResPak           PAKISTAN                       1                             1       15     230
ki1000304b-SAS-CompFeed    INDIA                          0                             0     1095    1384
ki1000304b-SAS-CompFeed    INDIA                          0                             1      162    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             0       61    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             1       66    1384
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402
ki1017093-NIH-Birth        BANGLADESH                     0                             0      456     541
ki1017093-NIH-Birth        BANGLADESH                     0                             1       36     541
ki1017093-NIH-Birth        BANGLADESH                     1                             0       25     541
ki1017093-NIH-Birth        BANGLADESH                     1                             1       24     541
ki1017093b-PROVIDE         BANGLADESH                     0                             0      568     615
ki1017093b-PROVIDE         BANGLADESH                     0                             1       33     615
ki1017093b-PROVIDE         BANGLADESH                     1                             0        7     615
ki1017093b-PROVIDE         BANGLADESH                     1                             1        7     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      671     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       39     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       15     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        5     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018
ki1101329-Keneba           GAMBIA                         0                             0     2047    2270
ki1101329-Keneba           GAMBIA                         0                             1      161    2270
ki1101329-Keneba           GAMBIA                         1                             0       26    2270
ki1101329-Keneba           GAMBIA                         1                             1       36    2270
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      264     274
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        6     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                             0      449     590
ki1113344-GMS-Nepal        NEPAL                          0                             1       69     590
ki1113344-GMS-Nepal        NEPAL                          1                             0       32     590
ki1113344-GMS-Nepal        NEPAL                          1                             1       40     590
ki1114097-CMIN             BANGLADESH                     0                             0      223     252
ki1114097-CMIN             BANGLADESH                     0                             1       19     252
ki1114097-CMIN             BANGLADESH                     1                             0        4     252
ki1114097-CMIN             BANGLADESH                     1                             1        6     252
ki1114097-CMIN             BRAZIL                         0                             0      116     119
ki1114097-CMIN             BRAZIL                         0                             1        0     119
ki1114097-CMIN             BRAZIL                         1                             0        3     119
ki1114097-CMIN             BRAZIL                         1                             1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                             0      944    1019
ki1114097-CMIN             GUINEA-BISSAU                  0                             1       32    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                             0       26    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                             1       17    1019
ki1114097-CMIN             PERU                           0                             0      641     653
ki1114097-CMIN             PERU                           0                             1        1     653
ki1114097-CMIN             PERU                           1                             0       10     653
ki1114097-CMIN             PERU                           1                             1        1     653
ki1114097-CONTENT          PERU                           0                             0      215     215
ki1114097-CONTENT          PERU                           0                             1        0     215
ki1114097-CONTENT          PERU                           1                             0        0     215
ki1114097-CONTENT          PERU                           1                             1        0     215
ki1119695-PROBIT           BELARUS                        0                             0    15890   16596
ki1119695-PROBIT           BELARUS                        0                             1       11   16596
ki1119695-PROBIT           BELARUS                        1                             0      682   16596
ki1119695-PROBIT           BELARUS                        1                             1       13   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     9744   10613
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      351   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      406   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      112   10613
ki1135781-COHORTS          GUATEMALA                      0                             0      934    1017
ki1135781-COHORTS          GUATEMALA                      0                             1       31    1017
ki1135781-COHORTS          GUATEMALA                      1                             0       42    1017
ki1135781-COHORTS          GUATEMALA                      1                             1       10    1017
ki1135781-COHORTS          INDIA                          0                             0     5684    6892
ki1135781-COHORTS          INDIA                          0                             1      277    6892
ki1135781-COHORTS          INDIA                          1                             0      438    6892
ki1135781-COHORTS          INDIA                          1                             1      493    6892
ki1135781-COHORTS          PHILIPPINES                    0                             0     2467    2808
ki1135781-COHORTS          PHILIPPINES                    0                             1      161    2808
ki1135781-COHORTS          PHILIPPINES                    1                             0      115    2808
ki1135781-COHORTS          PHILIPPINES                    1                             1       65    2808
ki1148112-LCNI-5           MALAWI                         0                             0      777     797
ki1148112-LCNI-5           MALAWI                         0                             1        7     797
ki1148112-LCNI-5           MALAWI                         1                             0        8     797
ki1148112-LCNI-5           MALAWI                         1                             1        5     797
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    13690   17260
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     2535   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             0      325   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             1      710   17260
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4506    5239
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      393    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      171    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      169    5239


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
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/94311085-15a6-4166-b208-8cb51b07c57c/01c3386f-e577-46a8-b984-3426ba2c897a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/94311085-15a6-4166-b208-8cb51b07c57c/01c3386f-e577-46a8-b984-3426ba2c897a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/94311085-15a6-4166-b208-8cb51b07c57c/01c3386f-e577-46a8-b984-3426ba2c897a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/94311085-15a6-4166-b208-8cb51b07c57c/01c3386f-e577-46a8-b984-3426ba2c897a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0821918   0.0457380   0.1186455
ki0047075b-MAL-ED          INDIA                          1                    NA                0.6250000   0.3872778   0.8627222
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0345230   0.0143961   0.0546498
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3336608   0.2028366   0.4644850
ki1000108-IRC              INDIA                          0                    NA                0.0740552   0.0464770   0.1016333
ki1000108-IRC              INDIA                          1                    NA                0.3534959   0.2259485   0.4810434
ki1000109-EE               PAKISTAN                       0                    NA                0.0857256   0.0563556   0.1150955
ki1000109-EE               PAKISTAN                       1                    NA                0.5863806   0.3868647   0.7858966
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1545894   0.1052342   0.2039446
ki1000109-ResPak           PAKISTAN                       1                    NA                0.6521739   0.4571027   0.8472451
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1320366   0.1155662   0.1485069
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5018650   0.4073634   0.5963665
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0823720   0.0515150   0.1132290
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5269710   0.4232107   0.6307312
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0727936   0.0497671   0.0958201
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4298030   0.2857532   0.5738528
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366318   0.0283078   0.0449557
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5934098   0.4631479   0.7236716
ki1101329-Keneba           GAMBIA                         0                    NA                0.0729796   0.0621191   0.0838401
ki1101329-Keneba           GAMBIA                         1                    NA                0.5829020   0.4623671   0.7034369
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1340646   0.1047695   0.1633597
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5287427   0.4169759   0.6405095
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0330082   0.0217903   0.0442261
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3555366   0.2110220   0.5000512
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006945   0.0001317   0.0012573
ki1119695-PROBIT           BELARUS                        1                    NA                0.0157343   0.0027331   0.0287355
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0347709   0.0310929   0.0384488
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4051532   0.3678338   0.4424727
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0321218   0.0209540   0.0432895
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1865670   0.0639401   0.3091938
ki1135781-COHORTS          INDIA                          0                    NA                0.0474740   0.0418499   0.0530981
ki1135781-COHORTS          INDIA                          1                    NA                0.5438297   0.5028771   0.5847823
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0618936   0.0526396   0.0711476
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3604493   0.2823618   0.4385368
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0089286   0.0022811   0.0155761
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1575621   0.1512841   0.1638402
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7892058   0.7607123   0.8176992
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0816538   0.0721500   0.0911575
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5837031   0.5110365   0.6563697


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1200000   0.0870660   0.1529340
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0867841   0.0752007   0.0983676
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0480864   0.0349437   0.0612290
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0436257   0.0397395   0.0475120
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0150565   0.0065967   0.0235162
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  7.604167    4.239385    13.639560
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  9.664894    4.783400    19.527984
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000108-IRC              INDIA                          1                    0                  4.773414    2.837038     8.031435
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000     1.000000
ki1000109-EE               PAKISTAN                       1                    0                  6.840207    4.215395    11.099421
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000     1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  4.218750    2.723858     6.534061
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.800955    3.293688     4.386346
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.397455    4.185671     9.777985
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.904405    3.725925     9.356603
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  9.106061    5.088919    16.294295
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.551282    2.007191    10.319981
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000     1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.199325   11.806833    22.225956
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000     1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.987193    6.190915    10.304658
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000     1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.943940    2.915491     5.335177
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000     1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.771158    6.348473    18.274923
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000     1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 22.656834   10.605747    48.401319
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000     1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 11.652093   10.128448    13.404942
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  5.808116    2.769350    12.181274
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          INDIA                          1                    0                 11.455323    9.960439    13.174562
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000     1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.823694    4.481342     7.568136
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000     1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 43.076923   18.058272   102.757410
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  5.008855    4.755823     5.275349
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000     1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  7.148514    6.023710     8.483351


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0369572    0.0129774   0.0609369
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0411527    0.0202300   0.0620754
ki1000108-IRC              INDIA                          0                    NA                0.0430180    0.0220040   0.0640320
ki1000109-EE               PAKISTAN                       0                    NA                0.0342744    0.0158506   0.0526982
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0497585    0.0218535   0.0776634
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0327033    0.0238373   0.0415693
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1066828    0.0754239   0.1379416
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0381121    0.0216729   0.0545513
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139133    0.0088070   0.0190197
ki1101329-Keneba           GAMBIA                         0                    NA                0.0138046    0.0090323   0.0185769
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0506812    0.0327060   0.0686563
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0150782    0.0075015   0.0226548
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007517    0.0001689   0.0013344
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0088549    0.0068930   0.0108167
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0081929    0.0023357   0.0140501
ki1135781-COHORTS          INDIA                          0                    NA                0.0642498    0.0583180   0.0701815
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0185907    0.0133337   0.0238478
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061279    0.0006884   0.0115674
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0304448    0.0276060   0.0332837
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0256186    0.0196369   0.0316003


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3101761    0.1095701   0.4655873
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5438037    0.2858813   0.7085707
ki1000108-IRC              INDIA                          0                    NA                0.3674455    0.1906498   0.5056217
ki1000109-EE               PAKISTAN                       0                    NA                0.2856203    0.1354409   0.4097127
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2434988    0.1045154   0.3609113
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1985149    0.1519871   0.2424899
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5642956    0.4131257   0.6765264
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3436442    0.2023709   0.4598956
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2752658    0.1818208   0.3580384
ki1101329-Keneba           GAMBIA                         0                    NA                0.1590678    0.1059706   0.2090115
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2743292    0.1789001   0.3586674
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3135641    0.1652649   0.4355164
ki1119695-PROBIT           BELARUS                        0                    NA                0.5197800    0.3063359   0.6675462
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2029739    0.1597632   0.2439624
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2032234    0.0578113   0.3261934
ki1135781-COHORTS          INDIA                          0                    NA                0.5750771    0.5335198   0.6129322
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2309858    0.1689694   0.2883742
ki1148112-LCNI-5           MALAWI                         0                    NA                0.4069940    0.0430324   0.6325309
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1619346    0.1474154   0.1762065
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2388183    0.1872613   0.2871048
