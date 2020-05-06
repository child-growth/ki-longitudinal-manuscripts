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






```
## Warning in set(data, , char_cols, data[, lapply(.SD, as.factor), .SDcols =
## char_cols]): length(LHS)==0; no columns to delete or assign RHS to.
```

## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      predexfd6    n_cell       n  outcome_variable 
----------  ----------  -------  ------  -----------------
Birth       1             14182   19732  haz              
Birth       0              5550   19732  haz              
6 months    1             12826   19770  haz              
6 months    0              6944   19770  haz              
24 months   1              8495   13514  haz              
24 months   0              5019   13514  haz              


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7be987d1-ca26-4e4b-a996-6925adff3920/a69fe656-4964-4d4f-acfa-5ba378dbac85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7be987d1-ca26-4e4b-a996-6925adff3920/a69fe656-4964-4d4f-acfa-5ba378dbac85/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7be987d1-ca26-4e4b-a996-6925adff3920/a69fe656-4964-4d4f-acfa-5ba378dbac85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       1                    NA                -1.413720   -1.491377   -1.336063
Birth       0                    NA                -1.411248   -1.469227   -1.353268
6 months    1                    NA                -1.243638   -1.311209   -1.176067
6 months    0                    NA                -1.301459   -1.339654   -1.263264
24 months   1                    NA                -1.814444   -1.868561   -1.760327
24 months   0                    NA                -1.860498   -1.900523   -1.820473


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.408063   -1.452228   -1.363898
6 months    NA                   NA                -1.268016   -1.298532   -1.237501
24 months   NA                   NA                -1.835947   -1.868035   -1.803859


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                  0.0024722   -0.0911956   0.0961400
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.0578209   -0.1350250   0.0193832
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                 -0.0460537   -0.1110431   0.0189356


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                 0.0056569   -0.0576178   0.0689316
6 months    1                    NA                -0.0243782   -0.0848620   0.0361057
24 months   1                    NA                -0.0215031   -0.0694266   0.0264204
