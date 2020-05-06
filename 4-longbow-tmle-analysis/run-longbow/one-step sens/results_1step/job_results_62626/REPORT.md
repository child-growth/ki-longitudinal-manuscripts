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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
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
* delta_vagbrth
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

agecat      hfoodsec                n_cell       n  outcome_variable 
----------  ---------------------  -------  ------  -----------------
Birth       Food Secure               8207   16461  whz              
Birth       Mildly Food Insecure      5609   16461  whz              
Birth       Food Insecure             2645   16461  whz              
6 months    Food Secure              12347   24358  whz              
6 months    Mildly Food Insecure      8096   24358  whz              
6 months    Food Insecure             3915   24358  whz              
24 months   Food Secure               7592   15303  whz              
24 months   Mildly Food Insecure      5050   15303  whz              
24 months   Food Insecure             2661   15303  whz              


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
![](/tmp/51ac575d-249a-42c8-bcd5-f885e3fb7ed1/276cc2b2-aee8-42ce-8174-44a477464eba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/51ac575d-249a-42c8-bcd5-f885e3fb7ed1/276cc2b2-aee8-42ce-8174-44a477464eba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/51ac575d-249a-42c8-bcd5-f885e3fb7ed1/276cc2b2-aee8-42ce-8174-44a477464eba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------  ---------------  -----------  -----------  -----------
Birth       Food Secure            NA                -0.7816355   -0.8685914   -0.6946796
Birth       Mildly Food Insecure   NA                -0.7952371   -0.8749578   -0.7155165
Birth       Food Insecure          NA                -0.7901201   -0.9349598   -0.6452804
6 months    Food Secure            NA                -0.4950422   -0.5689283   -0.4211560
6 months    Mildly Food Insecure   NA                -0.4808984   -0.6293058   -0.3324910
6 months    Food Insecure          NA                -0.5357876   -0.6524412   -0.4191340
24 months   Food Secure            NA                -1.1615422   -1.2363407   -1.0867438
24 months   Mildly Food Insecure   NA                -1.1532643   -1.2829585   -1.0235700
24 months   Food Insecure          NA                -1.1927450   -1.3296499   -1.0558402


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7919078   -0.8352146   -0.7486010
6 months    NA                   NA                -0.4995137   -0.5404898   -0.4585376
24 months   NA                   NA                -1.1671392   -1.2095640   -1.1247143


### Parameter: ATE


agecat      intervention_level     baseline_level      estimate     ci_lower    ci_upper
----------  ---------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
Birth       Mildly Food Insecure   Food Secure       -0.0136016   -0.1302250   0.1030218
Birth       Food Insecure          Food Secure       -0.0084846   -0.1765862   0.1596170
6 months    Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
6 months    Mildly Food Insecure   Food Secure        0.0141437   -0.1504454   0.1787328
6 months    Food Insecure          Food Secure       -0.0407454   -0.1772112   0.0957203
24 months   Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
24 months   Mildly Food Insecure   Food Secure        0.0082780   -0.1396067   0.1561626
24 months   Food Insecure          Food Secure       -0.0312028   -0.1849242   0.1225186


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure          NA                -0.0102723   -0.0867320   0.0661874
6 months    Food Secure          NA                -0.0044716   -0.0667634   0.0578203
24 months   Food Secure          NA                -0.0055969   -0.0665991   0.0554052
