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
Birth       0%            1281   2985  haz              
Birth       (0%, 5%]       839   2985  haz              
Birth       >5%            865   2985  haz              
6 months    0%            1916   4383  haz              
6 months    (0%, 5%]      1269   4383  haz              
6 months    >5%           1198   4383  haz              
24 months   0%            1522   3583  haz              
24 months   (0%, 5%]      1066   3583  haz              
24 months   >5%            995   3583  haz              


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
![](/tmp/e5f3acc5-9a06-4ef6-b06a-c5fe3645e720/f7b58041-21cd-451e-afb1-39f27cf8e4c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e5f3acc5-9a06-4ef6-b06a-c5fe3645e720/f7b58041-21cd-451e-afb1-39f27cf8e4c1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e5f3acc5-9a06-4ef6-b06a-c5fe3645e720/f7b58041-21cd-451e-afb1-39f27cf8e4c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -1.0182447   -1.0764590   -0.9600305
Birth       (0%, 5%]             NA                -1.0041143   -1.0865268   -0.9217019
Birth       >5%                  NA                -0.9245252   -0.9903074   -0.8587430
6 months    0%                   NA                -1.1726757   -1.2242348   -1.1211166
6 months    (0%, 5%]             NA                -1.2449886   -1.3149501   -1.1750271
6 months    >5%                  NA                -1.1409657   -1.2051581   -1.0767734
24 months   0%                   NA                -1.7082974   -1.7703210   -1.6462739
24 months   (0%, 5%]             NA                -1.7922318   -1.8777399   -1.7067237
24 months   >5%                  NA                -1.7505149   -1.8234472   -1.6775826


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------  ---------------  ----------  ----------  -----------
Birth       NA                   NA                -1.005129   -1.044492   -0.9657659
6 months    NA                   NA                -1.188982   -1.221254   -1.1567087
24 months   NA                   NA                -1.741494   -1.780511   -1.7024766


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0%                   0%                 0.0000000    0.0000000   0.0000000
Birth       (0%, 5%]             0%                 0.0141304   -0.0814548   0.1097156
Birth       >5%                  0%                 0.0937195    0.0111864   0.1762526
6 months    0%                   0%                 0.0000000    0.0000000   0.0000000
6 months    (0%, 5%]             0%                -0.0723129   -0.1592327   0.0146069
6 months    >5%                  0%                 0.0317100   -0.0504143   0.1138343
24 months   0%                   0%                 0.0000000    0.0000000   0.0000000
24 months   (0%, 5%]             0%                -0.0839344   -0.1887929   0.0209242
24 months   >5%                  0%                -0.0422175   -0.1371010   0.0526660


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0%                   NA                 0.0131158   -0.0292040   0.0554355
6 months    0%                   NA                -0.0163059   -0.0575596   0.0249478
24 months   0%                   NA                -0.0331962   -0.0812963   0.0149039
