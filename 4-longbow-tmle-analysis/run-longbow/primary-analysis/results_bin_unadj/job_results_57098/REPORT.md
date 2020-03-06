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

**Outcome Variable:** pers_wast

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

agecat        studyid   country       hhwealth_quart    pers_wast   n_cell      n
------------  --------  ------------  ---------------  ----------  -------  -----
0-24 months   COHORTS   GUATEMALA     Wealth Q4                 0      375   1023
0-24 months   COHORTS   GUATEMALA     Wealth Q4                 1        9   1023
0-24 months   COHORTS   GUATEMALA     Wealth Q1                 0      199   1023
0-24 months   COHORTS   GUATEMALA     Wealth Q1                 1        4   1023
0-24 months   COHORTS   GUATEMALA     Wealth Q2                 0      197   1023
0-24 months   COHORTS   GUATEMALA     Wealth Q2                 1       11   1023
0-24 months   COHORTS   GUATEMALA     Wealth Q3                 0      217   1023
0-24 months   COHORTS   GUATEMALA     Wealth Q3                 1       11   1023
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                 0      754   2811
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                 1       19   2811
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                 0      556   2811
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                 1       48   2811
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                 0      476   2811
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                 1       27   2811
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                 0      881   2811
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                 1       50   2811
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                 0      210    853
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                 1       13    853
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                 0      174    853
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                 1       16    853
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                 0      144    853
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                 1        9    853
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                 0      273    853
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                 1       14    853
6-24 months   COHORTS   GUATEMALA     Wealth Q4                 0      375   1023
6-24 months   COHORTS   GUATEMALA     Wealth Q4                 1        9   1023
6-24 months   COHORTS   GUATEMALA     Wealth Q1                 0      199   1023
6-24 months   COHORTS   GUATEMALA     Wealth Q1                 1        4   1023
6-24 months   COHORTS   GUATEMALA     Wealth Q2                 0      197   1023
6-24 months   COHORTS   GUATEMALA     Wealth Q2                 1       11   1023
6-24 months   COHORTS   GUATEMALA     Wealth Q3                 0      217   1023
6-24 months   COHORTS   GUATEMALA     Wealth Q3                 1       11   1023
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                 0      754   2811
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                 1       19   2811
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                 0      556   2811
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                 1       48   2811
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                 0      476   2811
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                 1       27   2811
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                 0      881   2811
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                 1       50   2811


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA

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
![](/tmp/8f6db4a1-d909-4d52-bb5d-aef94020ad40/3337107c-3add-4098-b7be-4d3365452b46/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f6db4a1-d909-4d52-bb5d-aef94020ad40/3337107c-3add-4098-b7be-4d3365452b46/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f6db4a1-d909-4d52-bb5d-aef94020ad40/3337107c-3add-4098-b7be-4d3365452b46/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f6db4a1-d909-4d52-bb5d-aef94020ad40/3337107c-3add-4098-b7be-4d3365452b46/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0245796   0.0136622   0.0354969
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.0794702   0.0578963   0.1010441
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.0536779   0.0339783   0.0733776
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.0537057   0.0392222   0.0681892
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0582960   0.0275260   0.0890659
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.0842105   0.0447005   0.1237205
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.0588235   0.0215184   0.0961286
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.0487805   0.0238446   0.0737164
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0245796   0.0136622   0.0354969
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.0794702   0.0578963   0.1010441
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.0536779   0.0339783   0.0733776
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.0537057   0.0392222   0.0681892


### Parameter: E(Y)


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
0-6 months    COHORTS   PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   COHORTS   PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786


### Parameter: RR


agecat        studyid   country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         3.233182   1.9211236   5.441330
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         2.183844   1.2274252   3.885513
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         2.184974   1.2994972   3.673813
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.444534   0.7128959   2.927047
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.009050   0.4421567   2.302761
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.836773   0.4013236   1.744699
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         3.233182   1.9211236   5.441330
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         2.183844   1.2274252   3.885513
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         2.184974   1.2994972   3.673813


### Parameter: PAR


agecat        studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0266478    0.0156896   0.0376059
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0026653   -0.0239778   0.0293084
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0266478    0.0156896   0.0376059


### Parameter: PAF


agecat        studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.5201865    0.2748607   0.6825148
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0437220   -0.5101151   0.3944385
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.5201865    0.2748607   0.6825148
