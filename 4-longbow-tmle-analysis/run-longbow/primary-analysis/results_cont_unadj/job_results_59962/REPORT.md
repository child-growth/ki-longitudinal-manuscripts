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

**Outcome Variable:** haz

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

agecat      studyid         country     fhtcm           n_cell       n
----------  --------------  ----------  -------------  -------  ------
Birth       COHORTS         GUATEMALA   >=167 cm            29     206
Birth       COHORTS         GUATEMALA   <162 cm            121     206
Birth       COHORTS         GUATEMALA   [162-167) cm        56     206
Birth       Keneba          GAMBIA      >=167 cm           772    1167
Birth       Keneba          GAMBIA      <162 cm             87    1167
Birth       Keneba          GAMBIA      [162-167) cm       308    1167
Birth       PROBIT          BELARUS     >=167 cm         11742   12535
Birth       PROBIT          BELARUS     <162 cm            168   12535
Birth       PROBIT          BELARUS     [162-167) cm       625   12535
Birth       SAS-CompFeed    INDIA       >=167 cm           343     746
Birth       SAS-CompFeed    INDIA       <162 cm            190     746
Birth       SAS-CompFeed    INDIA       [162-167) cm       213     746
6 months    COHORTS         GUATEMALA   >=167 cm            45     336
6 months    COHORTS         GUATEMALA   <162 cm            197     336
6 months    COHORTS         GUATEMALA   [162-167) cm        94     336
6 months    Keneba          GAMBIA      >=167 cm           979    1511
6 months    Keneba          GAMBIA      <162 cm            113    1511
6 months    Keneba          GAMBIA      [162-167) cm       419    1511
6 months    PROBIT          BELARUS     >=167 cm         11146   11894
6 months    PROBIT          BELARUS     <162 cm            156   11894
6 months    PROBIT          BELARUS     [162-167) cm       592   11894
6 months    SAS-CompFeed    INDIA       >=167 cm           369     807
6 months    SAS-CompFeed    INDIA       <162 cm            194     807
6 months    SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm           102     372
6 months    SAS-FoodSuppl   INDIA       <162 cm            148     372
6 months    SAS-FoodSuppl   INDIA       [162-167) cm       122     372
24 months   COHORTS         GUATEMALA   >=167 cm            70     526
24 months   COHORTS         GUATEMALA   <162 cm            307     526
24 months   COHORTS         GUATEMALA   [162-167) cm       149     526
24 months   Keneba          GAMBIA      >=167 cm           821    1297
24 months   Keneba          GAMBIA      <162 cm             97    1297
24 months   Keneba          GAMBIA      [162-167) cm       379    1297
24 months   PROBIT          BELARUS     >=167 cm          3445    3670
24 months   PROBIT          BELARUS     <162 cm             53    3670
24 months   PROBIT          BELARUS     [162-167) cm       172    3670


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
![](/tmp/14927776-a788-4e3d-bda3-0e97dec9fbd5/46e50d50-3886-4006-ac80-5ae281689d7c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/14927776-a788-4e3d-bda3-0e97dec9fbd5/46e50d50-3886-4006-ac80-5ae281689d7c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/14927776-a788-4e3d-bda3-0e97dec9fbd5/46e50d50-3886-4006-ac80-5ae281689d7c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.0441379   -0.6279906    0.5397147
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.3439669   -0.5371609   -0.1507730
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.1048214   -0.3600846    0.1504418
Birth       Keneba          GAMBIA      >=167 cm             NA                 0.0932902   -0.0002374    0.1868177
Birth       Keneba          GAMBIA      <162 cm              NA                 0.0729885   -0.1826045    0.3285815
Birth       Keneba          GAMBIA      [162-167) cm         NA                 0.0115584   -0.1224580    0.1455748
Birth       PROBIT          BELARUS     >=167 cm             NA                 1.3355719    1.1784446    1.4926992
Birth       PROBIT          BELARUS     <162 cm              NA                 0.9623810    0.8625225    1.0622394
Birth       PROBIT          BELARUS     [162-167) cm         NA                 1.1309120    0.9363901    1.3254339
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -1.3458309   -1.4747425   -1.2169193
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -1.6452632   -1.8926840   -1.3978424
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -1.4963850   -1.6562275   -1.3365424
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -1.5582222   -1.8757026   -1.2407418
6 months    COHORTS         GUATEMALA   <162 cm              NA                -2.1856345   -2.3266135   -2.0446556
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                -1.6984043   -1.9126512   -1.4841574
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.8602115   -0.9289605   -0.7914625
6 months    Keneba          GAMBIA      <162 cm              NA                -1.0681755   -1.2345847   -0.9017663
6 months    Keneba          GAMBIA      [162-167) cm         NA                -1.0635692   -1.1699470   -0.9571914
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.1412275    0.0546035    0.2278515
6 months    PROBIT          BELARUS     <162 cm              NA                -0.5662821   -0.6810186   -0.4515455
6 months    PROBIT          BELARUS     [162-167) cm         NA                -0.2831672   -0.4270840   -0.1392505
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -1.2444173   -1.3652364   -1.1235983
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -1.7145361   -1.8397613   -1.5893109
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -1.5177459   -1.6532707   -1.3822211
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -1.6704902   -1.8765765   -1.4644039
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -2.1216216   -2.2892430   -1.9540002
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -1.7838525   -1.9894834   -1.5782215
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -2.5781429   -2.8402783   -2.3160074
24 months   COHORTS         GUATEMALA   <162 cm              NA                -3.2418241   -3.3640990   -3.1195493
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -2.8226174   -2.9838073   -2.6614276
24 months   Keneba          GAMBIA      >=167 cm             NA                -1.5327499   -1.6027262   -1.4627736
24 months   Keneba          GAMBIA      <162 cm              NA                -1.7315326   -1.9335259   -1.5295394
24 months   Keneba          GAMBIA      [162-167) cm         NA                -1.7807832   -1.8870572   -1.6745092
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.1009173   -0.3888196    0.1869851
24 months   PROBIT          BELARUS     <162 cm              NA                -1.0164151   -1.4067358   -0.6260944
24 months   PROBIT          BELARUS     [162-167) cm         NA                -0.6322481   -0.9522135   -0.3122827


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   NA                   NA                -0.2367476   -0.3941046   -0.0793906
Birth       Keneba          GAMBIA      NA                   NA                 0.0702057   -0.0035933    0.1440046
Birth       PROBIT          BELARUS     NA                   NA                 1.3203658    1.1636745    1.4770571
Birth       SAS-CompFeed    INDIA       NA                   NA                -1.4650804   -1.5752607   -1.3549001
6 months    COHORTS         GUATEMALA   NA                   NA                -1.9652976   -2.0794998   -1.8510954
6 months    Keneba          GAMBIA      NA                   NA                -0.9321551   -0.9872314   -0.8770788
6 months    PROBIT          BELARUS     NA                   NA                 0.1108245    0.0214240    0.2002250
6 months    SAS-CompFeed    INDIA       NA                   NA                -1.4400743   -1.5370187   -1.3431300
6 months    SAS-FoodSuppl   INDIA       NA                   NA                -1.8871505   -1.9993302   -1.7749709
24 months   COHORTS         GUATEMALA   NA                   NA                -3.0347529   -3.1289563   -2.9405494
24 months   Keneba          GAMBIA      NA                   NA                -1.6200950   -1.6766111   -1.5635788
24 months   PROBIT          BELARUS     NA                   NA                -0.1390400   -0.4237657    0.1456858


### Parameter: ATE


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.2998290   -0.9148150    0.3151570
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0606835   -0.6978987    0.5765317
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          -0.0203016   -0.2924693    0.2518660
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0817317   -0.2451569    0.0816935
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm          -0.3731909   -0.4857895   -0.2605923
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.2046599   -0.3126706   -0.0966492
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2994323   -0.5995186    0.0006541
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1505541   -0.3376077    0.0364996
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.6274123   -0.9747865   -0.2800381
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1401820   -0.5231906    0.2428265
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.2079640   -0.3880152   -0.0279128
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.2033577   -0.3300173   -0.0766981
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.7075095   -0.8408311   -0.5741880
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.4243947   -0.5179795   -0.3308099
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.4701187   -0.5783254   -0.3619121
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.2733286   -0.4401374   -0.1065198
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.4511314   -0.7167787   -0.1854841
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1133623   -0.4044905    0.1777660
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.6636812   -0.9529322   -0.3744303
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.2444746   -0.5522036    0.0632544
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.1987827   -0.4125536    0.0149881
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.2480333   -0.3752766   -0.1207900
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.9154978   -1.3140175   -0.5169781
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.5313308   -0.8346861   -0.2279755


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.1926096   -0.7119054    0.3266861
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0230845   -0.0742746    0.0281056
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0152061   -0.0207591   -0.0096531
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.1192495   -0.2353773   -0.0031217
6 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.4070754   -0.7017576   -0.1123932
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.0719436   -0.1123810   -0.0315063
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0304030   -0.0369299   -0.0238761
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1956570   -0.2567019   -0.1346121
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2166603   -0.3948877   -0.0384330
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.4566100   -0.7001262   -0.2130938
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0873451   -0.1308372   -0.0438529
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0381227   -0.0567249   -0.0195204
