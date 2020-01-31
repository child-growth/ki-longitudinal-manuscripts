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

**Outcome Variable:** dead6plus

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sstunted06    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      222     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                          1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          0       18     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                          0      215     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                          1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                          0       20     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                          1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                          0      236     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                          1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                          0       36     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                          1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      233     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0       28     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0      208     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0       37     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                          0      209     374  dead6plus        
ki1000109-EE                PAKISTAN                       0                          1        3     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                          0      161     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                          1        1     374  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                          0     3059    3605  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                          1       20    3605  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                          0      515    3605  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                          1       11    3605  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          0     1176    1388  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          1        5    1388  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          0      200    1388  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          1        7    1388  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0      337     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0       61     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          0      585     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          0       29     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1995    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      101    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                          0     1983    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         0                          1       53    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         1                          0      261    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         1                          1       15    2312  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0      323     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1        2     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0       11     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1        0     336  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                          0      543     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                          0       47     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0    10164   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      309   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0     1115   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1      106   11694  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          0     1534    1756  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          1      101    1756  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          0      109    1756  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          1       12    1756  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0     1040    1148  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       24    1148  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0       80    1148  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1        4    1148  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    17773   21009  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      209   21009  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          0     2926   21009  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          1      101   21009  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     4630    5260  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       31    5260  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          0      582    5260  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          1       17    5260  dead6plus        


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
![](/tmp/4f13f13b-492d-4ada-9f8e-c2bb02277a87/8e79d589-6345-4412-9fd9-d38558b9cf1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4f13f13b-492d-4ada-9f8e-c2bb02277a87/8e79d589-6345-4412-9fd9-d38558b9cf1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4f13f13b-492d-4ada-9f8e-c2bb02277a87/8e79d589-6345-4412-9fd9-d38558b9cf1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4f13f13b-492d-4ada-9f8e-c2bb02277a87/8e79d589-6345-4412-9fd9-d38558b9cf1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0065033   0.0036616   0.0093450
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0204239   0.0083828   0.0324650
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042337   0.0005807   0.0078867
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0338164   0.0119227   0.0557102
ki1101329-Keneba          GAMBIA       0                    NA                0.0261136   0.0191741   0.0330532
ki1101329-Keneba          GAMBIA       1                    NA                0.0537341   0.0263808   0.0810874
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0296787   0.0264267   0.0329306
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0798571   0.0641720   0.0955423
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0616778   0.0500074   0.0733482
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0944638   0.0407131   0.1482144
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0117317   0.0101452   0.0133183
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0342812   0.0262829   0.0422795
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0066602   0.0040777   0.0092428
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0274231   0.0145249   0.0403213


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0086455   0.0042433   0.0130478
ki1101329-Keneba          GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0091255   0.0063791   0.0118719


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.140529   1.5079372    6.540671
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 7.987440   2.8177744   22.641696
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.057702   1.1588531    3.653731
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.690726   2.1490076    3.369000
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 1.531568   0.8412848    2.788235
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.922090   2.2384325    3.814549
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.117448   2.2423754    7.560454


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0020958    0.0002557   0.0039360
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0044118    0.0012088   0.0076148
ki1101329-Keneba          GAMBIA       0                    NA                0.0032981   -0.0000266   0.0066229
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0058096    0.0040965   0.0075228
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0026730   -0.0010977   0.0064437
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0030238    0.0020473   0.0040004
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0024653    0.0009445   0.0039860


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2437252    0.0193853   0.4167417
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5103020    0.0855804   0.7377526
ki1101329-Keneba          GAMBIA       0                    NA                0.1121362   -0.0051058   0.2157023
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1637055    0.1165887   0.2083094
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0415375   -0.0184910   0.0980280
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2049286    0.1406378   0.2644097
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2701513    0.0973722   0.4098573
