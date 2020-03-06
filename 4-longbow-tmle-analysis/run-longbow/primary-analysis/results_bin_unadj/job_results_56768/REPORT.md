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

**Outcome Variable:** sstunted

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

agecat      studyid   country       hhwealth_quart    sstunted   n_cell      n
----------  --------  ------------  ---------------  ---------  -------  -----
Birth       COHORTS   GUATEMALA     Wealth Q4                0      291    816
Birth       COHORTS   GUATEMALA     Wealth Q4                1        2    816
Birth       COHORTS   GUATEMALA     Wealth Q1                0      157    816
Birth       COHORTS   GUATEMALA     Wealth Q1                1        0    816
Birth       COHORTS   GUATEMALA     Wealth Q2                0      158    816
Birth       COHORTS   GUATEMALA     Wealth Q2                1        3    816
Birth       COHORTS   GUATEMALA     Wealth Q3                0      201    816
Birth       COHORTS   GUATEMALA     Wealth Q3                1        4    816
Birth       COHORTS   PHILIPPINES   Wealth Q4                0      835   3049
Birth       COHORTS   PHILIPPINES   Wealth Q4                1        7   3049
Birth       COHORTS   PHILIPPINES   Wealth Q1                0      675   3049
Birth       COHORTS   PHILIPPINES   Wealth Q1                1       12   3049
Birth       COHORTS   PHILIPPINES   Wealth Q2                0      524   3049
Birth       COHORTS   PHILIPPINES   Wealth Q2                1       14   3049
Birth       COHORTS   PHILIPPINES   Wealth Q3                0      969   3049
Birth       COHORTS   PHILIPPINES   Wealth Q3                1       13   3049
6 months    COHORTS   GUATEMALA     Wealth Q4                0      313    925
6 months    COHORTS   GUATEMALA     Wealth Q4                1       26    925
6 months    COHORTS   GUATEMALA     Wealth Q1                0      147    925
6 months    COHORTS   GUATEMALA     Wealth Q1                1       28    925
6 months    COHORTS   GUATEMALA     Wealth Q2                0      165    925
6 months    COHORTS   GUATEMALA     Wealth Q2                1       30    925
6 months    COHORTS   GUATEMALA     Wealth Q3                0      181    925
6 months    COHORTS   GUATEMALA     Wealth Q3                1       35    925
6 months    COHORTS   PHILIPPINES   Wealth Q4                0      719   2708
6 months    COHORTS   PHILIPPINES   Wealth Q4                1       24   2708
6 months    COHORTS   PHILIPPINES   Wealth Q1                0      540   2708
6 months    COHORTS   PHILIPPINES   Wealth Q1                1       30   2708
6 months    COHORTS   PHILIPPINES   Wealth Q2                0      459   2708
6 months    COHORTS   PHILIPPINES   Wealth Q2                1       26   2708
6 months    COHORTS   PHILIPPINES   Wealth Q3                0      858   2708
6 months    COHORTS   PHILIPPINES   Wealth Q3                1       52   2708
24 months   COHORTS   GUATEMALA     Wealth Q4                0      230   1035
24 months   COHORTS   GUATEMALA     Wealth Q4                1      172   1035
24 months   COHORTS   GUATEMALA     Wealth Q1                0       89   1035
24 months   COHORTS   GUATEMALA     Wealth Q1                1      113   1035
24 months   COHORTS   GUATEMALA     Wealth Q2                0      100   1035
24 months   COHORTS   GUATEMALA     Wealth Q2                1      112   1035
24 months   COHORTS   GUATEMALA     Wealth Q3                0      110   1035
24 months   COHORTS   GUATEMALA     Wealth Q3                1      109   1035
24 months   COHORTS   PHILIPPINES   Wealth Q4                0      568   2445
24 months   COHORTS   PHILIPPINES   Wealth Q4                1      120   2445
24 months   COHORTS   PHILIPPINES   Wealth Q1                0      307   2445
24 months   COHORTS   PHILIPPINES   Wealth Q1                1      182   2445
24 months   COHORTS   PHILIPPINES   Wealth Q2                0      281   2445
24 months   COHORTS   PHILIPPINES   Wealth Q2                1      142   2445
24 months   COHORTS   PHILIPPINES   Wealth Q3                0      582   2445
24 months   COHORTS   PHILIPPINES   Wealth Q3                1      263   2445


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/f23d0c15-ce58-43b9-b216-a83b2d7cc7bf/7ef9f9a7-18f7-4197-ad49-8b08a66efd23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f23d0c15-ce58-43b9-b216-a83b2d7cc7bf/7ef9f9a7-18f7-4197-ad49-8b08a66efd23/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f23d0c15-ce58-43b9-b216-a83b2d7cc7bf/7ef9f9a7-18f7-4197-ad49-8b08a66efd23/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f23d0c15-ce58-43b9-b216-a83b2d7cc7bf/7ef9f9a7-18f7-4197-ad49-8b08a66efd23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                0.0083135   0.0021795   0.0144475
Birth       COHORTS   PHILIPPINES   Wealth Q1            NA                0.0174672   0.0076695   0.0272650
Birth       COHORTS   PHILIPPINES   Wealth Q2            NA                0.0260223   0.0125676   0.0394771
Birth       COHORTS   PHILIPPINES   Wealth Q3            NA                0.0132383   0.0060886   0.0203880
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0766962   0.0483534   0.1050389
6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.1600000   0.1056545   0.2143455
6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.1538462   0.1031782   0.2045141
6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.1620370   0.1128698   0.2112043
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0323015   0.0195865   0.0450164
6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.0526316   0.0342969   0.0709663
6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.0536082   0.0335585   0.0736580
6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.0571429   0.0420590   0.0722267
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.4278607   0.3794717   0.4762497
24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.5594059   0.4909099   0.6279019
24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.5283019   0.4610719   0.5955319
24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.4977169   0.4314645   0.5639693
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1744186   0.1460578   0.2027794
24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.3721881   0.3293354   0.4150409
24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.3356974   0.2906859   0.3807089
24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.3112426   0.2800184   0.3424668


