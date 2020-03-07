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

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country     fhtcm           ever_co   n_cell       n
------------  --------------  ----------  -------------  --------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm              0       59     495
0-24 months   COHORTS         GUATEMALA   >=167 cm              1        4     495
0-24 months   COHORTS         GUATEMALA   <162 cm               0      244     495
0-24 months   COHORTS         GUATEMALA   <162 cm               1       49     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm          0      119     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm          1       20     495
0-24 months   Keneba          GAMBIA      >=167 cm              0     1062    1929
0-24 months   Keneba          GAMBIA      >=167 cm              1      183    1929
0-24 months   Keneba          GAMBIA      <162 cm               0      111    1929
0-24 months   Keneba          GAMBIA      <162 cm               1       21    1929
0-24 months   Keneba          GAMBIA      [162-167) cm          0      444    1929
0-24 months   Keneba          GAMBIA      [162-167) cm          1      108    1929
0-24 months   PROBIT          BELARUS     >=167 cm              0    11734   12537
0-24 months   PROBIT          BELARUS     >=167 cm              1       10   12537
0-24 months   PROBIT          BELARUS     <162 cm               0      167   12537
0-24 months   PROBIT          BELARUS     <162 cm               1        1   12537
0-24 months   PROBIT          BELARUS     [162-167) cm          0      622   12537
0-24 months   PROBIT          BELARUS     [162-167) cm          1        3   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm              0      327     895
0-24 months   SAS-CompFeed    INDIA       >=167 cm              1       80     895
0-24 months   SAS-CompFeed    INDIA       <162 cm               0      162     895
0-24 months   SAS-CompFeed    INDIA       <162 cm               1       64     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm          0      196     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm          1       66     895
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm              0       73     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm              1       33     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm               0       84     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm               1       79     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          0       91     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          1       39     399
0-6 months    COHORTS         GUATEMALA   >=167 cm              0       48     334
0-6 months    COHORTS         GUATEMALA   >=167 cm              1        0     334
0-6 months    COHORTS         GUATEMALA   <162 cm               0      192     334
0-6 months    COHORTS         GUATEMALA   <162 cm               1        3     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm          0       89     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm          1        2     334
0-6 months    Keneba          GAMBIA      >=167 cm              0     1081    1722
0-6 months    Keneba          GAMBIA      >=167 cm              1       32    1722
0-6 months    Keneba          GAMBIA      <162 cm               0      121    1722
0-6 months    Keneba          GAMBIA      <162 cm               1        2    1722
0-6 months    Keneba          GAMBIA      [162-167) cm          0      471    1722
0-6 months    Keneba          GAMBIA      [162-167) cm          1       15    1722
0-6 months    PROBIT          BELARUS     >=167 cm              0    11738   12537
0-6 months    PROBIT          BELARUS     >=167 cm              1        6   12537
0-6 months    PROBIT          BELARUS     <162 cm               0      167   12537
0-6 months    PROBIT          BELARUS     <162 cm               1        1   12537
0-6 months    PROBIT          BELARUS     [162-167) cm          0      623   12537
0-6 months    PROBIT          BELARUS     [162-167) cm          1        2   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm              0      388     888
0-6 months    SAS-CompFeed    INDIA       >=167 cm              1       19     888
0-6 months    SAS-CompFeed    INDIA       <162 cm               0      210     888
0-6 months    SAS-CompFeed    INDIA       <162 cm               1       13     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm          0      238     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm          1       20     888
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm              0      101     397
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm              1        5     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm               0      145     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm               1       17     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm          0      122     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm          1        7     397
6-24 months   COHORTS         GUATEMALA   >=167 cm              0       59     488
6-24 months   COHORTS         GUATEMALA   >=167 cm              1        4     488
6-24 months   COHORTS         GUATEMALA   <162 cm               0      239     488
6-24 months   COHORTS         GUATEMALA   <162 cm               1       48     488
6-24 months   COHORTS         GUATEMALA   [162-167) cm          0      120     488
6-24 months   COHORTS         GUATEMALA   [162-167) cm          1       18     488
6-24 months   Keneba          GAMBIA      >=167 cm              0     1014    1850
6-24 months   Keneba          GAMBIA      >=167 cm              1      172    1850
6-24 months   Keneba          GAMBIA      <162 cm               0      112    1850
6-24 months   Keneba          GAMBIA      <162 cm               1       19    1850
6-24 months   Keneba          GAMBIA      [162-167) cm          0      431    1850
6-24 months   Keneba          GAMBIA      [162-167) cm          1      102    1850
6-24 months   PROBIT          BELARUS     >=167 cm              0    11733   12530
6-24 months   PROBIT          BELARUS     >=167 cm              1        5   12530
6-24 months   PROBIT          BELARUS     <162 cm               0      168   12530
6-24 months   PROBIT          BELARUS     <162 cm               1        0   12530
6-24 months   PROBIT          BELARUS     [162-167) cm          0      623   12530
6-24 months   PROBIT          BELARUS     [162-167) cm          1        1   12530
6-24 months   SAS-CompFeed    INDIA       >=167 cm              0      315     836
6-24 months   SAS-CompFeed    INDIA       >=167 cm              1       73     836
6-24 months   SAS-CompFeed    INDIA       <162 cm               0      139     836
6-24 months   SAS-CompFeed    INDIA       <162 cm               1       61     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm          0      186     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm          1       62     836
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm              0       74     392
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm              1       31     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm               0       86     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm               1       73     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          0       91     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm          1       37     392


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8ca9f6b8-0268-4bdf-81b5-ffaf937adc03/135315e1-73d1-45ee-8141-d226186beb60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ca9f6b8-0268-4bdf-81b5-ffaf937adc03/135315e1-73d1-45ee-8141-d226186beb60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ca9f6b8-0268-4bdf-81b5-ffaf937adc03/135315e1-73d1-45ee-8141-d226186beb60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ca9f6b8-0268-4bdf-81b5-ffaf937adc03/135315e1-73d1-45ee-8141-d226186beb60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1469880   0.1273139   0.1666620
0-24 months   Keneba          GAMBIA    <162 cm              NA                0.1590909   0.0966785   0.2215033
0-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1956522   0.1625501   0.2287543
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.1965602   0.1389987   0.2541217
0-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.2831858   0.1808723   0.3854994
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.2519084   0.1878339   0.3159829
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3113208   0.2230631   0.3995785
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.4846626   0.4078443   0.5614809
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.3000000   0.2211265   0.3788735
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.0466830   0.0241262   0.0692399
0-6 months    SAS-CompFeed    INDIA     <162 cm              NA                0.0582960   0.0107864   0.1058055
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         NA                0.0775194   0.0525923   0.1024464
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0471698   0.0067604   0.0875792
0-6 months    SAS-FoodSuppl   INDIA     <162 cm              NA                0.1049383   0.0576850   0.1521915
0-6 months    SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.0542636   0.0151218   0.0934053
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1450253   0.1249796   0.1650710
6-24 months   Keneba          GAMBIA    <162 cm              NA                0.1450382   0.0847205   0.2053558
6-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1913696   0.1579645   0.2247748
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.1881443   0.1382118   0.2380768
6-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.3050000   0.2072026   0.4027974
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.2500000   0.1914997   0.3085003
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.2952381   0.2078775   0.3825987
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.4591195   0.3815631   0.5366759
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.2890625   0.2104287   0.3676963


