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

**Outcome Variable:** ever_co

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

agecat        studyid   country       hhwealth_quart    ever_co   n_cell      n
------------  --------  ------------  ---------------  --------  -------  -----
0-24 months   COHORTS   GUATEMALA     Wealth Q4               0      434   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q4               1       42   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q1               0      212   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q1               1       32   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q2               0      222   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q2               1       36   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q3               0      251   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q3               1       34   1263
0-24 months   COHORTS   PHILIPPINES   Wealth Q4               0      753   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q4               1       87   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q1               0      511   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q1               1      170   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q2               0      439   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q2               1      101   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q3               0      781   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q3               1      202   3044
0-6 months    COHORTS   GUATEMALA     Wealth Q4               0      363   1014
0-6 months    COHORTS   GUATEMALA     Wealth Q4               1        6   1014
0-6 months    COHORTS   GUATEMALA     Wealth Q1               0      190   1014
0-6 months    COHORTS   GUATEMALA     Wealth Q1               1        5   1014
0-6 months    COHORTS   GUATEMALA     Wealth Q2               0      200   1014
0-6 months    COHORTS   GUATEMALA     Wealth Q2               1        2   1014
0-6 months    COHORTS   GUATEMALA     Wealth Q3               0      242   1014
0-6 months    COHORTS   GUATEMALA     Wealth Q3               1        6   1014
0-6 months    COHORTS   PHILIPPINES   Wealth Q4               0      827   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q4               1       13   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q1               0      658   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q1               1       22   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q2               0      527   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q2               1       13   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q3               0      959   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q3               1       24   3043
6-24 months   COHORTS   GUATEMALA     Wealth Q4               0      396   1153
6-24 months   COHORTS   GUATEMALA     Wealth Q4               1       37   1153
6-24 months   COHORTS   GUATEMALA     Wealth Q1               0      194   1153
6-24 months   COHORTS   GUATEMALA     Wealth Q1               1       31   1153
6-24 months   COHORTS   GUATEMALA     Wealth Q2               0      205   1153
6-24 months   COHORTS   GUATEMALA     Wealth Q2               1       36   1153
6-24 months   COHORTS   GUATEMALA     Wealth Q3               0      225   1153
6-24 months   COHORTS   GUATEMALA     Wealth Q3               1       29   1153
6-24 months   COHORTS   PHILIPPINES   Wealth Q4               0      690   2808
6-24 months   COHORTS   PHILIPPINES   Wealth Q4               1       80   2808
6-24 months   COHORTS   PHILIPPINES   Wealth Q1               0      442   2808
6-24 months   COHORTS   PHILIPPINES   Wealth Q1               1      164   2808
6-24 months   COHORTS   PHILIPPINES   Wealth Q2               0      407   2808
6-24 months   COHORTS   PHILIPPINES   Wealth Q2               1       97   2808
6-24 months   COHORTS   PHILIPPINES   Wealth Q3               0      733   2808
6-24 months   COHORTS   PHILIPPINES   Wealth Q3               1      195   2808


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA

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
![](/tmp/22e155b5-d007-419b-86ce-a68184cd703a/2b3f12ef-17c2-42ec-b202-ab84768a82fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/22e155b5-d007-419b-86ce-a68184cd703a/2b3f12ef-17c2-42ec-b202-ab84768a82fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/22e155b5-d007-419b-86ce-a68184cd703a/2b3f12ef-17c2-42ec-b202-ab84768a82fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/22e155b5-d007-419b-86ce-a68184cd703a/2b3f12ef-17c2-42ec-b202-ab84768a82fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0882353   0.0627447   0.1137258
0-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.1311475   0.0887756   0.1735195
0-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.1395349   0.0972370   0.1818327
0-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.1192982   0.0816514   0.1569451
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1035714   0.0829624   0.1241805
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.2496329   0.2171216   0.2821441
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.1870370   0.1541427   0.2199314
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.2054934   0.1802301   0.2307567
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0154762   0.0071274   0.0238250
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.0323529   0.0190521   0.0456538
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.0240741   0.0111439   0.0370043
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.0244151   0.0147656   0.0340645
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0854503   0.0591081   0.1117926
6-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.1377778   0.0927226   0.1828329
6-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.1493776   0.1043541   0.1944011
6-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.1141732   0.0750463   0.1533002
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1038961   0.0823406   0.1254516
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.2706271   0.2352477   0.3060064
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.1924603   0.1580362   0.2268844
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.2101293   0.1839129   0.2363457


### Parameter: E(Y)


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     NA                   NA                0.1140143   0.0964790   0.1315495
0-24 months   COHORTS   PHILIPPINES   NA                   NA                0.1839685   0.1702020   0.1977349
0-6 months    COHORTS   PHILIPPINES   NA                   NA                0.0236609   0.0182597   0.0290620
6-24 months   COHORTS   GUATEMALA     NA                   NA                0.1153513   0.0969046   0.1337979
6-24 months   COHORTS   PHILIPPINES   NA                   NA                0.1908832   0.1763448   0.2054216


### Parameter: RR


agecat        studyid   country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.486339   0.9635861   2.292689
0-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.581395   1.0403528   2.403811
0-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.352047   0.8814245   2.073950
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.410249   1.9001157   3.057339
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.805875   1.3846944   2.355165
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.984074   1.5702791   2.506911
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.090498   1.0609255   4.119216
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.555556   0.7265744   3.330358
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.577588   0.8082770   3.079124
6-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
6-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.612372   1.0286983   2.527218
6-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.748122   1.1358753   2.690374
6-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.336135   0.8426785   2.118551
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.604786   2.0383190   3.328678
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.852431   1.4085632   2.436170
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         2.022495   1.5876194   2.576489


### Parameter: PAR


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0257790   0.0041576   0.0474003
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0803970   0.0609077   0.0998864
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0081847   0.0004134   0.0159560
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0299009   0.0072513   0.0525506
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0869871   0.0664644   0.1075098


### Parameter: PAF


agecat        studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.2261029    0.0144903   0.3922773
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.4370153    0.3250675   0.5303949
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.3459160   -0.0654222   0.5984448
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.2592162    0.0390123   0.4289618
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.4557085    0.3419952   0.5497704
