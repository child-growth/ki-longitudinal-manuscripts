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

studyid          country                        ever_swasted06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                    0      297     338  dead             
EE               PAKISTAN                       0                    1        4     338  dead             
EE               PAKISTAN                       1                    0       37     338  dead             
EE               PAKISTAN                       1                    1        0     338  dead             
GMS-Nepal        NEPAL                          0                    0      583     667  dead             
GMS-Nepal        NEPAL                          0                    1        7     667  dead             
GMS-Nepal        NEPAL                          1                    0       77     667  dead             
GMS-Nepal        NEPAL                          1                    1        0     667  dead             
iLiNS-DYAD-M     MALAWI                         0                    0      990    1031  dead             
iLiNS-DYAD-M     MALAWI                         0                    1       31    1031  dead             
iLiNS-DYAD-M     MALAWI                         1                    0       10    1031  dead             
iLiNS-DYAD-M     MALAWI                         1                    1        0    1031  dead             
JiVitA-3         BANGLADESH                     0                    0    20104   21579  dead             
JiVitA-3         BANGLADESH                     0                    1      392   21579  dead             
JiVitA-3         BANGLADESH                     1                    0     1044   21579  dead             
JiVitA-3         BANGLADESH                     1                    1       39   21579  dead             
JiVitA-4         BANGLADESH                     0                    0     3197    3313  dead             
JiVitA-4         BANGLADESH                     0                    1       18    3313  dead             
JiVitA-4         BANGLADESH                     1                    0       95    3313  dead             
JiVitA-4         BANGLADESH                     1                    1        3    3313  dead             
Keneba           GAMBIA                         0                    0     1545    1778  dead             
Keneba           GAMBIA                         0                    1       33    1778  dead             
Keneba           GAMBIA                         1                    0      195    1778  dead             
Keneba           GAMBIA                         1                    1        5    1778  dead             
MAL-ED           BANGLADESH                     0                    0      239     257  dead             
MAL-ED           BANGLADESH                     0                    1        2     257  dead             
MAL-ED           BANGLADESH                     1                    0       16     257  dead             
MAL-ED           BANGLADESH                     1                    1        0     257  dead             
MAL-ED           INDIA                          0                    0      225     249  dead             
MAL-ED           INDIA                          0                    1        2     249  dead             
MAL-ED           INDIA                          1                    0       22     249  dead             
MAL-ED           INDIA                          1                    1        0     249  dead             
MAL-ED           PERU                           0                    0      294     297  dead             
MAL-ED           PERU                           0                    1        2     297  dead             
MAL-ED           PERU                           1                    0        1     297  dead             
MAL-ED           PERU                           1                    1        0     297  dead             
MAL-ED           SOUTH AFRICA                   0                    0      302     310  dead             
MAL-ED           SOUTH AFRICA                   0                    1        0     310  dead             
MAL-ED           SOUTH AFRICA                   1                    0        8     310  dead             
MAL-ED           SOUTH AFRICA                   1                    1        0     310  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      253     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        2     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        5     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     260  dead             
PROVIDE          BANGLADESH                     0                    0      659     692  dead             
PROVIDE          BANGLADESH                     0                    1        4     692  dead             
PROVIDE          BANGLADESH                     1                    0       29     692  dead             
PROVIDE          BANGLADESH                     1                    1        0     692  dead             
SAS-CompFeed     INDIA                          0                    0     1198    1313  dead             
SAS-CompFeed     INDIA                          0                    1       21    1313  dead             
SAS-CompFeed     INDIA                          1                    0       85    1313  dead             
SAS-CompFeed     INDIA                          1                    1        9    1313  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        1       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        0       1  dead             
ZVITAMBO         ZIMBABWE                       0                    0    11112   12918  dead             
ZVITAMBO         ZIMBABWE                       0                    1      816   12918  dead             
ZVITAMBO         ZIMBABWE                       1                    0      857   12918  dead             
ZVITAMBO         ZIMBABWE                       1                    1      133   12918  dead             


The following strata were considered:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
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
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-4, country: BANGLADESH
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
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
![](/tmp/7c2177d5-8847-43ad-aaef-8c7531c760a5/73702d94-7fee-42bb-8b80-40a9b0000e4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c2177d5-8847-43ad-aaef-8c7531c760a5/73702d94-7fee-42bb-8b80-40a9b0000e4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c2177d5-8847-43ad-aaef-8c7531c760a5/73702d94-7fee-42bb-8b80-40a9b0000e4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c2177d5-8847-43ad-aaef-8c7531c760a5/73702d94-7fee-42bb-8b80-40a9b0000e4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0191372   0.0172268   0.0210477
JiVitA-3       BANGLADESH   1                    NA                0.0358120   0.0241129   0.0475110
Keneba         GAMBIA       0                    NA                0.0209125   0.0138505   0.0279746
Keneba         GAMBIA       1                    NA                0.0250000   0.0033565   0.0466435
SAS-CompFeed   INDIA        0                    NA                0.0172272   0.0093464   0.0251081
SAS-CompFeed   INDIA        1                    NA                0.0957447   0.0382189   0.1532705
ZVITAMBO       ZIMBABWE     0                    NA                0.0685643   0.0640385   0.0730901
ZVITAMBO       ZIMBABWE     1                    NA                0.1283676   0.1075333   0.1492018


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0199731   0.0180226   0.0219237
Keneba         GAMBIA       NA                   NA                0.0213723   0.0146482   0.0280965
SAS-CompFeed   INDIA        NA                   NA                0.0228484   0.0119785   0.0337184
ZVITAMBO       ZIMBABWE     NA                   NA                0.0734634   0.0689642   0.0779626


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.871323   1.3414552   2.610486
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.195455   0.4720152   3.027681
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 5.557751   3.1813677   9.709218
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.872221   1.5720273   2.229740


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0008359    0.0002581   0.0014136
Keneba         GAMBIA       0                    NA                0.0004598   -0.0021018   0.0030214
SAS-CompFeed   INDIA        0                    NA                0.0056212    0.0007914   0.0104510
ZVITAMBO       ZIMBABWE     0                    NA                0.0048991    0.0032336   0.0065646


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0418502    0.0131054   0.0697578
Keneba         GAMBIA       0                    NA                0.0215129   -0.1057867   0.1341576
SAS-CompFeed   INDIA        0                    NA                0.2460213    0.0863451   0.3777915
ZVITAMBO       ZIMBABWE     0                    NA                0.0666873    0.0440713   0.0887682
