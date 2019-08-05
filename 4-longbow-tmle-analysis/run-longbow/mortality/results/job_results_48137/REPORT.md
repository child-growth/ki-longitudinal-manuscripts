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

studyid                     country                        ever_sstunted06    dead   n_cell       n
--------------------------  -----------------------------  ----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      224     239
ki0047075b-MAL-ED           BANGLADESH                     0                     1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                     0       15     239
ki0047075b-MAL-ED           BANGLADESH                     1                     1        0     239
ki0047075b-MAL-ED           INDIA                          0                     0      216     235
ki0047075b-MAL-ED           INDIA                          0                     1        0     235
ki0047075b-MAL-ED           INDIA                          1                     0       19     235
ki0047075b-MAL-ED           INDIA                          1                     1        0     235
ki0047075b-MAL-ED           PERU                           0                     0      237     270
ki0047075b-MAL-ED           PERU                           0                     1        1     270
ki0047075b-MAL-ED           PERU                           1                     0       32     270
ki0047075b-MAL-ED           PERU                           1                     1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      234     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       25     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      212     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       33     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     245
ki1000304-VITAMIN-A         INDIA                          0                     0     2456    2714
ki1000304-VITAMIN-A         INDIA                          0                     1       12    2714
ki1000304-VITAMIN-A         INDIA                          1                     0      245    2714
ki1000304-VITAMIN-A         INDIA                          1                     1        1    2714
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1182    1386
ki1000304b-SAS-CompFeed     INDIA                          0                     1        5    1386
ki1000304b-SAS-CompFeed     INDIA                          1                     0      192    1386
ki1000304b-SAS-CompFeed     INDIA                          1                     1        7    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      349     399
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        1     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0       46     399
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     399
ki1017093b-PROVIDE          BANGLADESH                     0                     0      585     613
ki1017093b-PROVIDE          BANGLADESH                     0                     1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                     0       28     613
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1922    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0       94    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2017
ki1101329-Keneba            GAMBIA                         0                     0     1972    2256
ki1101329-Keneba            GAMBIA                         0                     1       21    2256
ki1101329-Keneba            GAMBIA                         1                     0      253    2256
ki1101329-Keneba            GAMBIA                         1                     1       10    2256
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0       42      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1        0      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0        1      43
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        0      43
ki1113344-GMS-Nepal         NEPAL                          0                     0      549     590
ki1113344-GMS-Nepal         NEPAL                          0                     1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                     0       39     590
ki1113344-GMS-Nepal         NEPAL                          1                     1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0     9431   10664
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      235   10664
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0      934   10664
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1       64   10664
ki1148112-iLiNS-DOSE        MALAWI                         0                     0      929     993
ki1148112-iLiNS-DOSE        MALAWI                         0                     1        4     993
ki1148112-iLiNS-DOSE        MALAWI                         1                     0       58     993
ki1148112-iLiNS-DOSE        MALAWI                         1                     1        2     993
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1047    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       15    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       46    1109
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        1    1109
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    14861   17201
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      111   17201
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     2186   17201
kiGH5241-JiVitA-3           BANGLADESH                     1                     1       43   17201
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     4567    5116
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       31    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      508    5116
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       10    5116


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
![](/tmp/569545a6-2e2c-4466-aeb4-5fb166b24784/fb0cdab1-6c6f-45aa-8428-c566c74abe33/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/569545a6-2e2c-4466-aeb4-5fb166b24784/fb0cdab1-6c6f-45aa-8428-c566c74abe33/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/569545a6-2e2c-4466-aeb4-5fb166b24784/fb0cdab1-6c6f-45aa-8428-c566c74abe33/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/569545a6-2e2c-4466-aeb4-5fb166b24784/fb0cdab1-6c6f-45aa-8428-c566c74abe33/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042123   0.0005735   0.0078511
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0351759   0.0122148   0.0581370
ki1101329-Keneba          GAMBIA       0                    NA                0.0105789   0.0060774   0.0150805
ki1101329-Keneba          GAMBIA       1                    NA                0.0374464   0.0136805   0.0612124
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0311600   0.0260020   0.0363180
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0548122   0.0346258   0.0749985
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0072300   0.0059000   0.0085601
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0314665   0.0200067   0.0429263
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0078243   0.0051998   0.0104488
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0220332   0.0003826   0.0436839


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0086580   0.0042402   0.0130758
ki1101329-Keneba          GAMBIA       NA                   NA                0.0137411   0.0089363   0.0185460
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0280383   0.0249049   0.0311716
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0089530   0.0075108   0.0103952
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0080141   0.0053295   0.0106986


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 8.350754   2.9175359   23.902050
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 3.539717   1.6483912    7.601104
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.759057   1.1747646    2.633960
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 4.352183   2.9398346    6.443049
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.816013   0.9973735    7.950813


### Parameter: PAR


studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0044457    0.0012305   0.0076609
ki1101329-Keneba          GAMBIA       0                    NA                 0.0031622    0.0003890   0.0059354
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.0031217   -0.0073215   0.0010781
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0017229    0.0009375   0.0025084
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0001898   -0.0011087   0.0014884


### Parameter: PAF


studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.5134794    0.0901812   0.7398357
ki1101329-Keneba          GAMBIA       0                    NA                 0.2301262    0.0204335   0.3949306
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                -0.1113378   -0.2727392   0.0295956
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.1924410    0.1081374   0.2687758
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0236855   -0.1500939   0.1712069
