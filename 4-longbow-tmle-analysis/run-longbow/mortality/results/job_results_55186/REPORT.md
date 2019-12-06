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

studyid                    country                        pers_wasted06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      219     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                             1       13     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                             0        4     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                             1        4     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                             0      205     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                             0        0     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                             0      202     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                             1       18     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                             0        5     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                             1       10     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                             0      231     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                             1        1     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                             0        2     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                             1        1     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                             0      267     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                             1        3     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                             0        0     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                             1        0     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      256     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0        1     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      245     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      307     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1       11     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0       35     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       17     370  pers_wasted624   
ki1000108-IRC              INDIA                          0                             0      323     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                             1       26     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                             0       39     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                             1       22     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                             0      313     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                             1       35     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                             0       12     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                             1       14     374  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                             0      178     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                             1       32     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                             0        9     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                             1       15     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                             0     1095    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                             1      162    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                             0       61    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                             1       66    1384  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                             0      456     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                             1       36     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                             0       25     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                             1       25     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                             0      568     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                             1       33     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                             0        7     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                             1        7     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      671     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       39     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0       15     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1        5     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                             0     2056    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                             1      161    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                             0       39    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                             1       42    2298  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      264     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        6     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                             0      452     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                             1       70     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                             0       29     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                             1       39     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                             0      223     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                             1       19     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                             0        4     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                             1        6     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                             0      215     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                             1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                             0        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                             1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                             0    15890   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                             1       11   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                             0      682   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                             1       13   16596  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     9865   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      346   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0      409   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      111   10731  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                             0      934    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                             1       31    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                             0       42    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                             1       10    1017  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                             0     5684    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                             1      277    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                             0      438    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                             1      493    6892  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                             0     2467    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                             1      161    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                             0      115    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                             1       65    2808  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    13683   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     2538   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                             0      332   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                             1      707   17260  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4506    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      393    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      171    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      169    5239  pers_wasted624   


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
![](/tmp/5ca9e22c-aeda-4e7b-a303-e37736e79566/0ecb2012-5fb4-46cc-b580-ec7ed18e2d6d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ca9e22c-aeda-4e7b-a303-e37736e79566/0ecb2012-5fb4-46cc-b580-ec7ed18e2d6d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ca9e22c-aeda-4e7b-a303-e37736e79566/0ecb2012-5fb4-46cc-b580-ec7ed18e2d6d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ca9e22c-aeda-4e7b-a303-e37736e79566/0ecb2012-5fb4-46cc-b580-ec7ed18e2d6d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
ki0047075b-MAL-ED          INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0344985   0.0143883   0.0546087
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3473983   0.2160765   0.4787200
ki1000108-IRC              INDIA                          0                    NA                0.0747550   0.0471249   0.1023851
ki1000108-IRC              INDIA                          1                    NA                0.3673484   0.2394870   0.4952098
ki1000109-EE               PAKISTAN                       0                    NA                0.1007213   0.0690523   0.1323902
ki1000109-EE               PAKISTAN                       1                    NA                0.5334295   0.3227896   0.7440694
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ki1000109-ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1307143   0.1160927   0.1453359
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4844115   0.4139448   0.5548781
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0828442   0.0518872   0.1138011
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5261847   0.4243628   0.6280067
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0731848   0.0501265   0.0962431
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5015492   0.3538205   0.6492780
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0365996   0.0282906   0.0449085
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5728777   0.4360560   0.7096994
ki1101329-Keneba           GAMBIA                         0                    NA                0.0730258   0.0622101   0.0838415
ki1101329-Keneba           GAMBIA                         1                    NA                0.4886659   0.3775702   0.5997617
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1348434   0.1055821   0.1641046
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5532978   0.4376581   0.6689375
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006943   0.0001316   0.0012570
ki1119695-PROBIT           BELARUS                        1                    NA                0.0156038   0.0026630   0.0285446
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0341398   0.0306115   0.0376681
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2197015   0.1785873   0.2608156
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0321402   0.0209845   0.0432958
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1669639   0.0552180   0.2787097
ki1135781-COHORTS          INDIA                          0                    NA                0.0470132   0.0416487   0.0523777
ki1135781-COHORTS          INDIA                          1                    NA                0.5120791   0.4801202   0.5440380
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0615213   0.0523535   0.0706890
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3677635   0.3000113   0.4355157
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1565972   0.1504285   0.1627658
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6780797   0.6464262   0.7097332
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0803912   0.0710480   0.0897344
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4784702   0.4099862   0.5469543


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
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 10.069962    5.026159   20.175273
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  4.914031    2.953736    8.175306
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.296097    3.190765    8.790569
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.705879    3.203988    4.286391
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.351500    4.167239    9.680642
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.853190    4.450135   10.553887
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.652587   11.258116   21.762387
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  6.691693    5.102680    8.775537
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.103262    3.038469    5.541198
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 22.472774   10.537394   47.926993
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  6.435353    5.197655    7.967778
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  5.194863    2.448528   11.021562
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 10.892237    9.568034   12.399708
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.977828    4.720908    7.569396
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.330089    4.083951    4.591063
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.951776    4.955314    7.148614


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0411772    0.0202770   0.0620774
ki1000108-IRC              INDIA                          0                    NA                0.0423182    0.0213845   0.0632518
ki1000109-EE               PAKISTAN                       0                    NA                0.0302948    0.0125579   0.0480316
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0340256    0.0245818   0.0434693
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1062106    0.0750001   0.1374210
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0393613    0.0226981   0.0560246
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0139455    0.0088449   0.0190462
ki1101329-Keneba           GAMBIA                         0                    NA                0.0153119    0.0102746   0.0203493
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0499024    0.0320987   0.0677060
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007518    0.0001692   0.0013343
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0084471    0.0065965   0.0102978
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0081745    0.0022696   0.0140793
ki1135781-COHORTS          INDIA                          0                    NA                0.0647105    0.0588724   0.0705487
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0189631    0.0137431   0.0241830
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0314098    0.0285618   0.0342578
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0268812    0.0210362   0.0327262


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5441274    0.2866843   0.7086566
ki1000108-IRC              INDIA                          0                    NA                0.3614676    0.1853177   0.4995305
ki1000109-EE               PAKISTAN                       0                    NA                0.2312296    0.0962849   0.3460241
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2065412    0.1616542   0.2490249
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5617979    0.4105095   0.6742593
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3497352    0.2091392   0.4653367
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2759029    0.1827285   0.3584548
ki1101329-Keneba           GAMBIA                         0                    NA                0.1733341    0.1185538   0.2247098
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2701137    0.1757185   0.3536990
ki1119695-PROBIT           BELARUS                        0                    NA                0.5198636    0.3067358   0.6674702
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1983504    0.1573941   0.2373160
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2027666    0.0563007   0.3265004
ki1135781-COHORTS          INDIA                          0                    NA                0.5792012    0.5400101   0.6150532
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2356120    0.1744998   0.2922000
ki1148112-LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1670672    0.1527189   0.1811724
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2505883    0.2008924   0.2971936
