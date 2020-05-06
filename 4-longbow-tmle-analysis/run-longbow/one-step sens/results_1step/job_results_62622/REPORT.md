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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hhwealth_quart    n_cell       n  outcome_variable 
----------  ---------------  -------  ------  -----------------
Birth       Wealth Q4           6727   26358  whz              
Birth       Wealth Q1           6378   26358  whz              
Birth       Wealth Q2           6318   26358  whz              
Birth       Wealth Q3           6935   26358  whz              
6 months    Wealth Q4           8916   31914  whz              
6 months    Wealth Q1           7309   31914  whz              
6 months    Wealth Q2           7375   31914  whz              
6 months    Wealth Q3           8314   31914  whz              
24 months   Wealth Q4           5689   20883  whz              
24 months   Wealth Q1           4769   20883  whz              
24 months   Wealth Q2           4951   20883  whz              
24 months   Wealth Q3           5474   20883  whz              


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
![](/tmp/f9cb1d1f-4476-43eb-bb4a-edf73c5e9f44/c2a26cf4-87c3-4c09-80c1-139ac650ec9c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f9cb1d1f-4476-43eb-bb4a-edf73c5e9f44/c2a26cf4-87c3-4c09-80c1-139ac650ec9c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f9cb1d1f-4476-43eb-bb4a-edf73c5e9f44/c2a26cf4-87c3-4c09-80c1-139ac650ec9c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            NA                -0.7694435   -0.8345362   -0.7043508
Birth       Wealth Q1            NA                -0.8230266   -0.8919639   -0.7540893
Birth       Wealth Q2            NA                -0.7802439   -0.8536169   -0.7068708
Birth       Wealth Q3            NA                -0.7813954   -0.8422623   -0.7205284
6 months    Wealth Q4            NA                -0.3083471   -0.3572564   -0.2594377
6 months    Wealth Q1            NA                -0.4541589   -0.5071674   -0.4011504
6 months    Wealth Q2            NA                -0.4045555   -0.4619278   -0.3471832
6 months    Wealth Q3            NA                -0.3631549   -0.4124091   -0.3139006
24 months   Wealth Q4            NA                -0.9493538   -0.9977280   -0.9009795
24 months   Wealth Q1            NA                -1.0382632   -1.0922804   -0.9842461
24 months   Wealth Q2            NA                -1.0050108   -1.0580522   -0.9519693
24 months   Wealth Q3            NA                -0.9827506   -1.0305336   -0.9349677


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7786484   -0.8112255   -0.7460713
6 months    NA                   NA                -0.3763599   -0.4011112   -0.3516086
24 months   NA                   NA                -0.9816268   -1.0062306   -0.9570229


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       Wealth Q1            Wealth Q4         -0.0535831   -0.1455817    0.0384156
Birth       Wealth Q2            Wealth Q4         -0.0108003   -0.1063108    0.0847102
Birth       Wealth Q3            Wealth Q4         -0.0119518   -0.0981428    0.0742391
6 months    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    Wealth Q1            Wealth Q4         -0.1458118   -0.2172801   -0.0743435
6 months    Wealth Q2            Wealth Q4         -0.0962084   -0.1710860   -0.0213309
6 months    Wealth Q3            Wealth Q4         -0.0548078   -0.1236266    0.0140111
24 months   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   Wealth Q1            Wealth Q4         -0.0889095   -0.1601825   -0.0176365
24 months   Wealth Q2            Wealth Q4         -0.0556570   -0.1264190    0.0151050
24 months   Wealth Q3            Wealth Q4         -0.0333969   -0.1001498    0.0333560


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            NA                -0.0092049   -0.0648031    0.0463933
6 months    Wealth Q4            NA                -0.0680128   -0.1105736   -0.0254521
24 months   Wealth Q4            NA                -0.0322730   -0.0734430    0.0088969
