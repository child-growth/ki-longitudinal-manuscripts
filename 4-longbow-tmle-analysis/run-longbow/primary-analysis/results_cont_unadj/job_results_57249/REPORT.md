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

**Outcome Variable:** y_rate_len

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
![](/tmp/b42a3c8d-2ac1-4031-af81-90bc991741c4/6b4f4776-e1e4-4778-aa0a-cc37419de286/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b42a3c8d-2ac1-4031-af81-90bc991741c4/6b4f4776-e1e4-4778-aa0a-cc37419de286/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b42a3c8d-2ac1-4031-af81-90bc991741c4/6b4f4776-e1e4-4778-aa0a-cc37419de286/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid   country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            NA                2.5690956   2.4921390   2.6460523
0-3 months     COHORTS   GUATEMALA   Wealth Q1            NA                2.5418666   2.4515494   2.6321837
0-3 months     COHORTS   GUATEMALA   Wealth Q2            NA                2.5976975   2.4983679   2.6970272
0-3 months     COHORTS   GUATEMALA   Wealth Q3            NA                2.6322313   2.5472496   2.7172129
3-6 months     COHORTS   GUATEMALA   Wealth Q4            NA                1.7700897   1.7219883   1.8181912
3-6 months     COHORTS   GUATEMALA   Wealth Q1            NA                1.6990880   1.6295428   1.7686332
3-6 months     COHORTS   GUATEMALA   Wealth Q2            NA                1.7384546   1.6602018   1.8167073
3-6 months     COHORTS   GUATEMALA   Wealth Q3            NA                1.8048842   1.7434681   1.8663004
6-9 months     COHORTS   GUATEMALA   Wealth Q4            NA                1.1397837   1.0949113   1.1846561
6-9 months     COHORTS   GUATEMALA   Wealth Q1            NA                1.1216866   1.0629444   1.1804287
6-9 months     COHORTS   GUATEMALA   Wealth Q2            NA                1.0751978   1.0106402   1.1397553
6-9 months     COHORTS   GUATEMALA   Wealth Q3            NA                1.0730582   1.0184504   1.1276661
9-12 months    COHORTS   GUATEMALA   Wealth Q4            NA                0.9542476   0.9121685   0.9963268
9-12 months    COHORTS   GUATEMALA   Wealth Q1            NA                0.9393885   0.8818685   0.9969085
9-12 months    COHORTS   GUATEMALA   Wealth Q2            NA                0.9656514   0.9117312   1.0195717
9-12 months    COHORTS   GUATEMALA   Wealth Q3            NA                0.9153808   0.8648383   0.9659233
12-15 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.7943717   0.7473271   0.8414164
12-15 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.8090742   0.7526846   0.8654639
12-15 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.7584100   0.7034534   0.8133666
12-15 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.7847853   0.7295389   0.8400316
15-18 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.7754793   0.7303343   0.8206242
15-18 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.7205624   0.6500678   0.7910570
15-18 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.7354715   0.6673150   0.8036281
15-18 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.7138094   0.6456132   0.7820055
18-21 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.7767399   0.7347591   0.8187206
18-21 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.7453362   0.6811059   0.8095666
18-21 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.7370573   0.6706968   0.8034179
18-21 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.7279405   0.6599038   0.7959773
21-24 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.6735350   0.6335418   0.7135281
21-24 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.6559060   0.6024076   0.7094045
21-24 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.7084626   0.6564943   0.7604309
21-24 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.6825201   0.6366281   0.7284121


### Parameter: E(Y)


agecat         studyid   country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS   GUATEMALA   NA                   NA                2.5857395   2.5420908   2.6293882
3-6 months     COHORTS   GUATEMALA   NA                   NA                1.7591266   1.7281267   1.7901266
6-9 months     COHORTS   GUATEMALA   NA                   NA                1.1078835   1.0805783   1.1351886
9-12 months    COHORTS   GUATEMALA   NA                   NA                0.9449661   0.9199056   0.9700266
12-15 months   COHORTS   GUATEMALA   NA                   NA                0.7873717   0.7605685   0.8141750
15-18 months   COHORTS   GUATEMALA   NA                   NA                0.7430746   0.7129350   0.7732142
18-21 months   COHORTS   GUATEMALA   NA                   NA                0.7511843   0.7223646   0.7800040
21-24 months   COHORTS   GUATEMALA   NA                   NA                0.6794009   0.6558371   0.7029647


### Parameter: ATE


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
0-3 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0272291   -0.1458862   0.0914281
0-3 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0286019   -0.0970512   0.1542550
0-3 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0631356   -0.0515125   0.1777838
3-6 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
3-6 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0710017   -0.1555611   0.0135576
3-6 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0316352   -0.1234896   0.0602193
3-6 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0347945   -0.0432164   0.1128053
6-9 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
6-9 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0180972   -0.0920172   0.0558229
6-9 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0645859   -0.1432066   0.0140347
6-9 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0667255   -0.1374047   0.0039537
9-12 months    COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
9-12 months    COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0148591   -0.0861276   0.0564094
9-12 months    COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0114038   -0.0569925   0.0798001
9-12 months    COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0388668   -0.1046330   0.0268995
12-15 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
12-15 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4          0.0147025   -0.0587345   0.0881395
12-15 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0359618   -0.1083042   0.0363807
12-15 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0095865   -0.0821493   0.0629764
15-18 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
15-18 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0549169   -0.1386281   0.0287943
15-18 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0400077   -0.1217597   0.0417443
15-18 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0616699   -0.1434549   0.0201151
18-21 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
18-21 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0314036   -0.1081364   0.0453291
18-21 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0396825   -0.1182071   0.0388420
18-21 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0487993   -0.1287454   0.0311468
21-24 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000   0.0000000
21-24 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0176289   -0.0844237   0.0491658
21-24 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0349276   -0.0306480   0.1005033
21-24 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0089851   -0.0518880   0.0698582


### Parameter: PAR


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            NA                 0.0166438   -0.0440555   0.0773432
3-6 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.0109631   -0.0508361   0.0289100
6-9 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.0319002   -0.0673565   0.0035560
9-12 months    COHORTS   GUATEMALA   Wealth Q4            NA                -0.0092816   -0.0421083   0.0235452
12-15 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0070000   -0.0420480   0.0280479
15-18 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0324046   -0.0699545   0.0051452
18-21 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0255555   -0.0615866   0.0104755
21-24 months   COHORTS   GUATEMALA   Wealth Q4            NA                 0.0058659   -0.0252912   0.0370231
