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

studyid          country                        ever_mwasted06    dead0plus   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
EE               PAKISTAN                       0                         0      133     374  dead0plus        
EE               PAKISTAN                       0                         1        0     374  dead0plus        
EE               PAKISTAN                       1                         0      237     374  dead0plus        
EE               PAKISTAN                       1                         1        4     374  dead0plus        
iLiNS-DOSE       MALAWI                         0                         0     1099    1198  dead0plus        
iLiNS-DOSE       MALAWI                         0                         1       70    1198  dead0plus        
iLiNS-DOSE       MALAWI                         1                         0       26    1198  dead0plus        
iLiNS-DOSE       MALAWI                         1                         1        3    1198  dead0plus        
iLiNS-DYAD-M     MALAWI                         0                         0       45      49  dead0plus        
iLiNS-DYAD-M     MALAWI                         0                         1        2      49  dead0plus        
iLiNS-DYAD-M     MALAWI                         1                         0        1      49  dead0plus        
iLiNS-DYAD-M     MALAWI                         1                         1        1      49  dead0plus        
JiVitA-3         BANGLADESH                     0                         0    17464   19576  dead0plus        
JiVitA-3         BANGLADESH                     0                         1      173   19576  dead0plus        
JiVitA-3         BANGLADESH                     1                         0     1849   19576  dead0plus        
JiVitA-3         BANGLADESH                     1                         1       90   19576  dead0plus        
JiVitA-4         BANGLADESH                     0                         0     4281    4672  dead0plus        
JiVitA-4         BANGLADESH                     0                         1       34    4672  dead0plus        
JiVitA-4         BANGLADESH                     1                         0      349    4672  dead0plus        
JiVitA-4         BANGLADESH                     1                         1        8    4672  dead0plus        
Keneba           GAMBIA                         0                         0     1879    2181  dead0plus        
Keneba           GAMBIA                         0                         1       55    2181  dead0plus        
Keneba           GAMBIA                         1                         0      227    2181  dead0plus        
Keneba           GAMBIA                         1                         1       20    2181  dead0plus        
SAS-FoodSuppl    INDIA                          0                         0      369     418  dead0plus        
SAS-FoodSuppl    INDIA                          0                         1        3     418  dead0plus        
SAS-FoodSuppl    INDIA                          1                         0       43     418  dead0plus        
SAS-FoodSuppl    INDIA                          1                         1        3     418  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     2119    2234  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1        1    2234  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0      114    2234  dead0plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1        0    2234  dead0plus        


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
![](/tmp/eede3edc-1144-4282-9bb7-fa893168987b/645b9396-f7b6-437f-b169-166472c1e3a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eede3edc-1144-4282-9bb7-fa893168987b/645b9396-f7b6-437f-b169-166472c1e3a9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eede3edc-1144-4282-9bb7-fa893168987b/645b9396-f7b6-437f-b169-166472c1e3a9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eede3edc-1144-4282-9bb7-fa893168987b/645b9396-f7b6-437f-b169-166472c1e3a9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0098636   0.0083301   0.0113970
JiVitA-3   BANGLADESH   1                    NA                0.0454793   0.0352775   0.0556812
JiVitA-4   BANGLADESH   0                    NA                0.0078795   0.0049925   0.0107665
JiVitA-4   BANGLADESH   1                    NA                0.0224090   0.0075850   0.0372329
Keneba     GAMBIA       0                    NA                0.0286635   0.0212021   0.0361249
Keneba     GAMBIA       1                    NA                0.0851388   0.0493054   0.1209722


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0134348   0.0117440   0.0151256
JiVitA-4   BANGLADESH   NA                   NA                0.0089897   0.0061005   0.0118790
Keneba     GAMBIA       NA                   NA                0.0343879   0.0267386   0.0420372


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3   BANGLADESH   1                    0                 4.610835   3.514255   6.049589
JiVitA-4   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4   BANGLADESH   1                    0                 2.843961   1.329411   6.083985
Keneba     GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba     GAMBIA       1                    0                 2.970284   1.810523   4.872948


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0035712    0.0025967   0.0045458
JiVitA-4   BANGLADESH   0                    NA                0.0011102   -0.0000481   0.0022686
Keneba     GAMBIA       0                    NA                0.0057244    0.0016968   0.0097519


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.2658199    0.1977671   0.3280998
JiVitA-4   BANGLADESH   0                    NA                0.1235005   -0.0130614   0.2416537
Keneba     GAMBIA       0                    NA                0.1664650    0.0473017   0.2707234
