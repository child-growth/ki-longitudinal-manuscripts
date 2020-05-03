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

studyid           country                        ever_swasted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     6821    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                          1       43    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          0      297    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          1        5    7166  dead0plus        
EE                PAKISTAN                       0                          0      298     380  dead0plus        
EE                PAKISTAN                       0                          1        2     380  dead0plus        
EE                PAKISTAN                       1                          0       78     380  dead0plus        
EE                PAKISTAN                       1                          1        2     380  dead0plus        
GMS-Nepal         NEPAL                          0                          0      503     686  dead0plus        
GMS-Nepal         NEPAL                          0                          1        6     686  dead0plus        
GMS-Nepal         NEPAL                          1                          0      176     686  dead0plus        
GMS-Nepal         NEPAL                          1                          1        1     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                          0     1784    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                          1      124    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          0       19    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                          1        4    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          0     1135    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          1       38    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          0       24    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          1        4    1201  dead0plus        
JiVitA-3          BANGLADESH                     0                          0    24773   26956  dead0plus        
JiVitA-3          BANGLADESH                     0                          1      538   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                          0     1580   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                          1       65   26956  dead0plus        
JiVitA-4          BANGLADESH                     0                          0     5059    5443  dead0plus        
JiVitA-4          BANGLADESH                     0                          1       41    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                          0      334    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                          1        9    5443  dead0plus        
Keneba            GAMBIA                         0                          0     2323    2920  dead0plus        
Keneba            GAMBIA                         0                          1       71    2920  dead0plus        
Keneba            GAMBIA                         1                          0      500    2920  dead0plus        
Keneba            GAMBIA                         1                          1       26    2920  dead0plus        
MAL-ED            BANGLADESH                     0                          0      240     263  dead0plus        
MAL-ED            BANGLADESH                     0                          1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                          0       21     263  dead0plus        
MAL-ED            BANGLADESH                     1                          1        0     263  dead0plus        
MAL-ED            INDIA                          0                          0      223     251  dead0plus        
MAL-ED            INDIA                          0                          1        2     251  dead0plus        
MAL-ED            INDIA                          1                          0       26     251  dead0plus        
MAL-ED            INDIA                          1                          1        0     251  dead0plus        
MAL-ED            PERU                           0                          0      296     302  dead0plus        
MAL-ED            PERU                           0                          1        2     302  dead0plus        
MAL-ED            PERU                           1                          0        4     302  dead0plus        
MAL-ED            PERU                           1                          1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          0      296     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          0       16     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      249     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0        9     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                          0      653     700  dead0plus        
PROVIDE           BANGLADESH                     0                          1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                          0       42     700  dead0plus        
PROVIDE           BANGLADESH                     1                          1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                          0     1267    1513  dead0plus        
SAS-CompFeed      INDIA                          0                          1       23    1513  dead0plus        
SAS-CompFeed      INDIA                          1                          0      209    1513  dead0plus        
SAS-CompFeed      INDIA                          1                          1       14    1513  dead0plus        
SAS-FoodSuppl     INDIA                          0                          0      344     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                          1        3     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          0       68     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          1        3     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2237    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      158    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                          0     3461    3904  dead0plus        
VITAMIN-A         INDIA                          0                          1       55    3904  dead0plus        
VITAMIN-A         INDIA                          1                          0      368    3904  dead0plus        
VITAMIN-A         INDIA                          1                          1       20    3904  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          0    11783   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          1      877   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          0     1101   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          1      185   13946  dead0plus        


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
![](/tmp/da1d9229-139d-47bf-a5ce-5b76a329d803/d05800b5-4908-40e6-a123-3243e3a8e07b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da1d9229-139d-47bf-a5ce-5b76a329d803/d05800b5-4908-40e6-a123-3243e3a8e07b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da1d9229-139d-47bf-a5ce-5b76a329d803/d05800b5-4908-40e6-a123-3243e3a8e07b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da1d9229-139d-47bf-a5ce-5b76a329d803/d05800b5-4908-40e6-a123-3243e3a8e07b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0062646   0.0043979   0.0081313
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0165563   0.0021640   0.0309486
JiVitA-3          BANGLADESH     0                    NA                0.0212887   0.0194883   0.0230890
JiVitA-3          BANGLADESH     1                    NA                0.0391510   0.0289950   0.0493069
JiVitA-4          BANGLADESH     0                    NA                0.0080392   0.0055796   0.0104989
JiVitA-4          BANGLADESH     1                    NA                0.0262391   0.0077322   0.0447460
Keneba            GAMBIA         0                    NA                0.0296616   0.0228596   0.0364635
Keneba            GAMBIA         1                    NA                0.0488992   0.0302990   0.0674995
SAS-CompFeed      INDIA          0                    NA                0.0178502   0.0092046   0.0264958
SAS-CompFeed      INDIA          1                    NA                0.0599053   0.0112952   0.1085154
VITAMIN-A         INDIA          0                    NA                0.0155939   0.0114930   0.0196948
VITAMIN-A         INDIA          1                    NA                0.0521708   0.0301217   0.0742198
ZVITAMBO          ZIMBABWE       0                    NA                0.0695341   0.0651155   0.0739527
ZVITAMBO          ZIMBABWE       1                    NA                0.1393267   0.1202925   0.1583609


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
JiVitA-3          BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ---------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.642846   1.054333   6.624698
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.839050   1.402277   2.411865
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.263884   1.513196   7.040024
Keneba            GAMBIA         0                    0                 1.000000   1.000000   1.000000
Keneba            GAMBIA         1                    0                 1.648572   1.057163   2.570833
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.356004   1.431339   7.868686
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.345585   2.034096   5.502660
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.003718   1.724378   2.328310


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004337   -0.0001798   0.0010472
JiVitA-3          BANGLADESH     0                    NA                0.0010811    0.0004692   0.0016930
JiVitA-4          BANGLADESH     0                    NA                0.0011469   -0.0000345   0.0023283
Keneba            GAMBIA         0                    NA                0.0035576   -0.0000127   0.0071280
SAS-CompFeed      INDIA          0                    NA                0.0066045   -0.0005475   0.0137566
VITAMIN-A         INDIA          0                    NA                0.0036171    0.0013702   0.0058641
ZVITAMBO          ZIMBABWE       0                    NA                0.0066168    0.0047969   0.0084368


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0647521   -0.0294726   0.1503527
JiVitA-3          BANGLADESH     0                    NA                0.0483285    0.0209553   0.0749365
JiVitA-4          BANGLADESH     0                    NA                0.1248510   -0.0054813   0.2382893
Keneba            GAMBIA         0                    NA                0.1070951   -0.0049540   0.2066511
SAS-CompFeed      INDIA          0                    NA                0.2700717   -0.0083139   0.4715977
VITAMIN-A         INDIA          0                    NA                0.1882844    0.0709833   0.2907747
ZVITAMBO          ZIMBABWE       0                    NA                0.0868907    0.0631582   0.1100220
