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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     COHORTS   GUATEMALA   Wealth Q4            272   774
0-3 months     COHORTS   GUATEMALA   Wealth Q1            153   774
0-3 months     COHORTS   GUATEMALA   Wealth Q2            155   774
0-3 months     COHORTS   GUATEMALA   Wealth Q3            194   774
3-6 months     COHORTS   GUATEMALA   Wealth Q4            283   784
3-6 months     COHORTS   GUATEMALA   Wealth Q1            150   784
3-6 months     COHORTS   GUATEMALA   Wealth Q2            156   784
3-6 months     COHORTS   GUATEMALA   Wealth Q3            195   784
6-9 months     COHORTS   GUATEMALA   Wealth Q4            299   801
6-9 months     COHORTS   GUATEMALA   Wealth Q1            156   801
6-9 months     COHORTS   GUATEMALA   Wealth Q2            166   801
6-9 months     COHORTS   GUATEMALA   Wealth Q3            180   801
9-12 months    COHORTS   GUATEMALA   Wealth Q4            334   899
9-12 months    COHORTS   GUATEMALA   Wealth Q1            179   899
9-12 months    COHORTS   GUATEMALA   Wealth Q2            184   899
9-12 months    COHORTS   GUATEMALA   Wealth Q3            202   899
12-15 months   COHORTS   GUATEMALA   Wealth Q4            330   861
12-15 months   COHORTS   GUATEMALA   Wealth Q1            162   861
12-15 months   COHORTS   GUATEMALA   Wealth Q2            185   861
12-15 months   COHORTS   GUATEMALA   Wealth Q3            184   861
15-18 months   COHORTS   GUATEMALA   Wealth Q4            294   782
15-18 months   COHORTS   GUATEMALA   Wealth Q1            146   782
15-18 months   COHORTS   GUATEMALA   Wealth Q2            172   782
15-18 months   COHORTS   GUATEMALA   Wealth Q3            170   782
18-21 months   COHORTS   GUATEMALA   Wealth Q4            287   782
18-21 months   COHORTS   GUATEMALA   Wealth Q1            151   782
18-21 months   COHORTS   GUATEMALA   Wealth Q2            165   782
18-21 months   COHORTS   GUATEMALA   Wealth Q3            179   782
21-24 months   COHORTS   GUATEMALA   Wealth Q4            317   857
21-24 months   COHORTS   GUATEMALA   Wealth Q1            168   857
21-24 months   COHORTS   GUATEMALA   Wealth Q2            180   857
21-24 months   COHORTS   GUATEMALA   Wealth Q3            192   857


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
![](/tmp/2bd204ff-e0a4-4ab4-a067-3f7e444d2e43/6ad4dcbc-765d-4d7e-b4e3-1add17310907/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2bd204ff-e0a4-4ab4-a067-3f7e444d2e43/6ad4dcbc-765d-4d7e-b4e3-1add17310907/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2bd204ff-e0a4-4ab4-a067-3f7e444d2e43/6ad4dcbc-765d-4d7e-b4e3-1add17310907/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid   country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            NA                0.7909881   0.7632773   0.8186988
0-3 months     COHORTS   GUATEMALA   Wealth Q1            NA                0.7816145   0.7416684   0.8215605
0-3 months     COHORTS   GUATEMALA   Wealth Q2            NA                0.8163249   0.7830895   0.8495603
0-3 months     COHORTS   GUATEMALA   Wealth Q3            NA                0.8011292   0.7636763   0.8385821
3-6 months     COHORTS   GUATEMALA   Wealth Q4            NA                0.4722456   0.4544578   0.4900334
3-6 months     COHORTS   GUATEMALA   Wealth Q1            NA                0.4668202   0.4414043   0.4922360
3-6 months     COHORTS   GUATEMALA   Wealth Q2            NA                0.4314303   0.4074838   0.4553769
3-6 months     COHORTS   GUATEMALA   Wealth Q3            NA                0.4592691   0.4362677   0.4822704
6-9 months     COHORTS   GUATEMALA   Wealth Q4            NA                0.2283146   0.2119816   0.2446475
6-9 months     COHORTS   GUATEMALA   Wealth Q1            NA                0.2085409   0.1882706   0.2288112
6-9 months     COHORTS   GUATEMALA   Wealth Q2            NA                0.2037690   0.1815585   0.2259794
6-9 months     COHORTS   GUATEMALA   Wealth Q3            NA                0.2080260   0.1879015   0.2281505
9-12 months    COHORTS   GUATEMALA   Wealth Q4            NA                0.1612384   0.1459100   0.1765668
9-12 months    COHORTS   GUATEMALA   Wealth Q1            NA                0.1515479   0.1318317   0.1712641
9-12 months    COHORTS   GUATEMALA   Wealth Q2            NA                0.1458731   0.1270493   0.1646968
9-12 months    COHORTS   GUATEMALA   Wealth Q3            NA                0.1554350   0.1385489   0.1723210
12-15 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.1509624   0.1361818   0.1657429
12-15 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.1489621   0.1251467   0.1727775
12-15 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.1608988   0.1431544   0.1786433
12-15 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.1415149   0.1208093   0.1622205
15-18 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.1456383   0.1282542   0.1630223
15-18 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.1387027   0.1103089   0.1670965
15-18 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.1315226   0.1087740   0.1542713
15-18 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.1355351   0.1120674   0.1590029
18-21 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.1599652   0.1432135   0.1767169
18-21 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.1692668   0.1460987   0.1924349
18-21 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.1618068   0.1371052   0.1865083
18-21 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.1662549   0.1419945   0.1905153
21-24 months   COHORTS   GUATEMALA   Wealth Q4            NA                0.1856923   0.1701489   0.2012356
21-24 months   COHORTS   GUATEMALA   Wealth Q1            NA                0.1708904   0.1463068   0.1954741
21-24 months   COHORTS   GUATEMALA   Wealth Q2            NA                0.2041690   0.1820723   0.2262656
21-24 months   COHORTS   GUATEMALA   Wealth Q3            NA                0.1758902   0.1546496   0.1971309


### Parameter: E(Y)


agecat         studyid   country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS   GUATEMALA   NA                   NA                0.7967509   0.7797129   0.8137889
3-6 months     COHORTS   GUATEMALA   NA                   NA                0.4598586   0.4488398   0.4708774
6-9 months     COHORTS   GUATEMALA   NA                   NA                0.2148174   0.2050742   0.2245606
9-12 months    COHORTS   GUATEMALA   NA                   NA                0.1548601   0.1460722   0.1636480
12-15 months   COHORTS   GUATEMALA   NA                   NA                0.1507021   0.1414031   0.1600010
15-18 months   COHORTS   GUATEMALA   NA                   NA                0.1390423   0.1279954   0.1500893
18-21 months   COHORTS   GUATEMALA   NA                   NA                0.1635896   0.1528248   0.1743543
21-24 months   COHORTS   GUATEMALA   NA                   NA                0.1844754   0.1744220   0.1945287


### Parameter: ATE


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
0-3 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0093736   -0.0579902    0.0392430
0-3 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0253368   -0.0179353    0.0686089
0-3 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0101411   -0.0364487    0.0567309
3-6 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
3-6 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0054254   -0.0364476    0.0255967
3-6 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0408152   -0.0706455   -0.0109850
3-6 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0129765   -0.0420534    0.0161004
6-9 months     COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6-9 months     COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0197737   -0.0458054    0.0062581
6-9 months     COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0245456   -0.0521150    0.0030238
6-9 months     COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0202886   -0.0462069    0.0056298
9-12 months    COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
9-12 months    COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0096905   -0.0346643    0.0152832
9-12 months    COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0153654   -0.0396407    0.0089100
9-12 months    COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0058035   -0.0286091    0.0170022
12-15 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
12-15 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0020003   -0.0300295    0.0260290
12-15 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0099365   -0.0131575    0.0330304
12-15 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0094475   -0.0348873    0.0159924
15-18 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
15-18 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0069356   -0.0402284    0.0263573
15-18 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4         -0.0141156   -0.0427462    0.0145149
15-18 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0101031   -0.0393082    0.0191020
18-21 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
18-21 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4          0.0093016   -0.0192882    0.0378915
18-21 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0018415   -0.0280045    0.0316876
18-21 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4          0.0062897   -0.0231923    0.0357716
21-24 months   COHORTS   GUATEMALA   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
21-24 months   COHORTS   GUATEMALA   Wealth Q1            Wealth Q4         -0.0148018   -0.0438870    0.0142834
21-24 months   COHORTS   GUATEMALA   Wealth Q2            Wealth Q4          0.0184767   -0.0085391    0.0454926
21-24 months   COHORTS   GUATEMALA   Wealth Q3            Wealth Q4         -0.0098020   -0.0361224    0.0165183


### Parameter: PAR


agecat         studyid   country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS   GUATEMALA   Wealth Q4            NA                 0.0057628   -0.0170073    0.0285329
3-6 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.0123870   -0.0268575    0.0020835
6-9 months     COHORTS   GUATEMALA   Wealth Q4            NA                -0.0134971   -0.0262461   -0.0007481
9-12 months    COHORTS   GUATEMALA   Wealth Q4            NA                -0.0063783   -0.0181087    0.0053520
12-15 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0002603   -0.0119851    0.0114645
15-18 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0065959   -0.0206318    0.0074400
18-21 months   COHORTS   GUATEMALA   Wealth Q4            NA                 0.0036244   -0.0101785    0.0174272
21-24 months   COHORTS   GUATEMALA   Wealth Q4            NA                -0.0012169   -0.0140206    0.0115868
