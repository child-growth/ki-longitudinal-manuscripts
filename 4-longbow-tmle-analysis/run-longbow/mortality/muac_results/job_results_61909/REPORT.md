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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_mwasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hfoodsec
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
* delta_hfoodsec
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

studyid          country                        ever_mwasted06    dead624   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  --------  -------  ------  -----------------
EE               PAKISTAN                       0                       0      131     371  dead624          
EE               PAKISTAN                       0                       1        0     371  dead624          
EE               PAKISTAN                       1                       0      236     371  dead624          
EE               PAKISTAN                       1                       1        4     371  dead624          
iLiNS-DOSE       MALAWI                         0                       0     1046    1142  dead624          
iLiNS-DOSE       MALAWI                         0                       1       70    1142  dead624          
iLiNS-DOSE       MALAWI                         1                       0       23    1142  dead624          
iLiNS-DOSE       MALAWI                         1                       1        3    1142  dead624          
iLiNS-DYAD-M     MALAWI                         0                       0       43      47  dead624          
iLiNS-DYAD-M     MALAWI                         0                       1        2      47  dead624          
iLiNS-DYAD-M     MALAWI                         1                       0        1      47  dead624          
iLiNS-DYAD-M     MALAWI                         1                       1        1      47  dead624          
JiVitA-3         BANGLADESH                     0                       0    14098   15653  dead624          
JiVitA-3         BANGLADESH                     0                       1      133   15653  dead624          
JiVitA-3         BANGLADESH                     1                       0     1370   15653  dead624          
JiVitA-3         BANGLADESH                     1                       1       52   15653  dead624          
JiVitA-4         BANGLADESH                     0                       0     4274    4663  dead624          
JiVitA-4         BANGLADESH                     0                       1       33    4663  dead624          
JiVitA-4         BANGLADESH                     1                       0      348    4663  dead624          
JiVitA-4         BANGLADESH                     1                       1        8    4663  dead624          
Keneba           GAMBIA                         0                       0     1854    2123  dead624          
Keneba           GAMBIA                         0                       1       28    2123  dead624          
Keneba           GAMBIA                         1                       0      231    2123  dead624          
Keneba           GAMBIA                         1                       1       10    2123  dead624          
SAS-FoodSuppl    INDIA                          0                       0      356     402  dead624          
SAS-FoodSuppl    INDIA                          0                       1        1     402  dead624          
SAS-FoodSuppl    INDIA                          1                       0       42     402  dead624          
SAS-FoodSuppl    INDIA                          1                       1        3     402  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1948    2050  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1        0    2050  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      102    2050  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        0    2050  dead624          


The following strata were considered:

* studyid: EE, country: PAKISTAN
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/fd15fafb-2f41-4d44-a9c6-a0cc19f1617b/4514dbc0-3956-4706-abfa-17ca8347a53e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd15fafb-2f41-4d44-a9c6-a0cc19f1617b/4514dbc0-3956-4706-abfa-17ca8347a53e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd15fafb-2f41-4d44-a9c6-a0cc19f1617b/4514dbc0-3956-4706-abfa-17ca8347a53e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd15fafb-2f41-4d44-a9c6-a0cc19f1617b/4514dbc0-3956-4706-abfa-17ca8347a53e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0094256   0.0077662   0.0110849
JiVitA-3   BANGLADESH   1                    NA                0.0367312   0.0260110   0.0474514
JiVitA-4   BANGLADESH   0                    NA                0.0076619   0.0048159   0.0105080
JiVitA-4   BANGLADESH   1                    NA                0.0224719   0.0076355   0.0373083
Keneba     GAMBIA       0                    NA                0.0147995   0.0093468   0.0202521
Keneba     GAMBIA       1                    NA                0.0426142   0.0163672   0.0688613


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0118188   0.0100525   0.0135852
JiVitA-4   BANGLADESH   NA                   NA                0.0087926   0.0059374   0.0116478
Keneba     GAMBIA       NA                   NA                0.0178992   0.0122580   0.0235404


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3   BANGLADESH   1                    0                 3.896977   2.763433   5.495494
JiVitA-4   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4   BANGLADESH   1                    0                 2.932925   1.369009   6.283414
Keneba     GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba     GAMBIA       1                    0                 2.879443   1.404478   5.903398


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0023933    0.0013966   0.0033899
JiVitA-4   BANGLADESH   0                    NA                0.0011307   -0.0000270   0.0022884
Keneba     GAMBIA       0                    NA                0.0030997    0.0001515   0.0060479


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.2024953    0.1207543   0.2766371
JiVitA-4   BANGLADESH   0                    NA                0.1285938   -0.0109939   0.2489087
Keneba     GAMBIA       0                    NA                0.1731766    0.0017057   0.3151950
