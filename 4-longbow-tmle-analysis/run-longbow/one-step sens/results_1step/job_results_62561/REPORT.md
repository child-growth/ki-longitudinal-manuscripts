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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      gagebrth             n_cell       n  outcome_variable 
----------  ------------------  -------  ------  -----------------
Birth       Full or late term     21311   42977  haz              
Birth       Preterm                6554   42977  haz              
Birth       Early term            15112   42977  haz              
6 months    Full or late term     20960   41209  haz              
6 months    Preterm                5424   41209  haz              
6 months    Early term            14825   41209  haz              
24 months   Full or late term      9334   19045  haz              
24 months   Preterm                3135   19045  haz              
24 months   Early term             6576   19045  haz              


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
![](/tmp/ad300bb4-61db-48d6-a874-4d83175e55ff/94a36379-6e1f-46f9-b2a3-3fd3feff3bdf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ad300bb4-61db-48d6-a874-4d83175e55ff/94a36379-6e1f-46f9-b2a3-3fd3feff3bdf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ad300bb4-61db-48d6-a874-4d83175e55ff/94a36379-6e1f-46f9-b2a3-3fd3feff3bdf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.1644574   -0.2043218   -0.1245930
Birth       Preterm              NA                -1.3096428   -1.3802354   -1.2390501
Birth       Early term           NA                -0.5022990   -0.5440513   -0.4605467
6 months    Full or late term    NA                -0.6046158   -0.6404130   -0.5688187
6 months    Preterm              NA                -1.1562188   -1.2136908   -1.0987468
6 months    Early term           NA                -0.7364369   -0.7778123   -0.6950614
24 months   Full or late term    NA                -1.6123176   -1.6558312   -1.5688040
24 months   Preterm              NA                -1.9906660   -2.0561385   -1.9251935
24 months   Early term           NA                -1.6478086   -1.6983270   -1.5972901


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4276450   -0.4542297   -0.4010603
6 months    NA                   NA                -0.7098092   -0.7327476   -0.6868708
24 months   NA                   NA                -1.6743405   -1.7023108   -1.6463702


### Parameter: ATE


agecat      intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------  ------------------  -----------  -----------  -----------
Birth       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Preterm              Full or late term    -1.1451854   -1.2256870   -1.0646837
Birth       Early term           Full or late term    -0.3378416   -0.3946267   -0.2810565
6 months    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Preterm              Full or late term    -0.5516030   -0.6198100   -0.4833960
6 months    Early term           Full or late term    -0.1318210   -0.1871778   -0.0764642
24 months   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Preterm              Full or late term    -0.3783484   -0.4574757   -0.2992210
24 months   Early term           Full or late term    -0.0354910   -0.1031960    0.0322140


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.2631876   -0.2959448   -0.2304305
6 months    Full or late term    NA                -0.1051934   -0.1335399   -0.0768469
24 months   Full or late term    NA                -0.0620229   -0.0969825   -0.0270633
