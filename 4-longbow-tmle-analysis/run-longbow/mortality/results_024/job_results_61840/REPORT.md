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

studyid           country                        ever_wasted06_noBW    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0       41      41  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                             1        0      41  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             0        0      41  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             1        0      41  dead0plus        
EE                PAKISTAN                       0                             0      292     375  dead0plus        
EE                PAKISTAN                       0                             1        2     375  dead0plus        
EE                PAKISTAN                       1                             0       79     375  dead0plus        
EE                PAKISTAN                       1                             1        2     375  dead0plus        
GMS-Nepal         NEPAL                          0                             0      514     642  dead0plus        
GMS-Nepal         NEPAL                          0                             1        5     642  dead0plus        
GMS-Nepal         NEPAL                          1                             0      122     642  dead0plus        
GMS-Nepal         NEPAL                          1                             1        1     642  dead0plus        
iLiNS-DOSE        MALAWI                         0                             0     1112    1182  dead0plus        
iLiNS-DOSE        MALAWI                         0                             1       70    1182  dead0plus        
iLiNS-DOSE        MALAWI                         1                             0        0    1182  dead0plus        
iLiNS-DOSE        MALAWI                         1                             1        0    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             0     1055    1093  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             1       38    1093  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             0        0    1093  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             1        0    1093  dead0plus        
JiVitA-3          BANGLADESH                     0                             0    23891   26234  dead0plus        
JiVitA-3          BANGLADESH                     0                             1      462   26234  dead0plus        
JiVitA-3          BANGLADESH                     1                             0     1821   26234  dead0plus        
JiVitA-3          BANGLADESH                     1                             1       60   26234  dead0plus        
JiVitA-4          BANGLADESH                     0                             0     4793    4957  dead0plus        
JiVitA-4          BANGLADESH                     0                             1       37    4957  dead0plus        
JiVitA-4          BANGLADESH                     1                             0      124    4957  dead0plus        
JiVitA-4          BANGLADESH                     1                             1        3    4957  dead0plus        
Keneba            GAMBIA                         0                             0     2085    2424  dead0plus        
Keneba            GAMBIA                         0                             1       68    2424  dead0plus        
Keneba            GAMBIA                         1                             0      255    2424  dead0plus        
Keneba            GAMBIA                         1                             1       16    2424  dead0plus        
MAL-ED            BANGLADESH                     0                             0      241     262  dead0plus        
MAL-ED            BANGLADESH                     0                             1        2     262  dead0plus        
MAL-ED            BANGLADESH                     1                             0       19     262  dead0plus        
MAL-ED            BANGLADESH                     1                             1        0     262  dead0plus        
MAL-ED            INDIA                          0                             0      203     244  dead0plus        
MAL-ED            INDIA                          0                             1        2     244  dead0plus        
MAL-ED            INDIA                          1                             0       39     244  dead0plus        
MAL-ED            INDIA                          1                             1        0     244  dead0plus        
MAL-ED            PERU                           0                             0      295     302  dead0plus        
MAL-ED            PERU                           0                             1        2     302  dead0plus        
MAL-ED            PERU                           1                             0        5     302  dead0plus        
MAL-ED            PERU                           1                             1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             0      293     307  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             1        0     307  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             0       14     307  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             1        0     307  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      248     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       10     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                             0      641     683  dead0plus        
PROVIDE           BANGLADESH                     0                             1        5     683  dead0plus        
PROVIDE           BANGLADESH                     1                             0       37     683  dead0plus        
PROVIDE           BANGLADESH                     1                             1        0     683  dead0plus        
SAS-CompFeed      INDIA                          0                             0     1265    1473  dead0plus        
SAS-CompFeed      INDIA                          0                             1       23    1473  dead0plus        
SAS-CompFeed      INDIA                          1                             0      176    1473  dead0plus        
SAS-CompFeed      INDIA                          1                             1        9    1473  dead0plus        
SAS-FoodSuppl     INDIA                          0                             0      339     341  dead0plus        
SAS-FoodSuppl     INDIA                          0                             1        2     341  dead0plus        
SAS-FoodSuppl     INDIA                          1                             0        0     341  dead0plus        
SAS-FoodSuppl     INDIA                          1                             1        0     341  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2171    2376  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2376  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      204    2376  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2376  dead0plus        
VITAMIN-A         INDIA                          0                             0     3213    3301  dead0plus        
VITAMIN-A         INDIA                          0                             1       44    3301  dead0plus        
VITAMIN-A         INDIA                          1                             0       43    3301  dead0plus        
VITAMIN-A         INDIA                          1                             1        1    3301  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             0    12061   13376  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             1      887   13376  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             0      367   13376  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             1       61   13376  dead0plus        


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
![](/tmp/672f9dd8-ca1b-4387-bc9f-d717776bac6e/61cd6c37-dcb9-488f-8c5b-1292ff70fb21/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/672f9dd8-ca1b-4387-bc9f-d717776bac6e/61cd6c37-dcb9-488f-8c5b-1292ff70fb21/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/672f9dd8-ca1b-4387-bc9f-d717776bac6e/61cd6c37-dcb9-488f-8c5b-1292ff70fb21/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/672f9dd8-ca1b-4387-bc9f-d717776bac6e/61cd6c37-dcb9-488f-8c5b-1292ff70fb21/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0189837   0.0172768   0.0206906
JiVitA-3       BANGLADESH   1                    NA                0.0320276   0.0239580   0.0400972
Keneba         GAMBIA       0                    NA                0.0315761   0.0241825   0.0389697
Keneba         GAMBIA       1                    NA                0.0605788   0.0316204   0.0895371
SAS-CompFeed   INDIA        0                    NA                0.0178571   0.0085714   0.0271429
SAS-CompFeed   INDIA        1                    NA                0.0486486   0.0231136   0.0741837
ZVITAMBO       ZIMBABWE     0                    NA                0.0687575   0.0643948   0.0731201
ZVITAMBO       ZIMBABWE     1                    NA                0.1317107   0.0989897   0.1644317


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
JiVitA-3       BANGLADESH   1                    0                 1.687110   1.296535   2.195342
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 1.918502   1.126622   3.266976
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.724324   1.242277   5.974466
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.915584   1.482310   2.475502


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0009141    0.0003384   0.0014899
Keneba         GAMBIA       0                    NA                0.0030774   -0.0001904   0.0063451
SAS-CompFeed   INDIA        0                    NA                0.0038672    0.0003615   0.0073729
ZVITAMBO       ZIMBABWE     0                    NA                0.0021157    0.0010235   0.0032080


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0459415    0.0169938   0.0740368
Keneba         GAMBIA       0                    NA                0.0888043   -0.0086433   0.1768372
SAS-CompFeed   INDIA        0                    NA                0.1780134   -0.0262276   0.3416061
ZVITAMBO       ZIMBABWE     0                    NA                0.0298524    0.0144184   0.0450448
