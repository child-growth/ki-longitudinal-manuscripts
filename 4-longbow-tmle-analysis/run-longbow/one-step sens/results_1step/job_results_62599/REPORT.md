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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      earlybf    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       1           10224   41184  haz              
Birth       0           30960   41184  haz              
6 months    1            9252   33955  haz              
6 months    0           24703   33955  haz              
24 months   1            5276   17398  haz              
24 months   0           12122   17398  haz              


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
![](/tmp/7483248d-5e62-4a77-851d-b19964144e22/7c1f64b3-dc9b-4f98-ac12-0a7678cc7642/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7483248d-5e62-4a77-851d-b19964144e22/7c1f64b3-dc9b-4f98-ac12-0a7678cc7642/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7483248d-5e62-4a77-851d-b19964144e22/7c1f64b3-dc9b-4f98-ac12-0a7678cc7642/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  -------------------  ---------------  -----------  ----------  -----------
Birth       1                    NA                -1.0236217   -1.052566   -0.9946778
Birth       0                    NA                -1.2177694   -1.250405   -1.1851335
6 months    1                    NA                -1.3909032   -1.420531   -1.3612751
6 months    0                    NA                -1.2119897   -1.252364   -1.1716155
24 months   1                    NA                -0.9603429   -1.007017   -0.9136683
24 months   0                    NA                -1.8616484   -1.945073   -1.7782238


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.218068   -1.237963   -1.198172
6 months    NA                   NA                -1.208386   -1.230744   -1.186028
24 months   NA                   NA                -1.871112   -1.904666   -1.837559


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                 -0.1941478   -0.2363998   -0.1518957
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                  0.1789136    0.1309935    0.2268337
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.9013056   -0.9949515   -0.8076596


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.1944458   -0.2152693   -0.1736222
6 months    1                    NA                 0.1825170    0.1631672    0.2018669
24 months   1                    NA                -0.9107696   -0.9433282   -0.8782109
