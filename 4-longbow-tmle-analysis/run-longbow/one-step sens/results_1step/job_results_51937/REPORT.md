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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      gagebrth             n_cell       n
----------  ------------------  -------  ------
Birth       Full or late term     19749   39442
Birth       Preterm                5733   39442
Birth       Early term            13960   39442
6 months    Full or late term     19094   39381
6 months    Preterm                6229   39381
6 months    Early term            14058   39381
24 months   Full or late term      8408   17339
24 months   Preterm                2828   17339
24 months   Early term             6103   17339


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
![](/tmp/be6db138-a706-4ca5-bda4-fe4652c824e7/768bf758-19f0-465a-8e4d-6c596ebfc590/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/be6db138-a706-4ca5-bda4-fe4652c824e7/768bf758-19f0-465a-8e4d-6c596ebfc590/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/be6db138-a706-4ca5-bda4-fe4652c824e7/768bf758-19f0-465a-8e4d-6c596ebfc590/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.0515294   -0.0920097   -0.0110492
Birth       Preterm              NA                -1.1530700   -1.2256348   -1.0805052
Birth       Early term           NA                -0.4047375   -0.4496464   -0.3598286
6 months    Full or late term    NA                -0.5512910   -0.5907646   -0.5118174
6 months    Preterm              NA                -1.0512551   -1.1066925   -0.9958177
6 months    Early term           NA                -0.7258234   -0.7676248   -0.6840219
24 months   Full or late term    NA                -1.5642424   -1.6067628   -1.5217219
24 months   Preterm              NA                -1.9131487   -1.9780702   -1.8482271
24 months   Early term           NA                -1.5953940   -1.6449887   -1.5457993


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.3148565   -0.3428556   -0.2868574
6 months    NA                   NA                -0.6966769   -0.7196462   -0.6737077
24 months   NA                   NA                -1.6233357   -1.6511740   -1.5954974


### Parameter: ATE


agecat      intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------  ------------------  -----------  -----------  -----------
Birth       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Preterm              Full or late term    -1.1015406   -1.1838373   -1.0192439
Birth       Early term           Full or late term    -0.3532080   -0.4124426   -0.2939735
6 months    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Preterm              Full or late term    -0.4999641   -0.5686307   -0.4312974
6 months    Early term           Full or late term    -0.1745324   -0.2326285   -0.1164362
24 months   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Preterm              Full or late term    -0.3489063   -0.4266461   -0.2711664
24 months   Early term           Full or late term    -0.0311516   -0.0969510    0.0346478


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.2633271   -0.2955992   -0.2310550
6 months    Full or late term    NA                -0.1453859   -0.1787013   -0.1120705
24 months   Full or late term    NA                -0.0590933   -0.0930052   -0.0251814
