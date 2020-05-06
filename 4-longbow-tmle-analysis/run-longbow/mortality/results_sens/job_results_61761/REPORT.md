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

**Intervention Variable:** ever_co06

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

studyid          country                        ever_co06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------  -----  -------  ------  -----------------
EE               PAKISTAN                       0               0      282     338  dead             
EE               PAKISTAN                       0               1        2     338  dead             
EE               PAKISTAN                       1               0       52     338  dead             
EE               PAKISTAN                       1               1        2     338  dead             
GMS-Nepal        NEPAL                          0               0      630     667  dead             
GMS-Nepal        NEPAL                          0               1        5     667  dead             
GMS-Nepal        NEPAL                          1               0       30     667  dead             
GMS-Nepal        NEPAL                          1               1        2     667  dead             
iLiNS-DYAD-M     MALAWI                         0               0      991    1031  dead             
iLiNS-DYAD-M     MALAWI                         0               1       29    1031  dead             
iLiNS-DYAD-M     MALAWI                         1               0        9    1031  dead             
iLiNS-DYAD-M     MALAWI                         1               1        2    1031  dead             
JiVitA-3         BANGLADESH                     0               0    20287   21579  dead             
JiVitA-3         BANGLADESH                     0               1      385   21579  dead             
JiVitA-3         BANGLADESH                     1               0      861   21579  dead             
JiVitA-3         BANGLADESH                     1               1       46   21579  dead             
JiVitA-4         BANGLADESH                     0               0     3163    3313  dead             
JiVitA-4         BANGLADESH                     0               1       19    3313  dead             
JiVitA-4         BANGLADESH                     1               0      129    3313  dead             
JiVitA-4         BANGLADESH                     1               1        2    3313  dead             
Keneba           GAMBIA                         0               0     1699    1777  dead             
Keneba           GAMBIA                         0               1       33    1777  dead             
Keneba           GAMBIA                         1               0       40    1777  dead             
Keneba           GAMBIA                         1               1        5    1777  dead             
MAL-ED           BANGLADESH                     0               0      246     257  dead             
MAL-ED           BANGLADESH                     0               1        2     257  dead             
MAL-ED           BANGLADESH                     1               0        9     257  dead             
MAL-ED           BANGLADESH                     1               1        0     257  dead             
MAL-ED           INDIA                          0               0      229     249  dead             
MAL-ED           INDIA                          0               1        2     249  dead             
MAL-ED           INDIA                          1               0       18     249  dead             
MAL-ED           INDIA                          1               1        0     249  dead             
MAL-ED           PERU                           0               0      293     297  dead             
MAL-ED           PERU                           0               1        2     297  dead             
MAL-ED           PERU                           1               0        2     297  dead             
MAL-ED           PERU                           1               1        0     297  dead             
MAL-ED           SOUTH AFRICA                   0               0      304     310  dead             
MAL-ED           SOUTH AFRICA                   0               1        0     310  dead             
MAL-ED           SOUTH AFRICA                   1               0        6     310  dead             
MAL-ED           SOUTH AFRICA                   1               1        0     310  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      254     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        2     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        4     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     260  dead             
PROVIDE          BANGLADESH                     0               0      658     692  dead             
PROVIDE          BANGLADESH                     0               1        4     692  dead             
PROVIDE          BANGLADESH                     1               0       30     692  dead             
PROVIDE          BANGLADESH                     1               1        0     692  dead             
SAS-CompFeed     INDIA                          0               0     1205    1313  dead             
SAS-CompFeed     INDIA                          0               1       22    1313  dead             
SAS-CompFeed     INDIA                          1               0       78    1313  dead             
SAS-CompFeed     INDIA                          1               1        8    1313  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        1       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       1  dead             
ZVITAMBO         ZIMBABWE                       0               0    11849   12918  dead             
ZVITAMBO         ZIMBABWE                       0               1      880   12918  dead             
ZVITAMBO         ZIMBABWE                       1               0      120   12918  dead             
ZVITAMBO         ZIMBABWE                       1               1       69   12918  dead             


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
![](/tmp/91d62b4f-617f-429b-b554-e49402055bf8/8c24c4f2-9086-44db-a198-de130a058d7a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91d62b4f-617f-429b-b554-e49402055bf8/8c24c4f2-9086-44db-a198-de130a058d7a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91d62b4f-617f-429b-b554-e49402055bf8/8c24c4f2-9086-44db-a198-de130a058d7a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91d62b4f-617f-429b-b554-e49402055bf8/8c24c4f2-9086-44db-a198-de130a058d7a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0186354   0.0167119   0.0205589
JiVitA-3       BANGLADESH   1                    NA                0.0556969   0.0397404   0.0716535
Keneba         GAMBIA       0                    NA                0.0190531   0.0126129   0.0254934
Keneba         GAMBIA       1                    NA                0.1111111   0.0192638   0.2029584
SAS-CompFeed   INDIA        0                    NA                0.0179299   0.0087827   0.0270771
SAS-CompFeed   INDIA        1                    NA                0.0930233   0.0445836   0.1414629
ZVITAMBO       ZIMBABWE     0                    NA                0.0692337   0.0647815   0.0736860
ZVITAMBO       ZIMBABWE     1                    NA                0.3335105   0.2897038   0.3773171


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0199731   0.0180226   0.0219237
Keneba         GAMBIA       NA                   NA                0.0213844   0.0146564   0.0281123
SAS-CompFeed   INDIA        NA                   NA                0.0228484   0.0119785   0.0337184
ZVITAMBO       ZIMBABWE     NA                   NA                0.0734634   0.0689642   0.0779626


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.988774   2.204599    4.051880
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.831650   2.387472   14.244413
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 5.188161   3.367193    7.993901
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.817168   4.162239    5.575150


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0013377    0.0007139   0.0019615
Keneba         GAMBIA       0                    NA                0.0023312   -0.0000955   0.0047579
SAS-CompFeed   INDIA        0                    NA                0.0049185    0.0010191   0.0088180
ZVITAMBO       ZIMBABWE     0                    NA                0.0042297    0.0030579   0.0054014


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0669773    0.0358881   0.0970639
Keneba         GAMBIA       0                    NA                0.1090160   -0.0062361   0.2110674
SAS-CompFeed   INDIA        0                    NA                0.2152676    0.0640407   0.3420601
ZVITAMBO       ZIMBABWE     0                    NA                0.0575751    0.0417044   0.0731830