### Parameter: E(Y)


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   PHILIPPINES   NA                   NA                0.0150869   0.0107594   0.0194144
6 months    COHORTS   GUATEMALA     NA                   NA                0.1286486   0.1070607   0.1502366
6 months    COHORTS   PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
24 months   COHORTS   GUATEMALA     NA                   NA                0.4888889   0.4584204   0.5193574
24 months   COHORTS   PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359


### Parameter: RR


agecat      studyid   country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  --------  ------------  -------------------  ---------------  ---------  ----------  ---------
Birth       COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
Birth       COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.101060   0.8316064   5.308347
Birth       COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         3.130111   1.2713841   7.706246
Birth       COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.592377   0.6381739   3.973313
6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         2.086154   1.2628777   3.446128
6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         2.005917   1.2227421   3.290722
6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         2.112714   1.3097221   3.408020
6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.629386   0.9632513   2.756185
6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.659622   0.9642640   2.856422
6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.769048   1.1013026   2.841662
24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.307449   1.1067137   1.544593
24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.234752   1.0414571   1.463923
24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.163269   0.9768365   1.385282
24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.133879   1.7484027   2.604342
24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.924665   1.5589250   2.376212
24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.784458   1.4741107   2.160142


### Parameter: PAR


agecat      studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                0.0067734   0.0008091   0.0127376
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0519525   0.0258652   0.0780398
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0164430   0.0046635   0.0282224
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0610282   0.0229372   0.0991192
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1147429   0.0887670   0.1407189


### Parameter: PAF


agecat      studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS   PHILIPPINES   Wealth Q4            NA                0.4489569   -0.0865616   0.7205419
6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.4038323    0.1756190   0.5688694
6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.3373302    0.0545516   0.5355313
24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.1248304    0.0430578   0.1996154
24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.3968126    0.3019648   0.4787726
