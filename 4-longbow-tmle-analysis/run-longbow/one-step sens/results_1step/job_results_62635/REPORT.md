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
Birth       0%              552   5208  whz              
Birth       (0%, 5%]       3617   5208  whz              
Birth       >5%            1039   5208  whz              
6 months    0%              909   9896  whz              
6 months    (0%, 5%]       6809   9896  whz              
6 months    >5%            2178   9896  whz              
24 months   0%              599   8320  whz              
24 months   (0%, 5%]       6256   8320  whz              
24 months   >5%            1465   8320  whz              


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
![](/tmp/7b8317e4-5447-4eed-aba3-a9084237af06/ccda64ad-83b3-45d8-88d5-8e9cf4513e04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7b8317e4-5447-4eed-aba3-a9084237af06/ccda64ad-83b3-45d8-88d5-8e9cf4513e04/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7b8317e4-5447-4eed-aba3-a9084237af06/ccda64ad-83b3-45d8-88d5-8e9cf4513e04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.8484162   -1.0071786   -0.6896538
Birth       (0%, 5%]             NA                -0.7995230   -0.8555022   -0.7435439
Birth       >5%                  NA                -0.8348011   -0.9210329   -0.7485693
6 months    0%                   NA                -0.0753700   -0.2058158    0.0550758
6 months    (0%, 5%]             NA                -0.2386424   -0.2853907   -0.1918941
6 months    >5%                  NA                -0.2461834   -0.3214020   -0.1709649
24 months   0%                   NA                -0.8825810   -0.9975786   -0.7675835
24 months   (0%, 5%]             NA                -0.9220182   -0.9660715   -0.8779649
24 months   >5%                  NA                -0.9279135   -1.0059368   -0.8498902


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8155847   -0.8567475   -0.7744218
6 months    NA                   NA                -0.2271897   -0.2605442   -0.1938351
24 months   NA                   NA                -0.9084713   -0.9426831   -0.8742594


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       (0%, 5%]             0%                 0.0488932   -0.1188855    0.2166719
Birth       >5%                  0%                 0.0136151   -0.1664272    0.1936574
6 months    0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    (0%, 5%]             0%                -0.1632724   -0.3018409   -0.0247039
6 months    >5%                  0%                -0.1708134   -0.3212716   -0.0203552
24 months   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   (0%, 5%]             0%                -0.0394371   -0.1625867    0.0837124
24 months   >5%                  0%                -0.0453325   -0.1842580    0.0935929


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  -------------------  ---------------  -----------  ----------  -----------
Birth       0%                   NA                 0.0328315   -0.118951    0.1846141
6 months    0%                   NA                -0.1518196   -0.279253   -0.0243863
24 months   0%                   NA                -0.0258902   -0.137490    0.0857096
