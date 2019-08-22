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
![](/tmp/06750f5b-478a-4bc1-a487-5d949017e178/52e977ef-ac2f-49cc-8aa8-58af6cccbfb3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06750f5b-478a-4bc1-a487-5d949017e178/52e977ef-ac2f-49cc-8aa8-58af6cccbfb3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06750f5b-478a-4bc1-a487-5d949017e178/52e977ef-ac2f-49cc-8aa8-58af6cccbfb3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06750f5b-478a-4bc1-a487-5d949017e178/52e977ef-ac2f-49cc-8aa8-58af6cccbfb3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0790698   0.0429227   0.1152169
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5500000   0.3315024   0.7684976
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0469486   0.0230162   0.0708810
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1920694   0.1007030   0.2834358
ki1000108-IRC              INDIA                          0                    NA                0.0674694   0.0382997   0.0966391
ki1000108-IRC              INDIA                          1                    NA                0.2313701   0.1566592   0.3060809
ki1000109-EE               PAKISTAN                       0                    NA                0.0975782   0.0659896   0.1291668
ki1000109-EE               PAKISTAN                       1                    NA                0.3522971   0.1754187   0.5291754
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1447253   0.0943282   0.1951224
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4578028   0.2974935   0.6181120
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1412765   0.1228241   0.1597289
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4904141   0.4449694   0.5358588
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1586801   0.1215951   0.1957651
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5895363   0.3809753   0.7980974
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0917379   0.0661255   0.1173503
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2597419   0.1337190   0.3857648
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0370255   0.0286282   0.0454229
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3873492   0.2715367   0.5031616
ki1101329-Keneba           GAMBIA                         0                    NA                0.0688285   0.0581497   0.0795073
ki1101329-Keneba           GAMBIA                         1                    NA                0.3338337   0.2536234   0.4140441
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1560311   0.1252132   0.1868491
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4597398   0.3210566   0.5984230
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
ki1114097-CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0400802   0.0278501   0.0523103
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4285714   0.2540096   0.6031333
ki1119695-PROBIT           BELARUS                        0                    NA                0.0010449   0.0002971   0.0017926
ki1119695-PROBIT           BELARUS                        1                    NA                0.0062354   0.0009301   0.0115407
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0533709   0.0476968   0.0590450
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2857023   0.2433100   0.3280946
ki1135781-COHORTS          INDIA                          0                    NA                0.0852469   0.0760805   0.0944133
ki1135781-COHORTS          INDIA                          1                    NA                0.5356209   0.4771497   0.5940921
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0664889   0.0568995   0.0760784
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2850413   0.2249927   0.3450899
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1775620   0.1710323   0.1840917
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5657452   0.5214269   0.6100634
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1043797   0.0931963   0.1155630
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3942485   0.3122755   0.4762215


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
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  4.091056   2.031970    8.236709
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.429257   1.995759    5.892396
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  3.610406   1.981183    6.579418
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.163253   1.925748    5.195992
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.471306   2.944999    4.091671
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.715251   2.426256    5.689050
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.831348   1.615540    4.962135
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.461674   7.188332   15.225596
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.850226   3.650194    6.444779
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.946462   2.055611    4.223386
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.692857   6.427866   17.787739
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  5.967654   3.017791   11.800979
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.353148   4.458313    6.427587
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  6.283171   5.391995    7.321638
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.287050   3.325603    5.526456
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.186183   2.925343    3.470282
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.777062   2.992216    4.767770


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0400792    0.0148059    0.0653525
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0287271    0.0093510    0.0481032
ki1000108-IRC              INDIA                          0                    NA                 0.0496037    0.0241435    0.0750639
ki1000109-EE               PAKISTAN                       0                    NA                 0.0224218    0.0057301    0.0391134
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0596225    0.0268440    0.0924010
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0234634    0.0164283    0.0304984
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0303747    0.0132555    0.0474938
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0191678    0.0060626    0.0322731
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0091084    0.0011028    0.0171141
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0060218   -0.0008431    0.0128867
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0135195    0.0084097    0.0186294
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0179557    0.0123460    0.0235653
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0287146    0.0139863    0.0434430
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0162188    0.0002139    0.0322237
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0080062    0.0024714    0.0135410
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004013    0.0000329    0.0007697
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0097452   -0.0142935   -0.0051968
ki1135781-COHORTS          INDIA                          0                    NA                 0.0264768    0.0191462    0.0338075
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0139954    0.0093358    0.0186551
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0104449    0.0077726    0.0131173
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0028927   -0.0015781    0.0073635


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3363787    0.1248069    0.4968046
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3796077    0.1146069    0.5652930
ki1000108-IRC              INDIA                          0                    NA                 0.4236985    0.1980375    0.5858616
ki1000109-EE               PAKISTAN                       0                    NA                 0.1868480    0.0443687    0.3080844
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2917698    0.1248155    0.4268751
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1424267    0.1012739    0.1816951
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1606660    0.0692903    0.2430705
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1728299    0.0525332    0.2778529
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1400424    0.0151570    0.2490913
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0999067   -0.0178485    0.2040388
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2674750    0.1732333    0.3509743
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2069002    0.1452669    0.2640893
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1554279    0.0749099    0.2289378
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1634855   -0.0027793    0.3021829
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1664963    0.0523415    0.2669000
ki1119695-PROBIT           BELARUS                        0                    NA                 0.2774767    0.1201276    0.4066867
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2233809   -0.3364119   -0.1199099
ki1135781-COHORTS          INDIA                          0                    NA                 0.2369849    0.1703709    0.2982502
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1738900    0.1173439    0.2268135
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0555561    0.0415152    0.0693912
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0269660   -0.0155323    0.0676858
