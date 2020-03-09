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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_swasted06

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

studyid           country                        ever_swasted06    dead   n_cell       n
----------------  -----------------------------  ---------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                    0      328     338
Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
Burkina Faso Zn   BURKINA FASO                   1                    0        8     338
Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
EE                PAKISTAN                       0                    0      337     380
EE                PAKISTAN                       0                    1        4     380
EE                PAKISTAN                       1                    0       39     380
EE                PAKISTAN                       1                    1        0     380
GMS-Nepal         NEPAL                          0                    0      600     686
GMS-Nepal         NEPAL                          0                    1        7     686
GMS-Nepal         NEPAL                          1                    0       79     686
GMS-Nepal         NEPAL                          1                    1        0     686
iLiNS-DOSE        MALAWI                         0                    0     1699    1814
iLiNS-DOSE        MALAWI                         0                    1      113    1814
iLiNS-DOSE        MALAWI                         1                    0        1    1814
iLiNS-DOSE        MALAWI                         1                    1        1    1814
iLiNS-DYAD-M      MALAWI                         0                    0     1132    1182
iLiNS-DYAD-M      MALAWI                         0                    1       36    1182
iLiNS-DYAD-M      MALAWI                         1                    0       12    1182
iLiNS-DYAD-M      MALAWI                         1                    1        2    1182
JiVitA-3          BANGLADESH                     0                    0    25129   26918
JiVitA-3          BANGLADESH                     0                    1      508   26918
JiVitA-3          BANGLADESH                     1                    0     1228   26918
JiVitA-3          BANGLADESH                     1                    1       53   26918
JiVitA-4          BANGLADESH                     0                    0     5076    5252
JiVitA-4          BANGLADESH                     0                    1       42    5252
JiVitA-4          BANGLADESH                     1                    0      129    5252
JiVitA-4          BANGLADESH                     1                    1        5    5252
Keneba            GAMBIA                         0                    0     2199    2480
Keneba            GAMBIA                         0                    1       45    2480
Keneba            GAMBIA                         1                    0      224    2480
Keneba            GAMBIA                         1                    1       12    2480
MAL-ED            BANGLADESH                     0                    0      245     263
MAL-ED            BANGLADESH                     0                    1        2     263
MAL-ED            BANGLADESH                     1                    0       16     263
MAL-ED            BANGLADESH                     1                    1        0     263
MAL-ED            INDIA                          0                    0      226     251
MAL-ED            INDIA                          0                    1        2     251
MAL-ED            INDIA                          1                    0       23     251
MAL-ED            INDIA                          1                    1        0     251
MAL-ED            PERU                           0                    0      299     302
MAL-ED            PERU                           0                    1        2     302
MAL-ED            PERU                           1                    0        1     302
MAL-ED            PERU                           1                    1        0     302
MAL-ED            SOUTH AFRICA                   0                    0      304     312
MAL-ED            SOUTH AFRICA                   0                    1        0     312
MAL-ED            SOUTH AFRICA                   1                    0        8     312
MAL-ED            SOUTH AFRICA                   1                    1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      253     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0        5     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
PROVIDE           BANGLADESH                     0                    0      667     700
PROVIDE           BANGLADESH                     0                    1        4     700
PROVIDE           BANGLADESH                     1                    0       29     700
PROVIDE           BANGLADESH                     1                    1        0     700
SAS-CompFeed      INDIA                          0                    0     1378    1508
SAS-CompFeed      INDIA                          0                    1       26    1508
SAS-CompFeed      INDIA                          1                    0       94    1508
SAS-CompFeed      INDIA                          1                    1       10    1508
SAS-FoodSuppl     INDIA                          0                    0      385     418
SAS-FoodSuppl     INDIA                          0                    1        3     418
SAS-FoodSuppl     INDIA                          1                    0       27     418
SAS-FoodSuppl     INDIA                          1                    1        3     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2310    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       85    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
VITAMIN-A         INDIA                          0                    0     3588    3895
VITAMIN-A         INDIA                          0                    1       55    3895
VITAMIN-A         INDIA                          1                    0      232    3895
VITAMIN-A         INDIA                          1                    1       20    3895
ZVITAMBO          ZIMBABWE                       0                    0    11948   13862
ZVITAMBO          ZIMBABWE                       0                    1      905   13862
ZVITAMBO          ZIMBABWE                       1                    0      867   13862
ZVITAMBO          ZIMBABWE                       1                    1      142   13862


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




# Results Detail

## Results Plots
![](/tmp/1c99c7fe-fc62-4c0d-8a84-18f3957bfbf9/68320cfd-2c74-4c2e-9cc4-8991cd6dad0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1c99c7fe-fc62-4c0d-8a84-18f3957bfbf9/68320cfd-2c74-4c2e-9cc4-8991cd6dad0c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1c99c7fe-fc62-4c0d-8a84-18f3957bfbf9/68320cfd-2c74-4c2e-9cc4-8991cd6dad0c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1c99c7fe-fc62-4c0d-8a84-18f3957bfbf9/68320cfd-2c74-4c2e-9cc4-8991cd6dad0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0198136    0.0181105   0.0215168
JiVitA-3       BANGLADESH   1                    NA                0.0415894    0.0300287   0.0531501
JiVitA-4       BANGLADESH   0                    NA                0.0082063    0.0056243   0.0107884
JiVitA-4       BANGLADESH   1                    NA                0.0373134   -0.0014001   0.0760270
Keneba         GAMBIA       0                    NA                0.0200301    0.0142319   0.0258283
Keneba         GAMBIA       1                    NA                0.0506759    0.0217075   0.0796442
SAS-CompFeed   INDIA        0                    NA                0.0184168    0.0099814   0.0268522
SAS-CompFeed   INDIA        1                    NA                0.0997774    0.0427327   0.1568220
VITAMIN-A      INDIA        0                    NA                0.0150689    0.0111130   0.0190248
VITAMIN-A      INDIA        1                    NA                0.0818862    0.0474034   0.1163690
ZVITAMBO       ZIMBABWE     0                    NA                0.0706255    0.0662057   0.0750453
ZVITAMBO       ZIMBABWE     1                    NA                0.1368145    0.1156719   0.1579571


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
JiVitA-4       BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597
Keneba         GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.099028   1.580658    2.787395
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.546908   1.538202   13.440613
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.529986   1.332966    4.801947
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 5.417738   2.810250   10.444580
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.434116   3.308901    8.924298
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.937182   1.640447    2.287592


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0010274    0.0004867   0.0015682
JiVitA-4       BANGLADESH   0                    NA                0.0007426   -0.0002615   0.0017468
Keneba         GAMBIA       0                    NA                0.0029538    0.0002060   0.0057016
SAS-CompFeed   INDIA        0                    NA                0.0054559    0.0010694   0.0098424
VITAMIN-A      INDIA        0                    NA                0.0041865    0.0019592   0.0064139
ZVITAMBO       ZIMBABWE     0                    NA                0.0049047    0.0033093   0.0065001


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0492984    0.0236728   0.0742515
JiVitA-4       BANGLADESH   0                    NA                0.0829862   -0.0306227   0.1840717
Keneba         GAMBIA       0                    NA                0.1285151    0.0054203   0.2363751
SAS-CompFeed   INDIA        0                    NA                0.2285409    0.0788069   0.3539367
VITAMIN-A      INDIA        0                    NA                0.2174214    0.1046531   0.3159865
ZVITAMBO       ZIMBABWE     0                    NA                0.0649370    0.0438808   0.0855295
