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

**Outcome Variable:** wast_rec90d

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

agecat        studyid   country       hhwealth_quart    wast_rec90d   n_cell      n
------------  --------  ------------  ---------------  ------------  -------  -----
0-24 months   COHORTS   GUATEMALA     Wealth Q4                   0       68    368
0-24 months   COHORTS   GUATEMALA     Wealth Q4                   1       55    368
0-24 months   COHORTS   GUATEMALA     Wealth Q1                   0       44    368
0-24 months   COHORTS   GUATEMALA     Wealth Q1                   1       43    368
0-24 months   COHORTS   GUATEMALA     Wealth Q2                   0       44    368
0-24 months   COHORTS   GUATEMALA     Wealth Q2                   1       33    368
0-24 months   COHORTS   GUATEMALA     Wealth Q3                   0       48    368
0-24 months   COHORTS   GUATEMALA     Wealth Q3                   1       33    368
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                   0      135   1689
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                   1      269   1689
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                   0      183   1689
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                   1      256   1689
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                   0      127   1689
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                   1      159   1689
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                   0      219   1689
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                   1      341   1689
0-6 months    COHORTS   GUATEMALA     Wealth Q4                   0       18    207
0-6 months    COHORTS   GUATEMALA     Wealth Q4                   1       54    207
0-6 months    COHORTS   GUATEMALA     Wealth Q1                   0        9    207
0-6 months    COHORTS   GUATEMALA     Wealth Q1                   1       41    207
0-6 months    COHORTS   GUATEMALA     Wealth Q2                   0        7    207
0-6 months    COHORTS   GUATEMALA     Wealth Q2                   1       29    207
0-6 months    COHORTS   GUATEMALA     Wealth Q3                   0       17    207
0-6 months    COHORTS   GUATEMALA     Wealth Q3                   1       32    207
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                   0       59    752
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                   1      160    752
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                   0       52    752
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                   1      137    752
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                   0       32    752
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                   1       89    752
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                   0       55    752
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                   1      168    752
6-24 months   COHORTS   GUATEMALA     Wealth Q4                   0       50    161
6-24 months   COHORTS   GUATEMALA     Wealth Q4                   1        1    161
6-24 months   COHORTS   GUATEMALA     Wealth Q1                   0       35    161
6-24 months   COHORTS   GUATEMALA     Wealth Q1                   1        2    161
6-24 months   COHORTS   GUATEMALA     Wealth Q2                   0       37    161
6-24 months   COHORTS   GUATEMALA     Wealth Q2                   1        4    161
6-24 months   COHORTS   GUATEMALA     Wealth Q3                   0       31    161
6-24 months   COHORTS   GUATEMALA     Wealth Q3                   1        1    161
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                   0       76    937
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                   1      109    937
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                   0      131    937
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                   1      119    937
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                   0       95    937
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                   1       70    937
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                   0      164    937
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                   1      173    937


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
![](/tmp/d1846f23-fa80-4111-af04-64ad4d7bdf08/5e868872-46a8-4e98-bd44-3d0f2a1851f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1846f23-fa80-4111-af04-64ad4d7bdf08/5e868872-46a8-4e98-bd44-3d0f2a1851f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1846f23-fa80-4111-af04-64ad4d7bdf08/5e868872-46a8-4e98-bd44-3d0f2a1851f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1846f23-fa80-4111-af04-64ad4d7bdf08/5e868872-46a8-4e98-bd44-3d0f2a1851f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.4471545   0.3569854   0.5373236
0-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.4942529   0.3852897   0.6032161
0-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.4285714   0.3150080   0.5421349
0-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.4074074   0.2948140   0.5200008
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.6658416   0.6156941   0.7159891
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.5831435   0.5356939   0.6305931
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.5559441   0.4939019   0.6179862
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.6089286   0.5675004   0.6503567
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.7305936   0.6702821   0.7909052
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.7248677   0.6628824   0.7868530
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.7355372   0.6562866   0.8147878
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.7533632   0.6966900   0.8100364
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.5891892   0.5164024   0.6619760
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.4760000   0.4100748   0.5419252
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.4242424   0.3419677   0.5065172
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.5133531   0.4577706   0.5689356


### Parameter: E(Y)


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     NA                   NA                0.4456522   0.3930622   0.4982422
0-24 months   COHORTS   PHILIPPINES   NA                   NA                0.6068680   0.5823645   0.6313715
0-6 months    COHORTS   GUATEMALA     NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    COHORTS   PHILIPPINES   NA                   NA                0.7367021   0.7051294   0.7682749
6-24 months   COHORTS   PHILIPPINES   NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.1053292   0.8197376   1.4904190
0-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         0.9584416   0.6869861   1.3371597
0-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.9111111   0.6470918   1.2828527
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.8757992   0.7838829   0.9784933
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.8349494   0.7297526   0.9553109
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.9145247   0.8262451   1.0122365
0-6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.9921627   0.8809754   1.1173829
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.0067665   0.8789824   1.1531276
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.0311659   0.9221973   1.1530105
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.8078899   0.6710549   0.9726270
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.7200445   0.5721405   0.9061831
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.8712874   0.7393119   1.0268220


### Parameter: PAR


agecat        studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                -0.0015023   -0.0754398    0.0724353
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0589736   -0.1026060   -0.0153412
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0061085   -0.0440476    0.0562646
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0865211   -0.1523281   -0.0207141


### Parameter: PAF


agecat        studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                -0.0033710   -0.1837913    0.1495516
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0971770   -0.1715762   -0.0275024
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0082917   -0.0621976    0.0741032
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                -0.1721237   -0.3117148   -0.0473877
