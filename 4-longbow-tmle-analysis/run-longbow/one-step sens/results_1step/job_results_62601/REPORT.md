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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      brthmon    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       1            4149   52937  whz              
Birth       2            3894   52937  whz              
Birth       3            4487   52937  whz              
Birth       4            3878   52937  whz              
Birth       5            3481   52937  whz              
Birth       6            3827   52937  whz              
Birth       7            4404   52937  whz              
Birth       8            4799   52937  whz              
Birth       9            5001   52937  whz              
Birth       10           4943   52937  whz              
Birth       11           4897   52937  whz              
Birth       12           5177   52937  whz              
6 months    1            4152   58096  whz              
6 months    2            4154   58096  whz              
6 months    3            5092   58096  whz              
6 months    4            4428   58096  whz              
6 months    5            4257   58096  whz              
6 months    6            4332   58096  whz              
6 months    7            5041   58096  whz              
6 months    8            5565   58096  whz              
6 months    9            5350   58096  whz              
6 months    10           5293   58096  whz              
6 months    11           5234   58096  whz              
6 months    12           5198   58096  whz              
24 months   1            1512   24375  whz              
24 months   2            2097   24375  whz              
24 months   3            2417   24375  whz              
24 months   4            1939   24375  whz              
24 months   5            1702   24375  whz              
24 months   6            1829   24375  whz              
24 months   7            2235   24375  whz              
24 months   8            2209   24375  whz              
24 months   9            2083   24375  whz              
24 months   10           2016   24375  whz              
24 months   11           2042   24375  whz              
24 months   12           2294   24375  whz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/b279a6f4-9d90-4fce-a6c4-086416a2546b/99188ce4-b8b3-4c67-8b42-e2d46b86a340/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b279a6f4-9d90-4fce-a6c4-086416a2546b/99188ce4-b8b3-4c67-8b42-e2d46b86a340/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b279a6f4-9d90-4fce-a6c4-086416a2546b/99188ce4-b8b3-4c67-8b42-e2d46b86a340/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.6891335   -0.7780677   -0.6001993
Birth       2                    NA                -0.6561941   -0.7417843   -0.5706040
Birth       3                    NA                -0.7665946   -0.8432271   -0.6899622
Birth       4                    NA                -0.7697731   -0.8505284   -0.6890178
Birth       5                    NA                -0.8483352   -0.9454676   -0.7512029
Birth       6                    NA                -0.8812294   -0.9707238   -0.7917350
Birth       7                    NA                -0.9059219   -0.9860219   -0.8258219
Birth       8                    NA                -0.8935153   -0.9688208   -0.8182098
Birth       9                    NA                -0.8768806   -0.9470892   -0.8066721
Birth       10                   NA                -0.9236729   -0.9890386   -0.8583071
Birth       11                   NA                -0.8432826   -0.9118377   -0.7747276
Birth       12                   NA                -0.7853573   -0.8511122   -0.7196025
6 months    1                    NA                -0.0704322   -0.1523119    0.0114476
6 months    2                    NA                -0.0897267   -0.1608774   -0.0185760
6 months    3                    NA                -0.0920873   -0.1602780   -0.0238965
6 months    4                    NA                -0.0421585   -0.1100040    0.0256869
6 months    5                    NA                 0.0075096   -0.0626457    0.0776649
6 months    6                    NA                -0.0236688   -0.0968395    0.0495018
6 months    7                    NA                 0.0306876   -0.0307766    0.0921517
6 months    8                    NA                -0.0384475   -0.0995965    0.0227016
6 months    9                    NA                -0.0161484   -0.0775298    0.0452329
6 months    10                   NA                -0.0275656   -0.0850431    0.0299119
6 months    11                   NA                -0.0722436   -0.1347914   -0.0096958
6 months    12                   NA                -0.0045888   -0.0685879    0.0594102
24 months   1                    NA                -0.5815934   -0.7102767   -0.4529100
24 months   2                    NA                -0.7334059   -0.8263445   -0.6404673
24 months   3                    NA                -0.7960674   -0.8874990   -0.7046359
24 months   4                    NA                -0.7698483   -0.8716433   -0.6680533
24 months   5                    NA                -0.7830562   -0.9082635   -0.6578489
24 months   6                    NA                -0.9462675   -1.0539993   -0.8385358
24 months   7                    NA                -0.8471130   -0.9413591   -0.7528670
24 months   8                    NA                -0.8731977   -0.9665382   -0.7798572
24 months   9                    NA                -0.7981983   -0.8940966   -0.7023000
24 months   10                   NA                -0.7179818   -0.8266350   -0.6093285
24 months   11                   NA                -0.6963786   -0.7957171   -0.5970400
24 months   12                   NA                -0.6057127   -0.6938787   -0.5175466


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8234099   -0.8456508   -0.8011690
6 months    NA                   NA                -0.0358863   -0.0548330   -0.0169396
24 months   NA                   NA                -0.7647769   -0.7942265   -0.7353272


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       2                    1                  0.0329394   -0.0906439    0.1565226
Birth       3                    1                 -0.0774611   -0.1949694    0.0400472
Birth       4                    1                 -0.0806396   -0.2009466    0.0396675
Birth       5                    1                 -0.1592017   -0.2910254   -0.0273781
Birth       6                    1                 -0.1920959   -0.3183378   -0.0658540
Birth       7                    1                 -0.2167884   -0.3364789   -0.0970978
Birth       8                    1                 -0.2043818   -0.3209642   -0.0877994
Birth       9                    1                 -0.1877471   -0.3011715   -0.0743227
Birth       10                   1                 -0.2345393   -0.3449563   -0.1241224
Birth       11                   1                 -0.1541491   -0.2664985   -0.0417997
Birth       12                   1                 -0.0962238   -0.2069089    0.0144612
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    2                    1                 -0.0192945   -0.1279113    0.0893223
6 months    3                    1                 -0.0216551   -0.1284887    0.0851785
6 months    4                    1                  0.0282736   -0.0781332    0.1346805
6 months    5                    1                  0.0779418   -0.0299950    0.1858786
6 months    6                    1                  0.0467633   -0.0630984    0.1566251
6 months    7                    1                  0.1011197   -0.0013328    0.2035723
6 months    8                    1                  0.0319847   -0.0702036    0.1341730
6 months    9                    1                  0.0542837   -0.0481399    0.1567073
6 months    10                   1                  0.0428666   -0.0572293    0.1429625
6 months    11                   1                 -0.0018114   -0.1049583    0.1013355
6 months    12                   1                  0.0658433   -0.0381877    0.1698743
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   2                    1                 -0.1518125   -0.3103890    0.0067640
24 months   3                    1                 -0.2144741   -0.3721153   -0.0568329
24 months   4                    1                 -0.1882549   -0.3526709   -0.0238390
24 months   5                    1                 -0.2014628   -0.3808971   -0.0220286
24 months   6                    1                 -0.3646742   -0.5325426   -0.1968058
24 months   7                    1                 -0.2655197   -0.4245682   -0.1064712
24 months   8                    1                 -0.2916043   -0.4509675   -0.1322411
24 months   9                    1                 -0.2166049   -0.3769849   -0.0562249
24 months   10                   1                 -0.1363884   -0.3048496    0.0320728
24 months   11                   1                 -0.1147852   -0.2769384    0.0473680
24 months   12                   1                 -0.0241193   -0.1798387    0.1316002


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.1342764   -0.2189461   -0.0496067
6 months    1                    NA                 0.0345459   -0.0437371    0.1128289
24 months   1                    NA                -0.1831835   -0.3072760   -0.0590910