### Parameter: E(Y)


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    NA                   NA                0.1617418   0.1453059   0.1781778
0-24 months   SAS-CompFeed    INDIA     NA                   NA                0.2346369   0.1798928   0.2893809
0-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.3784461   0.3307978   0.4260945
0-6 months    SAS-CompFeed    INDIA     NA                   NA                0.0585586   0.0394255   0.0776916
0-6 months    SAS-FoodSuppl   INDIA     NA                   NA                0.0730479   0.0474188   0.0986769
6-24 months   Keneba          GAMBIA    NA                   NA                0.1583784   0.1417371   0.1750196
6-24 months   SAS-CompFeed    INDIA     NA                   NA                0.2344498   0.1848813   0.2840182
6-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.3596939   0.3121253   0.4072624


### Parameter: RR


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.0823398   0.7150618   1.638263
0-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          1.3310763   1.0727831   1.651558
0-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.4407080   0.9796518   2.118752
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2815840   1.0336346   1.589012
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5567949   1.1250591   2.154207
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9636364   0.6546316   1.418500
0-6 months    SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.2487609   0.4505789   3.460889
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.6605467   1.0196793   2.704199
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.2246914   0.8451872   5.855805
0-6 months    SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.1503876   0.3753798   3.525474
6-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.0000888   0.6452263   1.550119
6-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          1.3195602   1.0561623   1.648647
6-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.6210959   1.1739324   2.238589
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3287671   1.0542466   1.674771
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.5550822   1.1060625   2.186387
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.9790827   0.6550260   1.463458


### Parameter: PAR


agecat        studyid         country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0147539    0.0022012   0.0273066
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0380767    0.0085036   0.0676498
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0671254   -0.0098230   0.1440737
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.0118755   -0.0077820   0.0315330
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0258780   -0.0117754   0.0635315
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0133531    0.0005644   0.0261417
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0463054    0.0164114   0.0761994
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.0644558   -0.0117422   0.1406538


### Parameter: PAF


agecat        studyid         country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0912187    0.0105910   0.1652760
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.1622792    0.0272450   0.2785684
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1773710   -0.0532915   0.3575202
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.2027972   -0.1915794   0.4666471
0-6 months    SAS-FoodSuppl   INDIA     >=167 cm             NA                0.3542615   -0.4046217   0.7031385
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.0843113    0.0002450   0.1613087
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.1975068    0.0655692   0.3108155
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1791962   -0.0623603   0.3658283
