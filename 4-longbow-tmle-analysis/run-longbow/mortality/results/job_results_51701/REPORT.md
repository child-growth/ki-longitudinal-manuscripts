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
![](/tmp/db85c6bc-9e21-4858-a812-80710cb9fb1d/b9745bcd-f6de-4ee7-9b01-cc08c2308af7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db85c6bc-9e21-4858-a812-80710cb9fb1d/b9745bcd-f6de-4ee7-9b01-cc08c2308af7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db85c6bc-9e21-4858-a812-80710cb9fb1d/b9745bcd-f6de-4ee7-9b01-cc08c2308af7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db85c6bc-9e21-4858-a812-80710cb9fb1d/b9745bcd-f6de-4ee7-9b01-cc08c2308af7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0790698   0.0429227   0.1152169
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5500000   0.3315024   0.7684976
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0477501   0.0235400   0.0719602
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1955300   0.1073318   0.2837282
ki1000108-IRC              INDIA                          0                    NA                0.0664365   0.0372391   0.0956339
ki1000108-IRC              INDIA                          1                    NA                0.2192306   0.1443330   0.2941281
ki1000109-EE               PAKISTAN                       0                    NA                0.0973871   0.0658174   0.1289568
ki1000109-EE               PAKISTAN                       1                    NA                0.3513486   0.1689888   0.5337084
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1449568   0.0946732   0.1952405
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4879264   0.3309364   0.6449164
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1412765   0.1228241   0.1597289
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4904141   0.4449694   0.5358588
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1588539   0.1217399   0.1959679
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5921495   0.3876067   0.7966923
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0921137   0.0664660   0.1177613
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2921222   0.1585361   0.4257083
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0370443   0.0286459   0.0454426
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4035983   0.2868470   0.5203496
ki1101329-Keneba           GAMBIA                         0                    NA                0.0688354   0.0581396   0.0795312
ki1101329-Keneba           GAMBIA                         1                    NA                0.3332338   0.2519835   0.4144840
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1562542   0.1254224   0.1870860
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4555733   0.3215220   0.5896246
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
ki1114097-CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0400802   0.0278501   0.0523103
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4285714   0.2540096   0.6031333
ki1119695-PROBIT           BELARUS                        0                    NA                0.0010449   0.0002971   0.0017926
ki1119695-PROBIT           BELARUS                        1                    NA                0.0062354   0.0009301   0.0115407
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0574698   0.0525159   0.0624237
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3007123   0.2591024   0.3423222
ki1135781-COHORTS          INDIA                          0                    NA                0.0818623   0.0724608   0.0912638
ki1135781-COHORTS          INDIA                          1                    NA                0.5431115   0.4867625   0.5994606
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0665635   0.0569787   0.0761483
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2831100   0.2222518   0.3439682
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1770552   0.1705829   0.1835275
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5580604   0.5147434   0.6013775
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1037568   0.0928954   0.1146183
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3783915   0.2979701   0.4588129


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
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  4.094858   2.073208    8.087879
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.299851   1.889965    5.761491
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  3.607753   1.953383    6.663255
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.366011   2.092617    5.414288
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.471306   2.944999    4.091671
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.727637   2.454213    5.661806
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.171322   1.856736    5.416648
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.895028   7.542087   15.738567
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.841024   3.630286    6.455557
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.915591   2.047450    4.151832
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.692857   6.427866   17.787739
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  5.967654   3.017791   11.800979
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.232526   4.443477    6.161689
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  6.634451   5.685436    7.741875
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.253234   3.287976    5.501863
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.151901   2.898433    3.427535
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.646907   2.880930    4.616542


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0400792    0.0148059    0.0653525
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0279256    0.0083601    0.0474910
ki1000108-IRC              INDIA                          0                    NA                 0.0506367    0.0251279    0.0761455
ki1000109-EE               PAKISTAN                       0                    NA                 0.0226129    0.0059566    0.0392693
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0593910    0.0266453    0.0921367
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0234634    0.0164283    0.0304984
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0302009    0.0131640    0.0472377
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0187920    0.0057606    0.0318235
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0091084    0.0011028    0.0171141
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0060218   -0.0008431    0.0128867
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0135008    0.0083871    0.0186146
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0179488    0.0123019    0.0235956
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0284916    0.0138072    0.0431759
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0162188    0.0002139    0.0322237
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0080062    0.0024714    0.0135410
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004013    0.0000329    0.0007697
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0138441   -0.0175024   -0.0101858
ki1135781-COHORTS          INDIA                          0                    NA                 0.0298614    0.0222590    0.0374638
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0139209    0.0092644    0.0185773
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0109518    0.0084687    0.0134349
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0035156   -0.0005043    0.0075354


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3363787    0.1248069    0.4968046
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.3690162    0.0995844    0.5578259
ki1000108-IRC              INDIA                          0                    NA                 0.4325215    0.2055351    0.5946556
ki1000109-EE               PAKISTAN                       0                    NA                 0.1884410    0.0462855    0.3094076
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2906367    0.1242267    0.4254263
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1424267    0.1012739    0.1816951
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1597467    0.0687519    0.2418501
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1694416    0.0497492    0.2740577
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1400424    0.0151570    0.2490913
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0999067   -0.0178485    0.2040388
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2671047    0.1727828    0.3506717
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2068208    0.1446991    0.2644305
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1542204    0.0739225    0.2275559
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1634855   -0.0027793    0.3021829
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1664963    0.0523415    0.2669000
ki1119695-PROBIT           BELARUS                        0                    NA                 0.2774767    0.1201276    0.4066867
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3173373   -0.4127701   -0.2283511
ki1135781-COHORTS          INDIA                          0                    NA                 0.2672791    0.1977081    0.3308172
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1729636    0.1164865    0.2258306
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0582520    0.0452460    0.0710807
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0327723   -0.0052186    0.0693275
