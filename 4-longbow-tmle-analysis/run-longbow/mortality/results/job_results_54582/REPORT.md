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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_swasted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                              0      211     240
ki0047075b-MAL-ED          BANGLADESH                     0                              1       13     240
ki0047075b-MAL-ED          BANGLADESH                     1                              0       12     240
ki0047075b-MAL-ED          BANGLADESH                     1                              1        4     240
ki0047075b-MAL-ED          BRAZIL                         0                              0      203     207
ki0047075b-MAL-ED          BRAZIL                         0                              1        1     207
ki0047075b-MAL-ED          BRAZIL                         1                              0        2     207
ki0047075b-MAL-ED          BRAZIL                         1                              1        1     207
ki0047075b-MAL-ED          INDIA                          0                              0      198     235
ki0047075b-MAL-ED          INDIA                          0                              1       16     235
ki0047075b-MAL-ED          INDIA                          1                              0        9     235
ki0047075b-MAL-ED          INDIA                          1                              1       12     235
ki0047075b-MAL-ED          NEPAL                          0                              0      227     235
ki0047075b-MAL-ED          NEPAL                          0                              1        1     235
ki0047075b-MAL-ED          NEPAL                          1                              0        6     235
ki0047075b-MAL-ED          NEPAL                          1                              1        1     235
ki0047075b-MAL-ED          PERU                           0                              0      266     270
ki0047075b-MAL-ED          PERU                           0                              1        3     270
ki0047075b-MAL-ED          PERU                           1                              0        1     270
ki0047075b-MAL-ED          PERU                           1                              1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              0      251     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              0        6     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              1        1     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              0      240     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              0        5     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                              0      287     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                              1       14     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              0       55     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              1       14     370
ki1000108-IRC              INDIA                          0                              0      265     410
ki1000108-IRC              INDIA                          0                              1       19     410
ki1000108-IRC              INDIA                          1                              0       97     410
ki1000108-IRC              INDIA                          1                              1       29     410
ki1000109-EE               PAKISTAN                       0                              0      298     374
ki1000109-EE               PAKISTAN                       0                              1       37     374
ki1000109-EE               PAKISTAN                       1                              0       27     374
ki1000109-EE               PAKISTAN                       1                              1       12     374
ki1000109-ResPak           PAKISTAN                       0                              0      168     234
ki1000109-ResPak           PAKISTAN                       0                              1       28     234
ki1000109-ResPak           PAKISTAN                       1                              0       19     234
ki1000109-ResPak           PAKISTAN                       1                              1       19     234
ki1000304b-SAS-CompFeed    INDIA                          0                              0     1109    1384
ki1000304b-SAS-CompFeed    INDIA                          0                              1      182    1384
ki1000304b-SAS-CompFeed    INDIA                          1                              0       47    1384
ki1000304b-SAS-CompFeed    INDIA                          1                              1       46    1384
ki1000304b-SAS-FoodSuppl   INDIA                          0                              0      315     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                              1       59     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              0       11     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              1       17     402
ki1017093-NIH-Birth        BANGLADESH                     0                              0      445     542
ki1017093-NIH-Birth        BANGLADESH                     0                              1       45     542
ki1017093-NIH-Birth        BANGLADESH                     1                              0       36     542
ki1017093-NIH-Birth        BANGLADESH                     1                              1       16     542
ki1017093b-PROVIDE         BANGLADESH                     0                              0      557     615
ki1017093b-PROVIDE         BANGLADESH                     0                              1       33     615
ki1017093b-PROVIDE         BANGLADESH                     1                              0       18     615
ki1017093b-PROVIDE         BANGLADESH                     1                              1        7     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                              0      645     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                              1       37     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                              0       41     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                              1        7     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1871    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       72    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0       45    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       30    2018
ki1101329-Keneba           GAMBIA                         0                              0     1935    2298
ki1101329-Keneba           GAMBIA                         0                              1      144    2298
ki1101329-Keneba           GAMBIA                         1                              0      160    2298
ki1101329-Keneba           GAMBIA                         1                              1       59    2298
ki1112895-Guatemala BSC    GUATEMALA                      0                              0      270     274
ki1112895-Guatemala BSC    GUATEMALA                      0                              1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              0        0     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                              0      433     590
ki1113344-GMS-Nepal        NEPAL                          0                              1       83     590
ki1113344-GMS-Nepal        NEPAL                          1                              0       48     590
ki1113344-GMS-Nepal        NEPAL                          1                              1       26     590
ki1114097-CMIN             BANGLADESH                     0                              0      221     252
ki1114097-CMIN             BANGLADESH                     0                              1       20     252
ki1114097-CMIN             BANGLADESH                     1                              0        6     252
ki1114097-CMIN             BANGLADESH                     1                              1        5     252
ki1114097-CONTENT          PERU                           0                              0      215     215
ki1114097-CONTENT          PERU                           0                              1        0     215
ki1114097-CONTENT          PERU                           1                              0        0     215
ki1114097-CONTENT          PERU                           1                              1        0     215
ki1119695-PROBIT           BELARUS                        0                              0    15297   16596
ki1119695-PROBIT           BELARUS                        0                              1       16   16596
ki1119695-PROBIT           BELARUS                        1                              0     1275   16596
ki1119695-PROBIT           BELARUS                        1                              1        8   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                              0     9623   10731
ki1126311-ZVITAMBO         ZIMBABWE                       0                              1      359   10731
ki1126311-ZVITAMBO         ZIMBABWE                       1                              0      651   10731
ki1126311-ZVITAMBO         ZIMBABWE                       1                              1       98   10731
ki1135781-COHORTS          GUATEMALA                      0                              0      914    1017
ki1135781-COHORTS          GUATEMALA                      0                              1       37    1017
ki1135781-COHORTS          GUATEMALA                      1                              0       62    1017
ki1135781-COHORTS          GUATEMALA                      1                              1        4    1017
ki1135781-COHORTS          INDIA                          0                              0     5796    6892
ki1135781-COHORTS          INDIA                          0                              1      488    6892
ki1135781-COHORTS          INDIA                          1                              0      326    6892
ki1135781-COHORTS          INDIA                          1                              1      282    6892
ki1135781-COHORTS          PHILIPPINES                    0                              0     2431    2808
ki1135781-COHORTS          PHILIPPINES                    0                              1      175    2808
ki1135781-COHORTS          PHILIPPINES                    1                              0      151    2808
ki1135781-COHORTS          PHILIPPINES                    1                              1       51    2808
ki1148112-LCNI-5           MALAWI                         0                              0      784     797
ki1148112-LCNI-5           MALAWI                         0                              1       13     797
ki1148112-LCNI-5           MALAWI                         1                              0        0     797
ki1148112-LCNI-5           MALAWI                         1                              1        0     797
kiGH5241-JiVitA-3          BANGLADESH                     0                              0    13643   17260
kiGH5241-JiVitA-3          BANGLADESH                     0                              1     2864   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                              0      372   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                              1      381   17260
kiGH5241-JiVitA-4          BANGLADESH                     0                              0     4586    5239
kiGH5241-JiVitA-4          BANGLADESH                     0                              1      519    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                              0       91    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                              1       43    5239


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
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/0ff8f52c-b9eb-4f6d-88a8-edbbe1d3c1d8/2e3f8c9d-df02-4fa4-9272-0d2d1fb60aa3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0ff8f52c-b9eb-4f6d-88a8-edbbe1d3c1d8/2e3f8c9d-df02-4fa4-9272-0d2d1fb60aa3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0ff8f52c-b9eb-4f6d-88a8-edbbe1d3c1d8/2e3f8c9d-df02-4fa4-9272-0d2d1fb60aa3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0ff8f52c-b9eb-4f6d-88a8-edbbe1d3c1d8/2e3f8c9d-df02-4fa4-9272-0d2d1fb60aa3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0747664   0.0394524   0.1100803
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5714286   0.3593206   0.7835366
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0458286   0.0222156   0.0694416
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2068054   0.1106667   0.3029442
ki1000108-IRC              INDIA                          0                    NA                0.0676237   0.0384804   0.0967670
ki1000108-IRC              INDIA                          1                    NA                0.2378024   0.1634531   0.3121516
ki1000109-EE               PAKISTAN                       0                    NA                0.1108046   0.0770978   0.1445114
ki1000109-EE               PAKISTAN                       1                    NA                0.2947664   0.1455634   0.4439694
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1443394   0.0950609   0.1936179
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4937117   0.3284911   0.6589323
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1421685   0.1235170   0.1608201
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4625415   0.4161502   0.5089327
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1588483   0.1217024   0.1959942
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5698870   0.3675428   0.7722311
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0918586   0.0662654   0.1174518
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3054146   0.1763087   0.4345205
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0370888   0.0286875   0.0454902
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4597006   0.3482468   0.5711545
ki1101329-Keneba           GAMBIA                         0                    NA                0.0695198   0.0586009   0.0804387
ki1101329-Keneba           GAMBIA                         1                    NA                0.2594245   0.2010251   0.3178238
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1602382   0.1285350   0.1919414
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3541993   0.2415297   0.4668689
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
ki1114097-CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
ki1119695-PROBIT           BELARUS                        0                    NA                0.0010449   0.0002971   0.0017926
ki1119695-PROBIT           BELARUS                        1                    NA                0.0062354   0.0009301   0.0115407
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0360508   0.0323985   0.0397030
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1282742   0.1044314   0.1521170
ki1135781-COHORTS          INDIA                          0                    NA                0.0779741   0.0713564   0.0845918
ki1135781-COHORTS          INDIA                          1                    NA                0.4521116   0.4128462   0.4913770
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0669332   0.0573285   0.0765379
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2684904   0.2105703   0.3264104
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1735893   0.1673069   0.1798717
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5043848   0.4643099   0.5444596
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1017559   0.0913970   0.1121149
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3089712   0.2100015   0.4079409


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  7.642857   4.191447   13.936300
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  4.512582   2.251911    9.042716
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.516555   2.062226    5.996510
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  2.660236   1.473929    4.801355
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.420492   2.125896    5.503451
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.253473   2.793448    3.789254
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.587618   2.342007    5.495716
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.324835   2.003467    5.517699
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.394589   8.891980   17.276898
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  3.731664   2.837918    4.906877
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.210455   1.520408    3.213684
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  5.967654   3.017791   11.800979
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.558153   2.880270    4.395579
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.798227   5.137223    6.544283
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.011320   3.099563    5.191276
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.905621   2.666753    3.165886
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.036395   2.172991    4.242859


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0443826    0.0179485   0.0708166
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0298470    0.0105893   0.0491048
ki1000108-IRC              INDIA                          0                    NA                0.0494495    0.0240083   0.0748907
ki1000109-EE               PAKISTAN                       0                    NA                0.0202114    0.0035019   0.0369210
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0565153    0.0250187   0.0880119
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0225714    0.0158434   0.0292993
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0302064    0.0131216   0.0472913
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0206875    0.0072676   0.0341074
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0091084    0.0011028   0.0171141
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0060218   -0.0008431   0.0128867
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134563    0.0083454   0.0185671
ki1101329-Keneba           GAMBIA                         0                    NA                0.0188179    0.0127176   0.0249182
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0245075    0.0093680   0.0396471
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0162188    0.0002139   0.0322237
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004013    0.0000329   0.0007697
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0065361    0.0047850   0.0082872
ki1135781-COHORTS          INDIA                          0                    NA                0.0337496    0.0293988   0.0381004
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0135512    0.0089027   0.0181996
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0144177    0.0122254   0.0166099
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0055165    0.0026653   0.0083677


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3724967    0.1536730   0.5347420
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3944074    0.1329190   0.5770379
ki1000108-IRC              INDIA                          0                    NA                0.4223811    0.1971502   0.5844259
ki1000109-EE               PAKISTAN                       0                    NA                0.1542669    0.0222196   0.2684815
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2813741    0.1193667   0.4135775
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1370121    0.0971847   0.1750824
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1597762    0.0684664   0.2421358
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1838139    0.0629190   0.2891119
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1400424    0.0151570   0.2490913
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0999067   -0.0178485   0.2040388
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2662232    0.1719334   0.3497765
ki1101329-Keneba           GAMBIA                         0                    NA                0.2130224    0.1461954   0.2746189
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1326555    0.0487156   0.2091887
ki1114097-CMIN             BANGLADESH                     0                    NA                0.1634855   -0.0027793   0.3021829
ki1119695-PROBIT           BELARUS                        0                    NA                0.2774767    0.1201276   0.4066867
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1534771    0.1136539   0.1915111
ki1135781-COHORTS          INDIA                          0                    NA                0.3020811    0.2668119   0.3356537
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1683701    0.1119234   0.2212289
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0766868    0.0654213   0.0878165
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0514247    0.0249990   0.0771343
