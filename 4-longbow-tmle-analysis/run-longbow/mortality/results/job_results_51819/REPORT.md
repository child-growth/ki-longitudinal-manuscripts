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

**Intervention Variable:** ever_wasted06

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

studyid                    country                        ever_wasted06    co_occurence   n_cell      n
-------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                           0      165    221
ki0047075b-MAL-ED          BANGLADESH                     0                           1        5    221
ki0047075b-MAL-ED          BANGLADESH                     1                           0       42    221
ki0047075b-MAL-ED          BANGLADESH                     1                           1        9    221
ki0047075b-MAL-ED          BRAZIL                         0                           0      167    180
ki0047075b-MAL-ED          BRAZIL                         0                           1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                           0       12    180
ki0047075b-MAL-ED          BRAZIL                         1                           1        0    180
ki0047075b-MAL-ED          INDIA                          0                           0      149    228
ki0047075b-MAL-ED          INDIA                          0                           1        4    228
ki0047075b-MAL-ED          INDIA                          1                           0       62    228
ki0047075b-MAL-ED          INDIA                          1                           1       13    228
ki0047075b-MAL-ED          NEPAL                          0                           0      186    229
ki0047075b-MAL-ED          NEPAL                          0                           1        2    229
ki0047075b-MAL-ED          NEPAL                          1                           0       39    229
ki0047075b-MAL-ED          NEPAL                          1                           1        2    229
ki0047075b-MAL-ED          PERU                           0                           0      208    222
ki0047075b-MAL-ED          PERU                           0                           1        5    222
ki0047075b-MAL-ED          PERU                           1                           0        8    222
ki0047075b-MAL-ED          PERU                           1                           1        1    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           0      214    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       23    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           0      212    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       12    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                           0      170    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                           1        4    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           0      174    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           1       18    366
ki1000108-IRC              INDIA                          0                           0      175    405
ki1000108-IRC              INDIA                          0                           1       10    405
ki1000108-IRC              INDIA                          1                           0      205    405
ki1000108-IRC              INDIA                          1                           1       15    405
ki1000109-EE               PAKISTAN                       0                           0      208    350
ki1000109-EE               PAKISTAN                       0                           1       33    350
ki1000109-EE               PAKISTAN                       1                           0       67    350
ki1000109-EE               PAKISTAN                       1                           1       42    350
ki1000109-ResPak           PAKISTAN                       0                           0        4      9
ki1000109-ResPak           PAKISTAN                       0                           1        0      9
ki1000109-ResPak           PAKISTAN                       1                           0        5      9
ki1000109-ResPak           PAKISTAN                       1                           1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                           0      899   1256
ki1000304b-SAS-CompFeed    INDIA                          0                           1       72   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           0      229   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           1       56   1256
ki1000304b-SAS-FoodSuppl   INDIA                          0                           0      218    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                           1       35    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           0       45    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           1       25    323
ki1017093-NIH-Birth        BANGLADESH                     0                           0      281    462
ki1017093-NIH-Birth        BANGLADESH                     0                           1       14    462
ki1017093-NIH-Birth        BANGLADESH                     1                           0      130    462
ki1017093-NIH-Birth        BANGLADESH                     1                           1       37    462
ki1017093b-PROVIDE         BANGLADESH                     0                           0      391    551
ki1017093b-PROVIDE         BANGLADESH                     0                           1       22    551
ki1017093b-PROVIDE         BANGLADESH                     1                           0      124    551
ki1017093b-PROVIDE         BANGLADESH                     1                           1       14    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                           0      439    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                           1       14    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           0      166    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           1       15    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      829    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       14    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      130    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        7    980
ki1101329-Keneba           GAMBIA                         0                           0     1413   1757
ki1101329-Keneba           GAMBIA                         0                           1       52   1757
ki1101329-Keneba           GAMBIA                         1                           0      247   1757
ki1101329-Keneba           GAMBIA                         1                           1       45   1757
ki1113344-GMS-Nepal        NEPAL                          0                           0      353    550
ki1113344-GMS-Nepal        NEPAL                          0                           1       28    550
ki1113344-GMS-Nepal        NEPAL                          1                           0      139    550
ki1113344-GMS-Nepal        NEPAL                          1                           1       30    550
ki1114097-CMIN             BANGLADESH                     0                           0      179    237
ki1114097-CMIN             BANGLADESH                     0                           1       17    237
ki1114097-CMIN             BANGLADESH                     1                           0       32    237
ki1114097-CMIN             BANGLADESH                     1                           1        9    237
ki1114097-CMIN             BRAZIL                         0                           0      107    115
ki1114097-CMIN             BRAZIL                         0                           1        0    115
ki1114097-CMIN             BRAZIL                         1                           0        8    115
ki1114097-CMIN             BRAZIL                         1                           1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                           0      495    542
ki1114097-CMIN             GUINEA-BISSAU                  0                           1       15    542
ki1114097-CMIN             GUINEA-BISSAU                  1                           0       30    542
ki1114097-CMIN             GUINEA-BISSAU                  1                           1        2    542
ki1114097-CMIN             PERU                           0                           0      347    375
ki1114097-CMIN             PERU                           0                           1        0    375
ki1114097-CMIN             PERU                           1                           0       28    375
ki1114097-CMIN             PERU                           1                           1        0    375
ki1114097-CONTENT          PERU                           0                           0      196    200
ki1114097-CONTENT          PERU                           0                           1        1    200
ki1114097-CONTENT          PERU                           1                           0        3    200
ki1114097-CONTENT          PERU                           1                           1        0    200
ki1119695-PROBIT           BELARUS                        0                           0     1618   2146
ki1119695-PROBIT           BELARUS                        0                           1        0   2146
ki1119695-PROBIT           BELARUS                        1                           0      528   2146
ki1119695-PROBIT           BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                           0     1285   1655
ki1126311-ZVITAMBO         ZIMBABWE                       0                           1       54   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                           0      284   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                           1       32   1655
ki1135781-COHORTS          GUATEMALA                      0                           0      594    774
ki1135781-COHORTS          GUATEMALA                      0                           1       26    774
ki1135781-COHORTS          GUATEMALA                      1                           0      142    774
ki1135781-COHORTS          GUATEMALA                      1                           1       12    774
ki1135781-COHORTS          PHILIPPINES                    0                           0     1777   2487
ki1135781-COHORTS          PHILIPPINES                    0                           1      112   2487
ki1135781-COHORTS          PHILIPPINES                    1                           0      523   2487
ki1135781-COHORTS          PHILIPPINES                    1                           1       75   2487
ki1148112-LCNI-5           MALAWI                         0                           0      667    693
ki1148112-LCNI-5           MALAWI                         0                           1       16    693
ki1148112-LCNI-5           MALAWI                         1                           0        9    693
ki1148112-LCNI-5           MALAWI                         1                           1        1    693
kiGH5241-JiVitA-4          BANGLADESH                     0                           0     3657   4527
kiGH5241-JiVitA-4          BANGLADESH                     0                           1      288   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           0      437   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           1      145   4527


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
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
![](/tmp/9008e0e5-72ab-495c-a662-dcdcefd4a5fa/d3b416ad-205b-4d56-a78f-701aa67ec551/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9008e0e5-72ab-495c-a662-dcdcefd4a5fa/d3b416ad-205b-4d56-a78f-701aa67ec551/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9008e0e5-72ab-495c-a662-dcdcefd4a5fa/d3b416ad-205b-4d56-a78f-701aa67ec551/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9008e0e5-72ab-495c-a662-dcdcefd4a5fa/d3b416ad-205b-4d56-a78f-701aa67ec551/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0294118   0.0039560   0.0548675
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1764706   0.0716073   0.2813339
ki1000108-IRC              INDIA                          0                    NA                0.0475242   0.0173751   0.0776734
ki1000108-IRC              INDIA                          1                    NA                0.0726324   0.0381530   0.1071117
ki1000109-EE               PAKISTAN                       0                    NA                0.1342307   0.0908068   0.1776545
ki1000109-EE               PAKISTAN                       1                    NA                0.4047713   0.3066047   0.5029380
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0795000   0.0667756   0.0922244
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1967328   0.1475820   0.2458836
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1386726   0.0960217   0.1813235
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3546381   0.2411351   0.4681410
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0485113   0.0237564   0.0732662
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2177680   0.1554360   0.2801000
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0545016   0.0328420   0.0761612
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0939840   0.0424827   0.1454854
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0304565   0.0145800   0.0463329
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0983069   0.0578205   0.1387934
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0166074   0.0079762   0.0252385
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0510949   0.0142048   0.0879850
ki1101329-Keneba           GAMBIA                         0                    NA                0.0357055   0.0262038   0.0452072
ki1101329-Keneba           GAMBIA                         1                    NA                0.1510622   0.1094542   0.1926702
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0739742   0.0476709   0.1002775
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1771670   0.1189029   0.2354312
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0867347   0.0472496   0.1262198
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2195122   0.0925464   0.3464780
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0399485   0.0292792   0.0506177
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1283157   0.0901842   0.1664472
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0421685   0.0262990   0.0580380
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0727062   0.0305182   0.1148942
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0588500   0.0475579   0.0701421
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1475878   0.0926739   0.2025018
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0814132   0.0700829   0.0927435
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2976581   0.2174447   0.3778715


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0633484   0.0311604   0.0955364
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0552077   0.0445257   0.0658898
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0519637   0.0412672   0.0626603
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0490956   0.0338639   0.0643273
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 6.000000   2.0999382   17.143362
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.528322   0.6964277    3.353927
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 3.015491   2.0159286    4.510669
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.474627   2.0683336    2.960730
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.557377   1.6403376    3.987092
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 4.489016   2.5016727    8.055115
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.724427   0.8746510    3.399810
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.227784   1.6669109    6.250238
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.076642   1.2639518    7.488995
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 4.230783   2.8911036    6.191241
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.394984   1.4747539    3.889428
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.530846   1.2122647    5.283651
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 3.212032   2.1540076    4.789747
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.724183   0.8638498    3.441346
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.507864   1.6516784    3.807874
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.656141   2.7067100    4.938603


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0339367    0.0077232   0.0601501
ki1000108-IRC              INDIA                          0                    NA                0.0142041   -0.0095628   0.0379711
ki1000109-EE               PAKISTAN                       0                    NA                0.0800551    0.0458793   0.1142308
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0224108    0.0107790   0.0340427
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0470859    0.0193289   0.0748429
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0618783    0.0361341   0.0876225
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0108341   -0.0031465   0.0248148
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0152849    0.0029401   0.0276296
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048212   -0.0005279   0.0101703
ki1101329-Keneba           GAMBIA                         0                    NA                0.0195022    0.0122258   0.0267786
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0314803    0.0115289   0.0514317
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0229699   -0.0009080   0.0468479
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0120153    0.0051381   0.0188925
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0069271   -0.0021795   0.0160337
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0163410    0.0077711   0.0249109
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0142351    0.0055888   0.0228815


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5357143    0.0769639   0.7664650
ki1000108-IRC              INDIA                          0                    NA                0.2301072   -0.2590941   0.5292369
ki1000109-EE               PAKISTAN                       0                    NA                0.3735903    0.2069613   0.5052080
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2199064    0.1058787   0.3193922
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2534793    0.0971953   0.3827090
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5605447    0.3250963   0.7138540
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1658225   -0.0683471   0.3486648
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3341585    0.0363579   0.5399278
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2249901   -0.0446753   0.4250459
ki1101329-Keneba           GAMBIA                         0                    NA                0.3532518    0.2278076   0.4583174
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2985204    0.0974670   0.4547860
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2093799   -0.0268154   0.3912439
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2312245    0.0952252   0.3467814
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1410942   -0.0599372   0.3039973
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2173263    0.1006091   0.3188966
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1488279    0.0567554   0.2319129
