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
* enstunt
* month
* brthmon
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_month
* delta_brthmon
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
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
ki0047075b-MAL-ED          BRAZIL                         0                            0      146    180
ki0047075b-MAL-ED          BRAZIL                         0                            1        0    180
ki0047075b-MAL-ED          BRAZIL                         1                            0       33    180
ki0047075b-MAL-ED          BRAZIL                         1                            1        1    180
ki0047075b-MAL-ED          INDIA                          0                            0      139    228
ki0047075b-MAL-ED          INDIA                          0                            1        6    228
ki0047075b-MAL-ED          INDIA                          1                            0       72    228
ki0047075b-MAL-ED          INDIA                          1                            1       11    228
ki0047075b-MAL-ED          NEPAL                          0                            0      187    229
ki0047075b-MAL-ED          NEPAL                          0                            1        1    229
ki0047075b-MAL-ED          NEPAL                          1                            0       38    229
ki0047075b-MAL-ED          NEPAL                          1                            1        3    229
ki0047075b-MAL-ED          PERU                           0                            0      116    222
ki0047075b-MAL-ED          PERU                           0                            1        0    222
ki0047075b-MAL-ED          PERU                           1                            0      100    222
ki0047075b-MAL-ED          PERU                           1                            1        6    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            0      141    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            0       96    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            0      132    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            0       92    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                            0      171    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                            1        7    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            0      173    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                            1       15    366
ki1000108-IRC              INDIA                          0                            0      228    405
ki1000108-IRC              INDIA                          0                            1        3    405
ki1000108-IRC              INDIA                          1                            0      152    405
ki1000108-IRC              INDIA                          1                            1       22    405
ki1000109-EE               PAKISTAN                       0                            0       76    350
ki1000109-EE               PAKISTAN                       0                            1       13    350
ki1000109-EE               PAKISTAN                       1                            0      199    350
ki1000109-EE               PAKISTAN                       1                            1       62    350
ki1000109-ResPak           PAKISTAN                       0                            0        2      9
ki1000109-ResPak           PAKISTAN                       0                            1        0      9
ki1000109-ResPak           PAKISTAN                       1                            0        7      9
ki1000109-ResPak           PAKISTAN                       1                            1        0      9
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
ki1017093b-PROVIDE         BANGLADESH                     0                            0      389    551
ki1017093b-PROVIDE         BANGLADESH                     0                            1       20    551
ki1017093b-PROVIDE         BANGLADESH                     1                            0      126    551
ki1017093b-PROVIDE         BANGLADESH                     1                            1       16    551
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
ki1113344-GMS-Nepal        NEPAL                          0                            0      368    550
ki1113344-GMS-Nepal        NEPAL                          0                            1       29    550
ki1113344-GMS-Nepal        NEPAL                          1                            0      124    550
ki1113344-GMS-Nepal        NEPAL                          1                            1       29    550
ki1114097-CMIN             BANGLADESH                     0                            0       95    237
ki1114097-CMIN             BANGLADESH                     0                            1        5    237
ki1114097-CMIN             BANGLADESH                     1                            0      116    237
ki1114097-CMIN             BANGLADESH                     1                            1       21    237
ki1114097-CMIN             BRAZIL                         0                            0       97    115
ki1114097-CMIN             BRAZIL                         0                            1        0    115
ki1114097-CMIN             BRAZIL                         1                            0       18    115
ki1114097-CMIN             BRAZIL                         1                            1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                            0      450    541
ki1114097-CMIN             GUINEA-BISSAU                  0                            1       11    541
ki1114097-CMIN             GUINEA-BISSAU                  1                            0       74    541
ki1114097-CMIN             GUINEA-BISSAU                  1                            1        6    541
ki1114097-CMIN             PERU                           0                            0      328    375
ki1114097-CMIN             PERU                           0                            1        0    375
ki1114097-CMIN             PERU                           1                            0       47    375
ki1114097-CMIN             PERU                           1                            1        0    375
ki1114097-CONTENT          PERU                           0                            0      155    200
ki1114097-CONTENT          PERU                           0                            1        0    200
ki1114097-CONTENT          PERU                           1                            0       44    200
ki1114097-CONTENT          PERU                           1                            1        1    200
ki1119695-PROBIT           BELARUS                        0                            0     1905   2146
ki1119695-PROBIT           BELARUS                        0                            1        0   2146
ki1119695-PROBIT           BELARUS                        1                            0      241   2146
ki1119695-PROBIT           BELARUS                        1                            1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                            0      947   1666
ki1126311-ZVITAMBO         ZIMBABWE                       0                            1       28   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                            0      631   1666
ki1126311-ZVITAMBO         ZIMBABWE                       1                            1       60   1666
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
ki1148112-LCNI-5           MALAWI                         1                            0      233    693
ki1148112-LCNI-5           MALAWI                         1                            1       13    693
kiGH5241-JiVitA-4          BANGLADESH                     0                            0     2693   4541
kiGH5241-JiVitA-4          BANGLADESH                     0                            1      113   4541
kiGH5241-JiVitA-4          BANGLADESH                     1                            0     1412   4541
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
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/fe9ac36e-4bd2-411b-959a-cf3ef5faa710/d197d18d-2ff0-4693-8de5-3ac1fb5a721c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe9ac36e-4bd2-411b-959a-cf3ef5faa710/d197d18d-2ff0-4693-8de5-3ac1fb5a721c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe9ac36e-4bd2-411b-959a-cf3ef5faa710/d197d18d-2ff0-4693-8de5-3ac1fb5a721c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe9ac36e-4bd2-411b-959a-cf3ef5faa710/d197d18d-2ff0-4693-8de5-3ac1fb5a721c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.0342466   0.0046802   0.0638130
ki0047075b-MAL-ED          BANGLADESH      1                    NA                0.1200000   0.0462887   0.1937113
ki0047075b-MAL-ED          INDIA           0                    NA                0.0413793   0.0088905   0.0738681
ki0047075b-MAL-ED          INDIA           1                    NA                0.1325301   0.0594250   0.2056353
ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0393258   0.0107329   0.0679188
ki1000108-CMC-V-BCS-2002   INDIA           1                    NA                0.0797872   0.0410013   0.1185732
ki1000109-EE               PAKISTAN        0                    NA                0.1505111   0.0774413   0.2235809
ki1000109-EE               PAKISTAN        1                    NA                0.2399925   0.1880765   0.2919086
ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0444087   0.0335432   0.0552743
ki1000304b-SAS-CompFeed    INDIA           1                    NA                0.1599362   0.1210582   0.1988142
ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.1432103   0.0907442   0.1956764
ki1000304b-SAS-FoodSuppl   INDIA           1                    NA                0.2311019   0.1631772   0.2990267
ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0630376   0.0353491   0.0907261
ki1017093-NIH-Birth        BANGLADESH      1                    NA                0.1678890   0.0987065   0.2370716
ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0519360   0.0304021   0.0734698
ki1017093b-PROVIDE         BANGLADESH      1                    NA                0.1017212   0.0492856   0.1541568
ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0168675   0.0044682   0.0292668
ki1017093c-NIH-Crypto      BANGLADESH      1                    NA                0.1004566   0.0606121   0.1403012
ki1101329-Keneba           GAMBIA          0                    NA                0.0361459   0.0251858   0.0471060
ki1101329-Keneba           GAMBIA          1                    NA                0.0883036   0.0631567   0.1134504
ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0730368   0.0474139   0.0986598
ki1113344-GMS-Nepal        NEPAL           1                    NA                0.1914602   0.1287414   0.2541790
ki1114097-CMIN             BANGLADESH      0                    NA                0.0500000   0.0071932   0.0928068
ki1114097-CMIN             BANGLADESH      1                    NA                0.1532847   0.0928308   0.2137385
ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0238612   0.0099167   0.0378056
ki1114097-CMIN             GUINEA-BISSAU   1                    NA                0.0750000   0.0172295   0.1327705
ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0287514   0.0182784   0.0392245
ki1126311-ZVITAMBO         ZIMBABWE        1                    NA                0.0859677   0.0650265   0.1069090
ki1135781-COHORTS          GUATEMALA       0                    NA                0.0291248   0.0123178   0.0459318
ki1135781-COHORTS          GUATEMALA       1                    NA                0.0751710   0.0466978   0.1036442
ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0715922   0.0572435   0.0859408
ki1135781-COHORTS          PHILIPPINES     1                    NA                0.1055950   0.0683028   0.1428871
kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0463575   0.0399441   0.0527709
kiGH5241-JiVitA-4          BANGLADESH      1                    NA                0.1704155   0.1266058   0.2142253


