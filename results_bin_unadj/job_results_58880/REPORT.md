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

**Outcome Variable:** stunted

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

agecat      studyid         country     fhtcm           stunted   n_cell       n
----------  --------------  ----------  -------------  --------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm              0       26     206
Birth       COHORTS         GUATEMALA   >=167 cm              1        3     206
Birth       COHORTS         GUATEMALA   <162 cm               0      111     206
Birth       COHORTS         GUATEMALA   <162 cm               1       10     206
Birth       COHORTS         GUATEMALA   [162-167) cm          0       54     206
Birth       COHORTS         GUATEMALA   [162-167) cm          1        2     206
Birth       Keneba          GAMBIA      >=167 cm              0      735    1167
Birth       Keneba          GAMBIA      >=167 cm              1       37    1167
Birth       Keneba          GAMBIA      <162 cm               0       82    1167
Birth       Keneba          GAMBIA      <162 cm               1        5    1167
Birth       Keneba          GAMBIA      [162-167) cm          0      291    1167
Birth       Keneba          GAMBIA      [162-167) cm          1       17    1167
Birth       PROBIT          BELARUS     >=167 cm              0    11713   12535
Birth       PROBIT          BELARUS     >=167 cm              1       29   12535
Birth       PROBIT          BELARUS     <162 cm               0      168   12535
Birth       PROBIT          BELARUS     <162 cm               1        0   12535
Birth       PROBIT          BELARUS     [162-167) cm          0      621   12535
Birth       PROBIT          BELARUS     [162-167) cm          1        4   12535
Birth       SAS-CompFeed    INDIA       >=167 cm              0      253     746
Birth       SAS-CompFeed    INDIA       >=167 cm              1       90     746
Birth       SAS-CompFeed    INDIA       <162 cm               0      126     746
Birth       SAS-CompFeed    INDIA       <162 cm               1       64     746
Birth       SAS-CompFeed    INDIA       [162-167) cm          0      148     746
Birth       SAS-CompFeed    INDIA       [162-167) cm          1       65     746
6 months    COHORTS         GUATEMALA   >=167 cm              0       31     336
6 months    COHORTS         GUATEMALA   >=167 cm              1       14     336
6 months    COHORTS         GUATEMALA   <162 cm               0       88     336
6 months    COHORTS         GUATEMALA   <162 cm               1      109     336
6 months    COHORTS         GUATEMALA   [162-167) cm          0       61     336
6 months    COHORTS         GUATEMALA   [162-167) cm          1       33     336
6 months    Keneba          GAMBIA      >=167 cm              0      849    1511
6 months    Keneba          GAMBIA      >=167 cm              1      130    1511
6 months    Keneba          GAMBIA      <162 cm               0       98    1511
6 months    Keneba          GAMBIA      <162 cm               1       15    1511
6 months    Keneba          GAMBIA      [162-167) cm          0      355    1511
6 months    Keneba          GAMBIA      [162-167) cm          1       64    1511
6 months    PROBIT          BELARUS     >=167 cm              0    10763   11894
6 months    PROBIT          BELARUS     >=167 cm              1      383   11894
6 months    PROBIT          BELARUS     <162 cm               0      141   11894
6 months    PROBIT          BELARUS     <162 cm               1       15   11894
6 months    PROBIT          BELARUS     [162-167) cm          0      554   11894
6 months    PROBIT          BELARUS     [162-167) cm          1       38   11894
6 months    SAS-CompFeed    INDIA       >=167 cm              0      281     807
6 months    SAS-CompFeed    INDIA       >=167 cm              1       88     807
6 months    SAS-CompFeed    INDIA       <162 cm               0      129     807
6 months    SAS-CompFeed    INDIA       <162 cm               1       65     807
6 months    SAS-CompFeed    INDIA       [162-167) cm          0      168     807
6 months    SAS-CompFeed    INDIA       [162-167) cm          1       76     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm              0       64     372
6 months    SAS-FoodSuppl   INDIA       >=167 cm              1       38     372
6 months    SAS-FoodSuppl   INDIA       <162 cm               0       72     372
6 months    SAS-FoodSuppl   INDIA       <162 cm               1       76     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          0       77     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm          1       45     372
24 months   COHORTS         GUATEMALA   >=167 cm              0       24     526
24 months   COHORTS         GUATEMALA   >=167 cm              1       46     526
24 months   COHORTS         GUATEMALA   <162 cm               0       40     526
24 months   COHORTS         GUATEMALA   <162 cm               1      267     526
24 months   COHORTS         GUATEMALA   [162-167) cm          0       36     526
24 months   COHORTS         GUATEMALA   [162-167) cm          1      113     526
24 months   Keneba          GAMBIA      >=167 cm              0      565    1297
24 months   Keneba          GAMBIA      >=167 cm              1      256    1297
24 months   Keneba          GAMBIA      <162 cm               0       63    1297
24 months   Keneba          GAMBIA      <162 cm               1       34    1297
24 months   Keneba          GAMBIA      [162-167) cm          0      216    1297
24 months   Keneba          GAMBIA      [162-167) cm          1      163    1297
24 months   PROBIT          BELARUS     >=167 cm              0     3228    3670
24 months   PROBIT          BELARUS     >=167 cm              1      217    3670
24 months   PROBIT          BELARUS     <162 cm               0       42    3670
24 months   PROBIT          BELARUS     <162 cm               1       11    3670
24 months   PROBIT          BELARUS     [162-167) cm          0      150    3670
24 months   PROBIT          BELARUS     [162-167) cm          1       22    3670


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b6fc31e1-30ac-440a-a9c2-4f262054f325/7a619475-6ffe-402f-8aa8-6e7c1c05a51a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6fc31e1-30ac-440a-a9c2-4f262054f325/7a619475-6ffe-402f-8aa8-6e7c1c05a51a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b6fc31e1-30ac-440a-a9c2-4f262054f325/7a619475-6ffe-402f-8aa8-6e7c1c05a51a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6fc31e1-30ac-440a-a9c2-4f262054f325/7a619475-6ffe-402f-8aa8-6e7c1c05a51a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       Keneba          GAMBIA      >=167 cm             NA                0.0479275   0.0328526   0.0630023
Birth       Keneba          GAMBIA      <162 cm              NA                0.0574713   0.0085444   0.1063981
Birth       Keneba          GAMBIA      [162-167) cm         NA                0.0551948   0.0296808   0.0807088
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.2623907   0.2124843   0.3122971
Birth       SAS-CompFeed    INDIA       <162 cm              NA                0.3368421   0.2782656   0.3954186
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                0.3051643   0.2363113   0.3740173
6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.3111111   0.1756479   0.4465743
6 months    COHORTS         GUATEMALA   <162 cm              NA                0.5532995   0.4837730   0.6228260
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.3510638   0.2544308   0.4476968
6 months    Keneba          GAMBIA      >=167 cm             NA                0.1327886   0.1115246   0.1540525
6 months    Keneba          GAMBIA      <162 cm              NA                0.1327434   0.0701638   0.1953230
6 months    Keneba          GAMBIA      [162-167) cm         NA                0.1527446   0.1182878   0.1872014
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0343621   0.0255947   0.0431295
6 months    PROBIT          BELARUS     <162 cm              NA                0.0961538   0.0718025   0.1205052
6 months    PROBIT          BELARUS     [162-167) cm         NA                0.0641892   0.0355813   0.0927970
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.2384824   0.2006277   0.2763371
6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.3350515   0.2623570   0.4077461
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.3114754   0.2471012   0.3758496
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3725490   0.2785953   0.4665028
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.5135135   0.4328805   0.5941466
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3688525   0.2831202   0.4545848
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6571429   0.5458419   0.7684438
24 months   COHORTS         GUATEMALA   <162 cm              NA                0.8697068   0.8320157   0.9073980
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.7583893   0.6895918   0.8271867
24 months   Keneba          GAMBIA      >=167 cm             NA                0.3118149   0.2801159   0.3435138
24 months   Keneba          GAMBIA      <162 cm              NA                0.3505155   0.2555277   0.4455032
24 months   Keneba          GAMBIA      [162-167) cm         NA                0.4300792   0.3802163   0.4799420
24 months   PROBIT          BELARUS     >=167 cm             NA                0.0629898   0.0343995   0.0915802
24 months   PROBIT          BELARUS     <162 cm              NA                0.2075472   0.0986539   0.3164405
24 months   PROBIT          BELARUS     [162-167) cm         NA                0.1279070   0.0539645   0.2018495


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       Keneba          GAMBIA      NA                   NA                0.0505570   0.0379815   0.0631324
Birth       SAS-CompFeed    INDIA       NA                   NA                0.2935657   0.2562276   0.3309038
6 months    COHORTS         GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
6 months    Keneba          GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    PROBIT          BELARUS     NA                   NA                0.0366571   0.0273774   0.0459369
6 months    SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
24 months   COHORTS         GUATEMALA   NA                   NA                0.8098859   0.7763209   0.8434510
24 months   Keneba          GAMBIA      NA                   NA                0.3492675   0.3233122   0.3752228
24 months   PROBIT          BELARUS     NA                   NA                0.0681199   0.0392337   0.0970061


