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

studyid          country                        ever_mwasted06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                    0      133     374  dead             
EE               PAKISTAN                       0                    1        0     374  dead             
EE               PAKISTAN                       1                    0      237     374  dead             
EE               PAKISTAN                       1                    1        4     374  dead             
iLiNS-DOSE       MALAWI                         0                    0     1099    1198  dead             
iLiNS-DOSE       MALAWI                         0                    1       70    1198  dead             
iLiNS-DOSE       MALAWI                         1                    0       26    1198  dead             
iLiNS-DOSE       MALAWI                         1                    1        3    1198  dead             
iLiNS-DYAD-M     MALAWI                         0                    0       45      49  dead             
iLiNS-DYAD-M     MALAWI                         0                    1        2      49  dead             
iLiNS-DYAD-M     MALAWI                         1                    0        1      49  dead             
iLiNS-DYAD-M     MALAWI                         1                    1        1      49  dead             
JiVitA-3         BANGLADESH                     0                    0    17482   19576  dead             
JiVitA-3         BANGLADESH                     0                    1      155   19576  dead             
JiVitA-3         BANGLADESH                     1                    0     1859   19576  dead             
JiVitA-3         BANGLADESH                     1                    1       80   19576  dead             
JiVitA-4         BANGLADESH                     0                    0     4282    4672  dead             
JiVitA-4         BANGLADESH                     0                    1       33    4672  dead             
JiVitA-4         BANGLADESH                     1                    0      349    4672  dead             
JiVitA-4         BANGLADESH                     1                    1        8    4672  dead             
Keneba           GAMBIA                         0                    0     1901    2181  dead             
Keneba           GAMBIA                         0                    1       33    2181  dead             
Keneba           GAMBIA                         1                    0      234    2181  dead             
Keneba           GAMBIA                         1                    1       13    2181  dead             
SAS-FoodSuppl    INDIA                          0                    0      369     418  dead             
SAS-FoodSuppl    INDIA                          0                    1        3     418  dead             
SAS-FoodSuppl    INDIA                          1                    0       43     418  dead             
SAS-FoodSuppl    INDIA                          1                    1        3     418  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2119    2234  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1        1    2234  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      114    2234  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        0    2234  dead             


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
![](/tmp/496fa257-f805-46a3-a754-c2555d6ef598/86ae93b4-713e-457e-bbd5-477e4aabaa9b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/496fa257-f805-46a3-a754-c2555d6ef598/86ae93b4-713e-457e-bbd5-477e4aabaa9b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/496fa257-f805-46a3-a754-c2555d6ef598/86ae93b4-713e-457e-bbd5-477e4aabaa9b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/496fa257-f805-46a3-a754-c2555d6ef598/86ae93b4-713e-457e-bbd5-477e4aabaa9b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0088331   0.0074152   0.0102510
JiVitA-3   BANGLADESH   1                    NA                0.0433365   0.0328892   0.0537837
JiVitA-4   BANGLADESH   0                    NA                0.0076477   0.0048015   0.0104939
JiVitA-4   BANGLADESH   1                    NA                0.0224090   0.0075850   0.0372329
Keneba     GAMBIA       0                    NA                0.0170798   0.0113021   0.0228575
Keneba     GAMBIA       1                    NA                0.0524069   0.0238003   0.0810135


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0120045   0.0104161   0.0135929
JiVitA-4   BANGLADESH   NA                   NA                0.0087757   0.0059205   0.0116309
Keneba     GAMBIA       NA                   NA                0.0210912   0.0150595   0.0271230


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3   BANGLADESH   1                    0                 4.906144   3.688598   6.525583
JiVitA-4   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4   BANGLADESH   1                    0                 2.930142   1.365691   6.286729
Keneba     GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba     GAMBIA       1                    0                 3.068357   1.614013   5.833173


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0031714    0.0022225   0.0041203
JiVitA-4   BANGLADESH   0                    NA                0.0011279   -0.0000298   0.0022857
Keneba     GAMBIA       0                    NA                0.0040114    0.0007515   0.0072714


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.2641835    0.1909070   0.3308236
JiVitA-4   BANGLADESH   0                    NA                0.1285307   -0.0113587   0.2490708
Keneba     GAMBIA       0                    NA                0.1901950    0.0314166   0.3229451
