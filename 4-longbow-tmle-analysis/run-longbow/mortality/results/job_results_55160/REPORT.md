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

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** ever_co06

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

studyid                     country                        ever_co06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      252     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                    0        9     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                    0      230     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                    1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                    0       19     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                    1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                    0      298     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                    1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                    0        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                    1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      306     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0        6     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      254     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        4     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                    0      314     379  dead0plus        
ki1000109-EE                PAKISTAN                       0                    1        2     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                    0       61     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                    1        2     379  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                    0     3488    3893  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                    1       48    3893  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                    0      330    3893  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                    1       27    3893  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                    0     1371    1507  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                    1       26    1507  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                    0      100    1507  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                    1       10    1507  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      362     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        3     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0       50     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        3     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                    0      665     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                    1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                    0       30     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2373    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       22    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                    0     2331    2476  dead0plus        
ki1101329-Keneba            GAMBIA                         0                    1       73    2476  dead0plus        
ki1101329-Keneba            GAMBIA                         1                    0       59    2476  dead0plus        
ki1101329-Keneba            GAMBIA                         1                    1       13    2476  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0      325     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0       11     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                    0      645     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                    1        5     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                    0       34     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                    1        2     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0    12673   13857  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      975   13857  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      132   13857  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1       77   13857  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1686    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                    1      111    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                    0       13    1813  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        3    1813  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1128    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       37    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0       12    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        5    1182  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    25054   26883  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      498   26883  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     1237   26883  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                    1       94   26883  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     5018    5247  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       43    5247  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      182    5247  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                    1        4    5247  dead0plus        


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
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/1b666db3-dbe2-4e8a-9fe6-efe5781a4e56/a9d291b5-a2bf-42ff-9935-073c506bbade/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b666db3-dbe2-4e8a-9fe6-efe5781a4e56/a9d291b5-a2bf-42ff-9935-073c506bbade/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b666db3-dbe2-4e8a-9fe6-efe5781a4e56/a9d291b5-a2bf-42ff-9935-073c506bbade/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b666db3-dbe2-4e8a-9fe6-efe5781a4e56/a9d291b5-a2bf-42ff-9935-073c506bbade/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0135959   0.0097809   0.0174108
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0741370   0.0464135   0.1018605
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0186147   0.0089787   0.0282507
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0874599   0.0424682   0.1324517
ki1101329-Keneba          GAMBIA       0                    NA                0.0303873   0.0235255   0.0372492
ki1101329-Keneba          GAMBIA       1                    NA                0.1540916   0.0603082   0.2478751
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0716157   0.0672463   0.0759852
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.3427774   0.3028650   0.3826898
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0317597   0.0215760   0.0419433
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.2941176   0.1694581   0.4187772
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0195139   0.0177872   0.0212407
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0732239   0.0578753   0.0885726


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192653   0.0149469   0.0235838
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238885   0.0131223   0.0346548
ki1101329-Keneba          GAMBIA       NA                   NA                0.0347334   0.0275197   0.0419471
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0759183   0.0715081   0.0803285
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0355330   0.0249750   0.0460910
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0220214   0.0202465   0.0237962


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.452910   3.415772    8.704982
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.698434   2.737903    8.062843
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 5.070915   2.648494    9.708982
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.786343   4.197534    5.457746
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 9.260731   5.442925   15.756445
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.752391   2.979990    4.724995


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0056695   0.0030683   0.0082707
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0052738   0.0016807   0.0088670
ki1101329-Keneba          GAMBIA       0                    NA                0.0043461   0.0015661   0.0071261
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0043026   0.0031572   0.0054480
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0037733   0.0001746   0.0073721
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0025074   0.0017767   0.0032381


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2942842   0.1656163   0.4031106
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2207678   0.0716870   0.3459073
ki1101329-Keneba          GAMBIA       0                    NA                0.1251272   0.0457997   0.1978598
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0566737   0.0416541   0.0714580
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1061925   0.0031504   0.1985834
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1138629   0.0813368   0.1452374
