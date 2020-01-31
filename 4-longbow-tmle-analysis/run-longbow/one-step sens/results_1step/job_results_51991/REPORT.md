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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mwtkg         n_cell       n
----------  -----------  -------  ------
Birth       >=58 kg        16274   25587
Birth       <52 kg          3938   25587
Birth       [52-58) kg      5375   25587
6 months    >=58 kg        16400   28654
6 months    <52 kg          6377   28654
6 months    [52-58) kg      5877   28654
24 months   >=58 kg         4097    7932
24 months   <52 kg          2296    7932
24 months   [52-58) kg      1539    7932


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
![](/tmp/3e2857f7-7b03-44eb-bc80-c3e6def28e7b/e9aef1de-ba5b-4b3a-be92-f5b4ec2bbe4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3e2857f7-7b03-44eb-bc80-c3e6def28e7b/e9aef1de-ba5b-4b3a-be92-f5b4ec2bbe4c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3e2857f7-7b03-44eb-bc80-c3e6def28e7b/e9aef1de-ba5b-4b3a-be92-f5b4ec2bbe4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                -0.7507140   -0.7882502   -0.7131778
Birth       <52 kg               NA                -0.9878816   -1.0477660   -0.9279973
Birth       [52-58) kg           NA                -0.8988442   -0.9546471   -0.8430414
6 months    >=58 kg              NA                 0.4482710    0.4152015    0.4813404
6 months    <52 kg               NA                 0.1520917    0.1076003    0.1965830
6 months    [52-58) kg           NA                 0.3167996    0.2732686    0.3603306
24 months   >=58 kg              NA                 0.2910131    0.1910525    0.3909738
24 months   <52 kg               NA                -0.1520828   -0.2136064   -0.0905591
24 months   [52-58) kg           NA                 0.0849601   -0.0082805    0.1782008


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8281276   -0.8546518   -0.8016033
6 months    NA                   NA                 0.3436838    0.3237316    0.3636360
24 months   NA                   NA                 0.0896330    0.0536411    0.1256249


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       <52 kg               >=58 kg           -0.2371676   -0.3078567   -0.1664786
Birth       [52-58) kg           >=58 kg           -0.1481302   -0.2153759   -0.0808846
6 months    >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    <52 kg               >=58 kg           -0.2961793   -0.3514990   -0.2408596
6 months    [52-58) kg           >=58 kg           -0.1314714   -0.1860373   -0.0769054
24 months   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   <52 kg               >=58 kg           -0.4430959   -0.5649233   -0.3212685
24 months   [52-58) kg           >=58 kg           -0.2060530   -0.3452703   -0.0668357


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                -0.0774136   -0.1036614   -0.0511657
6 months    >=58 kg              NA                -0.1045872   -0.1311013   -0.0780730
24 months   >=58 kg              NA                -0.2013801   -0.2965008   -0.1062594
