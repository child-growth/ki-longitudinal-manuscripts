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
Birth       Wealth Q4           7673   31607  haz              
Birth       Wealth Q1           7929   31607  haz              
Birth       Wealth Q2           7742   31607  haz              
Birth       Wealth Q3           8263   31607  haz              
6 months    Wealth Q4           8928   31942  haz              
6 months    Wealth Q1           7309   31942  haz              
6 months    Wealth Q2           7380   31942  haz              
6 months    Wealth Q3           8325   31942  haz              
24 months   Wealth Q4           5713   20929  haz              
24 months   Wealth Q1           4776   20929  haz              
24 months   Wealth Q2           4960   20929  haz              
24 months   Wealth Q3           5480   20929  haz              


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
![](/tmp/60f15d76-e6c6-4d34-885f-5c0e0c9649ab/6b585359-5464-4aac-b591-46cd83541a35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/60f15d76-e6c6-4d34-885f-5c0e0c9649ab/6b585359-5464-4aac-b591-46cd83541a35/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/60f15d76-e6c6-4d34-885f-5c0e0c9649ab/6b585359-5464-4aac-b591-46cd83541a35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       Wealth Q4            NA                -1.335356   -1.402735   -1.267977
Birth       Wealth Q1            NA                -1.378248   -1.456522   -1.299973
Birth       Wealth Q2            NA                -1.361008   -1.441314   -1.280702
Birth       Wealth Q3            NA                -1.354134   -1.420416   -1.287852
6 months    Wealth Q4            NA                -1.229083   -1.273486   -1.184680
6 months    Wealth Q1            NA                -1.290873   -1.340334   -1.241411
6 months    Wealth Q2            NA                -1.282041   -1.331284   -1.232798
6 months    Wealth Q3            NA                -1.248256   -1.291614   -1.204898
24 months   Wealth Q4            NA                -1.907466   -1.958954   -1.855977
24 months   Wealth Q1            NA                -2.118196   -2.180430   -2.055963
24 months   Wealth Q2            NA                -2.061095   -2.121413   -2.000777
24 months   Wealth Q3            NA                -2.030475   -2.084986   -1.975965


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.352985   -1.382952   -1.323019
6 months    NA                   NA                -1.249666   -1.273778   -1.225554
24 months   NA                   NA                -2.006679   -2.035833   -1.977524


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       Wealth Q1            Wealth Q4         -0.0428914   -0.1468350    0.0610522
Birth       Wealth Q2            Wealth Q4         -0.0256519   -0.1308115    0.0795077
Birth       Wealth Q3            Wealth Q4         -0.0187778   -0.1139031    0.0763474
6 months    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    Wealth Q1            Wealth Q4         -0.0617895   -0.1259198    0.0023407
6 months    Wealth Q2            Wealth Q4         -0.0529579   -0.1170898    0.0111741
6 months    Wealth Q3            Wealth Q4         -0.0191729   -0.0787789    0.0404331
24 months   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   Wealth Q1            Wealth Q4         -0.2107307   -0.2889089   -0.1325526
24 months   Wealth Q2            Wealth Q4         -0.1536290   -0.2302750   -0.0769830
24 months   Wealth Q3            Wealth Q4         -0.1230096   -0.1952213   -0.0507980


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            NA                -0.0176293   -0.0769883    0.0417297
6 months    Wealth Q4            NA                -0.0205830   -0.0581559    0.0169898
24 months   Wealth Q4            NA                -0.0992129   -0.1434323   -0.0549936
