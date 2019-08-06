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

studyid                    country                        ever_swasted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                              0      210     240
ki0047075b-MAL-ED          BANGLADESH                     0                              1       14     240
ki0047075b-MAL-ED          BANGLADESH                     1                              0       12     240
ki0047075b-MAL-ED          BANGLADESH                     1                              1        4     240
ki0047075b-MAL-ED          BRAZIL                         0                              0      203     207
ki0047075b-MAL-ED          BRAZIL                         0                              1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                              0        2     207
ki0047075b-MAL-ED          BRAZIL                         1                              1        0     207
ki0047075b-MAL-ED          INDIA                          0                              0      198     235
ki0047075b-MAL-ED          INDIA                          0                              1       17     235
ki0047075b-MAL-ED          INDIA                          1                              0        9     235
ki0047075b-MAL-ED          INDIA                          1                              1       11     235
ki0047075b-MAL-ED          NEPAL                          0                              0      227     235
ki0047075b-MAL-ED          NEPAL                          0                              1        1     235
ki0047075b-MAL-ED          NEPAL                          1                              0        6     235
ki0047075b-MAL-ED          NEPAL                          1                              1        1     235
ki0047075b-MAL-ED          PERU                           0                              0      267     270
ki0047075b-MAL-ED          PERU                           0                              1        2     270
ki0047075b-MAL-ED          PERU                           1                              0        1     270
ki0047075b-MAL-ED          PERU                           1                              1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              0      252     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              0        5     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              1        1     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              0      241     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              0        4     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                              0      284     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                              1       14     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              0       58     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              1       14     370
ki1000108-IRC              INDIA                          0                              0      265     410
ki1000108-IRC              INDIA                          0                              1       19     410
ki1000108-IRC              INDIA                          1                              0       97     410
ki1000108-IRC              INDIA                          1                              1       29     410
ki1000109-EE               PAKISTAN                       0                              0      309     375
ki1000109-EE               PAKISTAN                       0                              1       33     375
ki1000109-EE               PAKISTAN                       1                              0       21     375
ki1000109-EE               PAKISTAN                       1                              1       12     375
ki1000109-ResPak           PAKISTAN                       0                              0      164     230
ki1000109-ResPak           PAKISTAN                       0                              1       28     230
ki1000109-ResPak           PAKISTAN                       1                              0       19     230
ki1000109-ResPak           PAKISTAN                       1                              1       19     230
ki1000304b-SAS-CompFeed    INDIA                          0                              0     1109    1384
ki1000304b-SAS-CompFeed    INDIA                          0                              1      182    1384
ki1000304b-SAS-CompFeed    INDIA                          1                              0       47    1384
ki1000304b-SAS-CompFeed    INDIA                          1                              1       46    1384
ki1000304b-SAS-FoodSuppl   INDIA                          0                              0      315     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                              1       59     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              0       11     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              1       17     402
ki1017093-NIH-Birth        BANGLADESH                     0                              0      445     541
ki1017093-NIH-Birth        BANGLADESH                     0                              1       45     541
ki1017093-NIH-Birth        BANGLADESH                     1                              0       36     541
ki1017093-NIH-Birth        BANGLADESH                     1                              1       15     541
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
ki1101329-Keneba           GAMBIA                         0                              0     1995    2270
ki1101329-Keneba           GAMBIA                         0                              1      145    2270
ki1101329-Keneba           GAMBIA                         1                              0       78    2270
ki1101329-Keneba           GAMBIA                         1                              1       52    2270
ki1112895-Guatemala BSC    GUATEMALA                      0                              0      270     274
ki1112895-Guatemala BSC    GUATEMALA                      0                              1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              0        0     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                              0      450     590
ki1113344-GMS-Nepal        NEPAL                          0                              1       83     590
ki1113344-GMS-Nepal        NEPAL                          1                              0       31     590
ki1113344-GMS-Nepal        NEPAL                          1                              1       26     590
ki1114097-CMIN             BANGLADESH                     0                              0      221     252
ki1114097-CMIN             BANGLADESH                     0                              1       20     252
ki1114097-CMIN             BANGLADESH                     1                              0        6     252
ki1114097-CMIN             BANGLADESH                     1                              1        5     252
ki1114097-CMIN             BRAZIL                         0                              0      118     119
ki1114097-CMIN             BRAZIL                         0                              1        0     119
ki1114097-CMIN             BRAZIL                         1                              0        1     119
ki1114097-CMIN             BRAZIL                         1                              1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                              0      958    1019
ki1114097-CMIN             GUINEA-BISSAU                  0                              1       40    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                              0       12    1019
ki1114097-CMIN             GUINEA-BISSAU                  1                              1        9    1019
ki1114097-CMIN             PERU                           0                              0      640     653
ki1114097-CMIN             PERU                           0                              1        1     653
ki1114097-CMIN             PERU                           1                              0       11     653
ki1114097-CMIN             PERU                           1                              1        1     653
ki1114097-CONTENT          PERU                           0                              0      215     215
ki1114097-CONTENT          PERU                           0                              1        0     215
ki1114097-CONTENT          PERU                           1                              0        0     215
ki1114097-CONTENT          PERU                           1                              1        0     215
ki1119695-PROBIT           BELARUS                        0                              0    15297   16596
ki1119695-PROBIT           BELARUS                        0                              1       16   16596
ki1119695-PROBIT           BELARUS                        1                              0     1275   16596
ki1119695-PROBIT           BELARUS                        1                              1        8   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                              0     9507   10613
ki1126311-ZVITAMBO         ZIMBABWE                       0                              1      363   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                              0      643   10613
ki1126311-ZVITAMBO         ZIMBABWE                       1                              1      100   10613
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
ki1148112-LCNI-5           MALAWI                         0                              0      785     797
ki1148112-LCNI-5           MALAWI                         0                              1       12     797
ki1148112-LCNI-5           MALAWI                         1                              0        0     797
ki1148112-LCNI-5           MALAWI                         1                              1        0     797
kiGH5241-JiVitA-3          BANGLADESH                     0                              0    13643   17260
kiGH5241-JiVitA-3          BANGLADESH                     0                              1     2863   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                              0      372   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                              1      382   17260
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
![](/tmp/84a095f3-7c43-4726-8562-2457e43df7ad/471cb566-f1b3-498c-a76e-4ee5e0250ff7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84a095f3-7c43-4726-8562-2457e43df7ad/471cb566-f1b3-498c-a76e-4ee5e0250ff7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84a095f3-7c43-4726-8562-2457e43df7ad/471cb566-f1b3-498c-a76e-4ee5e0250ff7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84a095f3-7c43-4726-8562-2457e43df7ad/471cb566-f1b3-498c-a76e-4ee5e0250ff7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0790698   0.0429227   0.1152169
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5500000   0.3315024   0.7684976
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0468546   0.0228324   0.0708768
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2009956   0.1070467   0.2949446
ki1000108-IRC              INDIA                          0                    NA                0.0668488   0.0377004   0.0959973
ki1000108-IRC              INDIA                          1                    NA                0.2254769   0.1506146   0.3003391
ki1000109-EE               PAKISTAN                       0                    NA                0.0978123   0.0660958   0.1295288
ki1000109-EE               PAKISTAN                       1                    NA                0.3401720   0.1569876   0.5233563
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1459287   0.0956429   0.1962144
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4997698   0.3326949   0.6668447
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1412765   0.1228241   0.1597289
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4904141   0.4449694   0.5358588
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1588523   0.1218409   0.1958636
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.6740336   0.4937165   0.8543507
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0916881   0.0660922   0.1172840
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2859942   0.1577414   0.4142469
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0371058   0.0287017   0.0455100
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4265984   0.3157834   0.5374134
ki1101329-Keneba           GAMBIA                         0                    NA                0.0688451   0.0581635   0.0795266
ki1101329-Keneba           GAMBIA                         1                    NA                0.3214260   0.2410652   0.4017868
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1564267   0.1255815   0.1872719
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4491688   0.3145595   0.5837781
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
ki1114097-CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0400802   0.0278501   0.0523103
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4285714   0.2540096   0.6031333
ki1119695-PROBIT           BELARUS                        0                    NA                0.0010449   0.0002971   0.0017926
ki1119695-PROBIT           BELARUS                        1                    NA                0.0062354   0.0009301   0.0115407
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0479895   0.0434122   0.0525668
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2791088   0.2379901   0.3202276
ki1135781-COHORTS          INDIA                          0                    NA                0.0866111   0.0771067   0.0961156
ki1135781-COHORTS          INDIA                          1                    NA                0.5372130   0.4789991   0.5954270
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0665314   0.0569532   0.0761097
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2870048   0.2248703   0.3491393
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1770483   0.1705702   0.1835263
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5572521   0.5120442   0.6024600
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1049049   0.0941183   0.1156915
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3961226   0.3122118   0.4800333


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
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0480864   0.0349437   0.0612290
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0436257   0.0397395   0.0475120
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  6.955882   3.795960   12.746262
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  4.289774   2.141724    8.592219
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.372936   1.948063    5.840007
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  3.477805   1.851179    6.533742
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.424754   2.119546    5.533704
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.471306   2.944999    4.091671
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.243148   2.974388    6.053113
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.119208   1.838779    5.291260
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 11.496800   8.147515   16.222911
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.668831   3.484452    6.255787
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.871434   2.007031    4.108124
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.692857   6.427866   17.787739
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  5.967654   3.017791   11.800979
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.816038   4.879112    6.932881
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  6.202586   5.317389    7.235144
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.313822   3.330286    5.587825
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.147458   2.882864    3.436337
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.776016   2.983972    4.778294


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0400792    0.0148059    0.0653525
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0288211    0.0094749    0.0481673
ki1000108-IRC              INDIA                          0                    NA                 0.0502243    0.0247678    0.0756809
ki1000109-EE               PAKISTAN                       0                    NA                 0.0221877    0.0054420    0.0389334
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0584192    0.0259423    0.0908961
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0234634    0.0164283    0.0304984
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0302025    0.0132166    0.0471884
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0192177    0.0061385    0.0322968
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0091084    0.0011028    0.0171141
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0060218   -0.0008431    0.0128867
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0134393    0.0083260    0.0185526
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0179391    0.0123248    0.0235534
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0283191    0.0136333    0.0430049
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0162188    0.0002139    0.0322237
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0080062    0.0024714    0.0135410
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004013    0.0000329    0.0007697
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0043638   -0.0075320   -0.0011956
ki1135781-COHORTS          INDIA                          0                    NA                 0.0251126    0.0174132    0.0328120
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0139529    0.0092953    0.0186105
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0109587    0.0085717    0.0133456
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0023675   -0.0012640    0.0059989


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3363787    0.1248069    0.4968046
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3808500    0.1152117    0.5667362
ki1000108-IRC              INDIA                          0                    NA                 0.4289995    0.2030589    0.5908837
ki1000109-EE               PAKISTAN                       0                    NA                 0.1848978    0.0415492    0.3068067
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2858811    0.1209677    0.4198553
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1424267    0.1012739    0.1816951
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1597552    0.0692408    0.2414673
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1732793    0.0532685    0.2780771
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1400424    0.0151570    0.2490913
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0999067   -0.0178485    0.2040388
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2658865    0.1715237    0.3495015
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2067093    0.1450125    0.2639539
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1532868    0.0729697    0.2266454
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1634855   -0.0027793    0.3021829
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1664963    0.0523415    0.2669000
ki1119695-PROBIT           BELARUS                        0                    NA                 0.2774767    0.1201276    0.4066867
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1000274   -0.1772751   -0.0278485
ki1135781-COHORTS          INDIA                          0                    NA                 0.2247741    0.1544114    0.2892818
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1733615    0.1168997    0.2262133
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0582886    0.0457768    0.0706364
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0220697   -0.0122188    0.0551968
