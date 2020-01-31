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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mhtcm           n_cell       n
----------  -------------  -------  ------
Birth       >=155 cm         25885   46566
Birth       <151 cm          12900   46566
Birth       [151-155) cm      7781   46566
6 months    >=155 cm         26985   52403
6 months    <151 cm          16125   52403
6 months    [151-155) cm      9293   52403
24 months   >=155 cm          9092   23302
24 months   <151 cm           9411   23302
24 months   [151-155) cm      4799   23302


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
![](/tmp/8823fda9-9ef4-42f5-af5a-bb0207ed2ccf/428295a5-88be-45d8-b22a-d93d061eedff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8823fda9-9ef4-42f5-af5a-bb0207ed2ccf/428295a5-88be-45d8-b22a-d93d061eedff/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8823fda9-9ef4-42f5-af5a-bb0207ed2ccf/428295a5-88be-45d8-b22a-d93d061eedff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.7085754   -0.7397103   -0.6774405
Birth       <151 cm              NA                -0.8702450   -0.9411663   -0.7993237
Birth       [151-155) cm         NA                -0.7538449   -0.8091702   -0.6985196
6 months    >=155 cm             NA                -0.0018186   -0.0252155    0.0215783
6 months    <151 cm              NA                -0.3011938   -0.3457174   -0.2566703
6 months    [151-155) cm         NA                -0.0761018   -0.1168383   -0.0353653
24 months   >=155 cm             NA                -0.4933876   -0.5300475   -0.4567277
24 months   <151 cm              NA                -1.0750884   -1.1086697   -1.0415070
24 months   [151-155) cm         NA                -0.6028668   -0.6458243   -0.5599093


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7358493   -0.7583823   -0.7133164
6 months    NA                   NA                -0.0549502   -0.0717247   -0.0381756
24 months   NA                   NA                -0.6203191   -0.6400570   -0.6005812


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       <151 cm              >=155 cm          -0.1616696   -0.2386009   -0.0847383
Birth       [151-155) cm         >=155 cm          -0.0452695   -0.1079690    0.0174300
6 months    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    <151 cm              >=155 cm          -0.2993752   -0.3497623   -0.2489882
6 months    [151-155) cm         >=155 cm          -0.0742832   -0.1212637   -0.0273027
24 months   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   <151 cm              >=155 cm          -0.5817008   -0.6311636   -0.5322380
24 months   [151-155) cm         >=155 cm          -0.1094792   -0.1658353   -0.0531231


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.0272739   -0.0490584   -0.0054895
6 months    >=155 cm             NA                -0.0531316   -0.0707691   -0.0354940
24 months   >=155 cm             NA                -0.1269315   -0.1580617   -0.0958013
