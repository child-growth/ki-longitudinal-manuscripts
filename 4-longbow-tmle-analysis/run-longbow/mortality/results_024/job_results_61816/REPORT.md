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

studyid           country                        ever_swasted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0     6829    7166  dead             
Burkina Faso Zn   BURKINA FASO                   0                     1       35    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                     0      298    7166  dead             
Burkina Faso Zn   BURKINA FASO                   1                     1        4    7166  dead             
EE                PAKISTAN                       0                     0      298     380  dead             
EE                PAKISTAN                       0                     1        2     380  dead             
EE                PAKISTAN                       1                     0       78     380  dead             
EE                PAKISTAN                       1                     1        2     380  dead             
GMS-Nepal         NEPAL                          0                     0      503     686  dead             
GMS-Nepal         NEPAL                          0                     1        6     686  dead             
GMS-Nepal         NEPAL                          1                     0      176     686  dead             
GMS-Nepal         NEPAL                          1                     1        1     686  dead             
iLiNS-DOSE        MALAWI                         0                     0     1784    1931  dead             
iLiNS-DOSE        MALAWI                         0                     1      124    1931  dead             
iLiNS-DOSE        MALAWI                         1                     0       19    1931  dead             
iLiNS-DOSE        MALAWI                         1                     1        4    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                     0     1138    1201  dead             
iLiNS-DYAD-M      MALAWI                         0                     1       35    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                     0       25    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                     1        3    1201  dead             
JiVitA-3          BANGLADESH                     0                     0    24807   26956  dead             
JiVitA-3          BANGLADESH                     0                     1      504   26956  dead             
JiVitA-3          BANGLADESH                     1                     0     1586   26956  dead             
JiVitA-3          BANGLADESH                     1                     1       59   26956  dead             
JiVitA-4          BANGLADESH                     0                     0     5060    5443  dead             
JiVitA-4          BANGLADESH                     0                     1       40    5443  dead             
JiVitA-4          BANGLADESH                     1                     0      334    5443  dead             
JiVitA-4          BANGLADESH                     1                     1        9    5443  dead             
Keneba            GAMBIA                         0                     0     2349    2920  dead             
Keneba            GAMBIA                         0                     1       45    2920  dead             
Keneba            GAMBIA                         1                     0      509    2920  dead             
Keneba            GAMBIA                         1                     1       17    2920  dead             
MAL-ED            BANGLADESH                     0                     0      240     263  dead             
MAL-ED            BANGLADESH                     0                     1        2     263  dead             
MAL-ED            BANGLADESH                     1                     0       21     263  dead             
MAL-ED            BANGLADESH                     1                     1        0     263  dead             
MAL-ED            INDIA                          0                     0      223     251  dead             
MAL-ED            INDIA                          0                     1        2     251  dead             
MAL-ED            INDIA                          1                     0       26     251  dead             
MAL-ED            INDIA                          1                     1        0     251  dead             
MAL-ED            PERU                           0                     0      296     302  dead             
MAL-ED            PERU                           0                     1        2     302  dead             
MAL-ED            PERU                           1                     0        4     302  dead             
MAL-ED            PERU                           1                     1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                     0      296     312  dead             
MAL-ED            SOUTH AFRICA                   0                     1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                     0       16     312  dead             
MAL-ED            SOUTH AFRICA                   1                     1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      249     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0        9     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        0     261  dead             
PROVIDE           BANGLADESH                     0                     0      654     700  dead             
PROVIDE           BANGLADESH                     0                     1        4     700  dead             
PROVIDE           BANGLADESH                     1                     0       42     700  dead             
PROVIDE           BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed      INDIA                          0                     0     1267    1513  dead             
SAS-CompFeed      INDIA                          0                     1       23    1513  dead             
SAS-CompFeed      INDIA                          1                     0      209    1513  dead             
SAS-CompFeed      INDIA                          1                     1       14    1513  dead             
SAS-FoodSuppl     INDIA                          0                     0      344     418  dead             
SAS-FoodSuppl     INDIA                          0                     1        3     418  dead             
SAS-FoodSuppl     INDIA                          1                     0       68     418  dead             
SAS-FoodSuppl     INDIA                          1                     1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2237    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      158    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
VITAMIN-A         INDIA                          0                     0     3461    3904  dead             
VITAMIN-A         INDIA                          0                     1       55    3904  dead             
VITAMIN-A         INDIA                          1                     0      368    3904  dead             
VITAMIN-A         INDIA                          1                     1       20    3904  dead             
ZVITAMBO          ZIMBABWE                       0                     0    11791   13946  dead             
ZVITAMBO          ZIMBABWE                       0                     1      869   13946  dead             
ZVITAMBO          ZIMBABWE                       1                     0     1102   13946  dead             
ZVITAMBO          ZIMBABWE                       1                     1      184   13946  dead             


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
![](/tmp/fc91c40d-5313-4a9f-9081-c38d02806ba2/dbd26ecb-45f2-42a4-a7ec-587d8561159d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc91c40d-5313-4a9f-9081-c38d02806ba2/dbd26ecb-45f2-42a4-a7ec-587d8561159d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc91c40d-5313-4a9f-9081-c38d02806ba2/dbd26ecb-45f2-42a4-a7ec-587d8561159d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc91c40d-5313-4a9f-9081-c38d02806ba2/dbd26ecb-45f2-42a4-a7ec-587d8561159d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0199375   0.0182030   0.0216719
JiVitA-3       BANGLADESH   1                    NA                0.0356228   0.0258992   0.0453465
JiVitA-4       BANGLADESH   0                    NA                0.0078431   0.0054298   0.0102565
JiVitA-4       BANGLADESH   1                    NA                0.0262391   0.0077322   0.0447460
Keneba         GAMBIA       0                    NA                0.0188093   0.0133660   0.0242527
Keneba         GAMBIA       1                    NA                0.0321806   0.0168660   0.0474951
SAS-CompFeed   INDIA        0                    NA                0.0178502   0.0092046   0.0264958
SAS-CompFeed   INDIA        1                    NA                0.0599053   0.0112952   0.1085154
VITAMIN-A      INDIA        0                    NA                0.0155998   0.0115000   0.0196996
VITAMIN-A      INDIA        1                    NA                0.0522192   0.0300683   0.0743701
ZVITAMBO       ZIMBABWE     0                    NA                0.0688446   0.0644459   0.0732433
ZVITAMBO       ZIMBABWE     1                    NA                0.1390993   0.1200436   0.1581550


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0208859   0.0191395   0.0226323
JiVitA-4       BANGLADESH   NA                   NA                0.0090024   0.0064532   0.0115515
Keneba         GAMBIA       NA                   NA                0.0212329   0.0160032   0.0264626
SAS-CompFeed   INDIA        NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A      INDIA        NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO       ZIMBABWE     NA                   NA                0.0755055   0.0711204   0.0798906


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.786730   1.346108   2.371580
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.345481   1.549953   7.221019
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 1.710882   0.980182   2.986299
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.356004   1.431339   7.868686
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.347427   2.032416   5.513274
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.020482   1.737926   2.348977


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0009484    0.0003582   0.0015387
JiVitA-4       BANGLADESH   0                    NA                0.0011593   -0.0000218   0.0023403
Keneba         GAMBIA       0                    NA                0.0024235   -0.0004778   0.0053249
SAS-CompFeed   INDIA        0                    NA                0.0066045   -0.0005475   0.0137566
VITAMIN-A      INDIA        0                    NA                0.0036113    0.0013625   0.0058600
ZVITAMBO       ZIMBABWE     0                    NA                0.0066609    0.0048427   0.0084791


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0454101    0.0172092   0.0728018
JiVitA-4       BANGLADESH   0                    NA                0.1287715   -0.0039238   0.2439276
Keneba         GAMBIA       0                    NA                0.1141404   -0.0303187   0.2383452
SAS-CompFeed   INDIA        0                    NA                0.2700717   -0.0083139   0.4715977
VITAMIN-A      INDIA        0                    NA                0.1879784    0.0706128   0.2905228
ZVITAMBO       ZIMBABWE     0                    NA                0.0882172    0.0643126   0.1115110
