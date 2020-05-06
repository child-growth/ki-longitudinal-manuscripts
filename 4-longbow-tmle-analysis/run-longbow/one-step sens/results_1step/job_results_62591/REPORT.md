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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      perdiar24    n_cell      n  outcome_variable 
----------  ----------  -------  -----  -----------------
Birth       0%              637   5808  haz              
Birth       (0%, 5%]       4047   5808  haz              
Birth       >5%            1124   5808  haz              
6 months    0%              906   9893  haz              
6 months    (0%, 5%]       6811   9893  haz              
6 months    >5%            2176   9893  haz              
24 months   0%              599   8335  haz              
24 months   (0%, 5%]       6268   8335  haz              
24 months   >5%            1468   8335  haz              


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
![](/tmp/cf30a79c-e742-42e2-be55-556a3c1b0dfb/22f3f598-775d-4b5c-a708-285590265bd7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cf30a79c-e742-42e2-be55-556a3c1b0dfb/22f3f598-775d-4b5c-a708-285590265bd7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cf30a79c-e742-42e2-be55-556a3c1b0dfb/22f3f598-775d-4b5c-a708-285590265bd7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       0%                   NA                -1.221897   -1.331903   -1.111890
Birth       (0%, 5%]             NA                -1.266291   -1.311589   -1.220994
Birth       >5%                  NA                -1.250069   -1.332550   -1.167587
6 months    0%                   NA                -1.347059   -1.463124   -1.230994
6 months    (0%, 5%]             NA                -1.294907   -1.335970   -1.253843
6 months    >5%                  NA                -1.320790   -1.379269   -1.262311
24 months   0%                   NA                -1.750862   -1.862624   -1.639100
24 months   (0%, 5%]             NA                -1.760160   -1.801652   -1.718668
24 months   >5%                  NA                -1.841503   -1.908324   -1.774682


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.256984   -1.291910   -1.222057
6 months    NA                   NA                -1.303600   -1.332721   -1.274479
24 months   NA                   NA                -1.763859   -1.797708   -1.730010


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0%                   0%                 0.0000000    0.0000000   0.0000000
Birth       (0%, 5%]             0%                -0.0443943   -0.1602423   0.0714537
Birth       >5%                  0%                -0.0281715   -0.1627488   0.1064057
6 months    0%                   0%                 0.0000000    0.0000000   0.0000000
6 months    (0%, 5%]             0%                 0.0521527   -0.0709616   0.1752671
6 months    >5%                  0%                 0.0262694   -0.1036761   0.1562148
24 months   0%                   0%                 0.0000000    0.0000000   0.0000000
24 months   (0%, 5%]             0%                -0.0092979   -0.1263980   0.1078022
24 months   >5%                  0%                -0.0906406   -0.2187566   0.0374753


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0%                   NA                -0.0350865   -0.1395854   0.0694123
6 months    0%                   NA                 0.0434594   -0.0696604   0.1565792
24 months   0%                   NA                -0.0129968   -0.1214736   0.0954801
