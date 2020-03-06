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

**Outcome Variable:** ever_stunted

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

agecat        studyid   country       hhwealth_quart    ever_stunted   n_cell      n
------------  --------  ------------  ---------------  -------------  -------  -----
0-24 months   COHORTS   GUATEMALA     Wealth Q4                    0      130   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q4                    1      355   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q1                    0       47   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q1                    1      198   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q2                    0       45   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q2                    1      215   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q3                    0       70   1278
0-24 months   COHORTS   GUATEMALA     Wealth Q3                    1      218   1278
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                    0      370   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                    1      473   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                    0      195   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                    1      492   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                    0      157   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                    1      385   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                    0      236   3057
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                    1      749   3057
0-6 months    COHORTS   GUATEMALA     Wealth Q4                    0      277   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q4                    1      105   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q1                    0      127   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q1                    1       70   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q2                    0      132   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q2                    1       73   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q3                    0      165   1037
0-6 months    COHORTS   GUATEMALA     Wealth Q3                    1       88   1037
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                    0      689   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                    1      154   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                    0      506   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                    1      181   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                    0      398   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                    1      144   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                    0      733   3057
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                    1      252   3057
6-24 months   COHORTS   GUATEMALA     Wealth Q4                    0       90    848
6-24 months   COHORTS   GUATEMALA     Wealth Q4                    1      250    848
6-24 months   COHORTS   GUATEMALA     Wealth Q1                    0       32    848
6-24 months   COHORTS   GUATEMALA     Wealth Q1                    1      128    848
6-24 months   COHORTS   GUATEMALA     Wealth Q2                    0       30    848
6-24 months   COHORTS   GUATEMALA     Wealth Q2                    1      142    848
6-24 months   COHORTS   GUATEMALA     Wealth Q3                    0       46    848
6-24 months   COHORTS   GUATEMALA     Wealth Q3                    1      130    848
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                    0      309   2121
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                    1      319   2121
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                    0      125   2121
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                    1      311   2121
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                    0      129   2121
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                    1      241   2121
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                    0      190   2121
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                    1      497   2121


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES



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




# Results Detail

## Results Plots
![](/tmp/2ca2cd7e-3588-4af5-99bf-306de452187c/7445f438-20ad-4cb8-b61c-9a558d66e7b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ca2cd7e-3588-4af5-99bf-306de452187c/7445f438-20ad-4cb8-b61c-9a558d66e7b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2ca2cd7e-3588-4af5-99bf-306de452187c/7445f438-20ad-4cb8-b61c-9a558d66e7b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ca2cd7e-3588-4af5-99bf-306de452187c/7445f438-20ad-4cb8-b61c-9a558d66e7b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.7319588   0.6925229   0.7713946
0-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.8081633   0.7588402   0.8574864
0-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.8269231   0.7809204   0.8729258
0-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.7569444   0.7073873   0.8065016
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.5610913   0.5275864   0.5945963
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.7161572   0.6824375   0.7498769
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.7103321   0.6721376   0.7485266
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.7604061   0.7337460   0.7870662
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.2748691   0.2300775   0.3196608
0-6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.3553299   0.2884634   0.4221965
0-6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.3560976   0.2905170   0.4216781
0-6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.3478261   0.2891096   0.4065426
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.1826809   0.1565925   0.2087693
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.2634643   0.2305187   0.2964100
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.2656827   0.2284912   0.3028741
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.2558376   0.2285844   0.2830907
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.7352941   0.6883720   0.7822162
6-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.8000000   0.7379839   0.8620161
6-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.8255814   0.7688379   0.8823249
6-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.7386364   0.6736854   0.8035874
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.5079618   0.4688520   0.5470716
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.7133028   0.6708451   0.7557604
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.6513514   0.6027832   0.6999195
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.7234352   0.6899795   0.7568909


### Parameter: E(Y)


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     NA                   NA                0.7715180   0.7484902   0.7945458
0-24 months   COHORTS   PHILIPPINES   NA                   NA                0.6866209   0.6701747   0.7030670
0-6 months    COHORTS   GUATEMALA     NA                   NA                0.3240116   0.2955133   0.3525098
0-6 months    COHORTS   PHILIPPINES   NA                   NA                0.2391233   0.2240003   0.2542464
6-24 months   COHORTS   GUATEMALA     NA                   NA                0.7665094   0.7380190   0.7949999
6-24 months   COHORTS   PHILIPPINES   NA                   NA                0.6449788   0.6246093   0.6653483


### Parameter: RR


agecat        studyid   country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.104110   1.0177865   1.197756
0-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.129740   1.0455504   1.220709
0-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.034135   0.9500670   1.125643
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.276365   1.1829036   1.377210
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.265983   1.1682346   1.371910
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.355227   1.2645586   1.452396
0-6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.292724   1.0078505   1.658119
0-6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.295517   1.0130853   1.656686
0-6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.265424   1.0007772   1.600055
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.442211   1.1928649   1.743677
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.454354   1.1907540   1.776307
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.400462   1.1719149   1.673579
6-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
6-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.088000   0.9840624   1.202916
6-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.122791   1.0222733   1.233192
6-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.004546   0.9011229   1.119838
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.000000   1.0000000   1.000000
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.404245   1.2740246   1.547775
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.282284   1.1519556   1.427358
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.424192   1.3018550   1.558026


### Parameter: PAR


agecat        studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0395592    0.0094747   0.0696438
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1255295    0.0977099   0.1533492
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.0491425    0.0125320   0.0857529
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.0564424    0.0333352   0.0795497
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0312153   -0.0041102   0.0665408
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1370170    0.1047879   0.1692461


### Parameter: PAF


agecat        studyid   country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0512745    0.0112993   0.0896335
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1828222    0.1406470   0.2229275
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.1516688    0.0309755   0.2573297
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.2360390    0.1337103   0.3262803
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.0407240   -0.0066252   0.0858460
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.2124364    0.1599614   0.2616335
