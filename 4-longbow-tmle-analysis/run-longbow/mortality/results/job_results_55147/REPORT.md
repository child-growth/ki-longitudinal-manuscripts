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

**Intervention Variable:** pers_wasted06

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

studyid                     country                        pers_wasted06    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                      0      232     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                      1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                      0        8     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                      1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                      0      220     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                      1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                      0       15     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                      1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                      0      272     273  dead624          
ki0047075b-MAL-ED           PERU                           0                      1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                      0        0     273  dead624          
ki0047075b-MAL-ED           PERU                           1                      1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      0      258     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      0        3     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      245     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                      0      345     375  dead624          
ki1000109-EE                PAKISTAN                       0                      1        4     375  dead624          
ki1000109-EE                PAKISTAN                       1                      0       26     375  dead624          
ki1000109-EE                PAKISTAN                       1                      1        0     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                      0     2768    3606  dead624          
ki1000304-VITAMIN-A         INDIA                          0                      1       13    3606  dead624          
ki1000304-VITAMIN-A         INDIA                          1                      0      807    3606  dead624          
ki1000304-VITAMIN-A         INDIA                          1                      1       18    3606  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                      0     1251    1384  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                      1        6    1384  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                      0      122    1384  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                      1        5    1384  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                      0      305     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                      1        1     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                      0       93     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                      1        3     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                      0      601     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                      1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                      0       14     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                      1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     2041    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0       55    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                      0     2192    2312  dead624          
ki1101329-Keneba            GAMBIA                         0                      1       36    2312  dead624          
ki1101329-Keneba            GAMBIA                         1                      0       81    2312  dead624          
ki1101329-Keneba            GAMBIA                         1                      1        3    2312  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      0      294     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      1        2     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      0       40     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      1        0     336  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                      0      523     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                      1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                      0       67     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                      1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                      0    10661   11610  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                      1      355   11610  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                      0      552   11610  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                      1       42   11610  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                      0     1621    1757  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                      1      109    1757  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                      0       23    1757  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                      1        4    1757  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      0     1065    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      1       21    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      0       53    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      1        3    1142  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                      0    19417   20985  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                      1      223   20985  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                      0     1305   20985  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                      1       40   20985  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                      0     4859    5242  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                      1       42    5242  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                      0      336    5242  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                      1        5    5242  dead624          


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
* studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/40c5231d-ae84-40f9-8c2e-7e5d642dd487/2e34b6f8-83cd-439d-b02c-55c3ccdb051a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40c5231d-ae84-40f9-8c2e-7e5d642dd487/2e34b6f8-83cd-439d-b02c-55c3ccdb051a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40c5231d-ae84-40f9-8c2e-7e5d642dd487/2e34b6f8-83cd-439d-b02c-55c3ccdb051a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40c5231d-ae84-40f9-8c2e-7e5d642dd487/2e34b6f8-83cd-439d-b02c-55c3ccdb051a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0047216   0.0021597   0.0072836
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0218223   0.0116471   0.0319974
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0047733   0.0007354   0.0088112
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0393701   0.0160610   0.0626792
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0324115   0.0290950   0.0357279
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0699719   0.0460719   0.0938718
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0113526   0.0098555   0.0128497
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0293828   0.0191348   0.0396308
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0085697   0.0057904   0.0113490
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0146628   0.0032430   0.0260825


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0079480   0.0042682   0.0116277
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0341947   0.0308889   0.0375004
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0125328   0.0109928   0.0140728
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089660   0.0062553   0.0116768


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 4.621783   2.2593350    9.454500
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 8.248031   2.4645491   27.603436
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.158860   1.5115188    3.083439
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.588196   1.7801234    3.763087
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.711004   0.7394243    3.959208


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0038752    0.0015031   0.0062472
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0031747    0.0008267   0.0055227
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0017832    0.0006994   0.0028669
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0011802    0.0005278   0.0018325
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0003964   -0.0003649   0.0011576


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.4507701    0.1700205   0.6365532
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3994359   -0.0277059   0.6490462
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0521477    0.0203090   0.0829518
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0941659    0.0426528   0.1429071
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0442072   -0.0450156   0.1258122