### Parameter: E(Y)


studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.0633484   0.0311604   0.0955364
ki0047075b-MAL-ED          INDIA           NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA           NA                   NA                0.0601093   0.0357249   0.0844936
ki1000109-EE               PAKISTAN        NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA           NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH      NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA          NA                   NA                0.0563063   0.0455826   0.0670300
ki1113344-GMS-Nepal        NEPAL           NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH      NA                   NA                0.1097046   0.0698323   0.1495770
ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0314233   0.0167088   0.0461377
ki1126311-ZVITAMBO         ZIMBABWE        NA                   NA                0.0528211   0.0420773   0.0635650
ki1135781-COHORTS          GUATEMALA       NA                   NA                0.0488432   0.0336878   0.0639985
ki1135781-COHORTS          PHILIPPINES     NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0960141   0.0859500   0.1060782


### Parameter: RR


studyid                    country         intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH      1                    0                 3.504000   1.2145141   10.109406
ki0047075b-MAL-ED          INDIA           0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA           1                    0                 3.202811   1.2268899    8.360978
ki1000108-CMC-V-BCS-2002   INDIA           0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA           1                    0                 2.028875   0.8460862    4.865149
ki1000109-EE               PAKISTAN        0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN        1                    0                 1.594518   0.9368855    2.713764
ki1000304b-SAS-CompFeed    INDIA           0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA           1                    0                 3.601458   2.4499681    5.294151
ki1000304b-SAS-FoodSuppl   INDIA           0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA           1                    0                 1.613724   1.0087093    2.581622
ki1017093-NIH-Birth        BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH      1                    0                 2.663315   1.4581642    4.864505
ki1017093b-PROVIDE         BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH      1                    0                 1.958588   1.0119858    3.790634
ki1017093c-NIH-Crypto      BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH      1                    0                 5.955642   2.5832748   13.730507
ki1101329-Keneba           GAMBIA          0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA          1                    0                 2.442976   1.6135020    3.698869
ki1113344-GMS-Nepal        NEPAL           0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL           1                    0                 2.621419   1.6210040    4.239249
ki1114097-CMIN             BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH      1                    0                 3.065693   1.1944241    7.868626
ki1114097-CMIN             GUINEA-BISSAU   0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU   1                    0                 3.143182   1.1952586    8.265652
ki1126311-ZVITAMBO         ZIMBABWE        0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE        1                    0                 2.990033   1.9285649    4.635725
ki1135781-COHORTS          GUATEMALA       0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA       1                    0                 2.580994   1.2934666    5.150136
ki1135781-COHORTS          PHILIPPINES     0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES     1                    0                 1.474952   0.9838460    2.211202
kiGH5241-JiVitA-4          BANGLADESH      0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH      1                    0                 3.676118   2.7531491    4.908503


