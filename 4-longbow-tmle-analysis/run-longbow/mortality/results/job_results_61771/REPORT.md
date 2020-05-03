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
![](/tmp/14275864-3568-4752-b8e4-7fb00937758e/d21f0411-1b4c-4995-ac75-a6176bde4ee0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14275864-3568-4752-b8e4-7fb00937758e/d21f0411-1b4c-4995-ac75-a6176bde4ee0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14275864-3568-4752-b8e4-7fb00937758e/d21f0411-1b4c-4995-ac75-a6176bde4ee0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14275864-3568-4752-b8e4-7fb00937758e/d21f0411-1b4c-4995-ac75-a6176bde4ee0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0111753    0.0095668   0.0127837
JiVitA-3       BANGLADESH   1                    NA                0.0177844    0.0136266   0.0219421
JiVitA-4       BANGLADESH   0                    NA                0.0081001    0.0053783   0.0108219
JiVitA-4       BANGLADESH   1                    NA                0.0139529    0.0040707   0.0238352
Keneba         GAMBIA       0                    NA                0.0126538    0.0072745   0.0180331
Keneba         GAMBIA       1                    NA                0.0276432    0.0150105   0.0402759
SAS-CompFeed   INDIA        0                    NA                0.0046992   -0.0002951   0.0096936
SAS-CompFeed   INDIA        1                    NA                0.0187500    0.0086800   0.0288200
VITAMIN-A      INDIA        0                    NA                0.0047298    0.0021693   0.0072903
VITAMIN-A      INDIA        1                    NA                0.0220985    0.0120166   0.0321805
ZVITAMBO       ZIMBABWE     0                    NA                0.0288750    0.0255007   0.0322492
ZVITAMBO       ZIMBABWE     1                    NA                0.0571241    0.0473048   0.0669434


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
JiVitA-3       BANGLADESH   1                    0                 1.591403   1.2113003    2.090780
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 1.722566   0.7856072    3.776994
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 2.184578   1.1702107    4.078224
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 3.990000   0.9749745   16.328735
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.672195   2.3017069    9.484010
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.978326   1.6074279    2.434805


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0013575    0.0004597   0.0022552
JiVitA-4       BANGLADESH   0                    NA                0.0008660   -0.0005227   0.0022546
Keneba         GAMBIA       0                    NA                0.0042147    0.0003431   0.0080864
SAS-CompFeed   INDIA        0                    NA                0.0032487    0.0001193   0.0063782
VITAMIN-A      INDIA        0                    NA                0.0038670    0.0014960   0.0062380
ZVITAMBO       ZIMBABWE     0                    NA                0.0053197    0.0033683   0.0072710


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1083140    0.0354828   0.1756456
JiVitA-4       BANGLADESH   0                    NA                0.0965814   -0.0669674   0.2350608
Keneba         GAMBIA       0                    NA                0.2498577   -0.0008002   0.4377364
SAS-CompFeed   INDIA        0                    NA                0.4087491   -0.2627004   0.7231508
VITAMIN-A      INDIA        0                    NA                0.4498176    0.1694514   0.6355413
ZVITAMBO       ZIMBABWE     0                    NA                0.1555706    0.0986241   0.2089193
