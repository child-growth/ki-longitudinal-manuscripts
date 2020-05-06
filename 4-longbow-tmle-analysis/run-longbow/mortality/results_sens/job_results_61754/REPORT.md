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

**Intervention Variable:** ever_wasted06

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

studyid          country                        ever_wasted06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                   0      216     338  dead             
EE               PAKISTAN                       0                   1        2     338  dead             
EE               PAKISTAN                       1                   0      118     338  dead             
EE               PAKISTAN                       1                   1        2     338  dead             
GMS-Nepal        NEPAL                          0                   0      411     667  dead             
GMS-Nepal        NEPAL                          0                   1        5     667  dead             
GMS-Nepal        NEPAL                          1                   0      249     667  dead             
GMS-Nepal        NEPAL                          1                   1        2     667  dead             
iLiNS-DYAD-M     MALAWI                         0                   0      953    1031  dead             
iLiNS-DYAD-M     MALAWI                         0                   1       29    1031  dead             
iLiNS-DYAD-M     MALAWI                         1                   0       47    1031  dead             
iLiNS-DYAD-M     MALAWI                         1                   1        2    1031  dead             
JiVitA-3         BANGLADESH                     0                   0    16633   21579  dead             
JiVitA-3         BANGLADESH                     0                   1      319   21579  dead             
JiVitA-3         BANGLADESH                     1                   0     4515   21579  dead             
JiVitA-3         BANGLADESH                     1                   1      112   21579  dead             
JiVitA-4         BANGLADESH                     0                   0     2772    3313  dead             
JiVitA-4         BANGLADESH                     0                   1       14    3313  dead             
JiVitA-4         BANGLADESH                     1                   0      520    3313  dead             
JiVitA-4         BANGLADESH                     1                   1        7    3313  dead             
Keneba           GAMBIA                         0                   0     1178    1778  dead             
Keneba           GAMBIA                         0                   1       24    1778  dead             
Keneba           GAMBIA                         1                   0      562    1778  dead             
Keneba           GAMBIA                         1                   1       14    1778  dead             
MAL-ED           BANGLADESH                     0                   0      196     257  dead             
MAL-ED           BANGLADESH                     0                   1        2     257  dead             
MAL-ED           BANGLADESH                     1                   0       59     257  dead             
MAL-ED           BANGLADESH                     1                   1        0     257  dead             
MAL-ED           INDIA                          0                   0      165     249  dead             
MAL-ED           INDIA                          0                   1        1     249  dead             
MAL-ED           INDIA                          1                   0       82     249  dead             
MAL-ED           INDIA                          1                   1        1     249  dead             
MAL-ED           PERU                           0                   0      284     297  dead             
MAL-ED           PERU                           0                   1        2     297  dead             
MAL-ED           PERU                           1                   0       11     297  dead             
MAL-ED           PERU                           1                   1        0     297  dead             
MAL-ED           SOUTH AFRICA                   0                   0      274     310  dead             
MAL-ED           SOUTH AFRICA                   0                   1        0     310  dead             
MAL-ED           SOUTH AFRICA                   1                   0       36     310  dead             
MAL-ED           SOUTH AFRICA                   1                   1        0     310  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      244     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        2     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       14     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     260  dead             
PROVIDE          BANGLADESH                     0                   0      507     692  dead             
PROVIDE          BANGLADESH                     0                   1        4     692  dead             
PROVIDE          BANGLADESH                     1                   0      181     692  dead             
PROVIDE          BANGLADESH                     1                   1        0     692  dead             
SAS-CompFeed     INDIA                          0                   0      986    1313  dead             
SAS-CompFeed     INDIA                          0                   1       18    1313  dead             
SAS-CompFeed     INDIA                          1                   0      297    1313  dead             
SAS-CompFeed     INDIA                          1                   1       12    1313  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        1       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0       1  dead             
ZVITAMBO         ZIMBABWE                       0                   0     9698   12918  dead             
ZVITAMBO         ZIMBABWE                       0                   1      645   12918  dead             
ZVITAMBO         ZIMBABWE                       1                   0     2271   12918  dead             
ZVITAMBO         ZIMBABWE                       1                   1      304   12918  dead             


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




# Results Detail

## Results Plots
![](/tmp/602d3dc9-bf9c-4546-8816-25e2963b6ccb/1d9d8e4f-370c-4551-ac6d-b3c22cb11574/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/602d3dc9-bf9c-4546-8816-25e2963b6ccb/1d9d8e4f-370c-4551-ac6d-b3c22cb11574/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/602d3dc9-bf9c-4546-8816-25e2963b6ccb/1d9d8e4f-370c-4551-ac6d-b3c22cb11574/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/602d3dc9-bf9c-4546-8816-25e2963b6ccb/1d9d8e4f-370c-4551-ac6d-b3c22cb11574/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0188216   0.0167310   0.0209122
JiVitA-3       BANGLADESH   1                    NA                0.0241190   0.0195896   0.0286485
JiVitA-4       BANGLADESH   0                    NA                0.0050251   0.0020205   0.0080297
JiVitA-4       BANGLADESH   1                    NA                0.0132827   0.0032021   0.0233634
Keneba         GAMBIA       0                    NA                0.0198190   0.0118400   0.0277980
Keneba         GAMBIA       1                    NA                0.0231445   0.0102141   0.0360750
SAS-CompFeed   INDIA        0                    NA                0.0179467   0.0095916   0.0263018
SAS-CompFeed   INDIA        1                    NA                0.0392389   0.0138430   0.0646347
ZVITAMBO       ZIMBABWE     0                    NA                0.0626354   0.0579715   0.0672993
ZVITAMBO       ZIMBABWE     1                    NA                0.1176909   0.1050868   0.1302950


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0199731   0.0180226   0.0219237
JiVitA-4       BANGLADESH   NA                   NA                0.0063387   0.0033575   0.0093199
Keneba         GAMBIA       NA                   NA                0.0213723   0.0146482   0.0280965
SAS-CompFeed   INDIA        NA                   NA                0.0228484   0.0119785   0.0337184
ZVITAMBO       ZIMBABWE     NA                   NA                0.0734634   0.0689642   0.0779626


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.281457   1.0360496   1.584994
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.643264   1.0020421   6.972604
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.167797   0.5862623   2.326179
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.186411   1.2213699   3.913959
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.878985   1.6504457   2.139170


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0011516    0.0001005   0.0022026
JiVitA-4       BANGLADESH   0                    NA                0.0013135   -0.0003676   0.0029946
Keneba         GAMBIA       0                    NA                0.0015534   -0.0033143   0.0064210
SAS-CompFeed   INDIA        0                    NA                0.0049017   -0.0006800   0.0104835
ZVITAMBO       ZIMBABWE     0                    NA                0.0108280    0.0081740   0.0134821


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0576551    0.0039999   0.1084199
JiVitA-4       BANGLADESH   0                    NA                0.2072266   -0.0961458   0.4266368
Keneba         GAMBIA       0                    NA                0.0726810   -0.1846062   0.2740875
SAS-CompFeed   INDIA        0                    NA                0.2145327   -0.0048272   0.3860050
ZVITAMBO       ZIMBABWE     0                    NA                0.1473934    0.1115087   0.1818287
