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
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sstunted06    dead   n_cell       n
--------------------------  -----------------------------  ----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      240     265
ki0047075b-MAL-ED           BANGLADESH                     0                     1        2     265
ki0047075b-MAL-ED           BANGLADESH                     1                     0       22     265
ki0047075b-MAL-ED           BANGLADESH                     1                     1        1     265
ki0047075b-MAL-ED           INDIA                          0                     0      228     251
ki0047075b-MAL-ED           INDIA                          0                     1        2     251
ki0047075b-MAL-ED           INDIA                          1                     0       21     251
ki0047075b-MAL-ED           INDIA                          1                     1        0     251
ki0047075b-MAL-ED           PERU                           0                     0      260     303
ki0047075b-MAL-ED           PERU                           0                     1        2     303
ki0047075b-MAL-ED           PERU                           1                     0       41     303
ki0047075b-MAL-ED           PERU                           1                     1        0     303
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      283     314
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       30     314
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        1     314
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      219     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        2     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       40     262
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     262
ki1000109-EE                PAKISTAN                       0                     0      213     379
ki1000109-EE                PAKISTAN                       0                     1        3     379
ki1000109-EE                PAKISTAN                       1                     0      162     379
ki1000109-EE                PAKISTAN                       1                     1        1     379
ki1000304-VITAMIN-A         INDIA                          0                     0     3274    3898
ki1000304-VITAMIN-A         INDIA                          0                     1       50    3898
ki1000304-VITAMIN-A         INDIA                          1                     0      547    3898
ki1000304-VITAMIN-A         INDIA                          1                     1       27    3898
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1266    1532
ki1000304b-SAS-CompFeed     INDIA                          0                     1       29    1532
ki1000304b-SAS-CompFeed     INDIA                          1                     0      216    1532
ki1000304b-SAS-CompFeed     INDIA                          1                     1       21    1532
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      351     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0       61     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0                     0      665     700
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                     0       31     700
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
ki1101329-Keneba            GAMBIA                         0                     0     2142    2479
ki1101329-Keneba            GAMBIA                         0                     1       43    2479
ki1101329-Keneba            GAMBIA                         1                     0      278    2479
ki1101329-Keneba            GAMBIA                         1                     1       16    2479
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0      325     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0       11     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                     0      634     698
ki1113344-GMS-Nepal         NEPAL                          0                     1        4     698
ki1113344-GMS-Nepal         NEPAL                          1                     0       56     698
ki1113344-GMS-Nepal         NEPAL                          1                     1        4     698
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    11756   14060
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      871   14060
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     1199   14060
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      234   14060
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1588    1813
ki1148112-iLiNS-DOSE        MALAWI                         0                     1      101    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                     0      111    1813
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       13    1813
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1068    1191
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       34    1191
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       84    1191
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        5    1191
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    22511   27197
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      435   27197
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     3885   27197
kiGH5241-JiVitA-3           BANGLADESH                     1                     1      366   27197
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     4639    5270
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       31    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      584    5270
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       16    5270


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
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
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/f6b65da0-5d32-4991-9135-c5d9c22d81b8/d48ccf13-3b54-480b-8fd1-38ef1af41352/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6b65da0-5d32-4991-9135-c5d9c22d81b8/d48ccf13-3b54-480b-8fd1-38ef1af41352/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6b65da0-5d32-4991-9135-c5d9c22d81b8/d48ccf13-3b54-480b-8fd1-38ef1af41352/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6b65da0-5d32-4991-9135-c5d9c22d81b8/d48ccf13-3b54-480b-8fd1-38ef1af41352/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0149865   0.0108554   0.0191176
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0492501   0.0313382   0.0671619
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0226835   0.0105712   0.0347957
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0883646   0.0638262   0.1129029
ki1101329-Keneba          GAMBIA       0                    NA                0.0197391   0.0138988   0.0255793
ki1101329-Keneba          GAMBIA       1                    NA                0.0541013   0.0279959   0.0802068
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0693445   0.0649102   0.0737788
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1600858   0.1408054   0.1793663
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0597958   0.0484834   0.0711082
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1047943   0.0504441   0.1591445
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0308530   0.0206393   0.0410667
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0561798   0.0083201   0.1040395
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0192615   0.0174463   0.0210766
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0890384   0.0777314   0.1003455
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0066403   0.0040547   0.0092259
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0261029   0.0137115   0.0384944


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
ki1101329-Keneba          GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0785917   0.0741435   0.0830400
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0327456   0.0226340   0.0428572
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0294518   0.0273600   0.0315436
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.286296   2.0824994   5.185952
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.895547   2.3276153   6.519670
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.740824   1.5561013   4.827523
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.308558   2.0151117   2.644737
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.752537   1.0093297   3.042997
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.820886   0.7300515   4.541631
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 4.622621   3.9423203   5.420318
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.930983   2.1333142   7.243482


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0047672    0.0021215   0.0074129
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0099536    0.0056305   0.0142766
ki1101329-Keneba          GAMBIA       0                    NA                0.0040608    0.0008721   0.0072496
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0092472    0.0071904   0.0113041
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0030834   -0.0007077   0.0068746
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0018926   -0.0017839   0.0055691
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0101903    0.0087003   0.0116803
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0022781    0.0008284   0.0037278


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2413328    0.1074249   0.3551513
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3049779    0.1276682   0.4462478
ki1101329-Keneba          GAMBIA       0                    NA                0.1706241    0.0332233   0.2884971
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1176616    0.0918686   0.1427221
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0490375   -0.0126352   0.1069541
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0577970   -0.0599361   0.1624528
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3460000    0.3015851   0.3875904
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2554388    0.0849271   0.3941779
