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
Birth       >=58 kg        16607   26419
Birth       <52 kg          4207   26419
Birth       [52-58) kg      5605   26419
6 months    >=58 kg        16418   28688
6 months    <52 kg          6386   28688
6 months    [52-58) kg      5884   28688
24 months   >=58 kg         4171    8035
24 months   <52 kg          2313    8035
24 months   [52-58) kg      1551    8035


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
![](/tmp/e9f57cde-b049-4edf-a5dd-8844086ef607/25ed6e50-00de-4e7b-9070-96a67410e71b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e9f57cde-b049-4edf-a5dd-8844086ef607/25ed6e50-00de-4e7b-9070-96a67410e71b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e9f57cde-b049-4edf-a5dd-8844086ef607/25ed6e50-00de-4e7b-9070-96a67410e71b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                 0.5546205    0.5187406    0.5905003
Birth       <52 kg               NA                 0.0304240   -0.0279372    0.0887852
Birth       [52-58) kg           NA                 0.3100812    0.2520905    0.3680719
6 months    >=58 kg              NA                -0.3051760   -0.3434143   -0.2669377
6 months    <52 kg               NA                -0.8122682   -0.8558051   -0.7687314
6 months    [52-58) kg           NA                -0.5269064   -0.5705283   -0.4832844
24 months   >=58 kg              NA                -0.7187303   -0.8276265   -0.6098340
24 months   <52 kg               NA                -1.2817508   -1.3576792   -1.2058224
24 months   [52-58) kg           NA                -0.9544035   -1.0529286   -0.8558785


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                 0.4259662    0.4046328    0.4472995
6 months    NA                   NA                -0.4839690   -0.5033313   -0.4646067
24 months   NA                   NA                -0.9531293   -0.9901811   -0.9160776


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       <52 kg               >=58 kg           -0.5241964   -0.5970884   -0.4513045
Birth       [52-58) kg           >=58 kg           -0.2445392   -0.3168033   -0.1722752
6 months    >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    <52 kg               >=58 kg           -0.5070922   -0.5662420   -0.4479424
6 months    [52-58) kg           >=58 kg           -0.2217303   -0.2806055   -0.1628552
24 months   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   <52 kg               >=58 kg           -0.5630206   -0.7024821   -0.4235590
24 months   [52-58) kg           >=58 kg           -0.2356733   -0.3869650   -0.0843815


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                -0.1286543   -0.1596493   -0.0976593
6 months    >=58 kg              NA                -0.1787930   -0.2125404   -0.1450455
24 months   >=58 kg              NA                -0.2343991   -0.3397850   -0.1290132
