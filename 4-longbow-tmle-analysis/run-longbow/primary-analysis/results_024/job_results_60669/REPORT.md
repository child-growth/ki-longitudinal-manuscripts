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

**Intervention Variable:** ever_swasted06_noBW

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

studyid           country                        ever_swasted06_noBW    dead624   n_cell       n
----------------  -----------------------------  --------------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                            0       39      39
Burkina Faso Zn   BURKINA FASO                   0                            1        0      39
Burkina Faso Zn   BURKINA FASO                   1                            0        0      39
Burkina Faso Zn   BURKINA FASO                   1                            1        0      39
EE                PAKISTAN                       0                            0      347     371
EE                PAKISTAN                       0                            1        4     371
EE                PAKISTAN                       1                            0       20     371
EE                PAKISTAN                       1                            1        0     371
GMS-Nepal         NEPAL                          0                            0      535     568
GMS-Nepal         NEPAL                          0                            1        2     568
GMS-Nepal         NEPAL                          1                            0       31     568
GMS-Nepal         NEPAL                          1                            1        0     568
iLiNS-DOSE        MALAWI                         0                            0     1058    1128
iLiNS-DOSE        MALAWI                         0                            1       70    1128
iLiNS-DOSE        MALAWI                         1                            0        0    1128
iLiNS-DOSE        MALAWI                         1                            1        0    1128
iLiNS-DYAD-M      MALAWI                         0                            0     1033    1055
iLiNS-DYAD-M      MALAWI                         0                            1       22    1055
iLiNS-DYAD-M      MALAWI                         1                            0        0    1055
iLiNS-DYAD-M      MALAWI                         1                            1        0    1055
JiVitA-3          BANGLADESH                     0                            0    19960   20497
JiVitA-3          BANGLADESH                     0                            1      235   20497
JiVitA-3          BANGLADESH                     1                            0      292   20497
JiVitA-3          BANGLADESH                     1                            1       10   20497
JiVitA-4          BANGLADESH                     0                            0     4889    4948
JiVitA-4          BANGLADESH                     0                            1       38    4948
JiVitA-4          BANGLADESH                     1                            0       20    4948
JiVitA-4          BANGLADESH                     1                            1        1    4948
Keneba            GAMBIA                         0                            0     2139    2262
Keneba            GAMBIA                         0                            1       33    2262
Keneba            GAMBIA                         1                            0       85    2262
Keneba            GAMBIA                         1                            1        5    2262
MAL-ED            BANGLADESH                     0                            0      232     239
MAL-ED            BANGLADESH                     0                            1        0     239
MAL-ED            BANGLADESH                     1                            0        7     239
MAL-ED            BANGLADESH                     1                            1        0     239
MAL-ED            INDIA                          0                            0      223     229
MAL-ED            INDIA                          0                            1        0     229
MAL-ED            INDIA                          1                            0        6     229
MAL-ED            INDIA                          1                            1        0     229
MAL-ED            PERU                           0                            0      271     273
MAL-ED            PERU                           0                            1        1     273
MAL-ED            PERU                           1                            0        1     273
MAL-ED            PERU                           1                            1        0     273
MAL-ED            SOUTH AFRICA                   0                            0      257     260
MAL-ED            SOUTH AFRICA                   0                            1        0     260
MAL-ED            SOUTH AFRICA                   1                            0        3     260
MAL-ED            SOUTH AFRICA                   1                            1        0     260
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            0      242     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            0        3     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            1        0     245
PROVIDE           BANGLADESH                     0                            0      603     609
PROVIDE           BANGLADESH                     0                            1        2     609
PROVIDE           BANGLADESH                     1                            0        4     609
PROVIDE           BANGLADESH                     1                            1        0     609
SAS-CompFeed      INDIA                          0                            0     1307    1357
SAS-CompFeed      INDIA                          0                            1        8    1357
SAS-CompFeed      INDIA                          1                            0       39    1357
SAS-CompFeed      INDIA                          1                            1        3    1357
SAS-FoodSuppl     INDIA                          0                            0      328     329
SAS-FoodSuppl     INDIA                          0                            1        1     329
SAS-FoodSuppl     INDIA                          1                            0        0     329
SAS-FoodSuppl     INDIA                          1                            1        0     329
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     2044    2080
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2080
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0       36    2080
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2080
VITAMIN-A         INDIA                          0                            0     3052    3076
VITAMIN-A         INDIA                          0                            1       22    3076
VITAMIN-A         INDIA                          1                            0        2    3076
VITAMIN-A         INDIA                          1                            1        0    3076
ZVITAMBO          ZIMBABWE                       0                            0    10894   11378
ZVITAMBO          ZIMBABWE                       0                            1      374   11378
ZVITAMBO          ZIMBABWE                       1                            0      105   11378
ZVITAMBO          ZIMBABWE                       1                            1        5   11378


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
* studyid: JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/f82e7945-a76a-462d-a796-a1fb726994da/37be3ea0-8a0c-4b87-92d3-c5ec001e23a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f82e7945-a76a-462d-a796-a1fb726994da/37be3ea0-8a0c-4b87-92d3-c5ec001e23a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f82e7945-a76a-462d-a796-a1fb726994da/37be3ea0-8a0c-4b87-92d3-c5ec001e23a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f82e7945-a76a-462d-a796-a1fb726994da/37be3ea0-8a0c-4b87-92d3-c5ec001e23a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0116386   0.0101338   0.0131435
JiVitA-3   BANGLADESH   1                    NA                0.0325087   0.0171162   0.0479012
Keneba     GAMBIA       0                    NA                0.0151934   0.0100480   0.0203387
Keneba     GAMBIA       1                    NA                0.0555556   0.0082214   0.1028897
ZVITAMBO   ZIMBABWE     0                    NA                0.0331913   0.0298316   0.0365511
ZVITAMBO   ZIMBABWE     1                    NA                0.0454545   0.0304008   0.0605083


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0119530   0.0104197   0.0134862
Keneba     GAMBIA       NA                   NA                0.0167993   0.0115019   0.0220967
ZVITAMBO   ZIMBABWE     NA                   NA                0.0333099   0.0300126   0.0366072


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ----------  ---------
JiVitA-3   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3   BANGLADESH   1                    0                 2.793171   1.7194185   4.537468
Keneba     GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba     GAMBIA       1                    0                 3.656566   1.4618039   9.146557
ZVITAMBO   ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO   ZIMBABWE     1                    0                 1.369470   0.9686208   1.936205


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0003143   -0.0000738   0.0007024
Keneba     GAMBIA       0                    NA                0.0016059   -0.0003162   0.0035280
ZVITAMBO   ZIMBABWE     0                    NA                0.0001186   -0.0002677   0.0005048


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0262973   -0.0062011   0.0577461
Keneba     GAMBIA       0                    NA                0.0955946   -0.0219413   0.1996125
ZVITAMBO   ZIMBABWE     0                    NA                0.0035592   -0.0081462   0.0151288
