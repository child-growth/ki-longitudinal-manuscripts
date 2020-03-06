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

**Outcome Variable:** ever_sstunted

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

agecat        studyid   country       hhwealth_quart    ever_sstunted   n_cell      n
------------  --------  ------------  ---------------  --------------  -------  -----
0-24 months   COHORTS   GUATEMALA     Wealth Q4                     0      291   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q4                     1      194   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q1                     0      112   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q1                     1      133   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q2                     0      117   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q2                     1      143   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q3                     0      154   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q3                     1      134   1278
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                     0      635   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                     1      208   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                     0      416   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                     1      271   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                     0      331   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                     1      211   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                     0      586   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                     1      399   3057
0-6 months    COHORTS   GUATEMALA     Wealth Q4                     0      353   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q4                     1       29   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q1                     0      171   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q1                     1       26   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q2                     0      185   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q2                     1       20   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q3                     0      223   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q3                     1       30   1037
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                     0      806   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                     1       37   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                     0      632   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                     1       55   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                     0      505   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                     1       37   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                     0      923   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                     1       62   3057


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES



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




# Results Detail

## Results Plots
![](/tmp/18db053a-5a8d-4331-bc07-1038b93072d2/8414f769-b4da-4757-8710-b54b50cb0bc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18db053a-5a8d-4331-bc07-1038b93072d2/8414f769-b4da-4757-8710-b54b50cb0bc5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18db053a-5a8d-4331-bc07-1038b93072d2/8414f769-b4da-4757-8710-b54b50cb0bc5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18db053a-5a8d-4331-bc07-1038b93072d2/8414f769-b4da-4757-8710-b54b50cb0bc5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.4000000   0.3563833   0.4436167
0-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.5428571   0.4804544   0.6052599
0-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.5500000   0.4895051   0.6104949
0-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.4652778   0.4076486   0.5229069
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.2467378   0.2176309   0.2758448
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.3944687   0.3579164   0.4310211
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.3892989   0.3482430   0.4303548
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.4050761   0.3744142   0.4357381
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0759162   0.0493427   0.1024897
0-6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.1319797   0.0846926   0.1792668
0-6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.0975610   0.0569234   0.1381985
0-6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.1185771   0.0787214   0.1584327
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0438909   0.0300601   0.0577216
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.0800582   0.0597616   0.1003549
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.0682657   0.0470300   0.0895014
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.0629442   0.0477750   0.0781133


### Parameter: E(Y)


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     NA                   NA                0.4726135   0.4452311   0.4999958
0-24 months   COHORTS   PHILIPPINES   NA                   NA                0.3562316   0.3392530   0.3732102
0-6 months    COHORTS   GUATEMALA     NA                   NA                0.1012536   0.0828843   0.1196229
0-6 months    COHORTS   PHILIPPINES   NA                   NA                0.0624796   0.0538987   0.0710604


### Parameter: RR


agecat        studyid   country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.357143   1.1582830   1.590144
0-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.375000   1.1777112   1.605338
0-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.163194   0.9862464   1.371890
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.598736   1.3760335   1.857482
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.577784   1.3468738   1.848281
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.641727   1.4270152   1.888744
0-6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.738491   1.0535020   2.868861
0-6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.285114   0.7458453   2.214289
0-6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.561946   0.9614134   2.537593
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.824029   1.2172649   2.733245
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.555351   0.9989080   2.421760
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.434106   0.9644804   2.132403


### Parameter: PAR


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0726135   0.0378532   0.1073737
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1094938   0.0836436   0.1353439
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0253374   0.0024609   0.0482138
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0185887   0.0059625   0.0312149


### Parameter: PAF


agecat        studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.1536424    0.0764998   0.2243411
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.3073668    0.2312478   0.3759487
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.2502368   -0.0082753   0.4424690
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.2975163    0.0683899   0.4702899
