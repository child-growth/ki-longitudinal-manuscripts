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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      gagebrth             n_cell       n  outcome_variable 
----------  ------------------  -------  ------  -----------------
Birth       Full or late term     19879   38213  whz              
Birth       Preterm                4627   38213  whz              
Birth       Early term            13707   38213  whz              
6 months    Full or late term     20943   41182  whz              
6 months    Preterm                5424   41182  whz              
6 months    Early term            14815   41182  whz              
24 months   Full or late term      9281   18953  whz              
24 months   Preterm                3133   18953  whz              
24 months   Early term             6539   18953  whz              


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
![](/tmp/701ebfd6-ea64-47cd-943f-ae67eb83c4e4/0ab2937e-9292-4277-ae71-ff81d6bb5dcd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/701ebfd6-ea64-47cd-943f-ae67eb83c4e4/0ab2937e-9292-4277-ae71-ff81d6bb5dcd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/701ebfd6-ea64-47cd-943f-ae67eb83c4e4/0ab2937e-9292-4277-ae71-ff81d6bb5dcd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.8954703   -0.9381191   -0.8528215
Birth       Preterm              NA                -1.0292691   -1.0977972   -0.9607410
Birth       Early term           NA                -0.9821706   -1.0286807   -0.9356606
6 months    Full or late term    NA                -0.0349886   -0.0706429    0.0006658
6 months    Preterm              NA                -0.1773888   -0.2351714   -0.1196062
6 months    Early term           NA                -0.0538175   -0.0968521   -0.0107828
24 months   Full or late term    NA                -0.6019488   -0.6371729   -0.5667247
24 months   Preterm              NA                -0.8102480   -0.8667752   -0.7537208
24 months   Early term           NA                -0.5932522   -0.6331859   -0.5533184


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.9484151   -0.9764645   -0.9203657
6 months    NA                   NA                -0.0581271   -0.0816963   -0.0345579
24 months   NA                   NA                -0.6273716   -0.6508591   -0.6038841


### Parameter: ATE


agecat      intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------  ------------------  -----------  -----------  -----------
Birth       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Preterm              Full or late term    -0.1337988   -0.2140721   -0.0535255
Birth       Early term           Full or late term    -0.0867003   -0.1494182   -0.0239825
6 months    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Preterm              Full or late term    -0.1424002   -0.2103102   -0.0744903
6 months    Early term           Full or late term    -0.0188289   -0.0747616    0.0371037
24 months   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Preterm              Full or late term    -0.2082992   -0.2745955   -0.1420028
24 months   Early term           Full or late term     0.0086966   -0.0441531    0.0615464


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.0529448   -0.0855288   -0.0203608
6 months    Full or late term    NA                -0.0231386   -0.0501741    0.0038970
24 months   Full or late term    NA                -0.0254228   -0.0531462    0.0023006
