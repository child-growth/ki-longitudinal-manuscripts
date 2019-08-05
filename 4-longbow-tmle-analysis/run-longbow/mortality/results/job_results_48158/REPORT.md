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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** pers_wasted624

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* earlybf
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_earlybf
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        pers_wasted624    dead624   n_cell       n
--------------------------  -----------------------------  ---------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                       0      221     239
ki0047075b-MAL-ED           BANGLADESH                     0                       1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                       0       18     239
ki0047075b-MAL-ED           BANGLADESH                     1                       1        0     239
ki0047075b-MAL-ED           INDIA                          0                       0      207     235
ki0047075b-MAL-ED           INDIA                          0                       1        0     235
ki0047075b-MAL-ED           INDIA                          1                       0       28     235
ki0047075b-MAL-ED           INDIA                          1                       1        0     235
ki0047075b-MAL-ED           PERU                           0                       0      267     270
ki0047075b-MAL-ED           PERU                           0                       1        1     270
ki0047075b-MAL-ED           PERU                           1                       0        2     270
ki0047075b-MAL-ED           PERU                           1                       1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       0      257     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       0        2     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      245     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
ki1000304-VITAMIN-A         INDIA                          0                       0     2913    3519
ki1000304-VITAMIN-A         INDIA                          0                       1        9    3519
ki1000304-VITAMIN-A         INDIA                          1                       0      591    3519
ki1000304-VITAMIN-A         INDIA                          1                       1        6    3519
ki1000304b-SAS-CompFeed     INDIA                          0                       0     1155    1389
ki1000304b-SAS-CompFeed     INDIA                          0                       1        3    1389
ki1000304b-SAS-CompFeed     INDIA                          1                       0      222    1389
ki1000304b-SAS-CompFeed     INDIA                          1                       1        9    1389
ki1000304b-SAS-FoodSuppl    INDIA                          0                       0      325     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                       1        1     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                       0       72     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                       1        3     401
ki1017093b-PROVIDE          BANGLADESH                     0                       0      574     613
ki1017093b-PROVIDE          BANGLADESH                     0                       1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                       0       39     613
ki1017093b-PROVIDE          BANGLADESH                     1                       1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1914    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      102    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2016
ki1101329-Keneba            GAMBIA                         0                       0     2422    2700
ki1101329-Keneba            GAMBIA                         0                       1       29    2700
ki1101329-Keneba            GAMBIA                         1                       0      242    2700
ki1101329-Keneba            GAMBIA                         1                       1        7    2700
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       0     6015    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       1       25    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       0     1097    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       1       14    7151
ki1113344-GMS-Nepal         NEPAL                          0                       0      480     590
ki1113344-GMS-Nepal         NEPAL                          0                       1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                       0      108     590
ki1113344-GMS-Nepal         NEPAL                          1                       1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                       0    10004   10683
ki1126311-ZVITAMBO          ZIMBABWE                       0                       1      207   10683
ki1126311-ZVITAMBO          ZIMBABWE                       1                       0      380   10683
ki1126311-ZVITAMBO          ZIMBABWE                       1                       1       92   10683
ki1148112-iLiNS-DOSE        MALAWI                         0                       0     1587    1692
ki1148112-iLiNS-DOSE        MALAWI                         0                       1       24    1692
ki1148112-iLiNS-DOSE        MALAWI                         1                       0       79    1692
ki1148112-iLiNS-DOSE        MALAWI                         1                       1        2    1692
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       0     1096    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       1       14    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       0       33    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       1        3    1146
kiGH5241-JiVitA-3           BANGLADESH                     0                       0    13903   17265
kiGH5241-JiVitA-3           BANGLADESH                     0                       1      122   17265
kiGH5241-JiVitA-3           BANGLADESH                     1                       0     3208   17265
kiGH5241-JiVitA-3           BANGLADESH                     1                       1       32   17265
kiGH5241-JiVitA-4           BANGLADESH                     0                       0     4814    5428
kiGH5241-JiVitA-4           BANGLADESH                     0                       1       36    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                       0      566    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                       1       12    5428


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

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
![](/tmp/9f567e51-ec4a-4dfe-a391-936bca5f47be/1806b9d8-de7e-4d66-b504-44d0b80a7160/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9f567e51-ec4a-4dfe-a391-936bca5f47be/1806b9d8-de7e-4d66-b504-44d0b80a7160/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9f567e51-ec4a-4dfe-a391-936bca5f47be/1806b9d8-de7e-4d66-b504-44d0b80a7160/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9f567e51-ec4a-4dfe-a391-936bca5f47be/1806b9d8-de7e-4d66-b504-44d0b80a7160/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0030801   0.0010706   0.0050895
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0100503   0.0020479   0.0180526
ki1101329-Keneba            GAMBIA         0                    NA                0.0118319   0.0075504   0.0161134
ki1101329-Keneba            GAMBIA         1                    NA                0.0281124   0.0075779   0.0486470
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0041325   0.0025153   0.0057496
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0128951   0.0062980   0.0194921
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0204512   0.0177017   0.0232007
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1872282   0.1502522   0.2242042
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0087639   0.0071800   0.0103478
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0096732   0.0063240   0.0130224
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0074658   0.0049524   0.0099792
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0208419   0.0092046   0.0324792


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0042626   0.0021098   0.0064154
ki1101329-Keneba            GAMBIA         NA                   NA                0.0133333   0.0090062   0.0176605
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054538   0.0037467   0.0071609
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0279884   0.0248605   0.0311162
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0089198   0.0074837   0.0103559
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0088430   0.0063037   0.0113823


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.262982   1.1656293    9.134164
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.375987   1.0515309    5.368661
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 3.120417   1.6386981    5.941913
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 9.154864   7.2099214   11.624473
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.103757   0.7496916    1.625040
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.791663   1.4462610    5.388643


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0011825   -0.0002199   0.0025849
ki1101329-Keneba            GAMBIA         0                    NA                0.0015014   -0.0004412   0.0034440
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0013213    0.0002697   0.0023729
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0075372    0.0058173   0.0092570
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0001559   -0.0005336   0.0008454
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0013773    0.0001012   0.0026533


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2774127   -0.0912613   0.5215331
ki1101329-Keneba            GAMBIA         0                    NA                0.1126071   -0.0403908   0.2431054
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2422713    0.0423206   0.4004750
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2692963    0.2134064   0.3212150
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0174760   -0.0629533   0.0918196
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1557466    0.0046600   0.2838993
