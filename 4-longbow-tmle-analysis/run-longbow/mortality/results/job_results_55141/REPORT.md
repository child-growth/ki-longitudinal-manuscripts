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

studyid                     country                        ever_sstunted06    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      240     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                     1        2     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                     0       22     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                     1        1     265  dead             
ki0047075b-MAL-ED           INDIA                          0                     0      228     251  dead             
ki0047075b-MAL-ED           INDIA                          0                     1        2     251  dead             
ki0047075b-MAL-ED           INDIA                          1                     0       21     251  dead             
ki0047075b-MAL-ED           INDIA                          1                     1        0     251  dead             
ki0047075b-MAL-ED           PERU                           0                     0      260     303  dead             
ki0047075b-MAL-ED           PERU                           0                     1        2     303  dead             
ki0047075b-MAL-ED           PERU                           1                     0       41     303  dead             
ki0047075b-MAL-ED           PERU                           1                     1        0     303  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      283     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       30     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        1     314  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      219     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        2     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       40     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     262  dead             
ki1000109-EE                PAKISTAN                       0                     0      213     379  dead             
ki1000109-EE                PAKISTAN                       0                     1        3     379  dead             
ki1000109-EE                PAKISTAN                       1                     0      162     379  dead             
ki1000109-EE                PAKISTAN                       1                     1        1     379  dead             
ki1000304-VITAMIN-A         INDIA                          0                     0     3274    3898  dead             
ki1000304-VITAMIN-A         INDIA                          0                     1       50    3898  dead             
ki1000304-VITAMIN-A         INDIA                          1                     0      547    3898  dead             
ki1000304-VITAMIN-A         INDIA                          1                     1       27    3898  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1266    1532  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                     1       29    1532  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                     0      216    1532  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                     1       21    1532  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      351     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        3     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0       61     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                     0      665     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                     0       31     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                     0     2142    2479  dead             
ki1101329-Keneba            GAMBIA                         0                     1       43    2479  dead             
ki1101329-Keneba            GAMBIA                         1                     0      278    2479  dead             
ki1101329-Keneba            GAMBIA                         1                     1       16    2479  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0      325     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1        2     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0       11     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        0     338  dead             
ki1113344-GMS-Nepal         NEPAL                          0                     0      634     698  dead             
ki1113344-GMS-Nepal         NEPAL                          0                     1        4     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                     0       56     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                     1        4     698  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    11756   14060  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      871   14060  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     1199   14060  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      234   14060  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1588    1813  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                     1      101    1813  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                     0      111    1813  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       13    1813  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1068    1191  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       34    1191  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       84    1191  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        5    1191  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    22511   27197  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      435   27197  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     3885   27197  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                     1      366   27197  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     4639    5270  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       31    5270  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      584    5270  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       16    5270  dead             


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
![](/tmp/d080c624-785a-4777-872e-e65953f9c344/9b8557c4-bcc5-4948-b8ef-95157e372e39/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d080c624-785a-4777-872e-e65953f9c344/9b8557c4-bcc5-4948-b8ef-95157e372e39/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d080c624-785a-4777-872e-e65953f9c344/9b8557c4-bcc5-4948-b8ef-95157e372e39/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d080c624-785a-4777-872e-e65953f9c344/9b8557c4-bcc5-4948-b8ef-95157e372e39/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0150244   0.0108867   0.0191621
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0485591   0.0307321   0.0663862
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0226835   0.0105712   0.0347957
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0883646   0.0638262   0.1129029
ki1101329-Keneba          GAMBIA       0                    NA                0.0196952   0.0138650   0.0255253
ki1101329-Keneba          GAMBIA       1                    NA                0.0544548   0.0285580   0.0803516
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0692826   0.0648551   0.0737100
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1562893   0.1373161   0.1752625
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0597965   0.0484872   0.0711057
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.1065020   0.0518674   0.1611366
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0308530   0.0206393   0.0410667
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0561798   0.0083201   0.1040395
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0191651   0.0173472   0.0209831
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0884059   0.0771892   0.0996226
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0066461   0.0040599   0.0092323
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0261005   0.0138193   0.0383816


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
ki1000304-VITAMIN-A       INDIA        1                    0                 3.232013   2.0426098   5.114000
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.895547   2.3276153   6.519670
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.764881   1.5786658   4.842424
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.255824   1.9676048   2.586263
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.781075   1.0309797   3.076907
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.820886   0.7300515   4.541631
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 4.612849   3.9280584   5.417021
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.927180   2.1387780   7.211008


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0047293    0.0020821   0.0073765
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0099536    0.0056305   0.0142766
ki1101329-Keneba          GAMBIA       0                    NA                0.0041047    0.0009158   0.0072937
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0093092    0.0072597   0.0113587
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0030827   -0.0007176   0.0068830
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0018926   -0.0017839   0.0055691
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0102866    0.0087902   0.0117831
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0022723    0.0008231   0.0037215


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2394129    0.1053029   0.3534207
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3049779    0.1276682   0.4462478
ki1101329-Keneba          GAMBIA       0                    NA                0.1724687    0.0351952   0.2902107
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1184499    0.0927665   0.1434062
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0490263   -0.0127873   0.1070672
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0577970   -0.0599361   0.1624528
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.3492705    0.3046285   0.3910464
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2547877    0.0843382   0.3935082
