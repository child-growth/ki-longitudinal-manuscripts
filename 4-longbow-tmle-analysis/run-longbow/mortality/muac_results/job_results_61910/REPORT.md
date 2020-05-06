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

**Intervention Variable:** ever_smwasted06

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

studyid          country                        ever_smwasted06    dead624   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  --------  -------  ------  -----------------
EE               PAKISTAN                       0                        0      250     371  dead624          
EE               PAKISTAN                       0                        1        2     371  dead624          
EE               PAKISTAN                       1                        0      117     371  dead624          
EE               PAKISTAN                       1                        1        2     371  dead624          
iLiNS-DOSE       MALAWI                         0                        0     1068    1142  dead624          
iLiNS-DOSE       MALAWI                         0                        1       72    1142  dead624          
iLiNS-DOSE       MALAWI                         1                        0        1    1142  dead624          
iLiNS-DOSE       MALAWI                         1                        1        1    1142  dead624          
iLiNS-DYAD-M     MALAWI                         0                        0       43      47  dead624          
iLiNS-DYAD-M     MALAWI                         0                        1        2      47  dead624          
iLiNS-DYAD-M     MALAWI                         1                        0        1      47  dead624          
iLiNS-DYAD-M     MALAWI                         1                        1        1      47  dead624          
JiVitA-3         BANGLADESH                     0                        0    15219   15653  dead624          
JiVitA-3         BANGLADESH                     0                        1      158   15653  dead624          
JiVitA-3         BANGLADESH                     1                        0      249   15653  dead624          
JiVitA-3         BANGLADESH                     1                        1       27   15653  dead624          
JiVitA-4         BANGLADESH                     0                        0     4559    4663  dead624          
JiVitA-4         BANGLADESH                     0                        1       37    4663  dead624          
JiVitA-4         BANGLADESH                     1                        0       63    4663  dead624          
JiVitA-4         BANGLADESH                     1                        1        4    4663  dead624          
Keneba           GAMBIA                         0                        0     2026    2123  dead624          
Keneba           GAMBIA                         0                        1       30    2123  dead624          
Keneba           GAMBIA                         1                        0       59    2123  dead624          
Keneba           GAMBIA                         1                        1        8    2123  dead624          
SAS-FoodSuppl    INDIA                          0                        0      383     402  dead624          
SAS-FoodSuppl    INDIA                          0                        1        1     402  dead624          
SAS-FoodSuppl    INDIA                          1                        0       15     402  dead624          
SAS-FoodSuppl    INDIA                          1                        1        3     402  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                        0     2031    2050  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                        1        0    2050  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                        0       19    2050  dead624          
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                        1        0    2050  dead624          


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
* studyid: JiVitA-4, country: BANGLADESH
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
![](/tmp/2d2e9201-1b00-4fd1-ab3a-e31b54dc2c74/871dd12c-95d1-42a2-8601-79c05f8be7e4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d2e9201-1b00-4fd1-ab3a-e31b54dc2c74/871dd12c-95d1-42a2-8601-79c05f8be7e4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d2e9201-1b00-4fd1-ab3a-e31b54dc2c74/871dd12c-95d1-42a2-8601-79c05f8be7e4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d2e9201-1b00-4fd1-ab3a-e31b54dc2c74/871dd12c-95d1-42a2-8601-79c05f8be7e4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0102758   0.0085899   0.0119617
JiVitA-3   BANGLADESH   1                    NA                0.1026828   0.0760611   0.1293046
Keneba     GAMBIA       0                    NA                0.0145914   0.0094071   0.0197758
Keneba     GAMBIA       1                    NA                0.1194030   0.0417409   0.1970651


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0118188   0.0100525   0.0135852
Keneba     GAMBIA       NA                   NA                0.0178992   0.0122580   0.0235404


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                 1.000000   1.000000    1.00000
JiVitA-3   BANGLADESH   1                    0                 9.992693   7.329758   13.62308
Keneba     GAMBIA       0                    0                 1.000000   1.000000    1.00000
Keneba     GAMBIA       1                    0                 8.183085   3.899821   17.17075


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0015430   0.0008384   0.0022477
Keneba     GAMBIA       0                    NA                0.0033078   0.0007306   0.0058849


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.1305571   0.0719965   0.1854223
Keneba     GAMBIA       0                    NA                0.1847993   0.0414431   0.3067160
