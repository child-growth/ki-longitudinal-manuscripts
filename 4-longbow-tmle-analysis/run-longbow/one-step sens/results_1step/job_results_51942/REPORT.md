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
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      vagbrth    n_cell       n
----------  --------  -------  ------
Birth       0            2843   48505
Birth       1           45662   48505
6 months    0            4523   48594
6 months    1           44071   48594
24 months   0            1636   18713
24 months   1           17077   18713


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
![](/tmp/5dd8ad42-384b-42ea-ad5c-b4efa7e2929b/f0f0da76-7d51-4d54-a9ee-6652df244ddc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5dd8ad42-384b-42ea-ad5c-b4efa7e2929b/f0f0da76-7d51-4d54-a9ee-6652df244ddc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5dd8ad42-384b-42ea-ad5c-b4efa7e2929b/f0f0da76-7d51-4d54-a9ee-6652df244ddc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 2.4132926    2.2684430    2.5581422
Birth       1                    NA                -0.4513423   -0.4725721   -0.4301124
6 months    0                    NA                -0.5983150   -0.6747729   -0.5218570
6 months    1                    NA                -0.7629491   -0.7853500   -0.7405483
24 months   0                    NA                -1.3002907   -1.4592620   -1.1413194
24 months   1                    NA                -1.5609131   -1.6117181   -1.5101081


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4271257   -0.4472354   -0.4070159
6 months    NA                   NA                -0.7497597   -0.7706481   -0.7288713
24 months   NA                   NA                -1.5464921   -1.5915952   -1.5013890


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -2.8646349   -3.0112887   -2.7179811
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1646342   -0.2442305   -0.0850378
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.2606225   -0.4278273   -0.0934176


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -2.8404183   -2.9849741   -2.6958625
6 months    0                    NA                -0.1514448   -0.2251950   -0.0776945
24 months   0                    NA                -0.2462014   -0.3996638   -0.0927391