### Parameter: RR


agecat      studyid         country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  ----------  ---------
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          1.1991302   0.4838515   2.971807
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          1.1516322   0.6584043   2.014350
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.2837427   1.0555961   1.561199
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1630151   0.8785387   1.539607
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          1.7784627   1.1303897   2.798088
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.1284195   0.6741461   1.888805
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          0.9996596   0.6076065   1.644682
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          1.1502846   0.8722901   1.516874
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          2.7982527   2.0829732   3.759155
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          1.8680227   1.2380338   2.818589
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.4049321   1.1967308   1.649355
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.3060730   1.0084750   1.691491
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3783784   1.0241137   1.855191
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.9900777   0.7026223   1.395136
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.3234669   1.1111852   1.576303
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.1540706   0.9523340   1.398542
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.1241140   0.8416088   1.501449
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.3792773   1.1821838   1.609230
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          3.2949309   2.0464560   5.305059
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          2.0305969   0.9742889   4.232137


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       Keneba          GAMBIA      >=167 cm             NA                0.0026295   -0.0065753   0.0118343
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.0311750    0.0048673   0.0574827
6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.1531746    0.0255534   0.2807958
6 months    Keneba          GAMBIA      >=167 cm             NA                0.0055304   -0.0074869   0.0185478
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0022950    0.0007843   0.0038058
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0452847    0.0214626   0.0691068
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0548703   -0.0258797   0.1356203
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1527431    0.0516622   0.2538240
24 months   Keneba          GAMBIA      >=167 cm             NA                0.0374527    0.0172934   0.0576119
24 months   PROBIT          BELARUS     >=167 cm             NA                0.0051301    0.0009144   0.0093457


### Parameter: PAF


agecat      studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       Keneba          GAMBIA      >=167 cm             NA                0.0520111   -0.1482148   0.2173215
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                0.1061943    0.0078114   0.1948219
6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.3299145   -0.0105470   0.5556718
6 months    Keneba          GAMBIA      >=167 cm             NA                0.0399832   -0.0587926   0.1295441
6 months    PROBIT          BELARUS     >=167 cm             NA                0.0626081    0.0242615   0.0994477
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.1595839    0.0747613   0.2366303
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1283759   -0.0828128   0.2983749
24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1885983    0.0519990   0.3055146
24 months   Keneba          GAMBIA      >=167 cm             NA                0.1072321    0.0476312   0.1631030
24 months   PROBIT          BELARUS     >=167 cm             NA                0.0753091    0.0074749   0.1385072
