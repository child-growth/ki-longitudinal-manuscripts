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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      nhh          n_cell      n
----------  ----------  -------  -----
Birth       3 or less        69    443
Birth       4-5             170    443
Birth       6-7             117    443
Birth       8+               87    443
6 months    3 or less       616   3438
6 months    4-5            1494   3438
6 months    6-7             827   3438
6 months    8+              501   3438
24 months   3 or less       466   2503
24 months   4-5            1084   2503
24 months   6-7             583   2503
24 months   8+              370   2503


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
![](/tmp/2bd36011-db86-4b7c-a3d3-5b275684bf4d/1a36dede-3a36-4214-8033-ecfc661521b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2bd36011-db86-4b7c-a3d3-5b275684bf4d/1a36dede-3a36-4214-8033-ecfc661521b4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2bd36011-db86-4b7c-a3d3-5b275684bf4d/1a36dede-3a36-4214-8033-ecfc661521b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            NA                -0.0955974   -0.4204634    0.2292686
Birth       4-5                  NA                -0.5119195   -0.7629641   -0.2608748
Birth       6-7                  NA                -0.5195878   -0.8314427   -0.2077330
Birth       8+                   NA                -0.0954078   -0.3980502    0.2072345
6 months    3 or less            NA                -1.3261581   -1.4487698   -1.2035464
6 months    4-5                  NA                -1.4409179   -1.5002292   -1.3816066
6 months    6-7                  NA                -1.3506881   -1.4396631   -1.2617131
6 months    8+                   NA                -1.4316422   -1.5683712   -1.2949132
24 months   3 or less            NA                -1.7292357   -1.8333306   -1.6251407
24 months   4-5                  NA                -1.7666385   -1.8358677   -1.6974093
24 months   6-7                  NA                -1.6695913   -1.7808607   -1.5583219
24 months   8+                   NA                -1.9059125   -2.0195075   -1.7923175


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.3709029   -0.5165063   -0.2252995
6 months    NA                   NA                -1.3993439   -1.4365819   -1.3621058
24 months   NA                   NA                -1.7534096   -1.7955868   -1.7112324


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       4-5                  3 or less         -0.4163220   -0.8279406   -0.0047035
Birth       6-7                  3 or less         -0.4239904   -0.8742579    0.0262771
Birth       8+                   3 or less          0.0001896   -0.4437154    0.4440946
6 months    3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    4-5                  3 or less         -0.1147598   -0.2492496    0.0197300
6 months    6-7                  3 or less         -0.0245300   -0.1750094    0.1259494
6 months    8+                   3 or less         -0.1054841   -0.2880719    0.0771038
24 months   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   4-5                  3 or less         -0.0374028   -0.1611123    0.0863067
24 months   6-7                  3 or less          0.0596444   -0.0916401    0.2109288
24 months   8+                   3 or less         -0.1766769   -0.3297968   -0.0235569


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       3 or less            NA                -0.2753055   -0.5850590   0.0344480
6 months    3 or less            NA                -0.0731857   -0.1895187   0.0431472
24 months   3 or less            NA                -0.0241739   -0.1217544   0.0734066