### Parameter: PAR


studyid                    country         intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.0291018    0.0016205   0.0565832
ki0047075b-MAL-ED          INDIA           0                    NA                0.0331821    0.0035059   0.0628582
ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.0207834   -0.0040547   0.0456216
ki1000109-EE               PAKISTAN        0                    NA                0.0637746   -0.0030061   0.1305554
ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.0572593    0.0411453   0.0733732
ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.0425482    0.0022508   0.0828456
ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.0473520    0.0226503   0.0720537
ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.0133998   -0.0014348   0.0282343
ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.0288739    0.0141307   0.0436170
ki1101329-Keneba           GAMBIA          0                    NA                0.0201604    0.0107952   0.0295256
ki1113344-GMS-Nepal        NEPAL           0                    NA                0.0324177    0.0131958   0.0516396
ki1114097-CMIN             BANGLADESH      0                    NA                0.0597046    0.0163932   0.1030160
ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.0075621   -0.0013584   0.0164826
ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.0240697    0.0142351   0.0339043
ki1135781-COHORTS          GUATEMALA       0                    NA                0.0197184    0.0044631   0.0349737
ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0035988   -0.0079346   0.0151323
kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.0496566    0.0409717   0.0583415


### Parameter: PAF


studyid                    country         intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH      0                    NA                0.4593933   -0.0739341   0.7278645
ki0047075b-MAL-ED          INDIA           0                    NA                0.4450304   -0.0374217   0.7031186
ki1000108-CMC-V-BCS-2002   INDIA           0                    NA                0.3457610   -0.1889189   0.6399849
ki1000109-EE               PAKISTAN        0                    NA                0.2976150   -0.0877650   0.5464602
ki1000304b-SAS-CompFeed    INDIA           0                    NA                0.5631984    0.4256844   0.6677861
ki1000304b-SAS-FoodSuppl   INDIA           0                    NA                0.2290512   -0.0161266   0.4150709
ki1017093-NIH-Birth        BANGLADESH      0                    NA                0.4289534    0.1925508   0.5961427
ki1017093b-PROVIDE         BANGLADESH      0                    NA                0.2050910   -0.0440533   0.3947816
ki1017093c-NIH-Crypto      BANGLADESH      0                    NA                0.6312422    0.3025665   0.8050247
ki1101329-Keneba           GAMBIA          0                    NA                0.3580489    0.1870287   0.4930925
ki1113344-GMS-Nepal        NEPAL           0                    NA                0.3074093    0.1161510   0.4572807
ki1114097-CMIN             BANGLADESH      0                    NA                0.5442308    0.0218796   0.7876278
ki1114097-CMIN             GUINEA-BISSAU   0                    NA                0.2406533   -0.0718793   0.4620594
ki1126311-ZVITAMBO         ZIMBABWE        0                    NA                0.4556830    0.2658444   0.5964330
ki1135781-COHORTS          GUATEMALA       0                    NA                0.4037078    0.0338898   0.6319629
ki1135781-COHORTS          PHILIPPINES     0                    NA                0.0478627   -0.1176163   0.1888401
kiGH5241-JiVitA-4          BANGLADESH      0                    NA                0.5171805    0.4541040   0.5729687
