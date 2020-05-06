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

**Intervention Variable:** safeh20

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
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      safeh20    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       1           26697   27380  haz              
Birth       0             683   27380  haz              
6 months    1           24191   25747  haz              
6 months    0            1556   25747  haz              
24 months   1           15015   16365  haz              
24 months   0            1350   16365  haz              


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
![](/tmp/45781b1d-fd0b-4145-97c1-b66993168623/7185f471-5c6c-4ff6-a74c-287b189bc259/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/45781b1d-fd0b-4145-97c1-b66993168623/7185f471-5c6c-4ff6-a74c-287b189bc259/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/45781b1d-fd0b-4145-97c1-b66993168623/7185f471-5c6c-4ff6-a74c-287b189bc259/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       1                    NA                -1.529602   -1.621279   -1.437924
Birth       0                    NA                -1.859475   -1.913417   -1.805533
6 months    1                    NA                -1.333686   -1.426055   -1.241317
6 months    0                    NA                -1.485767   -1.522482   -1.449052
24 months   1                    NA                -1.932363   -2.047819   -1.816907
24 months   0                    NA                -1.853121   -1.900371   -1.805871


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.531279   -1.568926   -1.493632
6 months    NA                   NA                -1.315606   -1.347361   -1.283850
24 months   NA                   NA                -1.897700   -1.934127   -1.861273


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                 -0.3298733   -0.4347055   -0.2250412
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.1520811   -0.2506154   -0.0535469
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                  0.0792414   -0.0438749    0.2023576


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                -0.0016773   -0.0829253   0.0795707
6 months    1                    NA                 0.0180803   -0.0671782   0.1033387
24 months   1                    NA                 0.0346626   -0.0733610   0.1426862
