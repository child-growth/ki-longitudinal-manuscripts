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

**Intervention Variable:** pers_wasted06

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

studyid                     country                        pers_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      252     263
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                   0        9     263
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263
ki0047075b-MAL-ED           INDIA                          0                   0      230     251
ki0047075b-MAL-ED           INDIA                          0                   1        2     251
ki0047075b-MAL-ED           INDIA                          1                   0       19     251
ki0047075b-MAL-ED           INDIA                          1                   1        0     251
ki0047075b-MAL-ED           PERU                           0                   0      300     302
ki0047075b-MAL-ED           PERU                           0                   1        2     302
ki0047075b-MAL-ED           PERU                           1                   0        0     302
ki0047075b-MAL-ED           PERU                           1                   1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      306     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0        6     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      258     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
ki1000304-VITAMIN-A         INDIA                          0                   0     2812    3473
ki1000304-VITAMIN-A         INDIA                          0                   1       35    3473
ki1000304-VITAMIN-A         INDIA                          1                   0      603    3473
ki1000304-VITAMIN-A         INDIA                          1                   1       23    3473
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1340    1508
ki1000304b-SAS-CompFeed     INDIA                          0                   1       24    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   0      132    1508
ki1000304b-SAS-CompFeed     INDIA                          1                   1       12    1508
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      316     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       96     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                   0      668     699
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                   0       27     699
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2327    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       68    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
ki1101329-Keneba            GAMBIA                         0                   0     2297    2422
ki1101329-Keneba            GAMBIA                         0                   1       53    2422
ki1101329-Keneba            GAMBIA                         1                   0       68    2422
ki1101329-Keneba            GAMBIA                         1                   1        4    2422
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0      296     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0       40     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                   0      525     602
ki1113344-GMS-Nepal         NEPAL                          0                   1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                   0       72     602
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    11992   13849
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      846   13849
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0      810   13849
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      201   13849
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1675    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                   1      110    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       25    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        4    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1089    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       33    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       52    1179
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        5    1179
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    24533   26882
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      444   26882
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     1788   26882
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      117   26882
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4865    5251
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       42    5251
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      339    5251
kiGH5241-JiVitA-4           BANGLADESH                     1                   1        5    5251


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
* studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/aa55b0d4-5d1a-4d2c-b3a2-b96584db9b2f/3ba79b7b-5b59-49cd-ae91-9d9166fe088f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa55b0d4-5d1a-4d2c-b3a2-b96584db9b2f/3ba79b7b-5b59-49cd-ae91-9d9166fe088f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa55b0d4-5d1a-4d2c-b3a2-b96584db9b2f/3ba79b7b-5b59-49cd-ae91-9d9166fe088f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa55b0d4-5d1a-4d2c-b3a2-b96584db9b2f/3ba79b7b-5b59-49cd-ae91-9d9166fe088f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0124698   0.0084265   0.0165132
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0345835   0.0201548   0.0490121
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0173486   0.0088284   0.0258687
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0744888   0.0374677   0.1115100
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0651298   0.0607332   0.0695264
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2325233   0.2047338   0.2603128
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0294118   0.0195214   0.0393022
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0877193   0.0142499   0.1611887
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0180976   0.0164826   0.0197125
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0567344   0.0441359   0.0693329
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0085592   0.0057786   0.0113398
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0145349   0.0031945   0.0258752


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0167003   0.0124378   0.0209627
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0756011   0.0711981   0.0800041
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0322307   0.0221452   0.0423162
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208690   0.0191196   0.0226184
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089507   0.0062400   0.0116614


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.773372   1.6353623   4.703297
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.293659   2.3400435   7.878275
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 3.570154   3.1131918   4.094189
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.982456   1.2095040   7.354291
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.134920   2.4835760   3.957085
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.698159   0.7327959   3.935262


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0042304    0.0014688   0.0069920
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0065241    0.0013775   0.0116707
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0104713    0.0083120   0.0126307
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0028189   -0.0008355   0.0064734
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0027714    0.0019905   0.0035523
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0003915   -0.0003702   0.0011531


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2533158    0.0853817   0.3904153
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2732878    0.0843776   0.4232223
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1385078    0.1103721   0.1657538
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0874613   -0.0297126   0.1913017
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1328012    0.0974550   0.1667631
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0437369   -0.0456927   0.1255183
