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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      223     239
ki0047075b-MAL-ED           BANGLADESH                     0                    1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                    0       16     239
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     239
ki0047075b-MAL-ED           INDIA                          0                    0      216     235
ki0047075b-MAL-ED           INDIA                          0                    1        0     235
ki0047075b-MAL-ED           INDIA                          1                    0       19     235
ki0047075b-MAL-ED           INDIA                          1                    1        0     235
ki0047075b-MAL-ED           PERU                           0                    0      268     270
ki0047075b-MAL-ED           PERU                           0                    1        1     270
ki0047075b-MAL-ED           PERU                           1                    0        1     270
ki0047075b-MAL-ED           PERU                           1                    1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      255     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0        4     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      242     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        3     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     245
ki1000304-VITAMIN-A         INDIA                          0                    0     2616    2710
ki1000304-VITAMIN-A         INDIA                          0                    1       13    2710
ki1000304-VITAMIN-A         INDIA                          1                    0       81    2710
ki1000304-VITAMIN-A         INDIA                          1                    1        0    2710
ki1000304b-SAS-CompFeed     INDIA                          0                    0     1284    1381
ki1000304b-SAS-CompFeed     INDIA                          0                    1        8    1381
ki1000304b-SAS-CompFeed     INDIA                          1                    0       86    1381
ki1000304b-SAS-CompFeed     INDIA                          1                    1        3    1381
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      380     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        3     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0       17     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        1     401
ki1017093b-PROVIDE          BANGLADESH                     0                    0      589     613
ki1017093b-PROVIDE          BANGLADESH                     0                    1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                    0       24     613
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1947    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       69    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2017
ki1101329-Keneba            GAMBIA                         0                    0     2079    2227
ki1101329-Keneba            GAMBIA                         0                    1       28    2227
ki1101329-Keneba            GAMBIA                         1                    0      117    2227
ki1101329-Keneba            GAMBIA                         1                    1        3    2227
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0       43      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                    0      532     590
ki1113344-GMS-Nepal         NEPAL                          0                    1        2     590
ki1113344-GMS-Nepal         NEPAL                          1                    0       56     590
ki1113344-GMS-Nepal         NEPAL                          1                    1        0     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9632   10593
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      274   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      668   10593
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1       19   10593
ki1148112-iLiNS-DOSE        MALAWI                         0                    0      987     994
ki1148112-iLiNS-DOSE        MALAWI                         0                    1        6     994
ki1148112-iLiNS-DOSE        MALAWI                         1                    0        1     994
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        0     994
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1057    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       16    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0        8    1081
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        0    1081
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    16450   17173
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      142   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                    0      572   17173
kiGH5241-JiVitA-3           BANGLADESH                     1                    1        9   17173
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     4935    5082
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       36    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      107    5082
kiGH5241-JiVitA-4           BANGLADESH                     1                    1        4    5082


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/84bc7fd0-c65d-4ae7-937a-2166323a1ebb/45362836-ecf1-4ce3-8472-9a90b2a04c83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84bc7fd0-c65d-4ae7-937a-2166323a1ebb/45362836-ecf1-4ce3-8472-9a90b2a04c83/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84bc7fd0-c65d-4ae7-937a-2166323a1ebb/45362836-ecf1-4ce3-8472-9a90b2a04c83/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84bc7fd0-c65d-4ae7-937a-2166323a1ebb/45362836-ecf1-4ce3-8472-9a90b2a04c83/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0276600   0.0244304   0.0308896
ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0276565   0.0153934   0.0399195
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0085583   0.0071464   0.0099703
kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0154905   0.0032021   0.0277790


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0276598   0.0245366   0.0307829
kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0087929   0.0073738   0.0102119


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 0.9998725   0.6321368   1.581533
kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3    BANGLADESH   1                    0                 1.8099925   0.8027613   4.081005


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.0000002   -0.0008227   0.0008222
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0002345   -0.0001864   0.0006555


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.0000083   -0.0301885   0.0292878
kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0266729   -0.0218545   0.0728957
