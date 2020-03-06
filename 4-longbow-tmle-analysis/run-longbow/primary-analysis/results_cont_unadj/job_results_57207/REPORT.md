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

**Outcome Variable:** y_rate_haz

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

agecat         studyid   country     hhwealth_quart    n_cell     n
-------------  --------  ----------  ---------------  -------  ----
0-3 months     COHORTS   GUATEMALA   Wealth Q4            248   709
0-3 months     COHORTS   GUATEMALA   Wealth Q1            138   709
0-3 months     COHORTS   GUATEMALA   Wealth Q2            140   709
0-3 months     COHORTS   GUATEMALA   Wealth Q3            183   709
3-6 months     COHORTS   GUATEMALA   Wealth Q4            284   780
3-6 months     COHORTS   GUATEMALA   Wealth Q1            146   780
3-6 months     COHORTS   GUATEMALA   Wealth Q2            156   780
3-6 months     COHORTS   GUATEMALA   Wealth Q3            194   780
6-9 months     COHORTS   GUATEMALA   Wealth Q4            298   799
6-9 months     COHORTS   GUATEMALA   Wealth Q1            156   799
6-9 months     COHORTS   GUATEMALA   Wealth Q2            166   799
6-9 months     COHORTS   GUATEMALA   Wealth Q3            179   799
9-12 months    COHORTS   GUATEMALA   Wealth Q4            335   898
9-12 months    COHORTS   GUATEMALA   Wealth Q1            179   898
9-12 months    COHORTS   GUATEMALA   Wealth Q2            184   898
9-12 months    COHORTS   GUATEMALA   Wealth Q3            200   898
12-15 months   COHORTS   GUATEMALA   Wealth Q4            329   855
12-15 months   COHORTS   GUATEMALA   Wealth Q1            161   855
12-15 months   COHORTS   GUATEMALA   Wealth Q2            184   855
12-15 months   COHORTS   GUATEMALA   Wealth Q3            181   855
15-18 months   COHORTS   GUATEMALA   Wealth Q4            291   772
15-18 months   COHORTS   GUATEMALA   Wealth Q1            146   772
15-18 months   COHORTS   GUATEMALA   Wealth Q2            169   772
15-18 months   COHORTS   GUATEMALA   Wealth Q3            166   772
18-21 months   COHORTS   GUATEMALA   Wealth Q4            281   765
18-21 months   COHORTS   GUATEMALA   Wealth Q1            149   765
18-21 months   COHORTS   GUATEMALA   Wealth Q2            162   765
18-21 months   COHORTS   GUATEMALA   Wealth Q3            173   765
21-24 months   COHORTS   GUATEMALA   Wealth Q4            312   843
21-24 months   COHORTS   GUATEMALA   Wealth Q1            166   843
21-24 months   COHORTS   GUATEMALA   Wealth Q2            177   843
21-24 months   COHORTS   GUATEMALA   Wealth Q3            188   843


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA



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
![](/tmp/073e7718-40b0-48cf-b5d8-60b76fe8e5d0/b0cc870c-7181-412b-8f73-9712b1b5b2e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/073e7718-40b0-48cf-b5d8-60b76fe8e5d0/b0cc870c-7181-412b-8f73-9712b1b5b2e2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/073e7718-40b0-48cf-b5d8-60b76fe8e5d0/b0cc870c-7181-412b-8f73-9712b1b5b2e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.5425329   -0.5804544   -0.5046114
0-3 months     COHORTS   GUATEMALA   Wealth Q1            NA                -0.5523050   -0.5977802   -0.5068298
0-3 months     COHORTS   GUATEMALA   Wealth Q2            NA                -0.5369194   -0.5897643   -0.4840745
0-3 months     COHORTS   GUATEMALA   Wealth Q3            NA                -0.5124747   -0.5547976   -0.4701517
3-6 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.0918641   -0.1146787   -0.0690495
3-6 months     COHORTS   GUATEMALA   Wealth Q1            NA                -0.1223356   -0.1553562   -0.0893150
3-6 months     COHORTS   GUATEMALA   Wealth Q2            NA                -0.1092965   -0.1463958   -0.0721971
3-6 months     COHORTS   GUATEMALA   Wealth Q3            NA                -0.0782644   -0.1077311   -0.0487978
6-9 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.1078384   -0.1274965   -0.0881803
6-9 months     COHORTS   GUATEMALA   Wealth Q1            NA                -0.1121501   -0.1378008   -0.0864994
6-9 months     COHORTS   GUATEMALA   Wealth Q2            NA                -0.1339194   -0.1625223   -0.1053164
6-9 months     COHORTS   GUATEMALA   Wealth Q3            NA                -0.1355107   -0.1596583   -0.1113630
9-12 months    COHORTS   GUATEMALA   Wealth Q4            NA                -0.0894155   -0.1064012   -0.0724297
9-12 months    COHORTS   GUATEMALA   Wealth Q1            NA                -0.0903436   -0.1140837   -0.0666035
9-12 months    COHORTS   GUATEMALA   Wealth Q2            NA                -0.0809450   -0.1030649   -0.0588250
9-12 months    COHORTS   GUATEMALA   Wealth Q3            NA                -0.1038595   -0.1246714   -0.0830476
12-15 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0869217   -0.1051310   -0.0687124
12-15 months   COHORTS   GUATEMALA   Wealth Q1            NA                -0.0764303   -0.0977700   -0.0550906
12-15 months   COHORTS   GUATEMALA   Wealth Q2            NA                -0.0961029   -0.1171224   -0.0750834
12-15 months   COHORTS   GUATEMALA   Wealth Q3            NA                -0.0864620   -0.1082378   -0.0646861
15-18 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0464809   -0.0631457   -0.0298161
15-18 months   COHORTS   GUATEMALA   Wealth Q1            NA                -0.0620481   -0.0880408   -0.0360554
15-18 months   COHORTS   GUATEMALA   Wealth Q2            NA                -0.0566539   -0.0818822   -0.0314257
15-18 months   COHORTS   GUATEMALA   Wealth Q3            NA                -0.0646365   -0.0893903   -0.0398827
18-21 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0135570   -0.0280543    0.0009403
18-21 months   COHORTS   GUATEMALA   Wealth Q1            NA                -0.0189229   -0.0410681    0.0032222
18-21 months   COHORTS   GUATEMALA   Wealth Q2            NA                -0.0211847   -0.0443686    0.0019992
18-21 months   COHORTS   GUATEMALA   Wealth Q3            NA                -0.0245223   -0.0479665   -0.0010781
21-24 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0108303   -0.0245295    0.0028688
21-24 months   COHORTS   GUATEMALA   Wealth Q1            NA                -0.0096401   -0.0277582    0.0084781
21-24 months   COHORTS   GUATEMALA   Wealth Q2            NA                 0.0054773   -0.0116802    0.0226348
21-24 months   COHORTS   GUATEMALA   Wealth Q3            NA                -0.0025343   -0.0181124    0.0130438


### Parameter: E(Y)


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS   GUATEMALA   NA                   NA                -0.5355682   -0.5575602   -0.5135762
3-6 months     COHORTS   GUATEMALA   NA                   NA                -0.0976717   -0.1124091   -0.0829344
6-9 months     COHORTS   GUATEMALA   NA                   NA                -0.1202982   -0.1323063   -0.1082902
9-12 months    COHORTS   GUATEMALA   NA                   NA                -0.0910818   -0.1013201   -0.0808435
12-15 months   COHORTS   GUATEMALA   NA                   NA                -0.0868247   -0.0971751   -0.0764742
15-18 months   COHORTS   GUATEMALA   NA                   NA                -0.0555559   -0.0666347   -0.0444771
18-21 months   COHORTS   GUATEMALA   NA                   NA                -0.0186971   -0.0286605   -0.0087338
21-24 months   COHORTS   GUATEMALA   NA                   NA                -0.0053218   -0.0133012    0.0026576


### Parameter: ATE


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
0-3 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0097721   -0.0689838   0.0494397
0-3 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0056135   -0.0594297   0.0706567
0-3 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0300583   -0.0267684   0.0868849
3-6 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
3-6 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0304715   -0.0706071   0.0096641
3-6 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0174323   -0.0609854   0.0261207
3-6 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0135997   -0.0236668   0.0508662
6-9 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
6-9 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0043117   -0.0366289   0.0280055
6-9 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0260810   -0.0607879   0.0086260
6-9 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0276723   -0.0588099   0.0034654
9-12 months    COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
9-12 months    COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0009282   -0.0301191   0.0282627
9-12 months    COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0084705   -0.0194187   0.0363597
9-12 months    COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0144440   -0.0413076   0.0124195
12-15 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
12-15 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4          0.0104914   -0.0175614   0.0385442
12-15 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0091811   -0.0369912   0.0186289
12-15 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0004598   -0.0279263   0.0288458
15-18 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
15-18 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0155672   -0.0464434   0.0153089
15-18 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0101730   -0.0404084   0.0200623
15-18 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0181556   -0.0479963   0.0116851
18-21 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
18-21 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0053659   -0.0318344   0.0211025
18-21 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0076277   -0.0349712   0.0197157
18-21 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0109653   -0.0385298   0.0165992
21-24 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
21-24 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4          0.0011903   -0.0215240   0.0239045
21-24 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0163077   -0.0056479   0.0382632
21-24 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0082960   -0.0124487   0.0290408


### Parameter: PAR


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            NA                 0.0069647   -0.0232953   0.0372248
3-6 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.0058076   -0.0247460   0.0131307
6-9 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.0124598   -0.0280283   0.0031086
9-12 months    COHORTS   GUATEMALA   Wealth Q4            NA                -0.0016663   -0.0150109   0.0116782
12-15 months   COHORTS   GUATEMALA   Wealth Q4            NA                 0.0000971   -0.0134502   0.0136444
15-18 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0090750   -0.0228985   0.0047485
18-21 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0051401   -0.0175916   0.0073113
21-24 months   COHORTS   GUATEMALA   Wealth Q4            NA                 0.0055085   -0.0050945   0.0161115
