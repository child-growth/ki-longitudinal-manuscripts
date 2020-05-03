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

studyid           country                        pers_wasted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                      0      294     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                      1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                      0       40     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                      1        0     336  dead624          
EE                PAKISTAN                       0                      0      345     375  dead624          
EE                PAKISTAN                       0                      1        4     375  dead624          
EE                PAKISTAN                       1                      0       26     375  dead624          
EE                PAKISTAN                       1                      1        0     375  dead624          
GMS-Nepal         NEPAL                          0                      0      523     592  dead624          
GMS-Nepal         NEPAL                          0                      1        1     592  dead624          
GMS-Nepal         NEPAL                          1                      0       67     592  dead624          
GMS-Nepal         NEPAL                          1                      1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                      0     1621    1757  dead624          
iLiNS-DOSE        MALAWI                         0                      1      109    1757  dead624          
iLiNS-DOSE        MALAWI                         1                      0       23    1757  dead624          
iLiNS-DOSE        MALAWI                         1                      1        4    1757  dead624          
iLiNS-DYAD-M      MALAWI                         0                      0     1065    1142  dead624          
iLiNS-DYAD-M      MALAWI                         0                      1       21    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                      0       53    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                      1        3    1142  dead624          
JiVitA-3          BANGLADESH                     0                      0    19417   20985  dead624          
JiVitA-3          BANGLADESH                     0                      1      223   20985  dead624          
JiVitA-3          BANGLADESH                     1                      0     1305   20985  dead624          
JiVitA-3          BANGLADESH                     1                      1       40   20985  dead624          
JiVitA-4          BANGLADESH                     0                      0     4859    5242  dead624          
JiVitA-4          BANGLADESH                     0                      1       42    5242  dead624          
JiVitA-4          BANGLADESH                     1                      0      336    5242  dead624          
JiVitA-4          BANGLADESH                     1                      1        5    5242  dead624          
Keneba            GAMBIA                         0                      0     2192    2312  dead624          
Keneba            GAMBIA                         0                      1       36    2312  dead624          
Keneba            GAMBIA                         1                      0       81    2312  dead624          
Keneba            GAMBIA                         1                      1        3    2312  dead624          
MAL-ED            BANGLADESH                     0                      0      232     240  dead624          
MAL-ED            BANGLADESH                     0                      1        0     240  dead624          
MAL-ED            BANGLADESH                     1                      0        8     240  dead624          
MAL-ED            BANGLADESH                     1                      1        0     240  dead624          
MAL-ED            INDIA                          0                      0      220     235  dead624          
MAL-ED            INDIA                          0                      1        0     235  dead624          
MAL-ED            INDIA                          1                      0       15     235  dead624          
MAL-ED            INDIA                          1                      1        0     235  dead624          
MAL-ED            PERU                           0                      0      272     273  dead624          
MAL-ED            PERU                           0                      1        1     273  dead624          
MAL-ED            PERU                           1                      0        0     273  dead624          
MAL-ED            PERU                           1                      1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                      0      258     261  dead624          
MAL-ED            SOUTH AFRICA                   0                      1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                      0        3     261  dead624          
MAL-ED            SOUTH AFRICA                   1                      1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      0      245     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      0        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      1        0     245  dead624          
PROVIDE           BANGLADESH                     0                      0      601     617  dead624          
PROVIDE           BANGLADESH                     0                      1        2     617  dead624          
PROVIDE           BANGLADESH                     1                      0       14     617  dead624          
PROVIDE           BANGLADESH                     1                      1        0     617  dead624          
SAS-CompFeed      INDIA                          0                      0     1251    1384  dead624          
SAS-CompFeed      INDIA                          0                      1        6    1384  dead624          
SAS-CompFeed      INDIA                          1                      0      122    1384  dead624          
SAS-CompFeed      INDIA                          1                      1        5    1384  dead624          
SAS-FoodSuppl     INDIA                          0                      0      305     402  dead624          
SAS-FoodSuppl     INDIA                          0                      1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                      0       93     402  dead624          
SAS-FoodSuppl     INDIA                          1                      1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     2041    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0       55    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2096  dead624          
VITAMIN-A         INDIA                          0                      0     2768    3606  dead624          
VITAMIN-A         INDIA                          0                      1       13    3606  dead624          
VITAMIN-A         INDIA                          1                      0      807    3606  dead624          
VITAMIN-A         INDIA                          1                      1       18    3606  dead624          
ZVITAMBO          ZIMBABWE                       0                      0    10661   11610  dead624          
ZVITAMBO          ZIMBABWE                       0                      1      355   11610  dead624          
ZVITAMBO          ZIMBABWE                       1                      0      552   11610  dead624          
ZVITAMBO          ZIMBABWE                       1                      1       42   11610  dead624          


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/86b7e04e-b05f-4112-b8df-06cd8d2b4ae9/2b99af04-7141-4952-9d8e-1edb8730d0d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/86b7e04e-b05f-4112-b8df-06cd8d2b4ae9/2b99af04-7141-4952-9d8e-1edb8730d0d0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/86b7e04e-b05f-4112-b8df-06cd8d2b4ae9/2b99af04-7141-4952-9d8e-1edb8730d0d0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/86b7e04e-b05f-4112-b8df-06cd8d2b4ae9/2b99af04-7141-4952-9d8e-1edb8730d0d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0113726   0.0098741   0.0128710
JiVitA-3       BANGLADESH   1                    NA                0.0288829   0.0191486   0.0386173
JiVitA-4       BANGLADESH   0                    NA                0.0085697   0.0057904   0.0113490
JiVitA-4       BANGLADESH   1                    NA                0.0146628   0.0032430   0.0260825
SAS-CompFeed   INDIA        0                    NA                0.0047733   0.0007354   0.0088112
SAS-CompFeed   INDIA        1                    NA                0.0393701   0.0160610   0.0626792
VITAMIN-A      INDIA        0                    NA                0.0047444   0.0021784   0.0073104
VITAMIN-A      INDIA        1                    NA                0.0220303   0.0119545   0.0321060
ZVITAMBO       ZIMBABWE     0                    NA                0.0322402   0.0289391   0.0355413
ZVITAMBO       ZIMBABWE     1                    NA                0.0709164   0.0478959   0.0939369


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0125328   0.0109928   0.0140728
JiVitA-4       BANGLADESH   NA                   NA                0.0089660   0.0062553   0.0116768
SAS-CompFeed   INDIA        NA                   NA                0.0079480   0.0042682   0.0116277
VITAMIN-A      INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ZVITAMBO       ZIMBABWE     NA                   NA                0.0341947   0.0308889   0.0375004


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.539701   1.7669589    3.650385
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 1.711004   0.7394243    3.959208
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 8.248031   2.4645491   27.603436
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.643454   2.2863589    9.430567
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.199629   1.5650516    3.091506


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0011602    0.0005095   0.0018109
JiVitA-4       BANGLADESH   0                    NA                0.0003964   -0.0003649   0.0011576
SAS-CompFeed   INDIA        0                    NA                0.0031747    0.0008267   0.0055227
VITAMIN-A      INDIA        0                    NA                0.0038524    0.0014794   0.0062254
ZVITAMBO       ZIMBABWE     0                    NA                0.0019545    0.0008711   0.0030379


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0925728    0.0411556   0.1412328
JiVitA-4       BANGLADESH   0                    NA                0.0442072   -0.0450156   0.1258122
SAS-CompFeed   INDIA        0                    NA                0.3994359   -0.0277059   0.6490462
VITAMIN-A      INDIA        0                    NA                0.4481225    0.1671450   0.6343075
ZVITAMBO       ZIMBABWE     0                    NA                0.0571575    0.0254009   0.0878793
