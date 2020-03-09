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

**Intervention Variable:** ever_swasted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
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

studyid           country                        ever_swasted024    dead624   n_cell       n
----------------  -----------------------------  ----------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                        0     6827    7164
Burkina Faso Zn   BURKINA FASO                   0                        1       35    7164
Burkina Faso Zn   BURKINA FASO                   1                        0      298    7164
Burkina Faso Zn   BURKINA FASO                   1                        1        4    7164
EE                PAKISTAN                       0                        0      293     375
EE                PAKISTAN                       0                        1        2     375
EE                PAKISTAN                       1                        0       78     375
EE                PAKISTAN                       1                        1        2     375
GMS-Nepal         NEPAL                          0                        0      419     592
GMS-Nepal         NEPAL                          0                        1        1     592
GMS-Nepal         NEPAL                          1                        0      171     592
GMS-Nepal         NEPAL                          1                        1        1     592
iLiNS-DOSE        MALAWI                         0                        0     1728    1874
iLiNS-DOSE        MALAWI                         0                        1      123    1874
iLiNS-DOSE        MALAWI                         1                        0       19    1874
iLiNS-DOSE        MALAWI                         1                        1        4    1874
iLiNS-DYAD-M      MALAWI                         0                        0     1112    1161
iLiNS-DYAD-M      MALAWI                         0                        1       21    1161
iLiNS-DYAD-M      MALAWI                         1                        0       25    1161
iLiNS-DYAD-M      MALAWI                         1                        1        3    1161
JiVitA-3          BANGLADESH                     0                        0    19476   21023
JiVitA-3          BANGLADESH                     0                        1      232   21023
JiVitA-3          BANGLADESH                     1                        0     1282   21023
JiVitA-3          BANGLADESH                     1                        1       33   21023
JiVitA-4          BANGLADESH                     0                        0     5050    5433
JiVitA-4          BANGLADESH                     0                        1       40    5433
JiVitA-4          BANGLADESH                     1                        0      334    5433
JiVitA-4          BANGLADESH                     1                        1        9    5433
Keneba            GAMBIA                         0                        0     2211    2752
Keneba            GAMBIA                         0                        1       29    2752
Keneba            GAMBIA                         1                        0      497    2752
Keneba            GAMBIA                         1                        1       15    2752
MAL-ED            BANGLADESH                     0                        0      219     240
MAL-ED            BANGLADESH                     0                        1        0     240
MAL-ED            BANGLADESH                     1                        0       21     240
MAL-ED            BANGLADESH                     1                        1        0     240
MAL-ED            INDIA                          0                        0      211     235
MAL-ED            INDIA                          0                        1        0     235
MAL-ED            INDIA                          1                        0       24     235
MAL-ED            INDIA                          1                        1        0     235
MAL-ED            PERU                           0                        0      268     273
MAL-ED            PERU                           0                        1        1     273
MAL-ED            PERU                           1                        0        4     273
MAL-ED            PERU                           1                        1        0     273
MAL-ED            SOUTH AFRICA                   0                        0      246     261
MAL-ED            SOUTH AFRICA                   0                        1        0     261
MAL-ED            SOUTH AFRICA                   1                        0       15     261
MAL-ED            SOUTH AFRICA                   1                        1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      236     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0        9     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
PROVIDE           BANGLADESH                     0                        0      577     617
PROVIDE           BANGLADESH                     0                        1        2     617
PROVIDE           BANGLADESH                     1                        0       38     617
PROVIDE           BANGLADESH                     1                        1        0     617
SAS-CompFeed      INDIA                          0                        0     1172    1389
SAS-CompFeed      INDIA                          0                        1        5    1389
SAS-CompFeed      INDIA                          1                        0      205    1389
SAS-CompFeed      INDIA                          1                        1        7    1389
SAS-FoodSuppl     INDIA                          0                        0      331     402
SAS-FoodSuppl     INDIA                          0                        1        2     402
SAS-FoodSuppl     INDIA                          1                        0       67     402
SAS-FoodSuppl     INDIA                          1                        1        2     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1948    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      148    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096
VITAMIN-A         INDIA                          0                        0     3233    3615
VITAMIN-A         INDIA                          0                        1       21    3615
VITAMIN-A         INDIA                          1                        0      351    3615
VITAMIN-A         INDIA                          1                        1       10    3615
ZVITAMBO          ZIMBABWE                       0                        0    10296   11694
ZVITAMBO          ZIMBABWE                       0                        1      311   11694
ZVITAMBO          ZIMBABWE                       1                        0      995   11694
ZVITAMBO          ZIMBABWE                       1                        1       92   11694


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
![](/tmp/9a4efc99-5bdd-4a9a-a4e8-098ab8ff6e6c/d20a9136-fb8c-4e74-bf92-aaec1c0fa804/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9a4efc99-5bdd-4a9a-a4e8-098ab8ff6e6c/d20a9136-fb8c-4e74-bf92-aaec1c0fa804/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9a4efc99-5bdd-4a9a-a4e8-098ab8ff6e6c/d20a9136-fb8c-4e74-bf92-aaec1c0fa804/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9a4efc99-5bdd-4a9a-a4e8-098ab8ff6e6c/d20a9136-fb8c-4e74-bf92-aaec1c0fa804/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0117988    0.0102797   0.0133179
JiVitA-3       BANGLADESH   1                    NA                0.0239440    0.0151572   0.0327307
JiVitA-4       BANGLADESH   0                    NA                0.0078585    0.0054449   0.0102722
JiVitA-4       BANGLADESH   1                    NA                0.0262391    0.0077658   0.0447123
Keneba         GAMBIA       0                    NA                0.0129282    0.0082504   0.0176060
Keneba         GAMBIA       1                    NA                0.0292708    0.0144611   0.0440805
SAS-CompFeed   INDIA        0                    NA                0.0042481   -0.0009729   0.0094691
SAS-CompFeed   INDIA        1                    NA                0.0330189    0.0133675   0.0526703
VITAMIN-A      INDIA        0                    NA                0.0064465    0.0036926   0.0092004
VITAMIN-A      INDIA        1                    NA                0.0308033    0.0116798   0.0499268
ZVITAMBO       ZIMBABWE     0                    NA                0.0294297    0.0262194   0.0326401
ZVITAMBO       ZIMBABWE     1                    NA                0.0815315    0.0650087   0.0980543


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0126052   0.0110619   0.0141486
JiVitA-4       BANGLADESH   NA                   NA                0.0090190   0.0064698   0.0115681
Keneba         GAMBIA       NA                   NA                0.0159884   0.0113013   0.0206755
SAS-CompFeed   INDIA        NA                   NA                0.0086393   0.0042356   0.0130430
VITAMIN-A      INDIA        NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO       ZIMBABWE     NA                   NA                0.0344621   0.0311558   0.0377684


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.029358   1.379266    2.985859
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.338921   1.549091    7.196735
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.264114   1.215449    4.217544
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.772641   1.672599   36.119813
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.778298   2.250974   10.143225
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.770377   2.201249    3.486650


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0008065    0.0002175   0.0013954
JiVitA-4       BANGLADESH   0                    NA                0.0011604   -0.0000207   0.0023415
Keneba         GAMBIA       0                    NA                0.0030602    0.0001967   0.0059237
SAS-CompFeed   INDIA        0                    NA                0.0043912    0.0008961   0.0078864
VITAMIN-A      INDIA        0                    NA                0.0021289    0.0004035   0.0038543
ZVITAMBO       ZIMBABWE     0                    NA                0.0050324    0.0034454   0.0066194


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0639777    0.0173032   0.1084354
JiVitA-4       BANGLADESH   0                    NA                0.1286636   -0.0037856   0.2436362
Keneba         GAMBIA       0                    NA                0.1914025    0.0017756   0.3450071
SAS-CompFeed   INDIA        0                    NA                0.5082838   -0.2242311   0.8025007
VITAMIN-A      INDIA        0                    NA                0.2482542    0.0424139   0.4098476
ZVITAMBO       ZIMBABWE     0                    NA                0.1460262    0.1009401   0.1888514
