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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_wasted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                      0      294     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                      1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                      0       40     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                      1        0     336  dead624          
EE                PAKISTAN                       0                      0      244     375  dead624          
EE                PAKISTAN                       0                      1        2     375  dead624          
EE                PAKISTAN                       1                      0      127     375  dead624          
EE                PAKISTAN                       1                      1        2     375  dead624          
GMS-Nepal         NEPAL                          0                      0      354     592  dead624          
GMS-Nepal         NEPAL                          0                      1        1     592  dead624          
GMS-Nepal         NEPAL                          1                      0      236     592  dead624          
GMS-Nepal         NEPAL                          1                      1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                      0     1621    1757  dead624          
iLiNS-DOSE        MALAWI                         0                      1      109    1757  dead624          
iLiNS-DOSE        MALAWI                         1                      0       23    1757  dead624          
iLiNS-DOSE        MALAWI                         1                      1        4    1757  dead624          
iLiNS-DYAD-M      MALAWI                         0                      0     1065    1142  dead624          
iLiNS-DYAD-M      MALAWI                         0                      1       21    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                      0       53    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                      1        3    1142  dead624          
JiVitA-3          BANGLADESH                     0                      0    16552   20985  dead624          
JiVitA-3          BANGLADESH                     0                      1      186   20985  dead624          
JiVitA-3          BANGLADESH                     1                      0     4170   20985  dead624          
JiVitA-3          BANGLADESH                     1                      1       77   20985  dead624          
JiVitA-4          BANGLADESH                     0                      0     4514    5242  dead624          
JiVitA-4          BANGLADESH                     0                      1       37    5242  dead624          
JiVitA-4          BANGLADESH                     1                      0      681    5242  dead624          
JiVitA-4          BANGLADESH                     1                      1       10    5242  dead624          
Keneba            GAMBIA                         0                      0     1639    2312  dead624          
Keneba            GAMBIA                         0                      1       21    2312  dead624          
Keneba            GAMBIA                         1                      0      634    2312  dead624          
Keneba            GAMBIA                         1                      1       18    2312  dead624          
MAL-ED            BANGLADESH                     0                      0      184     240  dead624          
MAL-ED            BANGLADESH                     0                      1        0     240  dead624          
MAL-ED            BANGLADESH                     1                      0       56     240  dead624          
MAL-ED            BANGLADESH                     1                      1        0     240  dead624          
MAL-ED            INDIA                          0                      0      157     235  dead624          
MAL-ED            INDIA                          0                      1        0     235  dead624          
MAL-ED            INDIA                          1                      0       78     235  dead624          
MAL-ED            INDIA                          1                      1        0     235  dead624          
MAL-ED            PERU                           0                      0      262     273  dead624          
MAL-ED            PERU                           0                      1        1     273  dead624          
MAL-ED            PERU                           1                      0       10     273  dead624          
MAL-ED            PERU                           1                      1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                      0      232     261  dead624          
MAL-ED            SOUTH AFRICA                   0                      1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                      0       29     261  dead624          
MAL-ED            SOUTH AFRICA                   1                      1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      0      231     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                      1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      0       14     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                      1        0     245  dead624          
PROVIDE           BANGLADESH                     0                      0      457     617  dead624          
PROVIDE           BANGLADESH                     0                      1        2     617  dead624          
PROVIDE           BANGLADESH                     1                      0      158     617  dead624          
PROVIDE           BANGLADESH                     1                      1        0     617  dead624          
SAS-CompFeed      INDIA                          0                      0     1059    1384  dead624          
SAS-CompFeed      INDIA                          0                      1        5    1384  dead624          
SAS-CompFeed      INDIA                          1                      0      314    1384  dead624          
SAS-CompFeed      INDIA                          1                      1        6    1384  dead624          
SAS-FoodSuppl     INDIA                          0                      0      305     402  dead624          
SAS-FoodSuppl     INDIA                          0                      1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                      0       93     402  dead624          
SAS-FoodSuppl     INDIA                          1                      1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     1769    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0      327    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2096  dead624          
VITAMIN-A         INDIA                          0                      0     2768    3606  dead624          
VITAMIN-A         INDIA                          0                      1       13    3606  dead624          
VITAMIN-A         INDIA                          1                      0      807    3606  dead624          
VITAMIN-A         INDIA                          1                      1       18    3606  dead624          
ZVITAMBO          ZIMBABWE                       0                      0     9176   11610  dead624          
ZVITAMBO          ZIMBABWE                       0                      1      271   11610  dead624          
ZVITAMBO          ZIMBABWE                       1                      0     2037   11610  dead624          
ZVITAMBO          ZIMBABWE                       1                      1      126   11610  dead624          


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
![](/tmp/526831af-e422-48f7-ba98-10fca256fdff/49085c28-7f73-40e1-8dc5-ad1f760801c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/526831af-e422-48f7-ba98-10fca256fdff/49085c28-7f73-40e1-8dc5-ad1f760801c8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/526831af-e422-48f7-ba98-10fca256fdff/49085c28-7f73-40e1-8dc5-ad1f760801c8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/526831af-e422-48f7-ba98-10fca256fdff/49085c28-7f73-40e1-8dc5-ad1f760801c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0111124    0.0095039   0.0127210
JiVitA-3       BANGLADESH   1                    NA                0.0181304    0.0139683   0.0222926
JiVitA-4       BANGLADESH   0                    NA                0.0081301    0.0054073   0.0108529
JiVitA-4       BANGLADESH   1                    NA                0.0144718    0.0043391   0.0246045
Keneba         GAMBIA       0                    NA                0.0126506    0.0072731   0.0180281
Keneba         GAMBIA       1                    NA                0.0276074    0.0150282   0.0401865
SAS-CompFeed   INDIA        0                    NA                0.0046992   -0.0002951   0.0096936
SAS-CompFeed   INDIA        1                    NA                0.0187500    0.0086800   0.0288200
VITAMIN-A      INDIA        0                    NA                0.0046746    0.0021391   0.0072101
VITAMIN-A      INDIA        1                    NA                0.0218182    0.0118481   0.0317883
ZVITAMBO       ZIMBABWE     0                    NA                0.0286864    0.0253202   0.0320525
ZVITAMBO       ZIMBABWE     1                    NA                0.0582524    0.0483814   0.0681235


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0125328   0.0109928   0.0140728
JiVitA-4       BANGLADESH   NA                   NA                0.0089660   0.0062553   0.0116768
Keneba         GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
SAS-CompFeed   INDIA        NA                   NA                0.0079480   0.0042682   0.0116277
VITAMIN-A      INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ZVITAMBO       ZIMBABWE     NA                   NA                0.0341947   0.0308889   0.0375004


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 1.631545   1.2453142    2.137565
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 1.780029   0.8184045    3.871561
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 2.182296   1.1702741    4.069488
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 3.990000   0.9749745   16.328735
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.667413   2.2964644    9.486209
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.030667   1.6524315    2.495478


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0014203    0.0005212   0.0023195
JiVitA-4       BANGLADESH   0                    NA                0.0008360   -0.0005508   0.0022227
Keneba         GAMBIA       0                    NA                0.0042179    0.0003502   0.0080856
SAS-CompFeed   INDIA        0                    NA                0.0032487    0.0001193   0.0063782
VITAMIN-A      INDIA        0                    NA                0.0039222    0.0015569   0.0062875
ZVITAMBO       ZIMBABWE     0                    NA                0.0055083    0.0035540   0.0074626


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1133288    0.0403866   0.1807265
JiVitA-4       BANGLADESH   0                    NA                0.0932365   -0.0701285   0.2316623
Keneba         GAMBIA       0                    NA                0.2500463   -0.0003187   0.4377487
SAS-CompFeed   INDIA        0                    NA                0.4087491   -0.2627004   0.7231508
VITAMIN-A      INDIA        0                    NA                0.4562411    0.1784226   0.6401145
ZVITAMBO       ZIMBABWE     0                    NA                0.1610867    0.1041162   0.2144343
