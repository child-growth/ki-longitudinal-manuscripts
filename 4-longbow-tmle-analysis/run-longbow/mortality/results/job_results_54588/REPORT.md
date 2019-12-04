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

studyid                    country                        ever_co06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ----------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                         0      216     240
ki0047075b-MAL-ED          BANGLADESH                     0                         1       15     240
ki0047075b-MAL-ED          BANGLADESH                     1                         0        7     240
ki0047075b-MAL-ED          BANGLADESH                     1                         1        2     240
ki0047075b-MAL-ED          BRAZIL                         0                         0      204     207
ki0047075b-MAL-ED          BRAZIL                         0                         1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                         0        1     207
ki0047075b-MAL-ED          BRAZIL                         1                         1        0     207
ki0047075b-MAL-ED          INDIA                          0                         0      196     235
ki0047075b-MAL-ED          INDIA                          0                         1       21     235
ki0047075b-MAL-ED          INDIA                          1                         0       11     235
ki0047075b-MAL-ED          INDIA                          1                         1        7     235
ki0047075b-MAL-ED          NEPAL                          0                         0      226     235
ki0047075b-MAL-ED          NEPAL                          0                         1        1     235
ki0047075b-MAL-ED          NEPAL                          1                         0        7     235
ki0047075b-MAL-ED          NEPAL                          1                         1        1     235
ki0047075b-MAL-ED          PERU                           0                         0      267     270
ki0047075b-MAL-ED          PERU                           0                         1        2     270
ki0047075b-MAL-ED          PERU                           1                         0        0     270
ki0047075b-MAL-ED          PERU                           1                         1        1     270
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
ki1000109-EE               PAKISTAN                       0                         0      288     373
ki1000109-EE               PAKISTAN                       0                         1       24     373
ki1000109-EE               PAKISTAN                       1                         0       36     373
ki1000109-EE               PAKISTAN                       1                         1       25     373
ki1000109-ResPak           PAKISTAN                       0                         0      179     234
ki1000109-ResPak           PAKISTAN                       0                         1       41     234
ki1000109-ResPak           PAKISTAN                       1                         0        8     234
ki1000109-ResPak           PAKISTAN                       1                         1        6     234
ki1000304b-SAS-CompFeed    INDIA                          0                         0     1112    1383
ki1000304b-SAS-CompFeed    INDIA                          0                         1      172    1383
ki1000304b-SAS-CompFeed    INDIA                          1                         0       43    1383
ki1000304b-SAS-CompFeed    INDIA                          1                         1       56    1383
ki1000304b-SAS-FoodSuppl   INDIA                          0                         0      298     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                         1       51     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                         0       28     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                         1       25     402
ki1017093-NIH-Birth        BANGLADESH                     0                         0      453     542
ki1017093-NIH-Birth        BANGLADESH                     0                         1       42     542
ki1017093-NIH-Birth        BANGLADESH                     1                         0       28     542
ki1017093-NIH-Birth        BANGLADESH                     1                         1       19     542
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
ki1101329-Keneba           GAMBIA                         0                         0     2062    2298
ki1101329-Keneba           GAMBIA                         0                         1      174    2298
ki1101329-Keneba           GAMBIA                         1                         0       33    2298
ki1101329-Keneba           GAMBIA                         1                         1       29    2298
ki1112895-Guatemala BSC    GUATEMALA                      0                         0      265     274
ki1112895-Guatemala BSC    GUATEMALA                      0                         1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                         0        5     274
ki1112895-Guatemala BSC    GUATEMALA                      1                         1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                         0      463     590
ki1113344-GMS-Nepal        NEPAL                          0                         1       93     590
ki1113344-GMS-Nepal        NEPAL                          1                         0       18     590
ki1113344-GMS-Nepal        NEPAL                          1                         1       16     590
ki1114097-CMIN             BANGLADESH                     0                         0      222     252
ki1114097-CMIN             BANGLADESH                     0                         1       17     252
ki1114097-CMIN             BANGLADESH                     1                         0        5     252
ki1114097-CMIN             BANGLADESH                     1                         1        8     252
ki1114097-CONTENT          PERU                           0                         0      215     215
ki1114097-CONTENT          PERU                           0                         1        0     215
ki1114097-CONTENT          PERU                           1                         0        0     215
ki1114097-CONTENT          PERU                           1                         1        0     215
ki1119695-PROBIT           BELARUS                        0                         0    16552   16595
ki1119695-PROBIT           BELARUS                        0                         1       23   16595
ki1119695-PROBIT           BELARUS                        1                         0       19   16595
ki1119695-PROBIT           BELARUS                        1                         1        1   16595
ki1126311-ZVITAMBO         ZIMBABWE                       0                         0    10182   10730
ki1126311-ZVITAMBO         ZIMBABWE                       0                         1      399   10730
ki1126311-ZVITAMBO         ZIMBABWE                       1                         0       91   10730
ki1126311-ZVITAMBO         ZIMBABWE                       1                         1       58   10730
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
ki1148112-LCNI-5           MALAWI                         0                         0      782     797
ki1148112-LCNI-5           MALAWI                         0                         1       10     797
ki1148112-LCNI-5           MALAWI                         1                         0        2     797
ki1148112-LCNI-5           MALAWI                         1                         1        3     797
kiGH5241-JiVitA-3          BANGLADESH                     0                         0    13651   17247
kiGH5241-JiVitA-3          BANGLADESH                     0                         1     2747   17247
kiGH5241-JiVitA-3          BANGLADESH                     1                         0      357   17247
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
![](/tmp/144adfb8-b812-4ab2-b475-c3cc2f0326cc/24a95185-9f83-4f23-a3ca-51642907c678/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/144adfb8-b812-4ab2-b475-c3cc2f0326cc/24a95185-9f83-4f23-a3ca-51642907c678/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/144adfb8-b812-4ab2-b475-c3cc2f0326cc/24a95185-9f83-4f23-a3ca-51642907c678/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/144adfb8-b812-4ab2-b475-c3cc2f0326cc/24a95185-9f83-4f23-a3ca-51642907c678/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0967742   0.0573537   0.1361947
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3888889   0.1631997   0.6145780
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0648968   0.0386378   0.0911557
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1935484   0.0542844   0.3328124
ki1000108-IRC              INDIA                          0                    NA                0.1093750   0.0781199   0.1406301
ki1000108-IRC              INDIA                          1                    NA                0.2400000   0.0723815   0.4076185
ki1000109-EE               PAKISTAN                       0                    NA                0.0775429   0.0477963   0.1072894
ki1000109-EE               PAKISTAN                       1                    NA                0.3970630   0.2680184   0.5261077
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1863636   0.1347978   0.2379295
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4285714   0.1687909   0.6883520
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1357371   0.1176044   0.1538697
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5235546   0.4734755   0.5736336
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1461574   0.1090296   0.1832852
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4383930   0.3042622   0.5725238
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0848215   0.0602486   0.1093944
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4336530   0.2890843   0.5782216
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0512487   0.0333871   0.0691103
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3457786   0.1579003   0.5336568
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0482866   0.0325024   0.0640708
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4625744   0.2360048   0.6891439
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0455455   0.0362596   0.0548315
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5500000   0.4635436   0.6364564
ki1101329-Keneba           GAMBIA                         0                    NA                0.0782549   0.0670690   0.0894409
ki1101329-Keneba           GAMBIA                         1                    NA                0.4021018   0.2925321   0.5116716
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1678477   0.1367359   0.1989594
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4461778   0.2800127   0.6123429
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0711297   0.0384773   0.1037821
ki1114097-CMIN             BANGLADESH                     1                    NA                0.6153846   0.3503965   0.8803728
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0377645   0.0340889   0.0414402
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3687697   0.3265667   0.4109728
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0333670   0.0221687   0.0445654
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2962963   0.1239753   0.4686172
ki1135781-COHORTS          INDIA                          0                    NA                0.0847458   0.0779921   0.0914995
ki1135781-COHORTS          INDIA                          1                    NA                0.6237806   0.5711557   0.6764054
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0679325   0.0584919   0.0773730
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4456258   0.3401698   0.5510818
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1678856   0.1615425   0.1742288
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5607214   0.5223598   0.5990829
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0935421   0.0833294   0.1037548
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4810937   0.3884601   0.5737274


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1173594   0.0861296   0.1485892
ki1000109-EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1648590   0.1452632   0.1844548
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425909   0.0387699   0.0464119
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0403543   0.0282479   0.0524607
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117886   0.1043466   0.1192306
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1878008   0.1812627   0.1943389
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1066106   0.0960765   0.1171447


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  4.018518   1.977591    8.165737
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.982405   1.306343    6.808882
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  2.194286   1.031740    4.666768
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.120562   3.095970    8.469123
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.299652   1.181089    4.477561
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.857123   3.217396    4.624049
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.999458   2.014665    4.465630
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.112537   3.288102    7.949278
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  6.747067   3.536545   12.872145
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  9.579765   5.319507   17.251955
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.075824   9.334896   15.621547
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.138358   3.779218    6.986293
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.658231   1.754921    4.026502
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  8.651584   4.610498   16.234669
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  9.764974   8.404216   11.346056
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  8.879910   4.537246   17.379001
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  7.360608   6.555894    8.264098
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.559833   4.988200    8.626643
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.339901   3.091904    3.607789
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.143070   4.116877    6.425058


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0223747    0.0021997   0.0425498
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0107789   -0.0016393   0.0231971
ki1000108-IRC              INDIA                          0                    NA                0.0079844   -0.0028711   0.0188399
ki1000109-EE               PAKISTAN                       0                    NA                0.0538244    0.0294870   0.0781619
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0144911   -0.0029872   0.0319693
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0291219    0.0217294   0.0365145
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0428973    0.0214633   0.0643314
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0277246    0.0132522   0.0421971
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0137919    0.0042562   0.0233277
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0119874    0.0040074   0.0199674
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0049995    0.0019204   0.0080787
ki1101329-Keneba           GAMBIA                         0                    NA                0.0100828    0.0059166   0.0142489
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0168981    0.0055817   0.0282145
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0280766    0.0077909   0.0483623
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0048263    0.0034951   0.0061576
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0069873    0.0017121   0.0122625
ki1135781-COHORTS          INDIA                          0                    NA                0.0270428    0.0232633   0.0308224
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0125518    0.0084031   0.0167006
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0199151    0.0176751   0.0221552
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0130685    0.0089808   0.0171562


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1877880    0.0119633   0.3323241
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1424357   -0.0300892   0.2860653
ki1000108-IRC              INDIA                          0                    NA                0.0680339   -0.0277289   0.1548735
ki1000109-EE               PAKISTAN                       0                    NA                0.4097247    0.2294283   0.5478358
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0721470   -0.0179275   0.1542510
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1766475    0.1338890   0.2172951
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2269043    0.1119787   0.3269564
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2463403    0.1191646   0.3551543
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2120509    0.0662206   0.3351066
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1988813    0.0685032   0.3110109
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0989126    0.0378212   0.1561252
ki1101329-Keneba           GAMBIA                         0                    NA                0.1141388    0.0676224   0.1583345
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0914668    0.0293424   0.1496151
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2830126    0.0782623   0.4422806
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1133184    0.0827781   0.1428419
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1731485    0.0431505   0.2854850
ki1135781-COHORTS          INDIA                          0                    NA                0.2419103    0.2106770   0.2719078
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1559539    0.1062731   0.2028730
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1060440    0.0944251   0.1175138
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1225815    0.0848508   0.1587567
