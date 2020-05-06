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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mage       n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       [20-30)     39880   65727  haz              
Birth       <20         14954   65727  haz              
Birth       >=30        10893   65727  haz              
6 months    [20-30)     37697   61803  haz              
6 months    <20         13133   61803  haz              
6 months    >=30        10973   61803  haz              
24 months   [20-30)     16514   28137  haz              
24 months   <20          6003   28137  haz              
24 months   >=30         5620   28137  haz              


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
![](/tmp/92edafc0-675a-448a-ba54-d6daf7066392/7872e5e6-7a6b-49ef-bb55-a924a49f40f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/92edafc0-675a-448a-ba54-d6daf7066392/7872e5e6-7a6b-49ef-bb55-a924a49f40f2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/92edafc0-675a-448a-ba54-d6daf7066392/7872e5e6-7a6b-49ef-bb55-a924a49f40f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              NA                -0.4799061   -0.4979497   -0.4618626
Birth       <20                  NA                -0.7369263   -0.7776918   -0.6961608
Birth       >=30                 NA                -0.3750144   -0.4122036   -0.3378251
6 months    [20-30)              NA                -0.8061277   -0.8245051   -0.7877503
6 months    <20                  NA                -0.9287708   -0.9699189   -0.8876226
6 months    >=30                 NA                -0.7988286   -0.8334344   -0.7642228
24 months   [20-30)              NA                -1.7450257   -1.7718429   -1.7182085
24 months   <20                  NA                -1.8328675   -1.8934517   -1.7722834
24 months   >=30                 NA                -1.7385155   -1.7824690   -1.6945621


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5154953   -0.5300028   -0.5009878
6 months    NA                   NA                -0.8345678   -0.8492512   -0.8198844
24 months   NA                   NA                -1.7625375   -1.7830618   -1.7420133


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       <20                  [20-30)           -0.2570201   -0.3015338   -0.2125065
Birth       >=30                 [20-30)            0.1048918    0.0636267    0.1461568
6 months    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    <20                  [20-30)           -0.1226430   -0.1676886   -0.0775975
6 months    >=30                 [20-30)            0.0072991   -0.0318450    0.0464433
24 months   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   <20                  [20-30)           -0.0878419   -0.1539806   -0.0217031
24 months   >=30                 [20-30)            0.0065101   -0.0447859    0.0578062


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              NA                -0.0355892   -0.0467180   -0.0244603
6 months    [20-30)              NA                -0.0284401   -0.0398613   -0.0170188
24 months   [20-30)              NA                -0.0175118   -0.0348328   -0.0001909
