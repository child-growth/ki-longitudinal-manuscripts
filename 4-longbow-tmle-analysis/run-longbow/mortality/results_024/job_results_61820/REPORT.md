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

studyid           country                        ever_wasted06_noBW    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0       41      41  dead             
Burkina Faso Zn   BURKINA FASO                   0                        1        0      41  dead             
Burkina Faso Zn   BURKINA FASO                   1                        0        0      41  dead             
Burkina Faso Zn   BURKINA FASO                   1                        1        0      41  dead             
EE                PAKISTAN                       0                        0      292     375  dead             
EE                PAKISTAN                       0                        1        2     375  dead             
EE                PAKISTAN                       1                        0       79     375  dead             
EE                PAKISTAN                       1                        1        2     375  dead             
GMS-Nepal         NEPAL                          0                        0      514     642  dead             
GMS-Nepal         NEPAL                          0                        1        5     642  dead             
GMS-Nepal         NEPAL                          1                        0      122     642  dead             
GMS-Nepal         NEPAL                          1                        1        1     642  dead             
iLiNS-DOSE        MALAWI                         0                        0     1112    1182  dead             
iLiNS-DOSE        MALAWI                         0                        1       70    1182  dead             
iLiNS-DOSE        MALAWI                         1                        0        0    1182  dead             
iLiNS-DOSE        MALAWI                         1                        1        0    1182  dead             
iLiNS-DYAD-M      MALAWI                         0                        0     1059    1093  dead             
iLiNS-DYAD-M      MALAWI                         0                        1       34    1093  dead             
iLiNS-DYAD-M      MALAWI                         1                        0        0    1093  dead             
iLiNS-DYAD-M      MALAWI                         1                        1        0    1093  dead             
JiVitA-3          BANGLADESH                     0                        0    23917   26234  dead             
JiVitA-3          BANGLADESH                     0                        1      436   26234  dead             
JiVitA-3          BANGLADESH                     1                        0     1832   26234  dead             
JiVitA-3          BANGLADESH                     1                        1       49   26234  dead             
JiVitA-4          BANGLADESH                     0                        0     4794    4957  dead             
JiVitA-4          BANGLADESH                     0                        1       36    4957  dead             
JiVitA-4          BANGLADESH                     1                        0      124    4957  dead             
JiVitA-4          BANGLADESH                     1                        1        3    4957  dead             
Keneba            GAMBIA                         0                        0     2109    2424  dead             
Keneba            GAMBIA                         0                        1       44    2424  dead             
Keneba            GAMBIA                         1                        0      259    2424  dead             
Keneba            GAMBIA                         1                        1       12    2424  dead             
MAL-ED            BANGLADESH                     0                        0      241     262  dead             
MAL-ED            BANGLADESH                     0                        1        2     262  dead             
MAL-ED            BANGLADESH                     1                        0       19     262  dead             
MAL-ED            BANGLADESH                     1                        1        0     262  dead             
MAL-ED            INDIA                          0                        0      203     244  dead             
MAL-ED            INDIA                          0                        1        2     244  dead             
MAL-ED            INDIA                          1                        0       39     244  dead             
MAL-ED            INDIA                          1                        1        0     244  dead             
MAL-ED            PERU                           0                        0      295     302  dead             
MAL-ED            PERU                           0                        1        2     302  dead             
MAL-ED            PERU                           1                        0        5     302  dead             
MAL-ED            PERU                           1                        1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                        0      293     307  dead             
MAL-ED            SOUTH AFRICA                   0                        1        0     307  dead             
MAL-ED            SOUTH AFRICA                   1                        0       14     307  dead             
MAL-ED            SOUTH AFRICA                   1                        1        0     307  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      248     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       10     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead             
PROVIDE           BANGLADESH                     0                        0      642     683  dead             
PROVIDE           BANGLADESH                     0                        1        4     683  dead             
PROVIDE           BANGLADESH                     1                        0       37     683  dead             
PROVIDE           BANGLADESH                     1                        1        0     683  dead             
SAS-CompFeed      INDIA                          0                        0     1265    1473  dead             
SAS-CompFeed      INDIA                          0                        1       23    1473  dead             
SAS-CompFeed      INDIA                          1                        0      176    1473  dead             
SAS-CompFeed      INDIA                          1                        1        9    1473  dead             
SAS-FoodSuppl     INDIA                          0                        0      339     341  dead             
SAS-FoodSuppl     INDIA                          0                        1        2     341  dead             
SAS-FoodSuppl     INDIA                          1                        0        0     341  dead             
SAS-FoodSuppl     INDIA                          1                        1        0     341  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2171    2376  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2376  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      204    2376  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2376  dead             
VITAMIN-A         INDIA                          0                        0     3213    3301  dead             
VITAMIN-A         INDIA                          0                        1       44    3301  dead             
VITAMIN-A         INDIA                          1                        0       43    3301  dead             
VITAMIN-A         INDIA                          1                        1        1    3301  dead             
ZVITAMBO          ZIMBABWE                       0                        0    12070   13376  dead             
ZVITAMBO          ZIMBABWE                       0                        1      878   13376  dead             
ZVITAMBO          ZIMBABWE                       1                        0      367   13376  dead             
ZVITAMBO          ZIMBABWE                       1                        1       61   13376  dead             


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
![](/tmp/45a2f9c8-2219-4610-9b8b-d4bcb6ee8fcd/eb2ba427-9f1b-4255-9c61-084274cb9ad0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/45a2f9c8-2219-4610-9b8b-d4bcb6ee8fcd/eb2ba427-9f1b-4255-9c61-084274cb9ad0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/45a2f9c8-2219-4610-9b8b-d4bcb6ee8fcd/eb2ba427-9f1b-4255-9c61-084274cb9ad0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/45a2f9c8-2219-4610-9b8b-d4bcb6ee8fcd/eb2ba427-9f1b-4255-9c61-084274cb9ad0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0178955   0.0162508   0.0195402
JiVitA-3       BANGLADESH   1                    NA                0.0260674   0.0187534   0.0333813
Keneba         GAMBIA       0                    NA                0.0204038   0.0144362   0.0263714
Keneba         GAMBIA       1                    NA                0.0446379   0.0196536   0.0696222
SAS-CompFeed   INDIA        0                    NA                0.0178571   0.0085714   0.0271429
SAS-CompFeed   INDIA        1                    NA                0.0486486   0.0231136   0.0741837
ZVITAMBO       ZIMBABWE     0                    NA                0.0680325   0.0636891   0.0723759
ZVITAMBO       ZIMBABWE     1                    NA                0.1341602   0.1015626   0.1667579


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0184875   0.0168427   0.0201323
Keneba         GAMBIA       NA                   NA                0.0231023   0.0171206   0.0290840
SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ZVITAMBO       ZIMBABWE     NA                   NA                0.0702004   0.0658706   0.0745301


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.456645   1.090388   1.945925
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.187725   1.163339   4.114141
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.724324   1.242277   5.974466
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.972002   1.534012   2.535048


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0005920    0.0000696   0.0011143
Keneba         GAMBIA       0                    NA                0.0026985   -0.0001366   0.0055337
SAS-CompFeed   INDIA        0                    NA                0.0038672    0.0003615   0.0073729
ZVITAMBO       ZIMBABWE     0                    NA                0.0021679    0.0010734   0.0032623


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0320207    0.0036709   0.0595639
Keneba         GAMBIA       0                    NA                0.1168071   -0.0106701   0.2282055
SAS-CompFeed   INDIA        0                    NA                0.1780134   -0.0262276   0.3416061
ZVITAMBO       ZIMBABWE     0                    NA                0.0308812    0.0152676   0.0462471
