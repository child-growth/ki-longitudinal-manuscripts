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







## Methods
## Outcome Variable

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid   country       hhwealth_quart    swasted   n_cell      n
----------  --------  ------------  ---------------  --------  -------  -----
Birth       COHORTS   GUATEMALA     Wealth Q4               0      232    729
Birth       COHORTS   GUATEMALA     Wealth Q4               1       26    729
Birth       COHORTS   GUATEMALA     Wealth Q1               0      132    729
Birth       COHORTS   GUATEMALA     Wealth Q1               1       12    729
Birth       COHORTS   GUATEMALA     Wealth Q2               0      134    729
Birth       COHORTS   GUATEMALA     Wealth Q2               1        7    729
Birth       COHORTS   GUATEMALA     Wealth Q3               0      174    729
Birth       COHORTS   GUATEMALA     Wealth Q3               1       12    729
Birth       COHORTS   PHILIPPINES   Wealth Q4               0      769   2898
Birth       COHORTS   PHILIPPINES   Wealth Q4               1       46   2898
Birth       COHORTS   PHILIPPINES   Wealth Q1               0      618   2898
Birth       COHORTS   PHILIPPINES   Wealth Q1               1       29   2898
Birth       COHORTS   PHILIPPINES   Wealth Q2               0      491   2898
Birth       COHORTS   PHILIPPINES   Wealth Q2               1       15   2898
Birth       COHORTS   PHILIPPINES   Wealth Q3               0      899   2898
Birth       COHORTS   PHILIPPINES   Wealth Q3               1       31   2898
6 months    COHORTS   GUATEMALA     Wealth Q4               0      337    926
6 months    COHORTS   GUATEMALA     Wealth Q4               1        2    926
6 months    COHORTS   GUATEMALA     Wealth Q1               0      176    926
6 months    COHORTS   GUATEMALA     Wealth Q1               1        0    926
6 months    COHORTS   GUATEMALA     Wealth Q2               0      192    926
6 months    COHORTS   GUATEMALA     Wealth Q2               1        2    926
6 months    COHORTS   GUATEMALA     Wealth Q3               0      215    926
6 months    COHORTS   GUATEMALA     Wealth Q3               1        2    926
6 months    COHORTS   PHILIPPINES   Wealth Q4               0      736   2706
6 months    COHORTS   PHILIPPINES   Wealth Q4               1        8   2706
6 months    COHORTS   PHILIPPINES   Wealth Q1               0      559   2706
6 months    COHORTS   PHILIPPINES   Wealth Q1               1       10   2706
6 months    COHORTS   PHILIPPINES   Wealth Q2               0      479   2706
6 months    COHORTS   PHILIPPINES   Wealth Q2               1        6   2706
6 months    COHORTS   PHILIPPINES   Wealth Q3               0      897   2706
6 months    COHORTS   PHILIPPINES   Wealth Q3               1       11   2706
24 months   COHORTS   GUATEMALA     Wealth Q4               0      403   1046
24 months   COHORTS   GUATEMALA     Wealth Q4               1        2   1046
24 months   COHORTS   GUATEMALA     Wealth Q1               0      203   1046
24 months   COHORTS   GUATEMALA     Wealth Q1               1        0   1046
24 months   COHORTS   GUATEMALA     Wealth Q2               0      214   1046
24 months   COHORTS   GUATEMALA     Wealth Q2               1        1   1046
24 months   COHORTS   GUATEMALA     Wealth Q3               0      222   1046
24 months   COHORTS   GUATEMALA     Wealth Q3               1        1   1046
24 months   COHORTS   PHILIPPINES   Wealth Q4               0      681   2449
24 months   COHORTS   PHILIPPINES   Wealth Q4               1        4   2449
24 months   COHORTS   PHILIPPINES   Wealth Q1               0      488   2449
24 months   COHORTS   PHILIPPINES   Wealth Q1               1        4   2449
24 months   COHORTS   PHILIPPINES   Wealth Q2               0      422   2449
24 months   COHORTS   PHILIPPINES   Wealth Q2               1        2   2449
24 months   COHORTS   PHILIPPINES   Wealth Q3               0      833   2449
24 months   COHORTS   PHILIPPINES   Wealth Q3               1       15   2449


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES

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




# Results Detail

## Results Plots
![](/tmp/dfda1c06-3862-4a06-80c6-26e7fd5b3880/b804bb13-256c-4eb3-ad03-474930828635/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dfda1c06-3862-4a06-80c6-26e7fd5b3880/b804bb13-256c-4eb3-ad03-474930828635/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dfda1c06-3862-4a06-80c6-26e7fd5b3880/b804bb13-256c-4eb3-ad03-474930828635/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dfda1c06-3862-4a06-80c6-26e7fd5b3880/b804bb13-256c-4eb3-ad03-474930828635/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      COHORTS   GUATEMALA     Wealth Q4            NA                0.1007752   0.0640176   0.1375328
Birth      COHORTS   GUATEMALA     Wealth Q1            NA                0.0833333   0.0381602   0.1285064
Birth      COHORTS   GUATEMALA     Wealth Q2            NA                0.0496454   0.0137682   0.0855226
Birth      COHORTS   GUATEMALA     Wealth Q3            NA                0.0645161   0.0291863   0.0998460
Birth      COHORTS   PHILIPPINES   Wealth Q4            NA                0.0564417   0.0405954   0.0722880
Birth      COHORTS   PHILIPPINES   Wealth Q1            NA                0.0448223   0.0288760   0.0607686
Birth      COHORTS   PHILIPPINES   Wealth Q2            NA                0.0296443   0.0148640   0.0444246
Birth      COHORTS   PHILIPPINES   Wealth Q3            NA                0.0333333   0.0217946   0.0448721
6 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0107527   0.0033404   0.0181650
6 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.0175747   0.0067761   0.0283733
6 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.0123711   0.0025319   0.0222103
6 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.0121145   0.0049976   0.0192315


### Parameter: E(Y)


agecat     studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      COHORTS   GUATEMALA     NA                   NA                0.0781893   0.0586874   0.0976912
Birth      COHORTS   PHILIPPINES   NA                   NA                0.0417529   0.0344692   0.0490367
6 months   COHORTS   PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922


### Parameter: RR


agecat     studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth      COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         0.8269231   0.4302403   1.5893484
Birth      COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         0.4926350   0.2192618   1.1068468
Birth      COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.6401985   0.3315606   1.2361364
Birth      COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth      COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.7941335   0.5047419   1.2494464
Birth      COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.5252191   0.2963715   0.9307748
Birth      COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.5905797   0.3781913   0.9222433
6 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.6344464   0.6491256   4.1154054
6 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.1505155   0.4016045   3.2959934
6 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.1266520   0.4554533   2.7869920


### Parameter: PAR


agecat     studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth      COHORTS   GUATEMALA     Wealth Q4            NA                -0.0225859   -0.0504264    0.0052547
Birth      COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0146888   -0.0274529   -0.0019247
6 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0021815   -0.0043653    0.0087283


### Parameter: PAF


agecat     studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth      COHORTS   GUATEMALA     Wealth Q4            NA                -0.2888617   -0.6914201    0.0178877
Birth      COHORTS   PHILIPPINES   Wealth Q4            NA                -0.3518025   -0.6879746   -0.0825814
6 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.1686636   -0.5227820    0.5461463
