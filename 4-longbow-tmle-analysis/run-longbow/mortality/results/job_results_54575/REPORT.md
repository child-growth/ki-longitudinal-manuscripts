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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_stunted06    co_occurence   n_cell      n
-------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                            0      141    221
ki0047075b-MAL-ED          BANGLADESH                     0                            1        5    221
ki0047075b-MAL-ED          BANGLADESH                     1                            0       66    221
ki0047075b-MAL-ED          BANGLADESH                     1                            1        9    221
ki0047075b-MAL-ED          BRAZIL                         0                            0      142    180
ki0047075b-MAL-ED          BRAZIL                         0                            1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                            0       37    180
ki0047075b-MAL-ED          BRAZIL                         1                            1        1    180
ki0047075b-MAL-ED          INDIA                          0                            0      138    228
ki0047075b-MAL-ED          INDIA                          0                            1        6    228
ki0047075b-MAL-ED          INDIA                          1                            0       73    228
ki0047075b-MAL-ED          INDIA                          1                            1       11    228
ki0047075b-MAL-ED          NEPAL                          0                            0      186    229
ki0047075b-MAL-ED          NEPAL                          0                            1        1    229
ki0047075b-MAL-ED          NEPAL                          1                            0       39    229
ki0047075b-MAL-ED          NEPAL                          1                            1        3    229
ki0047075b-MAL-ED          PERU                           0                            0      116    222
ki0047075b-MAL-ED          PERU                           0                            1        0    222
ki0047075b-MAL-ED          PERU                           1                            0      100    222
ki0047075b-MAL-ED          PERU                           1                            1        6    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            0      140    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            0       97    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            0      131    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            0       93    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                            0      171    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                            1        7    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            0      173    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            1       15    366
ki1000108-IRC              INDIA                          0                            0      228    405
ki1000108-IRC              INDIA                          0                            1        3    405
ki1000108-IRC              INDIA                          1                            0      152    405
ki1000108-IRC              INDIA                          1                            1       22    405
ki1000109-EE               PAKISTAN                       0                            0       80    346
ki1000109-EE               PAKISTAN                       0                            1        8    346
ki1000109-EE               PAKISTAN                       1                            0      192    346
ki1000109-EE               PAKISTAN                       1                            1       66    346
ki1000109-ResPak           PAKISTAN                       0                            0        2      9
ki1000109-ResPak           PAKISTAN                       0                            1        0      9
ki1000109-ResPak           PAKISTAN                       1                            0        6      9
ki1000109-ResPak           PAKISTAN                       1                            1        1      9
ki1000304b-SAS-CompFeed    INDIA                          0                            0      685   1259
ki1000304b-SAS-CompFeed    INDIA                          0                            1       36   1259
ki1000304b-SAS-CompFeed    INDIA                          1                            0      446   1259
ki1000304b-SAS-CompFeed    INDIA                          1                            1       92   1259
ki1000304b-SAS-FoodSuppl   INDIA                          0                            0      145    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                            1       25    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                            0      118    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                            1       35    323
ki1017093-NIH-Birth        BANGLADESH                     0                            0      255    462
ki1017093-NIH-Birth        BANGLADESH                     0                            1       19    462
ki1017093-NIH-Birth        BANGLADESH                     1                            0      156    462
ki1017093-NIH-Birth        BANGLADESH                     1                            1       32    462
ki1017093b-PROVIDE         BANGLADESH                     0                            0      398    563
ki1017093b-PROVIDE         BANGLADESH                     0                            1       20    563
ki1017093b-PROVIDE         BANGLADESH                     1                            0      128    563
ki1017093b-PROVIDE         BANGLADESH                     1                            1       17    563
ki1017093c-NIH-Crypto      BANGLADESH                     0                            0      408    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                            1        7    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            0      197    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                            1       22    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      756    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1        4    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0      203    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1       17    980
ki1101329-Keneba           GAMBIA                         0                            0     1166   1776
ki1101329-Keneba           GAMBIA                         0                            1       40   1776
ki1101329-Keneba           GAMBIA                         1                            0      510   1776
ki1101329-Keneba           GAMBIA                         1                            1       60   1776
ki1113344-GMS-Nepal        NEPAL                          0                            0      341    550
ki1113344-GMS-Nepal        NEPAL                          0                            1       29    550
ki1113344-GMS-Nepal        NEPAL                          1                            0      149    550
ki1113344-GMS-Nepal        NEPAL                          1                            1       31    550
ki1114097-CMIN             BANGLADESH                     0                            0       95    237
ki1114097-CMIN             BANGLADESH                     0                            1        5    237
ki1114097-CMIN             BANGLADESH                     1                            0      116    237
ki1114097-CMIN             BANGLADESH                     1                            1       21    237
ki1114097-CONTENT          PERU                           0                            0      155    200
ki1114097-CONTENT          PERU                           0                            1        0    200
ki1114097-CONTENT          PERU                           1                            0       44    200
ki1114097-CONTENT          PERU                           1                            1        1    200
ki1119695-PROBIT           BELARUS                        0                            0     1905   2146
ki1119695-PROBIT           BELARUS                        0                            1        0   2146
ki1119695-PROBIT           BELARUS                        1                            0      241   2146
ki1119695-PROBIT           BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                            0      960   1691
ki1126311-ZVITAMBO         ZIMBABWE                       0                            1       29   1691
ki1126311-ZVITAMBO         ZIMBABWE                       1                            0      641   1691
ki1126311-ZVITAMBO         ZIMBABWE                       1                            1       61   1691
ki1135781-COHORTS          GUATEMALA                      0                            0      419    778
ki1135781-COHORTS          GUATEMALA                      0                            1       12    778
ki1135781-COHORTS          GUATEMALA                      1                            0      321    778
ki1135781-COHORTS          GUATEMALA                      1                            1       26    778
ki1135781-COHORTS          PHILIPPINES                    0                            0     1694   2487
ki1135781-COHORTS          PHILIPPINES                    0                            1       92   2487
ki1135781-COHORTS          PHILIPPINES                    1                            0      606   2487
ki1135781-COHORTS          PHILIPPINES                    1                            1       95   2487
ki1148112-LCNI-5           MALAWI                         0                            0      443    693
ki1148112-LCNI-5           MALAWI                         0                            1        4    693
ki1148112-LCNI-5           MALAWI                         1                            0      232    693
ki1148112-LCNI-5           MALAWI                         1                            1       14    693
kiGH5241-JiVitA-4          BANGLADESH                     0                            0     2692   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                            1      113   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                            0     1413   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                            1      323   4541


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
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/0bb68121-8856-455f-933c-76d274c1f350/1fb8ccd6-f804-480d-a80a-77a9f025a3f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0bb68121-8856-455f-933c-76d274c1f350/1fb8ccd6-f804-480d-a80a-77a9f025a3f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0bb68121-8856-455f-933c-76d274c1f350/1fb8ccd6-f804-480d-a80a-77a9f025a3f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0bb68121-8856-455f-933c-76d274c1f350/1fb8ccd6-f804-480d-a80a-77a9f025a3f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.0342466   0.0046802   0.0638130
ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.1200000   0.0462887   0.1937113
ki0047075b-MAL-ED          INDIA         0                    NA                0.0416667   0.0089572   0.0743762
ki0047075b-MAL-ED          INDIA         1                    NA                0.1309524   0.0586519   0.2032529
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0393258   0.0107329   0.0679188
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.0797872   0.0410013   0.1185732
ki1000109-EE               PAKISTAN      0                    NA                0.0909091   0.0307581   0.1510601
ki1000109-EE               PAKISTAN      1                    NA                0.2558140   0.2024965   0.3091314
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0515240   0.0398788   0.0631693
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1630779   0.1288344   0.1973214
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1451006   0.0920213   0.1981800
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.2312022   0.1637183   0.2986860
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0711939   0.0400116   0.1023763
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.1688715   0.1134549   0.2242880
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0509352   0.0297121   0.0721583
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.1057096   0.0534838   0.1579355
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0168675   0.0044682   0.0292668
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1004566   0.0606121   0.1403012
ki1101329-Keneba           GAMBIA        0                    NA                0.0347808   0.0244160   0.0451456
ki1101329-Keneba           GAMBIA        1                    NA                0.0972110   0.0721910   0.1222310
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0782084   0.0507959   0.1056208
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1727002   0.1173820   0.2280183
ki1114097-CMIN             BANGLADESH    0                    NA                0.0500000   0.0071932   0.0928068
ki1114097-CMIN             BANGLADESH    1                    NA                0.1532847   0.0928308   0.2137385
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0294204   0.0189201   0.0399208
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0858792   0.0650618   0.1066967
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0297686   0.0125884   0.0469488
ki1135781-COHORTS          GUATEMALA     1                    NA                0.0736211   0.0451537   0.1020885
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0566579   0.0454857   0.0678302
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1264286   0.0997620   0.1530952
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0413245   0.0331081   0.0495409
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.1823581   0.1599554   0.2047608


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.0633484   0.0311604   0.0955364
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403898   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000109-EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563063   0.0455826   0.0670300
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0532229   0.0425206   0.0639253
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0488432   0.0336878   0.0639985
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0960141   0.0859500   0.1060782


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH    1                    0                 3.504000   1.2145141   10.109406
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 3.142857   1.2036922    8.206042
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 2.028875   0.8460862    4.865149
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.813953   1.4061838    5.631080
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.165086   2.1084417    4.751267
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.593392   0.9975542    2.545123
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.371992   1.3723700    4.099730
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 2.075374   1.0883548    3.957513
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 5.955642   2.5832748   13.730507
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 2.794962   1.8880947    4.137405
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 2.208206   1.3725605    3.552612
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.065693   1.1944241    7.868626
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 2.919034   1.8956304    4.494949
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 2.473112   1.2339717    4.956583
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.231437   1.6724932    2.977180
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.412832   3.4967020    5.568987


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.0291018    0.0016205   0.0565832
ki0047075b-MAL-ED          INDIA         0                    NA                0.0328947    0.0031265   0.0626629
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0207834   -0.0040547   0.0456216
ki1000109-EE               PAKISTAN      0                    NA                0.1229637    0.0625503   0.1833772
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0501440    0.0321285   0.0681594
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0406579    0.0000473   0.0812685
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0391957    0.0129121   0.0654792
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0147841   -0.0001991   0.0297674
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0288739    0.0141307   0.0436170
ki1101329-Keneba           GAMBIA        0                    NA                0.0215255    0.0125921   0.0304589
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0308826    0.0103221   0.0514430
ki1114097-CMIN             BANGLADESH    0                    NA                0.0597046    0.0163932   0.1030160
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0238025    0.0140169   0.0335881
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0190746    0.0035524   0.0345967
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0185331    0.0101486   0.0269175
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0546896    0.0456097   0.0637694


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.4593933   -0.0739341   0.7278645
ki0047075b-MAL-ED          INDIA         0                    NA                0.4411764   -0.0445806   0.7010439
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3457610   -0.1889189   0.6399849
ki1000109-EE               PAKISTAN      0                    NA                0.5749385    0.2100556   0.7712785
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.4932131    0.3337557   0.6145063
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2188750   -0.0287464   0.4068935
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.3550666    0.0893336   0.5432586
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2249586   -0.0245946   0.4137300
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.6312422    0.3025665   0.8050247
ki1101329-Keneba           GAMBIA        0                    NA                0.3822933    0.2236515   0.5085176
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.2830901    0.0808319   0.4408424
ki1114097-CMIN             BANGLADESH    0                    NA                0.5442308    0.0218796   0.7876278
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.4472230    0.2595908   0.5873060
ki1135781-COHORTS          GUATEMALA     0                    NA                0.3905271    0.0112682   0.6243095
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.2464799    0.1324168   0.3455469
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.5695996    0.4900612   0.6367318
