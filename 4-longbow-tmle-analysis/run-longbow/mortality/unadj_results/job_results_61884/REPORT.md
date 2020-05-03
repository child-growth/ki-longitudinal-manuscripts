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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sstunted06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0      323     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                          1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          0       11     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          1        0     336  dead6plus        
EE                PAKISTAN                       0                          0      209     374  dead6plus        
EE                PAKISTAN                       0                          1        3     374  dead6plus        
EE                PAKISTAN                       1                          0      161     374  dead6plus        
EE                PAKISTAN                       1                          1        1     374  dead6plus        
GMS-Nepal         NEPAL                          0                          0      543     592  dead6plus        
GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                          0       47     592  dead6plus        
GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                          0     1534    1756  dead6plus        
iLiNS-DOSE        MALAWI                         0                          1      101    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                          0      109    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                          1       12    1756  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          0     1038    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          1       24    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          0       82    1148  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          1        4    1148  dead6plus        
JiVitA-3          BANGLADESH                     0                          0    17773   21009  dead6plus        
JiVitA-3          BANGLADESH                     0                          1      209   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                          0     2926   21009  dead6plus        
JiVitA-3          BANGLADESH                     1                          1      101   21009  dead6plus        
JiVitA-4          BANGLADESH                     0                          0     4630    5260  dead6plus        
JiVitA-4          BANGLADESH                     0                          1       31    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                          0      582    5260  dead6plus        
JiVitA-4          BANGLADESH                     1                          1       17    5260  dead6plus        
Keneba            GAMBIA                         0                          0     1983    2312  dead6plus        
Keneba            GAMBIA                         0                          1       53    2312  dead6plus        
Keneba            GAMBIA                         1                          0      261    2312  dead6plus        
Keneba            GAMBIA                         1                          1       15    2312  dead6plus        
MAL-ED            BANGLADESH                     0                          0      222     240  dead6plus        
MAL-ED            BANGLADESH                     0                          1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                          0       18     240  dead6plus        
MAL-ED            BANGLADESH                     1                          1        0     240  dead6plus        
MAL-ED            INDIA                          0                          0      215     235  dead6plus        
MAL-ED            INDIA                          0                          1        0     235  dead6plus        
MAL-ED            INDIA                          1                          0       20     235  dead6plus        
MAL-ED            INDIA                          1                          1        0     235  dead6plus        
MAL-ED            PERU                           0                          0      236     273  dead6plus        
MAL-ED            PERU                           0                          1        1     273  dead6plus        
MAL-ED            PERU                           1                          0       36     273  dead6plus        
MAL-ED            PERU                           1                          1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          0      233     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          0       28     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      208     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       37     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                          0      585     617  dead6plus        
PROVIDE           BANGLADESH                     0                          1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                          0       29     617  dead6plus        
PROVIDE           BANGLADESH                     1                          1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                          0     1176    1388  dead6plus        
SAS-CompFeed      INDIA                          0                          1        5    1388  dead6plus        
SAS-CompFeed      INDIA                          1                          0      200    1388  dead6plus        
SAS-CompFeed      INDIA                          1                          1        7    1388  dead6plus        
SAS-FoodSuppl     INDIA                          0                          0      337     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                          1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          0       61     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1995    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      101    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                          0     3059    3605  dead6plus        
VITAMIN-A         INDIA                          0                          1       20    3605  dead6plus        
VITAMIN-A         INDIA                          1                          0      515    3605  dead6plus        
VITAMIN-A         INDIA                          1                          1       11    3605  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          0    10164   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          1      309   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          0     1115   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          1      106   11694  dead6plus        


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
![](/tmp/3a2caec2-0c82-4f40-a3e0-4a9698923de8/263941c1-4540-4243-a8ff-e5c437501526/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a2caec2-0c82-4f40-a3e0-4a9698923de8/263941c1-4540-4243-a8ff-e5c437501526/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a2caec2-0c82-4f40-a3e0-4a9698923de8/263941c1-4540-4243-a8ff-e5c437501526/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a2caec2-0c82-4f40-a3e0-4a9698923de8/263941c1-4540-4243-a8ff-e5c437501526/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0617737   0.0501011   0.0734463
iLiNS-DOSE     MALAWI       1                    NA                0.0991736   0.0459017   0.1524454
JiVitA-3       BANGLADESH   0                    NA                0.0116227   0.0100597   0.0131858
JiVitA-3       BANGLADESH   1                    NA                0.0333664   0.0269654   0.0397674
JiVitA-4       BANGLADESH   0                    NA                0.0066509   0.0040743   0.0092276
JiVitA-4       BANGLADESH   1                    NA                0.0283806   0.0153053   0.0414560
Keneba         GAMBIA       0                    NA                0.0260314   0.0191135   0.0329493
Keneba         GAMBIA       1                    NA                0.0543478   0.0275966   0.0810991
SAS-CompFeed   INDIA        0                    NA                0.0042337   0.0005807   0.0078867
SAS-CompFeed   INDIA        1                    NA                0.0338164   0.0119227   0.0557102
VITAMIN-A      INDIA        0                    NA                0.0064956   0.0036577   0.0093335
VITAMIN-A      INDIA        1                    NA                0.0209125   0.0086825   0.0331426
ZVITAMBO       ZIMBABWE     0                    NA                0.0295044   0.0262635   0.0327454
ZVITAMBO       ZIMBABWE     1                    NA                0.0868141   0.0710204   0.1026078


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
JiVitA-3       BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
JiVitA-4       BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
SAS-CompFeed   INDIA        NA                   NA                0.0086455   0.0042433   0.0130478
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.605433   0.9084367    2.837199
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.870785   2.2761656    3.620741
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.267166   2.3429173    7.771808
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 2.087777   1.1932947    3.652754
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.987440   2.8177744   22.641696
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.219487   1.5515065    6.680665
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.942407   2.3790762    3.639128


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0025771   -0.0012068   0.0063610
JiVitA-3       BANGLADESH   0                    NA                0.0031328    0.0021821   0.0040836
JiVitA-4       BANGLADESH   0                    NA                0.0024745    0.0009547   0.0039944
Keneba         GAMBIA       0                    NA                0.0033803    0.0000606   0.0067000
SAS-CompFeed   INDIA        0                    NA                0.0044118    0.0012088   0.0076148
VITAMIN-A      INDIA        0                    NA                0.0021036    0.0002641   0.0039430
ZVITAMBO       ZIMBABWE     0                    NA                0.0059838    0.0042707   0.0076970


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0400476   -0.0201902   0.0967287
JiVitA-3       BANGLADESH   0                    NA                0.2123161    0.1502489   0.2698498
JiVitA-4       BANGLADESH   0                    NA                0.2711686    0.0988150   0.4105591
Keneba         GAMBIA       0                    NA                0.1149312   -0.0019596   0.2181853
SAS-CompFeed   INDIA        0                    NA                0.5103020    0.0855804   0.7377526
VITAMIN-A      INDIA        0                    NA                0.2446228    0.0205731   0.4174198
ZVITAMBO       ZIMBABWE     0                    NA                0.1686146    0.1215952   0.2131173
