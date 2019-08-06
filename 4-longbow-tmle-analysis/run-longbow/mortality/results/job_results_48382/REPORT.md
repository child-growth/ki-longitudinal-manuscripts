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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      202     263
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                   0       59     263
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263
ki0047075b-MAL-ED           INDIA                          0                   0      169     251
ki0047075b-MAL-ED           INDIA                          0                   1        1     251
ki0047075b-MAL-ED           INDIA                          1                   0       80     251
ki0047075b-MAL-ED           INDIA                          1                   1        1     251
ki0047075b-MAL-ED           PERU                           0                   0      289     302
ki0047075b-MAL-ED           PERU                           0                   1        2     302
ki0047075b-MAL-ED           PERU                           1                   0       11     302
ki0047075b-MAL-ED           PERU                           1                   1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      279     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0       33     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      246     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       12     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
ki1000304-VITAMIN-A         INDIA                          0                   0     2812    3473
ki1000304-VITAMIN-A         INDIA                          0                   1       35    3473
ki1000304-VITAMIN-A         INDIA                          1                   0      603    3473
ki1000304-VITAMIN-A         INDIA                          1                   1       23    3473
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1142    1508
ki1000304b-SAS-CompFeed     INDIA                          0                   1       22    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   0      330    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   1       14    1508
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      316     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       96     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                   0      514     699
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                   0      181     699
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2038    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      357    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
ki1101329-Keneba            GAMBIA                         0                   0     1990    2422
ki1101329-Keneba            GAMBIA                         0                   1       40    2422
ki1101329-Keneba            GAMBIA                         1                   0      375    2422
ki1101329-Keneba            GAMBIA                         1                   1       17    2422
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0      296     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0       40     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                   0      418     602
ki1113344-GMS-Nepal         NEPAL                          0                   1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                   0      179     602
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    10489   13849
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      728   13849
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0     2313   13849
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      319   13849
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1675    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                   1      110    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       25    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        4    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1089    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       33    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       52    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        5    1179
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    21054   26882
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      399   26882
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     5267   26882
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      162   26882
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4520    5251
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       37    5251
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      684    5251
kiGH5241-JiVitA-4           BANGLADESH                     1                   1       10    5251


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
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI

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
![](/tmp/7dc54328-bda6-4abc-8fe3-60533fb47188/57de45ff-b251-4d57-8235-51c6a40241a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7dc54328-bda6-4abc-8fe3-60533fb47188/57de45ff-b251-4d57-8235-51c6a40241a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7dc54328-bda6-4abc-8fe3-60533fb47188/57de45ff-b251-4d57-8235-51c6a40241a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7dc54328-bda6-4abc-8fe3-60533fb47188/57de45ff-b251-4d57-8235-51c6a40241a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0124117   0.0083565   0.0164670
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0343360   0.0199901   0.0486819
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0170989   0.0069618   0.0272360
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0508575   0.0275343   0.0741806
ki1101329-Keneba          GAMBIA       0                    NA                0.0200204   0.0138565   0.0261844
ki1101329-Keneba          GAMBIA       1                    NA                0.0424632   0.0219626   0.0629637
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0613134   0.0571867   0.0654401
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1508615   0.1221243   0.1795988
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0294118   0.0195214   0.0393022
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0877193   0.0142499   0.1611887
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0180931   0.0162793   0.0199070
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0300883   0.0242645   0.0359121
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0081427   0.0053720   0.0109134
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0146454   0.0044483   0.0248425


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0167003   0.0124378   0.0209627
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0235343   0.0174958   0.0295728
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0756011   0.0711981   0.0800041
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0322307   0.0221452   0.0423162
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208690   0.0191196   0.0226184
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089507   0.0062400   0.0116614


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.766420   1.6284213   4.699693
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.974310   1.4417015   6.136166
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.120992   1.1961790   3.760813
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.460500   2.0108773   3.010655
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.982456   1.2095040   7.354291
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.662969   1.3508393   2.047221
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.798589   0.8305394   3.894965


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0042885    0.0015238   0.0070533
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0067738    0.0011019   0.0124456
ki1101329-Keneba          GAMBIA       0                    NA                0.0035138    0.0000264   0.0070013
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0142877    0.0116916   0.0168839
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0028189   -0.0008355   0.0064734
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0027759    0.0017350   0.0038168
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008079   -0.0006062   0.0022221


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2567954    0.0882421   0.3941888
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2837457    0.0204933   0.4762464
ki1101329-Keneba          GAMBIA       0                    NA                0.1493075   -0.0068745   0.2812631
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1889885    0.1567471   0.2199972
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0874613   -0.0297126   0.1913017
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1330140    0.0831421   0.1801731
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0902666   -0.0779569   0.2322375
