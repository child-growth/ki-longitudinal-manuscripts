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

**Outcome Variable:** ever_swasted

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

agecat        studyid   country       hhwealth_quart    ever_swasted   n_cell      n
------------  --------  ------------  ---------------  -------------  -------  -----
0-24 months   COHORTS   GUATEMALA     Wealth Q4                    0      442   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q4                    1       34   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q1                    0      229   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q1                    1       15   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q2                    0      242   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q2                    1       16   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q3                    0      257   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q3                    1       28   1263
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                    0      743   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                    1       97   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                    0      590   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                    1       91   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                    0      473   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                    1       67   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                    0      856   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                    1      127   3044
0-6 months    COHORTS   GUATEMALA     Wealth Q4                    0      340   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q4                    1       29   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q1                    0      184   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q1                    1       12   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q2                    0      194   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q2                    1        8   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q3                    0      234   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q3                    1       14   1015
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                    0      765   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                    1       75   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                    0      633   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                    1       47   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                    0      513   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                    1       27   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                    0      921   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                    1       62   3043
6-24 months   COHORTS   GUATEMALA     Wealth Q4                    0      428   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q4                    1        5   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q1                    0      222   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q1                    1        3   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q2                    0      233   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q2                    1        8   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q3                    0      241   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q3                    1       14   1154
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                    0      748   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                    1       23   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                    0      552   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                    1       54   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                    0      464   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                    1       40   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                    0      857   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                    1       71   2809


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
![](/tmp/d1b62cf4-424b-4333-88f2-66c75a543a2c/7897be0e-fa1b-43ad-8e60-10463d8e04ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1b62cf4-424b-4333-88f2-66c75a543a2c/7897be0e-fa1b-43ad-8e60-10463d8e04ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1b62cf4-424b-4333-88f2-66c75a543a2c/7897be0e-fa1b-43ad-8e60-10463d8e04ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1b62cf4-424b-4333-88f2-66c75a543a2c/7897be0e-fa1b-43ad-8e60-10463d8e04ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0714286   0.0482834   0.0945737
0-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.0614754   0.0313246   0.0916262
0-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.0620155   0.0325741   0.0914569
0-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.0982456   0.0636757   0.1328155
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1154762   0.0938599   0.1370925
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.1336270   0.1080679   0.1591861
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.1240741   0.0962643   0.1518838
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.1291963   0.1082249   0.1501678
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0785908   0.0511206   0.1060609
0-6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.0612245   0.0276447   0.0948042
0-6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.0396040   0.0126960   0.0665119
0-6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.0564516   0.0277136   0.0851896
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0892857   0.0699988   0.1085726
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.0691176   0.0500496   0.0881857
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.0500000   0.0316148   0.0683852
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.0630722   0.0478732   0.0782712
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.0298314   0.0178210   0.0418418
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.0891089   0.0664216   0.1117962
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.0793651   0.0557620   0.1029682
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.0765086   0.0594036   0.0936136


### Parameter: E(Y)


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     NA                   NA                0.0736342   0.0592247   0.0880437
0-24 months   COHORTS   PHILIPPINES   NA                   NA                0.1254928   0.1137225   0.1372631
0-6 months    COHORTS   GUATEMALA     NA                   NA                0.0620690   0.0472181   0.0769198
0-6 months    COHORTS   PHILIPPINES   NA                   NA                0.0693395   0.0603122   0.0783667
6-24 months   COHORTS   PHILIPPINES   NA                   NA                0.0669277   0.0576848   0.0761707


### Parameter: RR


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         0.8606557   0.4781226   1.5492433
0-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         0.8682171   0.4886553   1.5426025
0-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.3754386   0.8525108   2.2191288
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.1571824   0.8854652   1.5122799
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.0744559   0.8023494   1.4388439
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.1188136   0.8732790   1.4333837
0-6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         0.7790289   0.4065347   1.4928270
0-6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         0.5039263   0.2347135   1.0819217
0-6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.7182981   0.3873644   1.3319556
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         0.7741176   0.5453008   1.0989497
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.5600000   0.3655768   0.8578225
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.7064090   0.5111031   0.9763462
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         2.9870857   1.8551021   4.8098056
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         2.6604555   1.6127752   4.3887229
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         2.5647020   1.6182129   4.0647904


### Parameter: PAR


agecat        studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.0022056   -0.0162211    0.0206324
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0100166   -0.0086360    0.0286692
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                -0.0165218   -0.0371734    0.0041297
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0199462   -0.0356977   -0.0041948
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0370963    0.0248287    0.0493640


### Parameter: PAF


agecat        studyid   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.0299539   -0.2554607    0.2504828
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0798180   -0.0813311    0.2169513
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                -0.2661849   -0.6400766    0.0224700
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.2876608   -0.5331048   -0.0815114
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.5542746    0.3507122    0.6940169
