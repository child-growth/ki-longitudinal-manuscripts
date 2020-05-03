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

studyid           country                        ever_swasted06_noBW    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                              0       41      41  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                              1        0      41  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              0        0      41  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              1        0      41  dead0plus        
EE                PAKISTAN                       0                              0      351     375  dead0plus        
EE                PAKISTAN                       0                              1        4     375  dead0plus        
EE                PAKISTAN                       1                              0       20     375  dead0plus        
EE                PAKISTAN                       1                              1        0     375  dead0plus        
GMS-Nepal         NEPAL                          0                              0      605     642  dead0plus        
GMS-Nepal         NEPAL                          0                              1        6     642  dead0plus        
GMS-Nepal         NEPAL                          1                              0       31     642  dead0plus        
GMS-Nepal         NEPAL                          1                              1        0     642  dead0plus        
iLiNS-DOSE        MALAWI                         0                              0     1112    1182  dead0plus        
iLiNS-DOSE        MALAWI                         0                              1       70    1182  dead0plus        
iLiNS-DOSE        MALAWI                         1                              0        0    1182  dead0plus        
iLiNS-DOSE        MALAWI                         1                              1        0    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              0     1055    1093  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              1       38    1093  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              0        0    1093  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              1        0    1093  dead0plus        
JiVitA-3          BANGLADESH                     0                              0    25294   26234  dead0plus        
JiVitA-3          BANGLADESH                     0                              1      505   26234  dead0plus        
JiVitA-3          BANGLADESH                     1                              0      418   26234  dead0plus        
JiVitA-3          BANGLADESH                     1                              1       17   26234  dead0plus        
JiVitA-4          BANGLADESH                     0                              0     4897    4957  dead0plus        
JiVitA-4          BANGLADESH                     0                              1       39    4957  dead0plus        
JiVitA-4          BANGLADESH                     1                              0       20    4957  dead0plus        
JiVitA-4          BANGLADESH                     1                              1        1    4957  dead0plus        
Keneba            GAMBIA                         0                              0     2253    2424  dead0plus        
Keneba            GAMBIA                         0                              1       76    2424  dead0plus        
Keneba            GAMBIA                         1                              0       87    2424  dead0plus        
Keneba            GAMBIA                         1                              1        8    2424  dead0plus        
MAL-ED            BANGLADESH                     0                              0      253     262  dead0plus        
MAL-ED            BANGLADESH                     0                              1        2     262  dead0plus        
MAL-ED            BANGLADESH                     1                              0        7     262  dead0plus        
MAL-ED            BANGLADESH                     1                              1        0     262  dead0plus        
MAL-ED            INDIA                          0                              0      235     244  dead0plus        
MAL-ED            INDIA                          0                              1        2     244  dead0plus        
MAL-ED            INDIA                          1                              0        7     244  dead0plus        
MAL-ED            INDIA                          1                              1        0     244  dead0plus        
MAL-ED            PERU                           0                              0      299     302  dead0plus        
MAL-ED            PERU                           0                              1        2     302  dead0plus        
MAL-ED            PERU                           1                              0        1     302  dead0plus        
MAL-ED            PERU                           1                              1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              0      304     307  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              1        0     307  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              0        3     307  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              1        0     307  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      255     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                              0      672     683  dead0plus        
PROVIDE           BANGLADESH                     0                              1        5     683  dead0plus        
PROVIDE           BANGLADESH                     1                              0        6     683  dead0plus        
PROVIDE           BANGLADESH                     1                              1        0     683  dead0plus        
SAS-CompFeed      INDIA                          0                              0     1401    1473  dead0plus        
SAS-CompFeed      INDIA                          0                              1       26    1473  dead0plus        
SAS-CompFeed      INDIA                          1                              0       40    1473  dead0plus        
SAS-CompFeed      INDIA                          1                              1        6    1473  dead0plus        
SAS-FoodSuppl     INDIA                          0                              0      339     341  dead0plus        
SAS-FoodSuppl     INDIA                          0                              1        2     341  dead0plus        
SAS-FoodSuppl     INDIA                          1                              0        0     341  dead0plus        
SAS-FoodSuppl     INDIA                          1                              1        0     341  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2333    2376  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2376  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       42    2376  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2376  dead0plus        
VITAMIN-A         INDIA                          0                              0     3253    3301  dead0plus        
VITAMIN-A         INDIA                          0                              1       45    3301  dead0plus        
VITAMIN-A         INDIA                          1                              0        3    3301  dead0plus        
VITAMIN-A         INDIA                          1                              1        0    3301  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              0    12319   13376  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              1      925   13376  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              0      109   13376  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              1       23   13376  dead0plus        


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
![](/tmp/6dc56679-48a1-4b82-a3c9-a68e0472a0a0/f5191530-acfc-4112-a61e-4f98186481c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6dc56679-48a1-4b82-a3c9-a68e0472a0a0/f5191530-acfc-4112-a61e-4f98186481c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6dc56679-48a1-4b82-a3c9-a68e0472a0a0/f5191530-acfc-4112-a61e-4f98186481c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6dc56679-48a1-4b82-a3c9-a68e0472a0a0/f5191530-acfc-4112-a61e-4f98186481c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0195776   0.0178580   0.0212973
JiVitA-3       BANGLADESH   1                    NA                0.0386181   0.0258483   0.0513879
Keneba         GAMBIA       0                    NA                0.0326320   0.0254148   0.0398493
Keneba         GAMBIA       1                    NA                0.0842105   0.0283562   0.1400649
SAS-CompFeed   INDIA        0                    NA                0.0182200   0.0089631   0.0274770
SAS-CompFeed   INDIA        1                    NA                0.1304348   0.0352161   0.2256534
ZVITAMBO       ZIMBABWE     0                    NA                0.0698244   0.0654148   0.0742340
ZVITAMBO       ZIMBABWE     1                    NA                0.1727287   0.1468767   0.1985808


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0198978   0.0181880   0.0216077
Keneba         GAMBIA       NA                   NA                0.0346535   0.0273709   0.0419361
SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ZVITAMBO       ZIMBABWE     NA                   NA                0.0708732   0.0665243   0.0752221


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 1.972561   1.402097    2.775127
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.580609   1.282552    5.192416
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.158863   2.590290   19.785166
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.473759   2.102837    2.910109


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0003202   -0.0000019   0.0006423
Keneba         GAMBIA       0                    NA                0.0020214   -0.0002215   0.0042643
SAS-CompFeed   INDIA        0                    NA                0.0035043    0.0009152   0.0060935
ZVITAMBO       ZIMBABWE     0                    NA                0.0010488    0.0003765   0.0017212


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0160920   -0.0001993   0.0321179
Keneba         GAMBIA       0                    NA                0.0583328   -0.0074983   0.1198625
SAS-CompFeed   INDIA        0                    NA                0.1613087   -0.0013692   0.2975587
ZVITAMBO       ZIMBABWE     0                    NA                0.0147986    0.0052099   0.0242949
