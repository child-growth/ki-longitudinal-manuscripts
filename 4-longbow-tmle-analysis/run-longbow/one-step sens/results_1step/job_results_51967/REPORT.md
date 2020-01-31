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
Birth       0%              504    2512
Birth       (0%, 5%]       1483    2512
Birth       >5%             525    2512
6 months    0%             2079   11680
6 months    (0%, 5%]       6495   11680
6 months    >5%            3106   11680
24 months   0%             1598    9131
24 months   (0%, 5%]       5591    9131
24 months   >5%            1942    9131


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
![](/tmp/65836759-f4b4-41d1-a034-3f69cf6ddb3a/d7283a37-2fa8-4c5e-a28e-3064cb29a00e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/65836759-f4b4-41d1-a034-3f69cf6ddb3a/d7283a37-2fa8-4c5e-a28e-3064cb29a00e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/65836759-f4b4-41d1-a034-3f69cf6ddb3a/d7283a37-2fa8-4c5e-a28e-3064cb29a00e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------  ---------------  ----------  ----------  -----------
Birth       0%                   NA                -1.094765   -1.212834   -0.9766954
Birth       (0%, 5%]             NA                -1.033949   -1.100178   -0.9677201
Birth       >5%                  NA                -1.027578   -1.143922   -0.9112345
6 months    0%                   NA                -1.252271   -1.357119   -1.1474225
6 months    (0%, 5%]             NA                -1.166807   -1.209300   -1.1243146
6 months    >5%                  NA                -1.267565   -1.317195   -1.2179344
24 months   0%                   NA                -1.645050   -1.749738   -1.5403610
24 months   (0%, 5%]             NA                -1.694199   -1.735637   -1.6527611
24 months   >5%                  NA                -1.805752   -1.860686   -1.7508179


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------  ---------------  ----------  ----------  -----------
Birth       NA                   NA                -1.036947   -1.086578   -0.9873156
6 months    NA                   NA                -1.211325   -1.238387   -1.1842633
24 months   NA                   NA                -1.709003   -1.739743   -1.6782642


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       (0%, 5%]             0%                 0.0608156   -0.0701691    0.1918003
Birth       >5%                  0%                 0.0671866   -0.0951586    0.2295319
6 months    0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    (0%, 5%]             0%                 0.0854633   -0.0277680    0.1986946
6 months    >5%                  0%                -0.0152940   -0.1313880    0.1008001
24 months   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   (0%, 5%]             0%                -0.0491495   -0.1605969    0.0622979
24 months   >5%                  0%                -0.1607022   -0.2779295   -0.0434749


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0%                   NA                 0.0578180   -0.0504635   0.1660995
6 months    0%                   NA                 0.0409456   -0.0615904   0.1434816
24 months   0%                   NA                -0.0639539   -0.1659056   0.0379979
