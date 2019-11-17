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

**Intervention Variable:** pers_wasted06

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

studyid                    country                        pers_wasted06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      219     240
ki0047075b-MAL-ED          BANGLADESH                     0                             1       13     240
ki0047075b-MAL-ED          BANGLADESH                     1                             0        4     240
ki0047075b-MAL-ED          BANGLADESH                     1                             1        4     240
ki0047075b-MAL-ED          BRAZIL                         0                             0      205     207
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207
ki0047075b-MAL-ED          BRAZIL                         1                             0        0     207
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207
ki0047075b-MAL-ED          INDIA                          0                             0      202     235
ki0047075b-MAL-ED          INDIA                          0                             1       18     235
ki0047075b-MAL-ED          INDIA                          1                             0        5     235
ki0047075b-MAL-ED          INDIA                          1                             1       10     235
ki0047075b-MAL-ED          NEPAL                          0                             0      231     235
ki0047075b-MAL-ED          NEPAL                          0                             1        1     235
ki0047075b-MAL-ED          NEPAL                          1                             0        2     235
ki0047075b-MAL-ED          NEPAL                          1                             1        1     235
ki0047075b-MAL-ED          PERU                           0                             0      267     270
ki0047075b-MAL-ED          PERU                           0                             1        3     270
ki0047075b-MAL-ED          PERU                           1                             0        0     270
ki0047075b-MAL-ED          PERU                           1                             1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      256     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        0     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        2     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      245     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      307     370
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       35     370
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       17     370
ki1000108-IRC              INDIA                          0                             0      323     410
ki1000108-IRC              INDIA                          0                             1       26     410
ki1000108-IRC              INDIA                          1                             0       39     410
ki1000108-IRC              INDIA                          1                             1       22     410
ki1000109-EE               PAKISTAN                       0                             0      313     374
ki1000109-EE               PAKISTAN                       0                             1       35     374
ki1000109-EE               PAKISTAN                       1                             0       12     374
ki1000109-EE               PAKISTAN                       1                             1       14     374
ki1000109-ResPak           PAKISTAN                       0                             0      178     234
ki1000109-ResPak           PAKISTAN                       0                             1       32     234
ki1000109-ResPak           PAKISTAN                       1                             0        9     234
ki1000109-ResPak           PAKISTAN                       1                             1       15     234
ki1000304b-SAS-CompFeed    INDIA                          0                             0     1095    1384
ki1000304b-SAS-CompFeed    INDIA                          0                             1      162    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             0       61    1384
ki1000304b-SAS-CompFeed    INDIA                          1                             1       66    1384
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402
ki1017093-NIH-Birth        BANGLADESH                     0                             0      456     542
ki1017093-NIH-Birth        BANGLADESH                     0                             1       36     542
ki1017093-NIH-Birth        BANGLADESH                     1                             0       25     542
ki1017093-NIH-Birth        BANGLADESH                     1                             1       25     542
ki1017093b-PROVIDE         BANGLADESH                     0                             0      568     615
ki1017093b-PROVIDE         BANGLADESH                     0                             1       33     615
ki1017093b-PROVIDE         BANGLADESH                     1                             0        7     615
ki1017093b-PROVIDE         BANGLADESH                     1                             1        7     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      671     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       39     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       15     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        5     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018
ki1101329-Keneba           GAMBIA                         0                             0     2056    2298
ki1101329-Keneba           GAMBIA                         0                             1      161    2298
ki1101329-Keneba           GAMBIA                         1                             0       39    2298
ki1101329-Keneba           GAMBIA                         1                             1       42    2298
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      264     274
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        6     274
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274
ki1113344-GMS-Nepal        NEPAL                          0                             0      452     590
ki1113344-GMS-Nepal        NEPAL                          0                             1       70     590
ki1113344-GMS-Nepal        NEPAL                          1                             0       29     590
ki1113344-GMS-Nepal        NEPAL                          1                             1       39     590
ki1114097-CMIN             BANGLADESH                     0                             0      223     252
ki1114097-CMIN             BANGLADESH                     0                             1       19     252
ki1114097-CMIN             BANGLADESH                     1                             0        4     252
ki1114097-CMIN             BANGLADESH                     1                             1        6     252
ki1114097-CONTENT          PERU                           0                             0      215     215
ki1114097-CONTENT          PERU                           0                             1        0     215
ki1114097-CONTENT          PERU                           1                             0        0     215
ki1114097-CONTENT          PERU                           1                             1        0     215
ki1119695-PROBIT           BELARUS                        0                             0    15890   16596
ki1119695-PROBIT           BELARUS                        0                             1       11   16596
ki1119695-PROBIT           BELARUS                        1                             0      682   16596
ki1119695-PROBIT           BELARUS                        1                             1       13   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     9865   10731
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      346   10731
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      409   10731
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      111   10731
ki1135781-COHORTS          GUATEMALA                      0                             0      934    1017
ki1135781-COHORTS          GUATEMALA                      0                             1       31    1017
ki1135781-COHORTS          GUATEMALA                      1                             0       42    1017
ki1135781-COHORTS          GUATEMALA                      1                             1       10    1017
ki1135781-COHORTS          INDIA                          0                             0     5684    6892
ki1135781-COHORTS          INDIA                          0                             1      277    6892
ki1135781-COHORTS          INDIA                          1                             0      438    6892
ki1135781-COHORTS          INDIA                          1                             1      493    6892
ki1135781-COHORTS          PHILIPPINES                    0                             0     2467    2808
ki1135781-COHORTS          PHILIPPINES                    0                             1      161    2808
ki1135781-COHORTS          PHILIPPINES                    1                             0      115    2808
ki1135781-COHORTS          PHILIPPINES                    1                             1       65    2808
ki1148112-LCNI-5           MALAWI                         0                             0      776     797
ki1148112-LCNI-5           MALAWI                         0                             1        8     797
ki1148112-LCNI-5           MALAWI                         1                             0        8     797
ki1148112-LCNI-5           MALAWI                         1                             1        5     797
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    13683   17260
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     2538   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             0      332   17260
kiGH5241-JiVitA-3          BANGLADESH                     1                             1      707   17260
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4506    5239
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      393    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      171    5239
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      169    5239


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
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/75d20a15-0d22-4210-9ed8-fc6f34455d59/005f8939-0d52-4453-8b84-890cf478b805/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75d20a15-0d22-4210-9ed8-fc6f34455d59/005f8939-0d52-4453-8b84-890cf478b805/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/75d20a15-0d22-4210-9ed8-fc6f34455d59/005f8939-0d52-4453-8b84-890cf478b805/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75d20a15-0d22-4210-9ed8-fc6f34455d59/005f8939-0d52-4453-8b84-890cf478b805/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
ki0047075b-MAL-ED          INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0341285   0.0140004   0.0542567
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2862172   0.1576454   0.4147891
ki1000108-IRC              INDIA                          0                    NA                0.0749998   0.0474012   0.1025983
ki1000108-IRC              INDIA                          1                    NA                0.4003538   0.2740083   0.5266994
ki1000109-EE               PAKISTAN                       0                    NA                0.1000427   0.0683954   0.1316900
ki1000109-EE               PAKISTAN                       1                    NA                0.3661479   0.1661985   0.5660974
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ki1000109-ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1307143   0.1160927   0.1453359
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4844115   0.4139448   0.5548781
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0839131   0.0525194   0.1153067
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5284769   0.4258315   0.6311223
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0731358   0.0500992   0.0961725
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4751263   0.3335945   0.6166580
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366192   0.0283065   0.0449320
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5857172   0.4511549   0.7202795
ki1101329-Keneba           GAMBIA                         0                    NA                0.0730338   0.0622095   0.0838580
ki1101329-Keneba           GAMBIA                         1                    NA                0.4789803   0.3646991   0.5932616
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1346921   0.1054296   0.1639546
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5493881   0.4303515   0.6684248
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006944   0.0001317   0.0012570
ki1119695-PROBIT           BELARUS                        1                    NA                0.0153129   0.0026160   0.0280098
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0341115   0.0305805   0.0376426
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2293665   0.1882969   0.2704360
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0320074   0.0208814   0.0431333
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1778188   0.0589687   0.2966689
ki1135781-COHORTS          INDIA                          0                    NA                0.0470071   0.0416485   0.0523656
ki1135781-COHORTS          INDIA                          1                    NA                0.5103268   0.4784322   0.5422214
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0614743   0.0523061   0.0706424
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3534396   0.2847421   0.4221371
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1566519   0.1504839   0.1628199
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6766217   0.6447353   0.7085081
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0803760   0.0710305   0.0897215
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4791464   0.4103794   0.5479135


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
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
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
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
ki0047075b-MAL-ED          INDIA                          1                    0                  8.148148    4.606020   14.414249
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  8.386450    3.997310   17.594972
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  5.338067    3.280878    8.685165
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  3.659916    1.938553    6.909783
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.705879    3.203988    4.286391
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.297911    4.128110    9.608193
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.496493    4.210055   10.024673
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.994794   11.577731   22.097028
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  6.558340    4.953660    8.682839
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.078843    3.003786    5.538664
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 22.053050   10.377204   46.865902
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  6.724018    5.468989    8.267051
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  5.555557    2.621447   11.773730
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 10.856388    9.537309   12.357905
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.749391    4.504192    7.338829
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.319269    4.072444    4.581053
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.961313    4.965166    7.157314


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0415471    0.0205384   0.0625559
ki1000108-IRC              INDIA                          0                    NA                0.0420734    0.0211353   0.0630115
ki1000109-EE               PAKISTAN                       0                    NA                0.0309733    0.0129269   0.0490197
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0340256    0.0245818   0.0434693
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1051417    0.0738031   0.1364802
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0394103    0.0227493   0.0560713
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139259    0.0088214   0.0190303
ki1101329-Keneba           GAMBIA                         0                    NA                0.0153039    0.0102675   0.0203403
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0500536    0.0322345   0.0678727
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007518    0.0001694   0.0013341
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0084754    0.0066219   0.0103289
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0083073    0.0024188   0.0141957
ki1135781-COHORTS          INDIA                          0                    NA                0.0647167    0.0588804   0.0705530
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0190101    0.0137927   0.0242275
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0313550    0.0285127   0.0341974
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0268964    0.0211021   0.0326907


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5490158    0.2891398   0.7138864
ki1000108-IRC              INDIA                          0                    NA                0.3593769    0.1834856   0.4973782
ki1000109-EE               PAKISTAN                       0                    NA                0.2364087    0.0990690   0.3528120
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2065412    0.1616542   0.2490249
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5561441    0.4025995   0.6702245
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3501703    0.2097085   0.4656672
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2755135    0.1822302   0.3581559
ki1101329-Keneba           GAMBIA                         0                    NA                0.1732433    0.1184327   0.2246462
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2709324    0.1764384   0.3545843
ki1119695-PROBIT           BELARUS                        0                    NA                0.5198465    0.3069952   0.6673221
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1990138    0.1579669   0.2380597
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2060610    0.0603030   0.3292102
ki1135781-COHORTS          INDIA                          0                    NA                0.5792564    0.5401187   0.6150633
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2361958    0.1751056   0.2927618
ki1148112-LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1667760    0.1524564   0.1808537
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2507298    0.2014505   0.2969680
