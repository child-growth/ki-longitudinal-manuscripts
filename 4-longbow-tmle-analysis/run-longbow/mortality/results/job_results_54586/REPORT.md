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

**Intervention Variable:** ever_underweight06

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

studyid                    country                        ever_underweight06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  -------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                                  0      158     240
ki0047075b-MAL-ED          BANGLADESH                     0                                  1        3     240
ki0047075b-MAL-ED          BANGLADESH                     1                                  0       65     240
ki0047075b-MAL-ED          BANGLADESH                     1                                  1       14     240
ki0047075b-MAL-ED          BRAZIL                         0                                  0      191     207
ki0047075b-MAL-ED          BRAZIL                         0                                  1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                                  0       14     207
ki0047075b-MAL-ED          BRAZIL                         1                                  1        0     207
ki0047075b-MAL-ED          INDIA                          0                                  0      133     235
ki0047075b-MAL-ED          INDIA                          0                                  1        1     235
ki0047075b-MAL-ED          INDIA                          1                                  0       74     235
ki0047075b-MAL-ED          INDIA                          1                                  1       27     235
ki0047075b-MAL-ED          NEPAL                          0                                  0      195     235
ki0047075b-MAL-ED          NEPAL                          0                                  1        0     235
ki0047075b-MAL-ED          NEPAL                          1                                  0       38     235
ki0047075b-MAL-ED          NEPAL                          1                                  1        2     235
ki0047075b-MAL-ED          PERU                           0                                  0      222     270
ki0047075b-MAL-ED          PERU                           0                                  1        1     270
ki0047075b-MAL-ED          PERU                           1                                  0       45     270
ki0047075b-MAL-ED          PERU                           1                                  1        2     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  0      215     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  1        0     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  0       42     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  1        2     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  0      203     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  0       42     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  0      186     373
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  1        4     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  0      159     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  1       24     373
ki1000108-IRC              INDIA                          0                                  0      199     410
ki1000108-IRC              INDIA                          0                                  1       12     410
ki1000108-IRC              INDIA                          1                                  0      163     410
ki1000108-IRC              INDIA                          1                                  1       36     410
ki1000109-EE               PAKISTAN                       0                                  0      101     374
ki1000109-EE               PAKISTAN                       0                                  1        1     374
ki1000109-EE               PAKISTAN                       1                                  0      224     374
ki1000109-EE               PAKISTAN                       1                                  1       48     374
ki1000109-ResPak           PAKISTAN                       0                                  0      125     234
ki1000109-ResPak           PAKISTAN                       0                                  1       17     234
ki1000109-ResPak           PAKISTAN                       1                                  0       62     234
ki1000109-ResPak           PAKISTAN                       1                                  1       30     234
ki1000304b-SAS-CompFeed    INDIA                          0                                  0      760    1389
ki1000304b-SAS-CompFeed    INDIA                          0                                  1       46    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                  0      398    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                  1      185    1389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  0      180     400
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  1        8     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  0      144     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  1       68     400
ki1017093-NIH-Birth        BANGLADESH                     0                                  0      289     542
ki1017093-NIH-Birth        BANGLADESH                     0                                  1        9     542
ki1017093-NIH-Birth        BANGLADESH                     1                                  0      192     542
ki1017093-NIH-Birth        BANGLADESH                     1                                  1       52     542
ki1017093b-PROVIDE         BANGLADESH                     0                                  0      406     615
ki1017093b-PROVIDE         BANGLADESH                     0                                  1        8     615
ki1017093b-PROVIDE         BANGLADESH                     1                                  0      169     615
ki1017093b-PROVIDE         BANGLADESH                     1                                  1       32     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  0      489     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  1       10     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  0      197     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  1       34     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  0     1740    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  1       31    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  0      176    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  1       71    2018
ki1101329-Keneba           GAMBIA                         0                                  0     1854    2441
ki1101329-Keneba           GAMBIA                         0                                  1       78    2441
ki1101329-Keneba           GAMBIA                         1                                  0      370    2441
ki1101329-Keneba           GAMBIA                         1                                  1      139    2441
ki1112895-Guatemala BSC    GUATEMALA                      0                                  0      216     274
ki1112895-Guatemala BSC    GUATEMALA                      0                                  1        0     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                  0       54     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                  1        4     274
ki1113344-GMS-Nepal        NEPAL                          0                                  0      302     590
ki1113344-GMS-Nepal        NEPAL                          0                                  1       17     590
ki1113344-GMS-Nepal        NEPAL                          1                                  0      179     590
ki1113344-GMS-Nepal        NEPAL                          1                                  1       92     590
ki1114097-CMIN             BANGLADESH                     0                                  0      118     252
ki1114097-CMIN             BANGLADESH                     0                                  1        1     252
ki1114097-CMIN             BANGLADESH                     1                                  0      109     252
ki1114097-CMIN             BANGLADESH                     1                                  1       24     252
ki1114097-CONTENT          PERU                           0                                  0      200     215
ki1114097-CONTENT          PERU                           0                                  1        0     215
ki1114097-CONTENT          PERU                           1                                  0       15     215
ki1114097-CONTENT          PERU                           1                                  1        0     215
ki1119695-PROBIT           BELARUS                        0                                  0    15356   16596
ki1119695-PROBIT           BELARUS                        0                                  1       12   16596
ki1119695-PROBIT           BELARUS                        1                                  0     1216   16596
ki1119695-PROBIT           BELARUS                        1                                  1       12   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  0     8705   10814
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  1      206   10814
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  0     1641   10814
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  1      262   10814
ki1135781-COHORTS          GUATEMALA                      0                                  0      731    1023
ki1135781-COHORTS          GUATEMALA                      0                                  1        4    1023
ki1135781-COHORTS          GUATEMALA                      1                                  0      251    1023
ki1135781-COHORTS          GUATEMALA                      1                                  1       37    1023
ki1135781-COHORTS          INDIA                          0                                  0     4367    6897
ki1135781-COHORTS          INDIA                          0                                  1      112    6897
ki1135781-COHORTS          INDIA                          1                                  0     1759    6897
ki1135781-COHORTS          INDIA                          1                                  1      659    6897
ki1135781-COHORTS          PHILIPPINES                    0                                  0     2080    2809
ki1135781-COHORTS          PHILIPPINES                    0                                  1       73    2809
ki1135781-COHORTS          PHILIPPINES                    1                                  0      503    2809
ki1135781-COHORTS          PHILIPPINES                    1                                  1      153    2809
ki1148112-LCNI-5           MALAWI                         0                                  0      683     796
ki1148112-LCNI-5           MALAWI                         0                                  1        2     796
ki1148112-LCNI-5           MALAWI                         1                                  0      100     796
ki1148112-LCNI-5           MALAWI                         1                                  1       11     796
kiGH5241-JiVitA-3          BANGLADESH                     0                                  0     8696   17274
kiGH5241-JiVitA-3          BANGLADESH                     0                                  1      842   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                  0     5332   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                  1     2404   17274
kiGH5241-JiVitA-4          BANGLADESH                     0                                  0     3354    5263
kiGH5241-JiVitA-4          BANGLADESH                     0                                  1      124    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                  0     1344    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                  1      441    5263


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/7c60eacb-e421-495b-8089-aa6ba04c8671/3214cf85-e6fe-429c-9510-e69be679a780/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c60eacb-e421-495b-8089-aa6ba04c8671/3214cf85-e6fe-429c-9510-e69be679a780/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c60eacb-e421-495b-8089-aa6ba04c8671/3214cf85-e6fe-429c-9510-e69be679a780/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c60eacb-e421-495b-8089-aa6ba04c8671/3214cf85-e6fe-429c-9510-e69be679a780/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0594754   0.0270958   0.0918550
ki1000108-IRC              INDIA                          1                    NA                0.1825848   0.1284095   0.2367601
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1223460   0.0684341   0.1762580
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3362719   0.2405673   0.4319765
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0603340   0.0448969   0.0757711
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2960405   0.2720234   0.3200576
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0425532   0.0136640   0.0714424
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3207547   0.2578442   0.3836653
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0302013   0.0107524   0.0496502
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2131148   0.1616847   0.2645448
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0193237   0.0060525   0.0325948
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1592040   0.1085836   0.2098244
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0205400   0.0081791   0.0329010
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1415304   0.0954240   0.1876368
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0175247   0.0114094   0.0236401
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2810619   0.2234739   0.3386499
ki1101329-Keneba           GAMBIA                         0                    NA                0.0412052   0.0322834   0.0501270
ki1101329-Keneba           GAMBIA                         1                    NA                0.2506306   0.2119068   0.2893544
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0538718   0.0287960   0.0789475
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3389443   0.2821495   0.3957390
ki1119695-PROBIT           BELARUS                        0                    NA                0.0008013   0.0000548   0.0015479
ki1119695-PROBIT           BELARUS                        1                    NA                0.0093936   0.0054100   0.0133772
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0234738   0.0203284   0.0266191
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1271987   0.1119343   0.1424631
ki1135781-COHORTS          INDIA                          0                    NA                0.0258996   0.0211571   0.0306420
ki1135781-COHORTS          INDIA                          1                    NA                0.2587175   0.2410119   0.2764232
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0352367   0.0273688   0.0431047
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2223948   0.1894730   0.2553165
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0876567   0.0810680   0.0942454
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3126488   0.3014168   0.3238807
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0357493   0.0273138   0.0441847
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2481262   0.2251547   0.2710978


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.069922    1.648644    5.716469
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.748531    1.625575    4.647234
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.906696    3.860396    6.236578
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  7.537735    3.718279   15.280577
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.056466    3.547479   14.036366
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.238806    3.865305   17.560819
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.890474    3.474789   13.663746
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.038004   10.697850   24.043856
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  6.082497    4.663171    7.933823
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.291686    3.839969   10.308758
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 11.722878    5.245397   26.199327
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.418756    4.527654    6.485240
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  9.989259    8.216462   12.144557
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.311449    4.830265    8.246835
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.566741    3.287362    3.869864
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  6.940739    5.399176    8.922446


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0575978   0.0261502   0.0890453
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0785087   0.0334346   0.1235827
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1059727   0.0905171   0.1214284
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1474468   0.1083088   0.1865848
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0823448   0.0564310   0.1082586
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0457170   0.0278436   0.0635904
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0397340   0.0241429   0.0553250
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330204   0.0250689   0.0409718
ki1101329-Keneba           GAMBIA                         0                    NA                0.0476928   0.0386042   0.0567813
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1308740   0.1002190   0.1615290
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006448   0.0002323   0.0010574
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0198035   0.0169074   0.0226995
ki1135781-COHORTS          INDIA                          0                    NA                0.0858882   0.0788398   0.0929366
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0452190   0.0368361   0.0536018
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1002558   0.0944226   0.1060890
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0716040   0.0627660   0.0804419


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.4919811   0.1885989   0.6819289
ki1000109-ResPak           PAKISTAN                       0                    NA                0.3908729   0.1431020   0.5670012
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6372126   0.5525539   0.7058535
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7760358   0.5768128   0.8814710
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7316536   0.5158152   0.8512763
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7028985   0.4528294   0.8386805
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6592225   0.4236357   0.7985141
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6532850   0.5371055   0.7403051
ki1101329-Keneba           GAMBIA                         0                    NA                0.5364888   0.4503957   0.6090958
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7084005   0.5553597   0.8087661
ki1119695-PROBIT           BELARUS                        0                    NA                0.4458977   0.2061895   0.6132209
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4575953   0.4010133   0.5088324
ki1135781-COHORTS          INDIA                          0                    NA                0.7683147   0.7259162   0.8041545
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5620357   0.4751614   0.6345300
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5335238   0.5043048   0.5610204
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6669941   0.5937678   0.7270209
