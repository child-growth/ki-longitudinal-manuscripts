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

studyid                    country                        ever_stunted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                              0      145     240
ki0047075b-MAL-ED          BANGLADESH                     0                              1       10     240
ki0047075b-MAL-ED          BANGLADESH                     1                              0       78     240
ki0047075b-MAL-ED          BANGLADESH                     1                              1        7     240
ki0047075b-MAL-ED          BRAZIL                         0                              0      160     207
ki0047075b-MAL-ED          BRAZIL                         0                              1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                              0       45     207
ki0047075b-MAL-ED          BRAZIL                         1                              1        0     207
ki0047075b-MAL-ED          INDIA                          0                              0      135     235
ki0047075b-MAL-ED          INDIA                          0                              1       14     235
ki0047075b-MAL-ED          INDIA                          1                              0       72     235
ki0047075b-MAL-ED          INDIA                          1                              1       14     235
ki0047075b-MAL-ED          NEPAL                          0                              0      191     235
ki0047075b-MAL-ED          NEPAL                          0                              1        1     235
ki0047075b-MAL-ED          NEPAL                          1                              0       42     235
ki0047075b-MAL-ED          NEPAL                          1                              1        1     235
ki0047075b-MAL-ED          PERU                           0                              0      147     270
ki0047075b-MAL-ED          PERU                           0                              1        0     270
ki0047075b-MAL-ED          PERU                           1                              0      120     270
ki0047075b-MAL-ED          PERU                           1                              1        3     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              0      152     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                              1        2     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              0      105     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                              1        0     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              0      140     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              0      105     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                              0      167     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                              1       11     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              0      175     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                              1       17     370
ki1000108-IRC              INDIA                          0                              0      204     410
ki1000108-IRC              INDIA                          0                              1       28     410
ki1000108-IRC              INDIA                          1                              0      158     410
ki1000108-IRC              INDIA                          1                              1       20     410
ki1000109-EE               PAKISTAN                       0                              0       83     373
ki1000109-EE               PAKISTAN                       0                              1        8     373
ki1000109-EE               PAKISTAN                       1                              0      241     373
ki1000109-EE               PAKISTAN                       1                              1       41     373
ki1000109-ResPak           PAKISTAN                       0                              0       79     234
ki1000109-ResPak           PAKISTAN                       0                              1       16     234
ki1000109-ResPak           PAKISTAN                       1                              0      108     234
ki1000109-ResPak           PAKISTAN                       1                              1       31     234
ki1000304b-SAS-CompFeed    INDIA                          0                              0      698    1388
ki1000304b-SAS-CompFeed    INDIA                          0                              1      100    1388
ki1000304b-SAS-CompFeed    INDIA                          1                              0      460    1388
ki1000304b-SAS-CompFeed    INDIA                          1                              1      130    1388
ki1000304b-SAS-FoodSuppl   INDIA                          0                              0      179     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                              1       36     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              0      147     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                              1       40     402
ki1017093-NIH-Birth        BANGLADESH                     0                              0      295     542
ki1017093-NIH-Birth        BANGLADESH                     0                              1       23     542
ki1017093-NIH-Birth        BANGLADESH                     1                              0      186     542
ki1017093-NIH-Birth        BANGLADESH                     1                              1       38     542
ki1017093b-PROVIDE         BANGLADESH                     0                              0      435     615
ki1017093b-PROVIDE         BANGLADESH                     0                              1       20     615
ki1017093b-PROVIDE         BANGLADESH                     1                              0      140     615
ki1017093b-PROVIDE         BANGLADESH                     1                              1       20     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                              0      460     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                              1       19     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                              0      226     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                              1       25     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1514    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       66    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0      402    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       36    2018
ki1101329-Keneba           GAMBIA                         0                              0     1469    2299
ki1101329-Keneba           GAMBIA                         0                              1       97    2299
ki1101329-Keneba           GAMBIA                         1                              0      627    2299
ki1101329-Keneba           GAMBIA                         1                              1      106    2299
ki1112895-Guatemala BSC    GUATEMALA                      0                              0      180     274
ki1112895-Guatemala BSC    GUATEMALA                      0                              1        1     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              0       90     274
ki1112895-Guatemala BSC    GUATEMALA                      1                              1        3     274
ki1113344-GMS-Nepal        NEPAL                          0                              0      339     590
ki1113344-GMS-Nepal        NEPAL                          0                              1       58     590
ki1113344-GMS-Nepal        NEPAL                          1                              0      142     590
ki1113344-GMS-Nepal        NEPAL                          1                              1       51     590
ki1114097-CMIN             BANGLADESH                     0                              0      107     252
ki1114097-CMIN             BANGLADESH                     0                              1        3     252
ki1114097-CMIN             BANGLADESH                     1                              0      120     252
ki1114097-CMIN             BANGLADESH                     1                              1       22     252
ki1114097-CONTENT          PERU                           0                              0      166     215
ki1114097-CONTENT          PERU                           0                              1        0     215
ki1114097-CONTENT          PERU                           1                              0       49     215
ki1114097-CONTENT          PERU                           1                              1        0     215
ki1119695-PROBIT           BELARUS                        0                              0    14554   16595
ki1119695-PROBIT           BELARUS                        0                              1       19   16595
ki1119695-PROBIT           BELARUS                        1                              0     2017   16595
ki1119695-PROBIT           BELARUS                        1                              1        5   16595
ki1126311-ZVITAMBO         ZIMBABWE                       0                              0     7237   10802
ki1126311-ZVITAMBO         ZIMBABWE                       0                              1      241   10802
ki1126311-ZVITAMBO         ZIMBABWE                       1                              0     3098   10802
ki1126311-ZVITAMBO         ZIMBABWE                       1                              1      226   10802
ki1135781-COHORTS          GUATEMALA                      0                              0      555    1023
ki1135781-COHORTS          GUATEMALA                      0                              1       12    1023
ki1135781-COHORTS          GUATEMALA                      1                              0      427    1023
ki1135781-COHORTS          GUATEMALA                      1                              1       29    1023
ki1135781-COHORTS          INDIA                          0                              0     4740    6893
ki1135781-COHORTS          INDIA                          0                              1      420    6893
ki1135781-COHORTS          INDIA                          1                              0     1382    6893
ki1135781-COHORTS          INDIA                          1                              1      351    6893
ki1135781-COHORTS          PHILIPPINES                    0                              0     1889    2809
ki1135781-COHORTS          PHILIPPINES                    0                              1      108    2809
ki1135781-COHORTS          PHILIPPINES                    1                              0      694    2809
ki1135781-COHORTS          PHILIPPINES                    1                              1      118    2809
ki1148112-LCNI-5           MALAWI                         0                              0      498     797
ki1148112-LCNI-5           MALAWI                         0                              1        4     797
ki1148112-LCNI-5           MALAWI                         1                              0      286     797
ki1148112-LCNI-5           MALAWI                         1                              1        9     797
kiGH5241-JiVitA-3          BANGLADESH                     0                              0     8305   17265
kiGH5241-JiVitA-3          BANGLADESH                     0                              1     1519   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                              0     5718   17265
kiGH5241-JiVitA-3          BANGLADESH                     1                              1     1723   17265
kiGH5241-JiVitA-4          BANGLADESH                     0                              0     2985    5257
kiGH5241-JiVitA-4          BANGLADESH                     0                              1      243    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                              0     1708    5257
kiGH5241-JiVitA-4          BANGLADESH                     1                              1      321    5257


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
![](/tmp/e25afaf5-6e6f-43a1-82bd-b6b453250903/0b038d6a-0415-4078-81c8-763602894b96/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e25afaf5-6e6f-43a1-82bd-b6b453250903/0b038d6a-0415-4078-81c8-763602894b96/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e25afaf5-6e6f-43a1-82bd-b6b453250903/0b038d6a-0415-4078-81c8-763602894b96/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e25afaf5-6e6f-43a1-82bd-b6b453250903/0b038d6a-0415-4078-81c8-763602894b96/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.0823529   0.0237900   0.1409159
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0962920   0.0487171   0.1438669
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1550824   0.0757082   0.2344565
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0613645   0.0260003   0.0967288
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0917294   0.0514269   0.1320319
ki1000108-IRC              INDIA                          0                    NA                0.1221192   0.0791367   0.1651018
ki1000108-IRC              INDIA                          1                    NA                0.1119361   0.0652686   0.1586036
ki1000109-EE               PAKISTAN                       0                    NA                0.0879121   0.0296544   0.1461697
ki1000109-EE               PAKISTAN                       1                    NA                0.1453901   0.1041938   0.1865863
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1565753   0.0800513   0.2330993
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2201449   0.1500204   0.2902695
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1378455   0.1163797   0.1593114
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1955463   0.1633241   0.2277685
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1658071   0.1159493   0.2156648
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2151004   0.1555868   0.2746141
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0743278   0.0443598   0.1042958
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1717003   0.1220764   0.2213242
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0445945   0.0255601   0.0636289
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1228339   0.0710895   0.1745782
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0407895   0.0232677   0.0583113
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0932982   0.0569308   0.1296656
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0419918   0.0320870   0.0518967
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0797326   0.0543094   0.1051558
ki1101329-Keneba           GAMBIA                         0                    NA                0.0641320   0.0519101   0.0763539
ki1101329-Keneba           GAMBIA                         1                    NA                0.1364558   0.1107695   0.1621422
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1487631   0.1140047   0.1835216
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2566604   0.1940106   0.3193103
ki1119695-PROBIT           BELARUS                        0                    NA                0.0013038   0.0002440   0.0023635
ki1119695-PROBIT           BELARUS                        1                    NA                0.0024728   0.0001388   0.0048068
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0332741   0.0291975   0.0373508
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0647850   0.0562710   0.0732990
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0244310   0.0089147   0.0399473
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0657247   0.0406566   0.0907929
ki1135781-COHORTS          INDIA                          0                    NA                0.0845026   0.0768391   0.0921662
ki1135781-COHORTS          INDIA                          1                    NA                0.1838617   0.1652120   0.2025115
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0584888   0.0478033   0.0691743
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1354336   0.1098493   0.1610178
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1575348   0.1494477   0.1656218
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2269926   0.2158595   0.2381256
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0764308   0.0650388   0.0878228
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1557012   0.1366052   0.1747973


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


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.276471   0.5031874   3.238112
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 1.610543   0.7897568   3.284363
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.494827   0.7238288   3.087068
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 0.916613   0.5305347   1.583646
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.653812   0.8044198   3.400084
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.406000   0.7854526   2.516811
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.418590   1.1267762   1.785979
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.297294   0.8620990   1.952178
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.310040   1.4054310   3.796903
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.754462   1.5112589   5.020356
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.287310   1.2805144   4.085694
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.898765   1.2770261   2.823208
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.127734   1.6283962   2.780190
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.725296   1.2319169   2.416272
ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.0000000   1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 1.896637   0.6161343   5.838390
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.947009   1.6273274   2.329491
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.690216   1.2831849   5.640078
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.175811   1.8998318   2.491880
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.315546   1.7815282   3.009637
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.440904   1.3459493   1.542558
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.037153   1.6927797   2.451585


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0063172   -0.0185779   0.0312123
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0228570   -0.0111555   0.0568694
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0143112   -0.0135148   0.0421371
ki1000108-IRC              INDIA                          0                    NA                -0.0050461   -0.0331155   0.0230234
ki1000109-EE               PAKISTAN                       0                    NA                 0.0434552   -0.0105474   0.0974578
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0442794   -0.0177320   0.1062907
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0278605    0.0074054   0.0483156
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0232477   -0.0128006   0.0592959
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0382183    0.0135156   0.0629210
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0204461    0.0059188   0.0349734
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0194845    0.0052366   0.0337324
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0085533    0.0025032   0.0146033
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0241673    0.0149371   0.0333975
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0359826    0.0123813   0.0595840
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001424   -0.0001556   0.0004405
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0099586    0.0069990   0.0129183
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0156472    0.0012898   0.0300045
ki1135781-COHORTS          INDIA                          0                    NA                 0.0273500    0.0220130   0.0326869
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0219669    0.0138182   0.0301155
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0302440    0.0244335   0.0360545
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0308547    0.0224014   0.0393081


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0891841   -0.3366919   0.3793741
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1918352   -0.1408319   0.4274964
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1891116   -0.2680287   0.4814471
ki1000108-IRC              INDIA                          0                    NA                -0.0431017   -0.3122671   0.1708538
ki1000109-EE               PAKISTAN                       0                    NA                 0.3307917   -0.2234703   0.6339594
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2204547   -0.1576680   0.4750733
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1681321    0.0422130   0.2774968
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1229679   -0.0888801   0.2935996
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3395789    0.0948588   0.5181348
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3143594    0.0763396   0.4910434
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3232656    0.0672107   0.5090322
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1692206    0.0451516   0.2771687
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2736972    0.1679337   0.3660172
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1947683    0.0600255   0.3101961
ki1119695-PROBIT           BELARUS                        0                    NA                 0.0984898   -0.1451996   0.2903240
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2303490    0.1622352   0.2929249
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3904164   -0.0640741   0.6507836
ki1135781-COHORTS          INDIA                          0                    NA                 0.2445179    0.1978538   0.2884674
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.2730305    0.1706788   0.3627504
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1610617    0.1298628   0.1911420
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2875947    0.2080376   0.3591598
