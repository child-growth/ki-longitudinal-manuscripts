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

**Intervention Variable:** ever_sstunted06

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

studyid                    country                        ever_sstunted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ----------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                               0      207     240
ki0047075b-MAL-ED          BANGLADESH                     0                               1       15     240
ki0047075b-MAL-ED          BANGLADESH                     1                               0       16     240
ki0047075b-MAL-ED          BANGLADESH                     1                               1        2     240
ki0047075b-MAL-ED          BRAZIL                         0                               0      188     207
ki0047075b-MAL-ED          BRAZIL                         0                               1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                               0       17     207
ki0047075b-MAL-ED          BRAZIL                         1                               1        0     207
ki0047075b-MAL-ED          INDIA                          0                               0      193     235
ki0047075b-MAL-ED          INDIA                          0                               1       22     235
ki0047075b-MAL-ED          INDIA                          1                               0       14     235
ki0047075b-MAL-ED          INDIA                          1                               1        6     235
ki0047075b-MAL-ED          NEPAL                          0                               0      224     235
ki0047075b-MAL-ED          NEPAL                          0                               1        1     235
ki0047075b-MAL-ED          NEPAL                          1                               0        9     235
ki0047075b-MAL-ED          NEPAL                          1                               1        1     235
ki0047075b-MAL-ED          PERU                           0                               0      234     270
ki0047075b-MAL-ED          PERU                           0                               1        1     270
ki0047075b-MAL-ED          PERU                           1                               0       33     270
ki0047075b-MAL-ED          PERU                           1                               1        2     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                               0      230     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                               1        2     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                               0       27     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                               1        0     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                               0      208     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                               1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                               0       37     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                               1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                               0      260     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                               1       16     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                               0       82     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                               1       12     370
ki1000108-IRC              INDIA                          0                               0      310     410
ki1000108-IRC              INDIA                          0                               1       38     410
ki1000108-IRC              INDIA                          1                               0       52     410
ki1000108-IRC              INDIA                          1                               1       10     410
ki1000109-EE               PAKISTAN                       0                               0      188     373
ki1000109-EE               PAKISTAN                       0                               1       24     373
ki1000109-EE               PAKISTAN                       1                               0      136     373
ki1000109-EE               PAKISTAN                       1                               1       25     373
ki1000109-ResPak           PAKISTAN                       0                               0      114     234
ki1000109-ResPak           PAKISTAN                       0                               1       32     234
ki1000109-ResPak           PAKISTAN                       1                               0       73     234
ki1000109-ResPak           PAKISTAN                       1                               1       15     234
ki1000304b-SAS-CompFeed    INDIA                          0                               0     1018    1388
ki1000304b-SAS-CompFeed    INDIA                          0                               1      163    1388
ki1000304b-SAS-CompFeed    INDIA                          1                               0      140    1388
ki1000304b-SAS-CompFeed    INDIA                          1                               1       67    1388
ki1000304b-SAS-FoodSuppl   INDIA                          0                               0      283     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                               1       55     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                               0       43     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                               1       21     402
ki1017093-NIH-Birth        BANGLADESH                     0                               0      427     542
ki1017093-NIH-Birth        BANGLADESH                     0                               1       48     542
ki1017093-NIH-Birth        BANGLADESH                     1                               0       54     542
ki1017093-NIH-Birth        BANGLADESH                     1                               1       13     542
ki1017093b-PROVIDE         BANGLADESH                     0                               0      549     615
ki1017093b-PROVIDE         BANGLADESH                     0                               1       37     615
ki1017093b-PROVIDE         BANGLADESH                     1                               0       26     615
ki1017093b-PROVIDE         BANGLADESH                     1                               1        3     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                               0      641     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                               1       36     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                               0       45     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                               1        8     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               0     1828    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               1       90    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               0       88    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               1       12    2018
ki1101329-Keneba           GAMBIA                         0                               0     1862    2299
ki1101329-Keneba           GAMBIA                         0                               1      164    2299
ki1101329-Keneba           GAMBIA                         1                               0      234    2299
ki1101329-Keneba           GAMBIA                         1                               1       39    2299
ki1112895-Guatemala BSC    GUATEMALA                      0                               0      246     274
ki1112895-Guatemala BSC    GUATEMALA                      0                               1        2     274
ki1112895-Guatemala BSC    GUATEMALA                      1                               0       24     274
ki1112895-Guatemala BSC    GUATEMALA                      1                               1        2     274
ki1113344-GMS-Nepal        NEPAL                          0                               0      454     590
ki1113344-GMS-Nepal        NEPAL                          0                               1       88     590
ki1113344-GMS-Nepal        NEPAL                          1                               0       27     590
ki1113344-GMS-Nepal        NEPAL                          1                               1       21     590
ki1114097-CMIN             BANGLADESH                     0                               0      181     252
ki1114097-CMIN             BANGLADESH                     0                               1       12     252
ki1114097-CMIN             BANGLADESH                     1                               0       46     252
ki1114097-CMIN             BANGLADESH                     1                               1       13     252
ki1114097-CONTENT          PERU                           0                               0      206     215
ki1114097-CONTENT          PERU                           0                               1        0     215
ki1114097-CONTENT          PERU                           1                               0        9     215
ki1114097-CONTENT          PERU                           1                               1        0     215
ki1119695-PROBIT           BELARUS                        0                               0    16190   16595
ki1119695-PROBIT           BELARUS                        0                               1       23   16595
ki1119695-PROBIT           BELARUS                        1                               0      381   16595
ki1119695-PROBIT           BELARUS                        1                               1        1   16595
ki1126311-ZVITAMBO         ZIMBABWE                       0                               0     9267   10802
ki1126311-ZVITAMBO         ZIMBABWE                       0                               1      375   10802
ki1126311-ZVITAMBO         ZIMBABWE                       1                               0     1068   10802
ki1126311-ZVITAMBO         ZIMBABWE                       1                               1       92   10802
ki1135781-COHORTS          GUATEMALA                      0                               0      843    1023
ki1135781-COHORTS          GUATEMALA                      0                               1       24    1023
ki1135781-COHORTS          GUATEMALA                      1                               0      139    1023
ki1135781-COHORTS          GUATEMALA                      1                               1       17    1023
ki1135781-COHORTS          INDIA                          0                               0     5774    6893
ki1135781-COHORTS          INDIA                          0                               1      648    6893
ki1135781-COHORTS          INDIA                          1                               0      348    6893
ki1135781-COHORTS          INDIA                          1                               1      123    6893
ki1135781-COHORTS          PHILIPPINES                    0                               0     2411    2809
ki1135781-COHORTS          PHILIPPINES                    0                               1      184    2809
ki1135781-COHORTS          PHILIPPINES                    1                               0      172    2809
ki1135781-COHORTS          PHILIPPINES                    1                               1       42    2809
ki1148112-LCNI-5           MALAWI                         0                               0      720     797
ki1148112-LCNI-5           MALAWI                         0                               1       10     797
ki1148112-LCNI-5           MALAWI                         1                               0       64     797
ki1148112-LCNI-5           MALAWI                         1                               1        3     797
kiGH5241-JiVitA-3          BANGLADESH                     0                               0    12183   17265
kiGH5241-JiVitA-3          BANGLADESH                     0                               1     2582   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                               0     1840   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                               1      660   17265
kiGH5241-JiVitA-4          BANGLADESH                     0                               0     4209    5257
kiGH5241-JiVitA-4          BANGLADESH                     0                               1      449    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                               0      484    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                               1      115    5257


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/b37b3db7-ec8a-4340-ba34-f2e712bce4b6/da3447e5-e385-41ea-933f-5ed3510ce07c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b37b3db7-ec8a-4340-ba34-f2e712bce4b6/da3447e5-e385-41ea-933f-5ed3510ce07c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b37b3db7-ec8a-4340-ba34-f2e712bce4b6/da3447e5-e385-41ea-933f-5ed3510ce07c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b37b3db7-ec8a-4340-ba34-f2e712bce4b6/da3447e5-e385-41ea-933f-5ed3510ce07c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1023256   0.0617274   0.1429237
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3000000   0.0987348   0.5012652
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0577161   0.0300435   0.0853887
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1326594   0.0645894   0.2007294
ki1000108-IRC              INDIA                          0                    NA                0.1103119   0.0770585   0.1435652
ki1000108-IRC              INDIA                          1                    NA                0.1537568   0.0618972   0.2456163
ki1000109-EE               PAKISTAN                       0                    NA                0.1126101   0.0696241   0.1555961
ki1000109-EE               PAKISTAN                       1                    NA                0.1529261   0.0966216   0.2092306
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2187022   0.1512369   0.2861676
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1739978   0.0939061   0.2540895
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1436339   0.1206548   0.1666129
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2799046   0.1968329   0.3629762
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1626498   0.1232355   0.2020640
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3305159   0.2072010   0.4538309
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1015552   0.0743909   0.1287194
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2019047   0.1051119   0.2986974
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0468927   0.0374259   0.0563595
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1251502   0.0623437   0.1879567
ki1101329-Keneba           GAMBIA                         0                    NA                0.0816850   0.0697432   0.0936268
ki1101329-Keneba           GAMBIA                         1                    NA                0.1383887   0.0971024   0.1796750
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1619847   0.1309298   0.1930396
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4381283   0.2917666   0.5844899
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0627303   0.0283865   0.0970742
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2141559   0.1075611   0.3207506
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0395454   0.0356365   0.0434542
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0739493   0.0582829   0.0896158
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0280207   0.0169887   0.0390526
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1168220   0.0651788   0.1684652
ki1135781-COHORTS          INDIA                          0                    NA                0.1021610   0.0947537   0.1095684
ki1135781-COHORTS          INDIA                          1                    NA                0.2223679   0.1838196   0.2609163
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0722263   0.0622281   0.0822244
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1904134   0.1294534   0.2513733
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1767084   0.1697360   0.1836809
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2589799   0.2378450   0.2801148
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0970788   0.0860300   0.1081275
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1835142   0.1463423   0.2206861


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 2.9318182   1.3447391   6.391989
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.2984809   1.1386600   4.639677
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.3938370   0.7136862   2.722179
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.3580136   0.7991365   2.307742
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.7955922   0.4577107   1.382897
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.9487365   1.2936787   2.935485
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.0320715   1.3018280   3.171936
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.9881280   1.1484889   3.441612
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.6688648   1.5533706   4.585409
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.6941750   1.2161225   2.360148
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.7047506   1.8413955   3.972898
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 3.4139122   1.6277101   7.160241
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8699866   1.4804644   2.361995
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 4.1691362   2.3118940   7.518379
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.1766416   1.8042448   2.625901
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.6363442   1.8601098   3.736506
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4655777   1.3397385   1.603237
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.8903637   1.4938232   2.392167


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0168234   -0.0020257   0.0356724
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0179595   -0.0008746   0.0367937
ki1000108-IRC              INDIA                          0                    NA                 0.0067613   -0.0083354   0.0218580
ki1000109-EE               PAKISTAN                       0                    NA                 0.0187572   -0.0118552   0.0493696
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0178475   -0.0569238   0.0212288
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0220722    0.0037418   0.0404026
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0264050    0.0060493   0.0467607
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0109910   -0.0014577   0.0234396
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0070982   -0.0002455   0.0144419
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036524    0.0003765   0.0069284
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0066143    0.0014373   0.0117912
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0227610    0.0095986   0.0359235
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0364760    0.0090740   0.0638781
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0036874    0.0019327   0.0054421
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0120575    0.0042326   0.0198824
ki1135781-COHORTS          INDIA                          0                    NA                 0.0096916    0.0068061   0.0125771
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0082294    0.0039227   0.0125361
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0110703    0.0080614   0.0140792
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0102068    0.0057625   0.0146510


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1411960   -0.0253403   0.2806834
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2373225   -0.0400291   0.4407109
ki1000108-IRC              INDIA                          0                    NA                 0.0577528   -0.0797455   0.1777416
ki1000109-EE               PAKISTAN                       0                    NA                 0.1427842   -0.1226720   0.3454732
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0888580   -0.3009014   0.0886229
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1332008    0.0178675   0.2349903
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1396684    0.0275529   0.2388578
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0976574   -0.0177521   0.1999799
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1177655   -0.0080550   0.2278818
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0722607    0.0065260   0.1336459
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0749073    0.0151424   0.1310455
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1232020    0.0509306   0.1899699
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.3676782    0.0685226   0.5707563
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0852910    0.0445343   0.1243091
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3008500    0.1024247   0.4554098
ki1135781-COHORTS          INDIA                          0                    NA                 0.0866460    0.0610433   0.1115506
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1022848    0.0486256   0.1529175
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0589541    0.0428263   0.0748102
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0951364    0.0525604   0.1357992
