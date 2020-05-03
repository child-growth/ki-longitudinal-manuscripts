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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/823678f2-ffcf-4ea6-97b1-b5345747aa12/d67ba299-e573-43ce-9481-4dd4245a25ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/823678f2-ffcf-4ea6-97b1-b5345747aa12/d67ba299-e573-43ce-9481-4dd4245a25ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/823678f2-ffcf-4ea6-97b1-b5345747aa12/d67ba299-e573-43ce-9481-4dd4245a25ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/823678f2-ffcf-4ea6-97b1-b5345747aa12/d67ba299-e573-43ce-9481-4dd4245a25ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0317597   0.0215760   0.0419433
iLiNS-DYAD-M   MALAWI       1                    NA                0.2941176   0.1694581   0.4187772
JiVitA-3       BANGLADESH   0                    NA                0.0195321   0.0178060   0.0212582
JiVitA-3       BANGLADESH   1                    NA                0.0746001   0.0594788   0.0897213
Keneba         GAMBIA       0                    NA                0.0303891   0.0235272   0.0372511
Keneba         GAMBIA       1                    NA                0.1817061   0.0883483   0.2750639
SAS-CompFeed   INDIA        0                    NA                0.0186147   0.0089787   0.0282507
SAS-CompFeed   INDIA        1                    NA                0.0874599   0.0424682   0.1324517
VITAMIN-A      INDIA        0                    NA                0.0135646   0.0097542   0.0173750
VITAMIN-A      INDIA        1                    NA                0.0749250   0.0472891   0.1025609
ZVITAMBO       ZIMBABWE     0                    NA                0.0715909   0.0672253   0.0759565
ZVITAMBO       ZIMBABWE     1                    NA                0.3510463   0.3104775   0.3916151


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
JiVitA-3       BANGLADESH   1                    0                 3.819365   3.055068    4.774869
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.979310   3.410258   10.483707
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.698434   2.737903    8.062843
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.523563   3.473758    8.782922
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.903505   4.303464    5.587211


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0037733   0.0001746   0.0073721
JiVitA-3       BANGLADESH   0                    NA                0.0024893   0.0017599   0.0032187
Keneba         GAMBIA       0                    NA                0.0043443   0.0015636   0.0071250
SAS-CompFeed   INDIA        0                    NA                0.0052738   0.0016807   0.0088670
VITAMIN-A      INDIA        0                    NA                0.0057007   0.0031005   0.0083010
ZVITAMBO       ZIMBABWE     0                    NA                0.0043274   0.0031801   0.0054747


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.1061925   0.0031504   0.1985834
JiVitA-3       BANGLADESH   0                    NA                0.1130398   0.0805792   0.1443543
Keneba         GAMBIA       0                    NA                0.1250756   0.0457262   0.1978269
SAS-CompFeed   INDIA        0                    NA                0.2207678   0.0716870   0.3459073
VITAMIN-A      INDIA        0                    NA                0.2959065   0.1673931   0.4045837
ZVITAMBO       ZIMBABWE     0                    NA                0.0570009   0.0419669   0.0717989
