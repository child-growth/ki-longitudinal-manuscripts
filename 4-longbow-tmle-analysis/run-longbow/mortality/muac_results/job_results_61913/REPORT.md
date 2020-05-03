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

**Outcome Variable:** dead6plus

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

studyid          country                        ever_mwasted06    dead6plus   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
EE               PAKISTAN                       0                         0      131     371  dead6plus        
EE               PAKISTAN                       0                         1        0     371  dead6plus        
EE               PAKISTAN                       1                         0      236     371  dead6plus        
EE               PAKISTAN                       1                         1        4     371  dead6plus        
iLiNS-DOSE       MALAWI                         0                         0     1046    1142  dead6plus        
iLiNS-DOSE       MALAWI                         0                         1       70    1142  dead6plus        
iLiNS-DOSE       MALAWI                         1                         0       23    1142  dead6plus        
iLiNS-DOSE       MALAWI                         1                         1        3    1142  dead6plus        
iLiNS-DYAD-M     MALAWI                         0                         0       43      47  dead6plus        
iLiNS-DYAD-M     MALAWI                         0                         1        2      47  dead6plus        
iLiNS-DYAD-M     MALAWI                         1                         0        1      47  dead6plus        
iLiNS-DYAD-M     MALAWI                         1                         1        1      47  dead6plus        
JiVitA-3         BANGLADESH                     0                         0    14080   15653  dead6plus        
JiVitA-3         BANGLADESH                     0                         1      151   15653  dead6plus        
JiVitA-3         BANGLADESH                     1                         0     1360   15653  dead6plus        
JiVitA-3         BANGLADESH                     1                         1       62   15653  dead6plus        
JiVitA-4         BANGLADESH                     0                         0     4273    4663  dead6plus        
JiVitA-4         BANGLADESH                     0                         1       34    4663  dead6plus        
JiVitA-4         BANGLADESH                     1                         0      348    4663  dead6plus        
JiVitA-4         BANGLADESH                     1                         1        8    4663  dead6plus        
Keneba           GAMBIA                         0                         0     1832    2123  dead6plus        
Keneba           GAMBIA                         0                         1       50    2123  dead6plus        
Keneba           GAMBIA                         1                         0      224    2123  dead6plus        
Keneba           GAMBIA                         1                         1       17    2123  dead6plus        
SAS-FoodSuppl    INDIA                          0                         0      356     402  dead6plus        
SAS-FoodSuppl    INDIA                          0                         1        1     402  dead6plus        
SAS-FoodSuppl    INDIA                          1                         0       42     402  dead6plus        
SAS-FoodSuppl    INDIA                          1                         1        3     402  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     1948    2050  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1        0    2050  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0      102    2050  dead6plus        
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1        0    2050  dead6plus        


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
![](/tmp/280a6b05-a7bc-46b2-8b75-ae365dd34d27/e9e8d394-9070-449e-af16-7847f5cc8afc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/280a6b05-a7bc-46b2-8b75-ae365dd34d27/e9e8d394-9070-449e-af16-7847f5cc8afc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/280a6b05-a7bc-46b2-8b75-ae365dd34d27/e9e8d394-9070-449e-af16-7847f5cc8afc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/280a6b05-a7bc-46b2-8b75-ae365dd34d27/e9e8d394-9070-449e-af16-7847f5cc8afc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0109503   0.0091306   0.0127700
JiVitA-3   BANGLADESH   1                    NA                0.0378085   0.0270448   0.0485722
JiVitA-4   BANGLADESH   0                    NA                0.0078941   0.0050073   0.0107809
JiVitA-4   BANGLADESH   1                    NA                0.0224719   0.0076355   0.0373083
Keneba     GAMBIA       0                    NA                0.0266271   0.0193479   0.0339063
Keneba     GAMBIA       1                    NA                0.0728681   0.0393184   0.1064179


### Parameter: E(Y)


studyid    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3   BANGLADESH   NA                   NA                0.0136076   0.0116882   0.0155270
JiVitA-4   BANGLADESH   NA                   NA                0.0090071   0.0061178   0.0118963
Keneba     GAMBIA       NA                   NA                0.0315591   0.0241208   0.0389974


### Parameter: RR


studyid    country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
---------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3   BANGLADESH   1                    0                 3.452746   2.484075   4.799153
JiVitA-4   BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4   BANGLADESH   1                    0                 2.846662   1.332634   6.080806
Keneba     GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba     GAMBIA       1                    0                 2.736616   1.601591   4.676020


### Parameter: PAR


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.0026573    0.0016298   0.0036849
JiVitA-4   BANGLADESH   0                    NA                0.0011130   -0.0000453   0.0022712
Keneba     GAMBIA       0                    NA                0.0049320    0.0011133   0.0087507


### Parameter: PAF


studyid    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3   BANGLADESH   0                    NA                0.1952829    0.1217243   0.2626807
JiVitA-4   BANGLADESH   0                    NA                0.1235641   -0.0127039   0.2414960
Keneba     GAMBIA       0                    NA                0.1562788    0.0324891   0.2642299
