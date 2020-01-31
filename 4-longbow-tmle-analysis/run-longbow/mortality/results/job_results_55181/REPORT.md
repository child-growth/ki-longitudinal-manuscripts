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

**Intervention Variable:** ever_stunted06

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

studyid                    country                        ever_stunted06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                              0      145     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                              1       10     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                              0       78     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                              1        7     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                              0      160     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                              1        2     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                              0       45     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                              1        0     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                              0      135     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                              1       14     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                              0       72     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                              1       14     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                              0      191     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                              1        1     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                              0       42     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                              1        1     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                              0      147     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                              1        0     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                              0      120     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                              1        3     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              0      152     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              1        2     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              0      105     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              1        0     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              0      140     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              0      105     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                              0      167     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                              1       11     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                              0      175     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                              1       17     370  pers_wasted624   
ki1000108-IRC              INDIA                          0                              0      204     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                              1       28     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                              0      158     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                              1       20     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                              0       83     373  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                              1        8     373  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                              0      241     373  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                              1       41     373  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                              0       79     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                              1       16     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                              0      108     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                              1       31     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                              0      698    1388  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                              1      100    1388  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                              0      460    1388  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                              1      130    1388  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                              0      179     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                              1       36     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                              0      147     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                              1       40     402  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                              0      295     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                              1       23     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                              0      186     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                              1       38     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                              0      435     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                              1       20     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                              0      140     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                              1       20     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                              0      460     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                              1       19     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                              0      226     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                              1       25     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1514    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       66    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0      402    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       36    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                              0     1469    2299  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                              1       97    2299  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                              0      627    2299  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                              1      106    2299  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                              0      180     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                              1        1     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                              0       90     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                              1        3     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                              0      339     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                              1       58     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                              0      142     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                              1       51     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                              0      107     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                              1        3     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                              0      120     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                              1       22     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                              0      166     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                              1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                              0       49     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                              1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                              0    14554   16595  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                              1       19   16595  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                              0     2017   16595  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                              1        5   16595  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                              0     7237   10802  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                              1      241   10802  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                              0     3098   10802  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                              1      226   10802  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                              0      555    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                              1       12    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                              0      427    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                              1       29    1023  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                              0     4740    6893  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                              1      420    6893  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                              0     1382    6893  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                              1      351    6893  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                              0     1889    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                              1      108    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                              0      694    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                              1      118    2809  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                              0      498     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                              1        4     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                              0      286     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                              1        9     797  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                              0     8305   17265  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                              1     1519   17265  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                              0     5718   17265  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                              1     1723   17265  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                              0     2985    5257  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                              1      243    5257  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                              0     1708    5257  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                              1      321    5257  pers_wasted624   


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
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
![](/tmp/6559fb40-82da-416a-90f3-610f6042d0d8/797c064a-b6ec-417c-828b-db6eabd772dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6559fb40-82da-416a-90f3-610f6042d0d8/797c064a-b6ec-417c-828b-db6eabd772dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6559fb40-82da-416a-90f3-610f6042d0d8/797c064a-b6ec-417c-828b-db6eabd772dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6559fb40-82da-416a-90f3-610f6042d0d8/797c064a-b6ec-417c-828b-db6eabd772dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.0823529   0.0237900   0.1409159
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0942170   0.0471734   0.1412606
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1554809   0.0765471   0.2344148
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0630142   0.0274496   0.0985788
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0899212   0.0496376   0.1302049
ki1000108-IRC              INDIA                          0                    NA                0.1214366   0.0786632   0.1642100
ki1000108-IRC              INDIA                          1                    NA                0.1115984   0.0645016   0.1586952
ki1000109-EE               PAKISTAN                       0                    NA                0.0879121   0.0296544   0.1461697
ki1000109-EE               PAKISTAN                       1                    NA                0.1453901   0.1041938   0.1865863
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1685595   0.0934922   0.2436267
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2272178   0.1573133   0.2971222
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1378455   0.1163797   0.1593114
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1955463   0.1633241   0.2277685
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1660534   0.1156244   0.2164824
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2155181   0.1554435   0.2755927
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0745322   0.0444144   0.1046500
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1750665   0.1242481   0.2258849
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0441324   0.0251381   0.0631267
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1245524   0.0721677   0.1769372
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0408281   0.0233315   0.0583248
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0969729   0.0599699   0.1339759
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0420524   0.0321257   0.0519791
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0805178   0.0546408   0.1063948
ki1101329-Keneba           GAMBIA                         0                    NA                0.0642131   0.0519987   0.0764276
ki1101329-Keneba           GAMBIA                         1                    NA                0.1325034   0.1073179   0.1576889
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1482261   0.1133856   0.1830665
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2513342   0.1886039   0.3140646
ki1119695-PROBIT           BELARUS                        0                    NA                0.0013038   0.0002440   0.0023635
ki1119695-PROBIT           BELARUS                        1                    NA                0.0024728   0.0001388   0.0048068
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0331995   0.0291203   0.0372788
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0657921   0.0572195   0.0743648
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0238474   0.0086563   0.0390384
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0670302   0.0420635   0.0919970
ki1135781-COHORTS          INDIA                          0                    NA                0.0847828   0.0770521   0.0925135
ki1135781-COHORTS          INDIA                          1                    NA                0.1854393   0.1667706   0.2041080
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0586901   0.0479129   0.0694674
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1331106   0.1077933   0.1584280
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1567512   0.1487652   0.1647372
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2269151   0.2157536   0.2380766
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0764451   0.0650823   0.0878080
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1568189   0.1376778   0.1759600


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0708333   0.0383085   0.1033581
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014462   0.0004207   0.0024717
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.2764706   0.5031874   3.238112
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 1.6502431   0.8092349   3.365280
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4270003   0.6933879   2.936783
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 0.9189848   0.5299692   1.593551
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.6538121   0.8044198   3.400084
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.3479979   0.7859875   2.311867
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4185903   1.1267762   1.785979
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.2978840   0.8591319   1.960704
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.3488710   1.4254340   3.870537
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.8222441   1.5463083   5.151018
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.3751477   1.3384148   4.214931
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9147009   1.2848699   2.853269
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.0634939   1.5775612   2.699108
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.6956142   1.2047103   2.386555
ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 1.8966370   0.6161343   5.838390
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.9817184   1.6571851   2.369806
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.8108004   1.3457376   5.870832
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.1872279   1.9103305   2.504261
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2680236   1.7419432   2.952984
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4476131   1.3520335   1.549950
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.0513913   1.7056354   2.467237


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0063172   -0.0185779   0.0312123
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0249319   -0.0088288   0.0586927
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0126615   -0.0153545   0.0406775
ki1000108-IRC              INDIA                          0                    NA                -0.0043634   -0.0323307   0.0236039
ki1000109-EE               PAKISTAN                       0                    NA                 0.0434552   -0.0105474   0.0974578
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0322952   -0.0281951   0.0927855
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0278605    0.0074054   0.0483156
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0230013   -0.0134632   0.0594658
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0380139    0.0130776   0.0629503
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0209082    0.0063913   0.0354252
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0194458    0.0052256   0.0336660
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0084927    0.0024330   0.0145523
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0240861    0.0148413   0.0333310
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0365197    0.0128851   0.0601542
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001424   -0.0001556   0.0004405
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0100332    0.0070707   0.0129957
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0162308    0.0021519   0.0303097
ki1135781-COHORTS          INDIA                          0                    NA                 0.0270698    0.0216867   0.0324529
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0217655    0.0135198   0.0300113
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0310275    0.0252961   0.0367590
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0308404    0.0224032   0.0392776


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0891841   -0.3366919   0.3793741
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.2092502   -0.1206589   0.4420379
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1673127   -0.2910685   0.4629501
ki1000108-IRC              INDIA                          0                    NA                -0.0372710   -0.3056166   0.1759210
ki1000109-EE               PAKISTAN                       0                    NA                 0.3307917   -0.2234703   0.6339594
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1607891   -0.1991792   0.4127025
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1681321    0.0422130   0.2774968
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1216648   -0.0931873   0.2942904
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3377631    0.0904077   0.5178524
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3214642    0.0835258   0.4976281
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3226239    0.0673249   0.5080405
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1680217    0.0436381   0.2762280
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2727783    0.1669168   0.3651878
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1976753    0.0625448   0.3133273
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0984898   -0.1451996   0.2903240
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2320739    0.1638743   0.2947108
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.4049786   -0.0387544   0.6591587
ki1135781-COHORTS          INDIA                          0                    NA                 0.2420133    0.1947756   0.2864798
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.2705282    0.1666547   0.3614542
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1652346    0.1345255   0.1948541
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2874608    0.2081524   0.3588259
