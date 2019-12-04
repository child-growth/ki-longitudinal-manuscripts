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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hdlvry    n_cell       n
----------  -------  -------  ------
Birth       0           3502    6501
Birth       1           2999    6501
6 months    0           8253   15429
6 months    1           7176   15429
24 months   0           5012   10197
24 months   1           5185   10197


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
![](/tmp/dba568b2-e089-4f01-b3e7-8d4dd598ac18/79622fdf-f471-400f-9ba2-13f18c9ae9f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dba568b2-e089-4f01-b3e7-8d4dd598ac18/79622fdf-f471-400f-9ba2-13f18c9ae9f1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dba568b2-e089-4f01-b3e7-8d4dd598ac18/79622fdf-f471-400f-9ba2-13f18c9ae9f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.8176428   -0.8643082   -0.7709775
Birth       1                    NA                -0.8366263   -0.9125390   -0.7607136
6 months    0                    NA                -1.1155219   -1.1463458   -1.0846979
6 months    1                    NA                -1.3160578   -1.3849366   -1.2471790
24 months   0                    NA                -1.7685570   -1.8089935   -1.7281205
24 months   1                    NA                -1.9616046   -2.0167009   -1.9065082


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8135641   -0.8448283   -0.7822999
6 months    NA                   NA                -1.1777114   -1.2013903   -1.1540325
24 months   NA                   NA                -1.8625509   -1.8925975   -1.8325043


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -0.0189835   -0.1078501    0.0698832
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.2005360   -0.2755029   -0.1255690
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.1930475   -0.2595783   -0.1265168


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.0040788   -0.0293442    0.0375018
6 months    0                    NA                -0.0621895   -0.0811422   -0.0432369
24 months   0                    NA                -0.0939939   -0.1216014   -0.0663863
