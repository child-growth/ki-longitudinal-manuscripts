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

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      trth2o    n_cell      n  outcome_variable 
----------  -------  -------  -----  -----------------
Birth       1            729   1636  haz              
Birth       0            907   1636  haz              
6 months    1            917   1996  haz              
6 months    0           1079   1996  haz              
24 months   1            763   1769  haz              
24 months   0           1006   1769  haz              


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
![](/tmp/a26e187b-bcd3-4210-8bff-c66657a3a532/4b50ef88-586a-4929-80a8-13b74e6a16d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a26e187b-bcd3-4210-8bff-c66657a3a532/4b50ef88-586a-4929-80a8-13b74e6a16d7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a26e187b-bcd3-4210-8bff-c66657a3a532/4b50ef88-586a-4929-80a8-13b74e6a16d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.9230633   -1.1039976   -0.7421289
Birth       0                    NA                -0.8265028   -0.9528538   -0.7001517
6 months    1                    NA                -1.1869763   -1.3334047   -1.0405480
6 months    0                    NA                -1.0013653   -1.0904697   -0.9122609
24 months   1                    NA                -1.6381414   -1.8081106   -1.4681721
24 months   0                    NA                -1.4142462   -1.5538295   -1.2746629


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8692115   -0.9181639   -0.8202591
6 months    NA                   NA                -1.0844456   -1.1310819   -1.0378092
24 months   NA                   NA                -1.5717797   -1.6237816   -1.5197778


### Parameter: ATE


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       1                    1                 0.0000000    0.0000000   0.0000000
Birth       0                    1                 0.0965605   -0.1238589   0.3169799
6 months    1                    1                 0.0000000    0.0000000   0.0000000
6 months    0                    1                 0.1856110    0.0158900   0.3553320
24 months   1                    1                 0.0000000    0.0000000   0.0000000
24 months   0                    1                 0.2238952    0.0043311   0.4434592


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       1                    NA                0.0538518   -0.1177602   0.2254638
6 months    1                    NA                0.1025308   -0.0355258   0.2405873
24 months   1                    NA                0.0663616   -0.0969368   0.2296601
