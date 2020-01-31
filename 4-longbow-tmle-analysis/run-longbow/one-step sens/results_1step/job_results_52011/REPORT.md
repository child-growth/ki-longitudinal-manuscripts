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
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
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

agecat      perdiar24    n_cell       n
----------  ----------  -------  ------
Birth       0%              455    2311
Birth       (0%, 5%]       1366    2311
Birth       >5%             490    2311
6 months    0%             2084   11684
6 months    (0%, 5%]       6492   11684
6 months    >5%            3108   11684
24 months   0%             1594    9115
24 months   (0%, 5%]       5581    9115
24 months   >5%            1940    9115


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/e8df9647-b3d6-4e1b-92a2-bffebe93dc7b/93c046ac-3483-4e6a-9a35-3c55b3870d35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e8df9647-b3d6-4e1b-92a2-bffebe93dc7b/93c046ac-3483-4e6a-9a35-3c55b3870d35/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e8df9647-b3d6-4e1b-92a2-bffebe93dc7b/93c046ac-3483-4e6a-9a35-3c55b3870d35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.2056352   -0.3530461   -0.0582244
Birth       (0%, 5%]             NA                -0.3401573   -0.4136704   -0.2666441
Birth       >5%                  NA                -0.4579366   -0.5827645   -0.3331088
6 months    0%                   NA                -0.0934309   -0.2131491    0.0262872
6 months    (0%, 5%]             NA                -0.1590804   -0.2030127   -0.1151481
6 months    >5%                  NA                -0.1564815   -0.2093682   -0.1035949
24 months   0%                   NA                -0.7561846   -0.8704549   -0.6419143
24 months   (0%, 5%]             NA                -0.7822450   -0.8289479   -0.7355421
24 months   >5%                  NA                -0.8120334   -0.8775999   -0.7464668


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.3406880   -0.3938445   -0.2875315
6 months    NA                   NA                -0.1546992   -0.1833950   -0.1260035
24 months   NA                   NA                -0.7886481   -0.8207767   -0.7565196


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       (0%, 5%]             0%                -0.1345220   -0.2987117    0.0296677
Birth       >5%                  0%                -0.2523014   -0.4441767   -0.0604261
6 months    0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    (0%, 5%]             0%                -0.0656495   -0.1927388    0.0614398
6 months    >5%                  0%                -0.0630506   -0.1933827    0.0672814
24 months   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   (0%, 5%]             0%                -0.0260604   -0.1497324    0.0976116
24 months   >5%                  0%                -0.0558488   -0.1878513    0.0761538


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0%                   NA                -0.1350528   -0.2711857   0.0010801
6 months    0%                   NA                -0.0612683   -0.1775862   0.0550496
24 months   0%                   NA                -0.0324635   -0.1433940   0.0784671
