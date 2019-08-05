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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hfoodsec
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
* delta_impfloor
* delta_earlybf
* delta_hfoodsec
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

studyid                     country                        ever_sstunted06    dead624   n_cell       n
--------------------------  -----------------------------  ----------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      224     239
ki0047075b-MAL-ED           BANGLADESH                     0                        1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                        0       15     239
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     239
ki0047075b-MAL-ED           INDIA                          0                        0      216     235
ki0047075b-MAL-ED           INDIA                          0                        1        0     235
ki0047075b-MAL-ED           INDIA                          1                        0       19     235
ki0047075b-MAL-ED           INDIA                          1                        1        0     235
ki0047075b-MAL-ED           PERU                           0                        0      237     270
ki0047075b-MAL-ED           PERU                           0                        1        1     270
ki0047075b-MAL-ED           PERU                           1                        0       32     270
ki0047075b-MAL-ED           PERU                           1                        1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      234     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       25     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      212     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       33     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
ki1000304-VITAMIN-A         INDIA                          0                        0     2456    2714
ki1000304-VITAMIN-A         INDIA                          0                        1       12    2714
ki1000304-VITAMIN-A         INDIA                          1                        0      245    2714
ki1000304-VITAMIN-A         INDIA                          1                        1        1    2714
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1182    1386
ki1000304b-SAS-CompFeed     INDIA                          0                        1        5    1386
ki1000304b-SAS-CompFeed     INDIA                          1                        0      192    1386
ki1000304b-SAS-CompFeed     INDIA                          1                        1        7    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      349     399
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        1     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0       46     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        3     399
ki1017093b-PROVIDE          BANGLADESH                     0                        0      585     613
ki1017093b-PROVIDE          BANGLADESH                     0                        1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                        0       28     613
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1922    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0       94    2016
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2016
ki1101329-Keneba            GAMBIA                         0                        0     1972    2256
ki1101329-Keneba            GAMBIA                         0                        1       21    2256
ki1101329-Keneba            GAMBIA                         1                        0      253    2256
ki1101329-Keneba            GAMBIA                         1                        1       10    2256
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0       42      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0        1      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                        0      549     590
ki1113344-GMS-Nepal         NEPAL                          0                        1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                        0       39     590
ki1113344-GMS-Nepal         NEPAL                          1                        1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0     9431   10663
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      234   10663
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0      934   10663
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1       64   10663
ki1148112-iLiNS-DOSE        MALAWI                         0                        0      929     993
ki1148112-iLiNS-DOSE        MALAWI                         0                        1        4     993
ki1148112-iLiNS-DOSE        MALAWI                         1                        0       58     993
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        2     993
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1047    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       15    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0       46    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        1    1109
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    14861   17200
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      110   17200
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     2186   17200
kiGH5241-JiVitA-3           BANGLADESH                     1                        1       43   17200
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4567    5116
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       31    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      508    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       10    5116


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
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/dc9fe2c1-ad1d-4d8a-9c7c-dda5407e9591/e782305c-be61-4361-807d-4ddd6d4c9e38/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc9fe2c1-ad1d-4d8a-9c7c-dda5407e9591/e782305c-be61-4361-807d-4ddd6d4c9e38/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc9fe2c1-ad1d-4d8a-9c7c-dda5407e9591/e782305c-be61-4361-807d-4ddd6d4c9e38/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc9fe2c1-ad1d-4d8a-9c7c-dda5407e9591/e782305c-be61-4361-807d-4ddd6d4c9e38/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042123   0.0005735   0.0078511
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0351759   0.0122148   0.0581370
ki1101329-Keneba          GAMBIA       0                    NA                0.0105424   0.0060550   0.0150298
ki1101329-Keneba          GAMBIA       1                    NA                0.0382682   0.0146825   0.0618539
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0325168   0.0274419   0.0375917
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0564280   0.0356391   0.0772168
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0071762   0.0058487   0.0085037
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0269482   0.0168359   0.0370605
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0070141   0.0043500   0.0096782
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0219354   0.0005952   0.0432756


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0086580   0.0042402   0.0130758
ki1101329-Keneba          GAMBIA       NA                   NA                0.0137411   0.0089363   0.0185460
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0279471   0.0248186   0.0310756
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0088953   0.0074559   0.0103348
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0080141   0.0053295   0.0106986


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 8.350754   2.917536   23.902050
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 3.629933   1.716346    7.677017
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.735348   1.163175    2.588978
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.755239   2.491927    5.659000
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.127322   1.101438    8.879429


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0044457    0.0012305    0.0076609
ki1101329-Keneba          GAMBIA       0                    NA                 0.0031987    0.0004288    0.0059687
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0045697   -0.0086890   -0.0004504
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0017192    0.0009411    0.0024973
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0010000   -0.0003496    0.0023495


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.5134794    0.0901812    0.7398357
ki1101329-Keneba          GAMBIA       0                    NA                 0.2327862    0.0237867    0.3970406
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.1635118   -0.3227390   -0.0234519
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.1932673    0.1092090    0.2693936
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.1247753   -0.0535918    0.2729460
