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

**Intervention Variable:** ever_wasted06

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

studyid                    country                        ever_wasted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      180     240
ki0047075b-MAL-ED          BANGLADESH                     0                             1        4     240
ki0047075b-MAL-ED          BANGLADESH                     1                             0       43     240
ki0047075b-MAL-ED          BANGLADESH                     1                             1       13     240
ki0047075b-MAL-ED          BRAZIL                         0                             0      191     207
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207
ki0047075b-MAL-ED          BRAZIL                         1                             0       14     207
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207
ki0047075b-MAL-ED          INDIA                          0                             0      151     235
ki0047075b-MAL-ED          INDIA                          0                             1        6     235
ki0047075b-MAL-ED          INDIA                          1                             0       56     235
ki0047075b-MAL-ED          INDIA                          1                             1       22     235
ki0047075b-MAL-ED          NEPAL                          0                             0      188     235
ki0047075b-MAL-ED          NEPAL                          0                             1        0     235
ki0047075b-MAL-ED          NEPAL                          1                             0       45     235
ki0047075b-MAL-ED          NEPAL                          1                             1        2     235
ki0047075b-MAL-ED          PERU                           0                             0      258     270
ki0047075b-MAL-ED          PERU                           0                             1        2     270
ki0047075b-MAL-ED          PERU                           1                             0        9     270
ki0047075b-MAL-ED          PERU                           1                             1        1     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      230     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        0     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0       27     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        2     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      231     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0       14     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      175     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1        3     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0      167     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       25     370
ki1000108-IRC              INDIA                          0                             0      179     410
ki1000108-IRC              INDIA                          0                             1        6     410
ki1000108-IRC              INDIA                          1                             0      183     410
ki1000108-IRC              INDIA                          1                             1       42     410
ki1000109-EE               PAKISTAN                       0                             0      234     374
ki1000109-EE               PAKISTAN                       0                             1       12     374
ki1000109-EE               PAKISTAN                       1                             0       91     374
ki1000109-EE               PAKISTAN                       1                             1       37     374
ki1000109-ResPak           PAKISTAN                       0                             0      126     234
ki1000109-ResPak           PAKISTAN                       0                             1       15     234
ki1000109-ResPak           PAKISTAN                       1                             0       61     234
ki1000109-ResPak           PAKISTAN                       1                             1       32     234
ki1000304b-SAS-CompFeed    INDIA                          0                             0      957    1384
ki1000304b-SAS-CompFeed    INDIA                          0                             1      107    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             0      199    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             1      121    1384
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402
ki1017093-NIH-Birth        BANGLADESH                     0                             0      329     542
ki1017093-NIH-Birth        BANGLADESH                     0                             1       14     542
ki1017093-NIH-Birth        BANGLADESH                     1                             0      152     542
ki1017093-NIH-Birth        BANGLADESH                     1                             1       47     542
ki1017093b-PROVIDE         BANGLADESH                     0                             0      438     615
ki1017093b-PROVIDE         BANGLADESH                     0                             1       19     615
ki1017093b-PROVIDE         BANGLADESH                     1                             0      137     615
ki1017093b-PROVIDE         BANGLADESH                     1                             1       21     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      517     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       17     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0      169     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1       27     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1669    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       30    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0      247    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       72    2018
ki1101329-Keneba           GAMBIA                         0                             0     1576    2298
ki1101329-Keneba           GAMBIA                         0                             1       76    2298
ki1101329-Keneba           GAMBIA                         1                             0      519    2298
ki1101329-Keneba           GAMBIA                         1                             1      127    2298
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      263     274
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        7     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                             0      319     590
ki1113344-GMS-Nepal        NEPAL                          0                             1       34     590
ki1113344-GMS-Nepal        NEPAL                          1                             0      162     590
ki1113344-GMS-Nepal        NEPAL                          1                             1       75     590
ki1114097-CMIN             BANGLADESH                     0                             0      196     252
ki1114097-CMIN             BANGLADESH                     0                             1       11     252
ki1114097-CMIN             BANGLADESH                     1                             0       31     252
ki1114097-CMIN             BANGLADESH                     1                             1       14     252
ki1114097-CONTENT          PERU                           0                             0      211     215
ki1114097-CONTENT          PERU                           0                             1        0     215
ki1114097-CONTENT          PERU                           1                             0        4     215
ki1114097-CONTENT          PERU                           1                             1        0     215
ki1119695-PROBIT           BELARUS                        0                             0    12381   16596
ki1119695-PROBIT           BELARUS                        0                             1        3   16596
ki1119695-PROBIT           BELARUS                        1                             0     4191   16596
ki1119695-PROBIT           BELARUS                        1                             1       21   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     8482   10731
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      217   10731
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0     1792   10731
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      240   10731
ki1135781-COHORTS          GUATEMALA                      0                             0      786    1017
ki1135781-COHORTS          GUATEMALA                      0                             1       25    1017
ki1135781-COHORTS          GUATEMALA                      1                             0      190    1017
ki1135781-COHORTS          GUATEMALA                      1                             1       16    1017
ki1135781-COHORTS          INDIA                          0                             0     4756    6892
ki1135781-COHORTS          INDIA                          0                             1      113    6892
ki1135781-COHORTS          INDIA                          1                             0     1366    6892
ki1135781-COHORTS          INDIA                          1                             1      657    6892
ki1135781-COHORTS          PHILIPPINES                    0                             0     2013    2808
ki1135781-COHORTS          PHILIPPINES                    0                             1       98    2808
ki1135781-COHORTS          PHILIPPINES                    1                             0      569    2808
ki1135781-COHORTS          PHILIPPINES                    1                             1      128    2808
ki1148112-LCNI-5           MALAWI                         0                             0      776     797
ki1148112-LCNI-5           MALAWI                         0                             1        8     797
ki1148112-LCNI-5           MALAWI                         1                             0        8     797
ki1148112-LCNI-5           MALAWI                         1                             1        5     797
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    12238   17260
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     1503   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             0     1777   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             1     1742   17260
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4245    5239
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      304    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      432    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      258    5239


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
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/6f767fe8-d775-4d62-802b-2d4177195129/615406ab-fa55-4d0b-96ae-87c7a1b8d9fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f767fe8-d775-4d62-802b-2d4177195129/615406ab-fa55-4d0b-96ae-87c7a1b8d9fa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f767fe8-d775-4d62-802b-2d4177195129/615406ab-fa55-4d0b-96ae-87c7a1b8d9fa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f767fe8-d775-4d62-802b-2d4177195129/615406ab-fa55-4d0b-96ae-87c7a1b8d9fa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0382166   0.0081635   0.0682696
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2820513   0.1819735   0.3821290
ki1000108-IRC              INDIA                          0                    NA                0.0324324   0.0068747   0.0579902
ki1000108-IRC              INDIA                          1                    NA                0.1866667   0.1356920   0.2376414
ki1000109-EE               PAKISTAN                       0                    NA                0.0490701   0.0220798   0.0760604
ki1000109-EE               PAKISTAN                       1                    NA                0.2863140   0.2067092   0.3659188
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1065572   0.0553413   0.1577731
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3572399   0.2624972   0.4519826
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1021704   0.0843724   0.1199684
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3593707   0.3112161   0.4075253
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0840636   0.0525881   0.1155390
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5381117   0.4340675   0.6421560
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0410543   0.0200566   0.0620520
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2404976   0.1808520   0.3001433
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0412474   0.0228672   0.0596276
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1304884   0.0761753   0.1848015
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0322703   0.0173706   0.0471701
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1344109   0.0859299   0.1828919
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0175918   0.0113367   0.0238469
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2225322   0.1759937   0.2690708
ki1101329-Keneba           GAMBIA                         0                    NA                0.0459839   0.0358685   0.0560994
ki1101329-Keneba           GAMBIA                         1                    NA                0.1943391   0.1640268   0.2246514
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0984024   0.0675214   0.1292835
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3173443   0.2582989   0.3763897
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0522699   0.0217661   0.0827736
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3218525   0.1783872   0.4653178
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0251434   0.0218546   0.0284322
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1151057   0.1012365   0.1289750
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0310737   0.0191022   0.0430451
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0800453   0.0414193   0.1186712
ki1135781-COHORTS          INDIA                          0                    NA                0.0235183   0.0192705   0.0277661
ki1135781-COHORTS          INDIA                          1                    NA                0.3174303   0.2973173   0.3375433
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0458207   0.0368683   0.0547731
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1875802   0.1591879   0.2159726
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1096580   0.1041741   0.1151418
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4921114   0.4740824   0.5101403
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0670801   0.0579079   0.0762523
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3711493   0.3264795   0.4158190


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
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
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  7.380342    3.114563   17.488630
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  5.755556    2.499673   13.252299
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.834797    3.148914   10.811618
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.352565    1.934052    5.811471
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.517367    2.827626    4.375355
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.401246    4.192836    9.772848
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.858034    3.315470   10.350438
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.163554    1.719919    5.818920
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.165153    2.319286    7.480103
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.649736    8.373547   19.109682
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.226238    3.229529    5.530555
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.224965    2.243321    4.636162
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  6.157516    2.961538   12.802471
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.577967    3.833188    5.467455
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.575984    1.391862    4.767491
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 13.497183   11.151753   16.335903
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.093788    3.202547    5.233054
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.487694    4.228306    4.762995
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.532929    4.627717    6.615207


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0809324   0.0432584   0.1186063
ki1000108-IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
ki1000109-EE               PAKISTAN                       0                    NA                0.0819460   0.0512136   0.1126783
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0942975   0.0483364   0.1402585
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0625695   0.0492147   0.0759243
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1049911   0.0735188   0.1364634
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0714918   0.0471118   0.0958718
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0237932   0.0090373   0.0385491
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0280036   0.0140496   0.0419576
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0329532   0.0249180   0.0409885
ki1101329-Keneba           GAMBIA                         0                    NA                0.0423537   0.0329089   0.0517986
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0863434   0.0583532   0.1143335
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0469365   0.0193315   0.0745415
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0174435   0.0146419   0.0202450
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0092410   0.0013613   0.0171207
ki1135781-COHORTS          INDIA                          0                    NA                0.0882055   0.0813057   0.0951053
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0346636   0.0269488   0.0423785
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061071   0.0006741   0.0115401
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0783490   0.0738234   0.0828746
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0401923   0.0334697   0.0469149


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6792539   0.3611538   0.8389627
ki1000108-IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
ki1000109-EE               PAKISTAN                       0                    NA                0.6254651   0.4000049   0.7662040
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4694811   0.2194487   0.6394212
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3798079   0.3036285   0.4476537
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5553478   0.4009259   0.6699648
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6352222   0.4312260   0.7660533
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3658210   0.1273063   0.5391475
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4646058   0.2344637   0.6255606
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6519574   0.5317462   0.7413077
ki1101329-Keneba           GAMBIA                         0                    NA                0.4794527   0.3823333   0.5613015
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4673631   0.3142138   0.5863112
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4731198   0.1915600   0.6566192
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4095973   0.3516911   0.4623315
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2292212   0.0217452   0.3926941
ki1135781-COHORTS          INDIA                          0                    NA                0.7894963   0.7517137   0.8215293
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4306880   0.3424747   0.5070666
ki1148112-LCNI-5           MALAWI                         0                    NA                0.3744113   0.0387300   0.5928707
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4167346   0.3964394   0.4363473
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3746753   0.3180721   0.4265802
