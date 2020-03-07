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

**Outcome Variable:** whz

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
Birth       COHORTS         GUATEMALA   >=167 cm            26     192
Birth       COHORTS         GUATEMALA   <162 cm            112     192
Birth       COHORTS         GUATEMALA   [162-167) cm        54     192
Birth       Keneba          GAMBIA      >=167 cm           733    1114
Birth       Keneba          GAMBIA      <162 cm             83    1114
Birth       Keneba          GAMBIA      [162-167) cm       298    1114
Birth       PROBIT          BELARUS     >=167 cm         11672   12461
Birth       PROBIT          BELARUS     <162 cm            168   12461
Birth       PROBIT          BELARUS     [162-167) cm       621   12461
Birth       SAS-CompFeed    INDIA       >=167 cm           312     657
Birth       SAS-CompFeed    INDIA       <162 cm            159     657
Birth       SAS-CompFeed    INDIA       [162-167) cm       186     657
6 months    COHORTS         GUATEMALA   >=167 cm            44     336
6 months    COHORTS         GUATEMALA   <162 cm            198     336
6 months    COHORTS         GUATEMALA   [162-167) cm        94     336
6 months    Keneba          GAMBIA      >=167 cm           979    1510
6 months    Keneba          GAMBIA      <162 cm            113    1510
6 months    Keneba          GAMBIA      [162-167) cm       418    1510
6 months    PROBIT          BELARUS     >=167 cm         11142   11891
6 months    PROBIT          BELARUS     <162 cm            156   11891
6 months    PROBIT          BELARUS     [162-167) cm       593   11891
6 months    SAS-CompFeed    INDIA       >=167 cm           370     807
6 months    SAS-CompFeed    INDIA       <162 cm            193     807
6 months    SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    SAS-FoodSuppl   INDIA       >=167 cm           102     371
6 months    SAS-FoodSuppl   INDIA       <162 cm            148     371
6 months    SAS-FoodSuppl   INDIA       [162-167) cm       121     371
24 months   COHORTS         GUATEMALA   >=167 cm            72     532
24 months   COHORTS         GUATEMALA   <162 cm            311     532
24 months   COHORTS         GUATEMALA   [162-167) cm       149     532
24 months   Keneba          GAMBIA      >=167 cm           823    1298
24 months   Keneba          GAMBIA      <162 cm             96    1298
24 months   Keneba          GAMBIA      [162-167) cm       379    1298
24 months   PROBIT          BELARUS     >=167 cm          3386    3608
24 months   PROBIT          BELARUS     <162 cm             52    3608
24 months   PROBIT          BELARUS     [162-167) cm       170    3608


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
![](/tmp/f7de287f-562f-4e98-a025-0ac4cab77535/184c6994-b794-4586-8b2f-b3d5c1b61c98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f7de287f-562f-4e98-a025-0ac4cab77535/184c6994-b794-4586-8b2f-b3d5c1b61c98/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f7de287f-562f-4e98-a025-0ac4cab77535/184c6994-b794-4586-8b2f-b3d5c1b61c98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.2950000   -0.8487177    0.2587177
Birth       COHORTS         GUATEMALA   <162 cm              NA                -0.5050000   -0.8100277   -0.1999723
Birth       COHORTS         GUATEMALA   [162-167) cm         NA                -0.7485185   -1.1187628   -0.3782742
Birth       Keneba          GAMBIA      >=167 cm             NA                -1.2089700   -1.2986743   -1.1192657
Birth       Keneba          GAMBIA      <162 cm              NA                -1.4219880   -1.6625777   -1.1813982
Birth       Keneba          GAMBIA      [162-167) cm         NA                -1.2297987   -1.3648518   -1.0947455
Birth       PROBIT          BELARUS     >=167 cm             NA                -1.1389445   -1.3493081   -0.9285808
Birth       PROBIT          BELARUS     <162 cm              NA                -1.2038690   -1.3223287   -1.0854094
Birth       PROBIT          BELARUS     [162-167) cm         NA                -1.1807568   -1.4178493   -0.9436644
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                -0.5835256   -0.7781318   -0.3889194
Birth       SAS-CompFeed    INDIA       <162 cm              NA                -0.5457862   -0.7373729   -0.3541994
Birth       SAS-CompFeed    INDIA       [162-167) cm         NA                -0.5798387   -0.8524197   -0.3072577
6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.0593182   -0.2752300    0.3938664
6 months    COHORTS         GUATEMALA   <162 cm              NA                 0.1200505   -0.0408976    0.2809986
6 months    COHORTS         GUATEMALA   [162-167) cm         NA                 0.0443617   -0.2056781    0.2944015
6 months    Keneba          GAMBIA      >=167 cm             NA                -0.2555462   -0.3276333   -0.1834591
6 months    Keneba          GAMBIA      <162 cm              NA                -0.2244292   -0.4756016    0.0267432
6 months    Keneba          GAMBIA      [162-167) cm         NA                -0.1615736   -0.2667740   -0.0563731
6 months    PROBIT          BELARUS     >=167 cm             NA                 0.5755035    0.5163579    0.6346491
6 months    PROBIT          BELARUS     <162 cm              NA                 0.5714103    0.4738817    0.6689388
6 months    PROBIT          BELARUS     [162-167) cm         NA                 0.5408600    0.4484371    0.6332829
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.5344459   -0.7190779   -0.3498140
6 months    SAS-CompFeed    INDIA       <162 cm              NA                -0.7696891   -0.9886229   -0.5507553
6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7314549   -0.8485996   -0.6143102
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8487255   -1.0485698   -0.6488811
6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2337162   -1.4165764   -1.0508561
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8409917   -1.0594145   -0.6225690
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.2325000   -0.4293212   -0.0356788
24 months   COHORTS         GUATEMALA   <162 cm              NA                -0.3030547   -0.4073057   -0.1988036
24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.3271812   -0.4710574   -0.1833050
24 months   Keneba          GAMBIA      >=167 cm             NA                -0.8005502   -0.8684558   -0.7326447
24 months   Keneba          GAMBIA      <162 cm              NA                -0.9058108   -1.1324581   -0.6791634
24 months   Keneba          GAMBIA      [162-167) cm         NA                -0.7595976   -0.8512159   -0.6679793
24 months   PROBIT          BELARUS     >=167 cm             NA                 0.6972007    0.5831936    0.8112079
24 months   PROBIT          BELARUS     <162 cm              NA                 0.5180769    0.0114535    1.0247004
24 months   PROBIT          BELARUS     [162-167) cm         NA                 0.5544216    0.3536815    0.7551617


### Parameter: E(Y)


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   NA                   NA                -0.5450521   -0.7653906   -0.3247135
Birth       Keneba          GAMBIA      NA                   NA                -1.2304129   -1.3019732   -1.1588526
Birth       PROBIT          BELARUS     NA                   NA                -1.1419035   -1.3515776   -0.9322295
Birth       SAS-CompFeed    INDIA       NA                   NA                -0.5733486   -0.7681703   -0.3785268
6 months    COHORTS         GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
6 months    Keneba          GAMBIA      NA                   NA                -0.2272039   -0.2854286   -0.1689793
6 months    PROBIT          BELARUS     NA                   NA                 0.5737221    0.5157281    0.6317162
6 months    SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
24 months   COHORTS         GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591
24 months   Keneba          GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   PROBIT          BELARUS     NA                   NA                 0.6878917    0.5705107    0.8052728


### Parameter: ATE


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.2100000   -0.8421750    0.4221750
Birth       COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.4535185   -1.1196147    0.2125777
Birth       Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba          GAMBIA      <162 cm              >=167 cm          -0.2130180   -0.4697870    0.0437510
Birth       Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0208287   -0.1829590    0.1413016
Birth       PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS     <162 cm              >=167 cm          -0.0649246   -0.2018241    0.0719749
Birth       PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0418124   -0.1662018    0.0825770
Birth       SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0377395   -0.1411898    0.2166687
Birth       SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0036869   -0.1490130    0.1563868
6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0607323   -0.3105179    0.4319826
6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0149565   -0.4326195    0.4027065
6 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba          GAMBIA      <162 cm              >=167 cm           0.0311170   -0.2301954    0.2924293
6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0939726   -0.0335566    0.2215018
6 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.0040932   -0.1046374    0.0964509
6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0346435   -0.1226293    0.0533424
6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2352432   -0.3948119   -0.0756744
6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1970090   -0.3390937   -0.0549242
6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3849907   -0.6558700   -0.1141114
6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0077338   -0.2883174    0.3037849
24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0705547   -0.2932806    0.1521713
24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0946812   -0.3384822    0.1491198
24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.1052605   -0.3418618    0.1313408
24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0409526   -0.0730872    0.1549924
24 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.1791238   -0.6477912    0.2895435
24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.1427792   -0.3282349    0.0426766


### Parameter: PAR


agecat      studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA   >=167 cm             NA                -0.2500521   -0.7716976    0.2715934
Birth       Keneba          GAMBIA      >=167 cm             NA                -0.0214429   -0.0722193    0.0293334
Birth       PROBIT          BELARUS     >=167 cm             NA                -0.0029591   -0.0098771    0.0039590
Birth       SAS-CompFeed    INDIA       >=167 cm             NA                 0.0101771   -0.0574118    0.0777660
6 months    COHORTS         GUATEMALA   >=167 cm             NA                 0.0316044   -0.2821337    0.3453426
6 months    Keneba          GAMBIA      >=167 cm             NA                 0.0283422   -0.0146503    0.0713347
6 months    PROBIT          BELARUS     >=167 cm             NA                -0.0017814   -0.0067258    0.0031631
6 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.1158267   -0.1739254   -0.0577280
6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1510589   -0.3292986    0.0271809
24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0677632   -0.2529831    0.1174568
24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0041726   -0.0360514    0.0443966
24 months   PROBIT          BELARUS     >=167 cm             NA                -0.0093090   -0.0225605    0.0039425
