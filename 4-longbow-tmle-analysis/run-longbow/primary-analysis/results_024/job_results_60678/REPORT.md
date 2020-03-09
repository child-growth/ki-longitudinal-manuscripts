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

**Intervention Variable:** ever_wasted06_noBW

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

studyid           country                        ever_wasted06_noBW    dead0plus   n_cell       n
----------------  -----------------------------  -------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                             0       41      41
Burkina Faso Zn   BURKINA FASO                   0                             1        0      41
Burkina Faso Zn   BURKINA FASO                   1                             0        0      41
Burkina Faso Zn   BURKINA FASO                   1                             1        0      41
EE                PAKISTAN                       0                             0      292     375
EE                PAKISTAN                       0                             1        2     375
EE                PAKISTAN                       1                             0       79     375
EE                PAKISTAN                       1                             1        2     375
GMS-Nepal         NEPAL                          0                             0      514     642
GMS-Nepal         NEPAL                          0                             1        5     642
GMS-Nepal         NEPAL                          1                             0      122     642
GMS-Nepal         NEPAL                          1                             1        1     642
iLiNS-DOSE        MALAWI                         0                             0     1112    1182
iLiNS-DOSE        MALAWI                         0                             1       70    1182
iLiNS-DOSE        MALAWI                         1                             0        0    1182
iLiNS-DOSE        MALAWI                         1                             1        0    1182
iLiNS-DYAD-M      MALAWI                         0                             0     1055    1093
iLiNS-DYAD-M      MALAWI                         0                             1       38    1093
iLiNS-DYAD-M      MALAWI                         1                             0        0    1093
iLiNS-DYAD-M      MALAWI                         1                             1        0    1093
JiVitA-3          BANGLADESH                     0                             0    23891   26234
JiVitA-3          BANGLADESH                     0                             1      462   26234
JiVitA-3          BANGLADESH                     1                             0     1821   26234
JiVitA-3          BANGLADESH                     1                             1       60   26234
JiVitA-4          BANGLADESH                     0                             0     4793    4957
JiVitA-4          BANGLADESH                     0                             1       37    4957
JiVitA-4          BANGLADESH                     1                             0      124    4957
JiVitA-4          BANGLADESH                     1                             1        3    4957
Keneba            GAMBIA                         0                             0     2085    2424
Keneba            GAMBIA                         0                             1       68    2424
Keneba            GAMBIA                         1                             0      255    2424
Keneba            GAMBIA                         1                             1       16    2424
MAL-ED            BANGLADESH                     0                             0      241     262
MAL-ED            BANGLADESH                     0                             1        2     262
MAL-ED            BANGLADESH                     1                             0       19     262
MAL-ED            BANGLADESH                     1                             1        0     262
MAL-ED            INDIA                          0                             0      203     244
MAL-ED            INDIA                          0                             1        2     244
MAL-ED            INDIA                          1                             0       39     244
MAL-ED            INDIA                          1                             1        0     244
MAL-ED            PERU                           0                             0      295     302
MAL-ED            PERU                           0                             1        2     302
MAL-ED            PERU                           1                             0        5     302
MAL-ED            PERU                           1                             1        0     302
MAL-ED            SOUTH AFRICA                   0                             0      293     307
MAL-ED            SOUTH AFRICA                   0                             1        0     307
MAL-ED            SOUTH AFRICA                   1                             0       14     307
MAL-ED            SOUTH AFRICA                   1                             1        0     307
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      248     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       10     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        0     261
PROVIDE           BANGLADESH                     0                             0      641     683
PROVIDE           BANGLADESH                     0                             1        5     683
PROVIDE           BANGLADESH                     1                             0       37     683
PROVIDE           BANGLADESH                     1                             1        0     683
SAS-CompFeed      INDIA                          0                             0     1265    1473
SAS-CompFeed      INDIA                          0                             1       23    1473
SAS-CompFeed      INDIA                          1                             0      176    1473
SAS-CompFeed      INDIA                          1                             1        9    1473
SAS-FoodSuppl     INDIA                          0                             0      339     341
SAS-FoodSuppl     INDIA                          0                             1        2     341
SAS-FoodSuppl     INDIA                          1                             0        0     341
SAS-FoodSuppl     INDIA                          1                             1        0     341
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2171    2376
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2376
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      204    2376
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2376
VITAMIN-A         INDIA                          0                             0     3213    3301
VITAMIN-A         INDIA                          0                             1       44    3301
VITAMIN-A         INDIA                          1                             0       43    3301
VITAMIN-A         INDIA                          1                             1        1    3301
ZVITAMBO          ZIMBABWE                       0                             0    12061   13376
ZVITAMBO          ZIMBABWE                       0                             1      887   13376
ZVITAMBO          ZIMBABWE                       1                             0      367   13376
ZVITAMBO          ZIMBABWE                       1                             1       61   13376


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
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA

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
![](/tmp/0067d3a7-2f1a-4c96-9baa-04fa75d44105/26f6e4a9-f4f3-469b-bf07-16d3f7467511/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0067d3a7-2f1a-4c96-9baa-04fa75d44105/26f6e4a9-f4f3-469b-bf07-16d3f7467511/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0067d3a7-2f1a-4c96-9baa-04fa75d44105/26f6e4a9-f4f3-469b-bf07-16d3f7467511/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0067d3a7-2f1a-4c96-9baa-04fa75d44105/26f6e4a9-f4f3-469b-bf07-16d3f7467511/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0189787   0.0172724   0.0206849
JiVitA-3       BANGLADESH   1                    NA                0.0316730   0.0236295   0.0397166
Keneba         GAMBIA       0                    NA                0.0315816   0.0241896   0.0389735
Keneba         GAMBIA       1                    NA                0.0601151   0.0312866   0.0889437
SAS-CompFeed   INDIA        0                    NA                0.0178571   0.0085714   0.0271429
SAS-CompFeed   INDIA        1                    NA                0.0486486   0.0231136   0.0741837
ZVITAMBO       ZIMBABWE     0                    NA                0.0686867   0.0643238   0.0730496
ZVITAMBO       ZIMBABWE     1                    NA                0.1367588   0.1029679   0.1705497


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0198978   0.0181880   0.0216077
Keneba         GAMBIA       NA                   NA                0.0346535   0.0273709   0.0419361
SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ZVITAMBO       ZIMBABWE     NA                   NA                0.0708732   0.0665243   0.0752221


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.668874   1.280551   2.174955
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 1.903488   1.116326   3.245706
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.724324   1.242277   5.974466
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.991052   1.542588   2.569896


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0009192    0.0003439   0.0014945
Keneba         GAMBIA       0                    NA                0.0030719   -0.0001954   0.0063391
SAS-CompFeed   INDIA        0                    NA                0.0038672    0.0003615   0.0073729
ZVITAMBO       ZIMBABWE     0                    NA                0.0021865    0.0010880   0.0032850


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0461947    0.0172752   0.0742632
Keneba         GAMBIA       0                    NA                0.0886460   -0.0087750   0.1766587
SAS-CompFeed   INDIA        0                    NA                0.1780134   -0.0262276   0.3416061
ZVITAMBO       ZIMBABWE     0                    NA                0.0308510    0.0153285   0.0461288
