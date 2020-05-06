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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hdlvry    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       0           5019   10461  whz              
Birth       1           5442   10461  whz              
6 months    0           8270   15450  whz              
6 months    1           7180   15450  whz              
24 months   0           5102   10314  whz              
24 months   1           5212   10314  whz              


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
![](/tmp/80bc3778-018a-4bad-b085-ce185f08696f/ba01539b-b726-4882-8ead-625932a02938/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/80bc3778-018a-4bad-b085-ce185f08696f/ba01539b-b726-4882-8ead-625932a02938/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/80bc3778-018a-4bad-b085-ce185f08696f/ba01539b-b726-4882-8ead-625932a02938/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.9000060   -0.9386181   -0.8613940
Birth       1                    NA                -0.9342799   -0.9869431   -0.8816166
6 months    0                    NA                -0.4125232   -0.4436459   -0.3814006
6 months    1                    NA                -0.4924044   -0.5627044   -0.4221045
24 months   0                    NA                -0.8859302   -0.9220898   -0.8497705
24 months   1                    NA                -1.0044635   -1.0595546   -0.9493724


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.9076890   -0.9351971   -0.8801810
6 months    NA                   NA                -0.4659364   -0.4906159   -0.4412569
24 months   NA                   NA                -0.9362202   -0.9628636   -0.9095767


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -0.0342738   -0.0992603    0.0307127
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.0798812   -0.1560840   -0.0036784
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.1185333   -0.1837754   -0.0532913


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.0076830   -0.0339294    0.0185634
6 months    0                    NA                -0.0534132   -0.0727485   -0.0340779
24 months   0                    NA                -0.0502900   -0.0743598   -0.0262202
