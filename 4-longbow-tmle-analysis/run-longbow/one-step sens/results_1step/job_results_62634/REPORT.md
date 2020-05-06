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

**Intervention Variable:** perdiar6

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
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
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

agecat      perdiar6    n_cell      n  outcome_variable 
----------  ---------  -------  -----  -----------------
Birth       0%            1170   2812  whz              
Birth       (0%, 5%]       813   2812  whz              
Birth       >5%            829   2812  whz              
6 months    0%            1917   4384  whz              
6 months    (0%, 5%]      1268   4384  whz              
6 months    >5%           1199   4384  whz              
24 months   0%            1524   3585  whz              
24 months   (0%, 5%]      1065   3585  whz              
24 months   >5%            996   3585  whz              


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
![](/tmp/617f71cd-336d-4ba1-ad32-a1c4302834b1/2790664d-5d16-4290-96c5-ee72b9f18c6a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/617f71cd-336d-4ba1-ad32-a1c4302834b1/2790664d-5d16-4290-96c5-ee72b9f18c6a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/617f71cd-336d-4ba1-ad32-a1c4302834b1/2790664d-5d16-4290-96c5-ee72b9f18c6a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.8696311   -0.9470705   -0.7921918
Birth       (0%, 5%]             NA                -0.9600567   -1.0539063   -0.8662070
Birth       >5%                  NA                -0.9772098   -1.0691613   -0.8852583
6 months    0%                   NA                 0.0201556   -0.0405809    0.0808920
6 months    (0%, 5%]             NA                -0.0169773   -0.0944069    0.0604524
6 months    >5%                  NA                 0.1733133    0.0929981    0.2536286
24 months   0%                   NA                -0.4442306   -0.5066091   -0.3818520
24 months   (0%, 5%]             NA                -0.5388289   -0.6080267   -0.4696310
24 months   >5%                  NA                -0.5000651   -0.5750235   -0.4251066


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.9237607   -0.9701702   -0.8773511
6 months    NA                   NA                 0.0103561   -0.0263192    0.0470314
24 months   NA                   NA                -0.4929040   -0.5302309   -0.4555771


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       (0%, 5%]             0%                -0.0904256   -0.2106482    0.0297970
Birth       >5%                  0%                -0.1075787   -0.2263750    0.0112177
6 months    0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    (0%, 5%]             0%                -0.0371328   -0.1359565    0.0616909
6 months    >5%                  0%                 0.1531578    0.0525803    0.2537353
24 months   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   (0%, 5%]             0%                -0.0945983   -0.1872286   -0.0019680
24 months   >5%                  0%                -0.0558345   -0.1526401    0.0409711


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.0541295   -0.1139430    0.0056840
6 months    0%                   NA                -0.0097995   -0.0597009    0.0401019
24 months   0%                   NA                -0.0486734   -0.0966989   -0.0006480
