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

**Intervention Variable:** ever_co06

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

studyid                    country                        ever_co06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ----------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                         0      215     240
ki0047075b-MAL-ED          BANGLADESH                     0                         1       16     240
ki0047075b-MAL-ED          BANGLADESH                     1                         0        7     240
ki0047075b-MAL-ED          BANGLADESH                     1                         1        2     240
ki0047075b-MAL-ED          BRAZIL                         0                         0      205     207
ki0047075b-MAL-ED          BRAZIL                         0                         1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                         0        0     207
ki0047075b-MAL-ED          BRAZIL                         1                         1        0     207
ki0047075b-MAL-ED          INDIA                          0                         0      197     235
ki0047075b-MAL-ED          INDIA                          0                         1       21     235
ki0047075b-MAL-ED          INDIA                          1                         0       10     235
ki0047075b-MAL-ED          INDIA                          1                         1        7     235
ki0047075b-MAL-ED          NEPAL                          0                         0      227     235
ki0047075b-MAL-ED          NEPAL                          0                         1        1     235
ki0047075b-MAL-ED          NEPAL                          1                         0        6     235
ki0047075b-MAL-ED          NEPAL                          1                         1        1     235
ki0047075b-MAL-ED          PERU                           0                         0      267     270
ki0047075b-MAL-ED          PERU                           0                         1        2     270
ki0047075b-MAL-ED          PERU                           1                         0        1     270
ki0047075b-MAL-ED          PERU                           1                         1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                         0      252     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                         1        2     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                         0        5     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                         1        0     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                         0      241     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                         0        4     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                         0      317     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                         1       22     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                         0       25     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                         1        6     370
ki1000108-IRC              INDIA                          0                         0      342     409
ki1000108-IRC              INDIA                          0                         1       42     409
ki1000108-IRC              INDIA                          1                         0       19     409
ki1000108-IRC              INDIA                          1                         1        6     409
ki1000109-EE               PAKISTAN                       0                         0      299     374
ki1000109-EE               PAKISTAN                       0                         1       17     374
ki1000109-EE               PAKISTAN                       1                         0       30     374
ki1000109-EE               PAKISTAN                       1                         1       28     374
ki1000109-ResPak           PAKISTAN                       0                         0      175     230
ki1000109-ResPak           PAKISTAN                       0                         1       41     230
ki1000109-ResPak           PAKISTAN                       1                         0        8     230
ki1000109-ResPak           PAKISTAN                       1                         1        6     230
ki1000304b-SAS-CompFeed    INDIA                          0                         0     1112    1383
ki1000304b-SAS-CompFeed    INDIA                          0                         1      172    1383
ki1000304b-SAS-CompFeed    INDIA                          1                         0       43    1383
ki1000304b-SAS-CompFeed    INDIA                          1                         1       56    1383
ki1000304b-SAS-FoodSuppl   INDIA                          0                         0      298     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                         1       51     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                         0       28     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                         1       25     402
ki1017093-NIH-Birth        BANGLADESH                     0                         0      453     541
ki1017093-NIH-Birth        BANGLADESH                     0                         1       42     541
ki1017093-NIH-Birth        BANGLADESH                     1                         0       28     541
ki1017093-NIH-Birth        BANGLADESH                     1                         1       18     541
ki1017093b-PROVIDE         BANGLADESH                     0                         0      557     615
ki1017093b-PROVIDE         BANGLADESH                     0                         1       30     615
ki1017093b-PROVIDE         BANGLADESH                     1                         0       18     615
ki1017093b-PROVIDE         BANGLADESH                     1                         1       10     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                         0      673     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                         1       34     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                         0       13     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                         1       10     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     1907    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1       91    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0        9    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1       11    2018
ki1101329-Keneba           GAMBIA                         0                         0     2040    2270
ki1101329-Keneba           GAMBIA                         0                         1      168    2270
ki1101329-Keneba           GAMBIA                         1                         0       33    2270
ki1101329-Keneba           GAMBIA                         1                         1       29    2270
ki1112895-Guatemala BSC    GUATEMALA                      0                         0      265     274
ki1112895-Guatemala BSC    GUATEMALA                      0                         1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                         0        5     274
ki1112895-Guatemala BSC    GUATEMALA                      1                         1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                         0      470     590
ki1113344-GMS-Nepal        NEPAL                          0                         1       96     590
ki1113344-GMS-Nepal        NEPAL                          1                         0       11     590
ki1113344-GMS-Nepal        NEPAL                          1                         1       13     590
ki1114097-CMIN             BANGLADESH                     0                         0      222     252
ki1114097-CMIN             BANGLADESH                     0                         1       17     252
ki1114097-CMIN             BANGLADESH                     1                         0        5     252
ki1114097-CMIN             BANGLADESH                     1                         1        8     252
ki1114097-CMIN             BRAZIL                         0                         0      119     119
ki1114097-CMIN             BRAZIL                         0                         1        0     119
ki1114097-CMIN             BRAZIL                         1                         0        0     119
ki1114097-CMIN             BRAZIL                         1                         1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                         0      965    1017
ki1114097-CMIN             GUINEA-BISSAU                  0                         1       42    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                         0        3    1017
ki1114097-CMIN             GUINEA-BISSAU                  1                         1        7    1017
ki1114097-CMIN             PERU                           0                         0      644     653
ki1114097-CMIN             PERU                           0                         1        1     653
ki1114097-CMIN             PERU                           1                         0        7     653
ki1114097-CMIN             PERU                           1                         1        1     653
ki1114097-CONTENT          PERU                           0                         0      215     215
ki1114097-CONTENT          PERU                           0                         1        0     215
ki1114097-CONTENT          PERU                           1                         0        0     215
ki1114097-CONTENT          PERU                           1                         1        0     215
ki1119695-PROBIT           BELARUS                        0                         0    16552   16595
ki1119695-PROBIT           BELARUS                        0                         1       23   16595
ki1119695-PROBIT           BELARUS                        1                         0       19   16595
ki1119695-PROBIT           BELARUS                        1                         1        1   16595
ki1126311-ZVITAMBO         ZIMBABWE                       0                         0    10059   10612
ki1126311-ZVITAMBO         ZIMBABWE                       0                         1      405   10612
ki1126311-ZVITAMBO         ZIMBABWE                       1                         0       90   10612
ki1126311-ZVITAMBO         ZIMBABWE                       1                         1       58   10612
ki1135781-COHORTS          GUATEMALA                      0                         0      956    1016
ki1135781-COHORTS          GUATEMALA                      0                         1       33    1016
ki1135781-COHORTS          GUATEMALA                      1                         0       19    1016
ki1135781-COHORTS          GUATEMALA                      1                         1        8    1016
ki1135781-COHORTS          INDIA                          0                         0     6006    6888
ki1135781-COHORTS          INDIA                          0                         1      550    6888
ki1135781-COHORTS          INDIA                          1                         0      112    6888
ki1135781-COHORTS          INDIA                          1                         1      220    6888
ki1135781-COHORTS          PHILIPPINES                    0                         0     2537    2808
ki1135781-COHORTS          PHILIPPINES                    0                         1      184    2808
ki1135781-COHORTS          PHILIPPINES                    1                         0       45    2808
ki1135781-COHORTS          PHILIPPINES                    1                         1       42    2808
ki1148112-LCNI-5           MALAWI                         0                         0      783     797
ki1148112-LCNI-5           MALAWI                         0                         1        9     797
ki1148112-LCNI-5           MALAWI                         1                         0        2     797
ki1148112-LCNI-5           MALAWI                         1                         1        3     797
kiGH5241-JiVitA-3          BANGLADESH                     0                         0    13654   17247
kiGH5241-JiVitA-3          BANGLADESH                     0                         1     2747   17247
kiGH5241-JiVitA-3          BANGLADESH                     1                         0      354   17247
kiGH5241-JiVitA-3          BANGLADESH                     1                         1      492   17247
kiGH5241-JiVitA-4          BANGLADESH                     0                         0     4578    5234
kiGH5241-JiVitA-4          BANGLADESH                     0                         1      471    5234
kiGH5241-JiVitA-4          BANGLADESH                     1                         0       98    5234
kiGH5241-JiVitA-4          BANGLADESH                     1                         1       87    5234


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
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
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
![](/tmp/f2741519-a527-42a3-98a3-68d4a1ce155a/afc116e0-9982-4ddf-a4bb-d56fde054e80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2741519-a527-42a3-98a3-68d4a1ce155a/afc116e0-9982-4ddf-a4bb-d56fde054e80/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f2741519-a527-42a3-98a3-68d4a1ce155a/afc116e0-9982-4ddf-a4bb-d56fde054e80/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2741519-a527-42a3-98a3-68d4a1ce155a/afc116e0-9982-4ddf-a4bb-d56fde054e80/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0963303   0.0570810   0.1355796
ki0047075b-MAL-ED          INDIA                          1                    NA                0.4117647   0.1773150   0.6462144
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0648968   0.0386378   0.0911557
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1935484   0.0542844   0.3328124
ki1000108-IRC              INDIA                          0                    NA                0.1093750   0.0781199   0.1406301
ki1000108-IRC              INDIA                          1                    NA                0.2400000   0.0723815   0.4076185
ki1000109-EE               PAKISTAN                       0                    NA                0.0542948   0.0292217   0.0793680
ki1000109-EE               PAKISTAN                       1                    NA                0.4803295   0.3442318   0.6164271
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1898148   0.1374036   0.2422261
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4285714   0.1687812   0.6883617
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1356569   0.1171332   0.1541807
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5616124   0.5244612   0.5987636
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1469700   0.1097801   0.1841599
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4543625   0.3135884   0.5951366
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0851001   0.0604986   0.1097016
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4152315   0.2685955   0.5618675
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0511609   0.0333083   0.0690136
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3496989   0.1516786   0.5477192
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0483552   0.0325632   0.0641471
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3798071   0.1583575   0.6012566
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0455455   0.0362596   0.0548315
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5500000   0.4635436   0.6364564
ki1101329-Keneba           GAMBIA                         0                    NA                0.0761598   0.0650773   0.0872423
ki1101329-Keneba           GAMBIA                         1                    NA                0.4747377   0.3527680   0.5967074
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1701281   0.1391168   0.2011394
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5312387   0.3202272   0.7422502
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0711297   0.0384773   0.1037821
ki1114097-CMIN             BANGLADESH                     1                    NA                0.6153846   0.3503965   0.8803728
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0386732   0.0349165   0.0424300
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5170056   0.4809610   0.5530503
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0333670   0.0221687   0.0445654
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2962963   0.1239753   0.4686172
ki1135781-COHORTS          INDIA                          0                    NA                0.0873193   0.0801651   0.0944734
ki1135781-COHORTS          INDIA                          1                    NA                0.6310992   0.5811548   0.6810437
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0682471   0.0587917   0.0777025
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4294494   0.3183826   0.5405161
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1771293   0.1705497   0.1837089
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7296591   0.6997540   0.7595641
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0954355   0.0849327   0.1059384
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5598182   0.4828998   0.6367367


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1173594   0.0861296   0.1485892
ki1000109-EE               PAKISTAN                       NA                   NA                0.1203209   0.0873047   0.1533370
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1648590   0.1452632   0.1844548
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0867841   0.0752007   0.0983676
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0436299   0.0397432   0.0475165
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0403543   0.0282479   0.0524607
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117886   0.1043466   0.1192306
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1878008   0.1812627   0.1943389
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1066106   0.0960765   0.1171447


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  4.274510    2.122351    8.609053
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.982405    1.306343    6.808882
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  2.194286    1.031740    4.666768
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  8.846686    5.140305   15.225529
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.257840    1.159868    4.395189
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.139946    3.517209    4.872942
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.091533    2.071122    4.614684
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.879330    3.088649    7.708180
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  6.835271    3.514975   13.291965
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  7.854530    4.026937   15.320242
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.075824    9.334896   15.621547
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  6.233445    4.640225    8.373697
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.122581    2.017257    4.833548
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  8.651584    4.610498   16.234669
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 13.368562   11.861991   15.066480
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  8.879910    4.537246   17.379001
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  7.227490    6.451023    8.097416
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.292566    4.692590    8.438067
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.119359    3.892345    4.359613
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.865931    4.915535    7.000082


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0228187    0.0026860   0.0429513
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0107789   -0.0016393   0.0231971
ki1000108-IRC              INDIA                          0                    NA                0.0079844   -0.0028711   0.0188399
ki1000109-EE               PAKISTAN                       0                    NA                0.0660260    0.0402656   0.0917864
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0145330   -0.0032125   0.0322785
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0292021    0.0226599   0.0357443
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0420848    0.0207934   0.0633761
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0258056    0.0115887   0.0400226
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0138797    0.0043577   0.0234017
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0119188    0.0039350   0.0199026
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0049995    0.0019204   0.0080787
ki1101329-Keneba           GAMBIA                         0                    NA                0.0106244    0.0063396   0.0149091
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0146177    0.0045184   0.0247169
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0280766    0.0077909   0.0483623
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0049566    0.0036034   0.0063098
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0069873    0.0017121   0.0122625
ki1135781-COHORTS          INDIA                          0                    NA                0.0244693    0.0204846   0.0284541
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0122372    0.0080988   0.0163757
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0106715    0.0081279   0.0132151
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0111751    0.0067618   0.0155884


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1915138    0.0165980   0.3353176
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1424357   -0.0300892   0.2860653
ki1000108-IRC              INDIA                          0                    NA                0.0680339   -0.0277289   0.1548735
ki1000109-EE               PAKISTAN                       0                    NA                0.5487495    0.3555180   0.6840454
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0711190   -0.0188116   0.1531114
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1771336    0.1378474   0.2146295
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2226062    0.1083548   0.3222179
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2326807    0.1053604   0.3418814
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2134005    0.0678218   0.3362442
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1977440    0.0672602   0.3099740
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0989126    0.0378212   0.1561252
ki1101329-Keneba           GAMBIA                         0                    NA                0.1224230    0.0739999   0.1683140
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0791231    0.0238208   0.1312925
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2830126    0.0782623   0.4422806
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1136060    0.0831648   0.1430364
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1731485    0.0431505   0.2854850
ki1135781-COHORTS          INDIA                          0                    NA                0.2188894    0.1845210   0.2518093
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1520449    0.1024334   0.1989142
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0568235    0.0433943   0.0700641
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1048216    0.0634558   0.1443604
