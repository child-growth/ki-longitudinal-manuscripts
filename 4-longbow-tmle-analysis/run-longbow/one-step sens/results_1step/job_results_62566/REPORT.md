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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      vagbrth    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       0            3751   54390  haz              
Birth       1           50639   54390  haz              
6 months    0            4561   48987  haz              
6 months    1           44426   48987  haz              
24 months   0            1739   19882  haz              
24 months   1           18143   19882  haz              


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
![](/tmp/71c0d2d0-066a-4938-a593-607bf5f7dac7/9e1e16a8-d650-4c8b-93a7-c57cd43f860c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/71c0d2d0-066a-4938-a593-607bf5f7dac7/9e1e16a8-d650-4c8b-93a7-c57cd43f860c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/71c0d2d0-066a-4938-a593-607bf5f7dac7/9e1e16a8-d650-4c8b-93a7-c57cd43f860c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.1310670    0.0594955    0.2026384
Birth       1                    NA                -0.5635393   -0.5838483   -0.5432303
6 months    0                    NA                -0.6020828   -0.6774835   -0.5266820
6 months    1                    NA                -0.7606867   -0.7828677   -0.7385057
24 months   0                    NA                -1.3100740   -1.4299775   -1.1901706
24 months   1                    NA                -1.5521684   -1.5925404   -1.5117964


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5457555   -0.5649420   -0.5265689
6 months    NA                   NA                -0.7498982   -0.7705585   -0.7292379
24 months   NA                   NA                -1.5405468   -1.5771426   -1.5039510


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -0.6946063   -0.7689453   -0.6202672
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1586039   -0.2371851   -0.0800228
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.2420943   -0.3682205   -0.1159682


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.6768224   -0.7458915   -0.6077534
6 months    0                    NA                -0.1478154   -0.2205092   -0.0751217
24 months   0                    NA                -0.2304728   -0.3460154   -0.1149301
