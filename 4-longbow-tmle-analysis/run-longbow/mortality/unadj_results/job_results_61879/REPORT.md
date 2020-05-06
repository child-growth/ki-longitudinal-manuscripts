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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_co06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                    0      325     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                    1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                    0       11     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                    1        0     338  dead0plus        
EE                PAKISTAN                       0                    0      314     379  dead0plus        
EE                PAKISTAN                       0                    1        2     379  dead0plus        
EE                PAKISTAN                       1                    0       61     379  dead0plus        
EE                PAKISTAN                       1                    1        2     379  dead0plus        
GMS-Nepal         NEPAL                          0                    0      645     686  dead0plus        
GMS-Nepal         NEPAL                          0                    1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                    0       34     686  dead0plus        
GMS-Nepal         NEPAL                          1                    1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                    0     1686    1813  dead0plus        
iLiNS-DOSE        MALAWI                         0                    1      111    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                    0       13    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                    1        3    1813  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                    0     1128    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                    1       37    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                    0       12    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                    1        5    1182  dead0plus        
JiVitA-3          BANGLADESH                     0                    0    25054   26883  dead0plus        
JiVitA-3          BANGLADESH                     0                    1      498   26883  dead0plus        
JiVitA-3          BANGLADESH                     1                    0     1237   26883  dead0plus        
JiVitA-3          BANGLADESH                     1                    1       94   26883  dead0plus        
JiVitA-4          BANGLADESH                     0                    0     5018    5247  dead0plus        
JiVitA-4          BANGLADESH                     0                    1       43    5247  dead0plus        
JiVitA-4          BANGLADESH                     1                    0      182    5247  dead0plus        
JiVitA-4          BANGLADESH                     1                    1        4    5247  dead0plus        
Keneba            GAMBIA                         0                    0     2331    2476  dead0plus        
Keneba            GAMBIA                         0                    1       73    2476  dead0plus        
Keneba            GAMBIA                         1                    0       59    2476  dead0plus        
Keneba            GAMBIA                         1                    1       13    2476  dead0plus        
MAL-ED            BANGLADESH                     0                    0      252     263  dead0plus        
MAL-ED            BANGLADESH                     0                    1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                    0        9     263  dead0plus        
MAL-ED            BANGLADESH                     1                    1        0     263  dead0plus        
MAL-ED            INDIA                          0                    0      230     251  dead0plus        
MAL-ED            INDIA                          0                    1        2     251  dead0plus        
MAL-ED            INDIA                          1                    0       19     251  dead0plus        
MAL-ED            INDIA                          1                    1        0     251  dead0plus        
MAL-ED            PERU                           0                    0      298     302  dead0plus        
MAL-ED            PERU                           0                    1        2     302  dead0plus        
MAL-ED            PERU                           1                    0        2     302  dead0plus        
MAL-ED            PERU                           1                    1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                    0      306     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                    1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                    0        6     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                    1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      254     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0        4     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                    0      665     700  dead0plus        
PROVIDE           BANGLADESH                     0                    1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                    0       30     700  dead0plus        
PROVIDE           BANGLADESH                     1                    1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                    0     1371    1507  dead0plus        
SAS-CompFeed      INDIA                          0                    1       26    1507  dead0plus        
SAS-CompFeed      INDIA                          1                    0      100    1507  dead0plus        
SAS-CompFeed      INDIA                          1                    1       10    1507  dead0plus        
SAS-FoodSuppl     INDIA                          0                    0      362     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                    1        3     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                    0       50     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                    1        3     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2373    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       22    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                    0     3488    3893  dead0plus        
VITAMIN-A         INDIA                          0                    1       48    3893  dead0plus        
VITAMIN-A         INDIA                          1                    0      330    3893  dead0plus        
VITAMIN-A         INDIA                          1                    1       27    3893  dead0plus        
ZVITAMBO          ZIMBABWE                       0                    0    12673   13857  dead0plus        
ZVITAMBO          ZIMBABWE                       0                    1      975   13857  dead0plus        
ZVITAMBO          ZIMBABWE                       1                    0      132   13857  dead0plus        
ZVITAMBO          ZIMBABWE                       1                    1       77   13857  dead0plus        


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
* studyid: JiVitA-4, country: BANGLADESH
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
![](/tmp/94cf5efc-86e4-4261-80e3-6892f57e3274/d13c478a-d543-44ab-b218-bf852fabc37a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/94cf5efc-86e4-4261-80e3-6892f57e3274/d13c478a-d543-44ab-b218-bf852fabc37a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/94cf5efc-86e4-4261-80e3-6892f57e3274/d13c478a-d543-44ab-b218-bf852fabc37a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/94cf5efc-86e4-4261-80e3-6892f57e3274/d13c478a-d543-44ab-b218-bf852fabc37a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0317597   0.0215760   0.0419433
iLiNS-DYAD-M   MALAWI       1                    NA                0.2941176   0.1694581   0.4187772
JiVitA-3       BANGLADESH   0                    NA                0.0194897   0.0177616   0.0212177
JiVitA-3       BANGLADESH   1                    NA                0.0706236   0.0563732   0.0848740
Keneba         GAMBIA       0                    NA                0.0303661   0.0235054   0.0372267
Keneba         GAMBIA       1                    NA                0.1805556   0.0916897   0.2694214
SAS-CompFeed   INDIA        0                    NA                0.0186113   0.0089416   0.0282810
SAS-CompFeed   INDIA        1                    NA                0.0909091   0.0498338   0.1319844
VITAMIN-A      INDIA        0                    NA                0.0135747   0.0097601   0.0173892
VITAMIN-A      INDIA        1                    NA                0.0756303   0.0481993   0.1030612
ZVITAMBO       ZIMBABWE     0                    NA                0.0714390   0.0670739   0.0758042
ZVITAMBO       ZIMBABWE     1                    NA                0.3684211   0.3289650   0.4078771


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0355330   0.0249750   0.0460910
JiVitA-3       BANGLADESH   NA                   NA                0.0220214   0.0202465   0.0237962
Keneba         GAMBIA       NA                   NA                0.0347334   0.0275197   0.0419471
SAS-CompFeed   INDIA        NA                   NA                0.0238885   0.0131223   0.0346548
VITAMIN-A      INDIA        NA                   NA                0.0192653   0.0149469   0.0235838
ZVITAMBO       ZIMBABWE     NA                   NA                0.0759183   0.0715081   0.0803285


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 9.260731   5.442925   15.756445
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.623643   2.898036    4.530925
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.945966   3.459603   10.219242
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.884615   2.903947    8.216220
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.571429   3.521311    8.815129
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.157139   4.558902    5.833878


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0037733   0.0001746   0.0073721
JiVitA-3       BANGLADESH   0                    NA                0.0025317   0.0018000   0.0032634
Keneba         GAMBIA       0                    NA                0.0043674   0.0015914   0.0071434
SAS-CompFeed   INDIA        0                    NA                0.0052772   0.0017175   0.0088369
VITAMIN-A      INDIA        0                    NA                0.0056907   0.0030894   0.0082920
ZVITAMBO       ZIMBABWE     0                    NA                0.0044793   0.0033182   0.0056404


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.1061925   0.0031504   0.1985834
JiVitA-3       BANGLADESH   0                    NA                0.1149650   0.0823781   0.1463946
Keneba         GAMBIA       0                    NA                0.1257400   0.0465362   0.1983645
SAS-CompFeed   INDIA        0                    NA                0.2209099   0.0721362   0.3458292
VITAMIN-A      INDIA        0                    NA                0.2953846   0.1667041   0.4041938
ZVITAMBO       ZIMBABWE     0                    NA                0.0590012   0.0437863   0.0739740
