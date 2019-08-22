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

agecat      studyid                    country     fhtcm           n_cell       n
----------  -------------------------  ----------  -------------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm            46      90
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm             20      90
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        24      90
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           710    1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm             81    1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       288    1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm         11684   12474
Birth       ki1119695-PROBIT           BELARUS     <162 cm            168   12474
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       622   12474
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            26     192
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm            112     192
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        54     192
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm           370     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm            193     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm       244     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm           102     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm            148     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm       121     371
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979    1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113    1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418    1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm         11143   11892
6 months    ki1119695-PROBIT           BELARUS     <162 cm            156   11892
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       593   11892
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            44     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm            198     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        94     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823    1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96    1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379    1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          3387    3609
24 months   ki1119695-PROBIT           BELARUS     <162 cm             52    3609
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm       170    3609
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            72     532
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            311     532
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm       149     532


The following strata were considered:

* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/a624ffea-413b-4ba7-8054-6156697f81c5/af09f1f1-60b6-4477-8c48-b7372620294b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a624ffea-413b-4ba7-8054-6156697f81c5/af09f1f1-60b6-4477-8c48-b7372620294b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a624ffea-413b-4ba7-8054-6156697f81c5/af09f1f1-60b6-4477-8c48-b7372620294b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1034783   -0.4594651    0.2525086
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.2620000   -0.9219884    0.3979884
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0170833   -0.5598465    0.5256798
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 1.6388310    1.5229126    1.7547493
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                 1.9448148    1.5711786    2.3184510
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                 1.8062500    1.6339746    1.9785254
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -1.1362316   -1.3465534   -0.9259098
Birth       ki1119695-PROBIT           BELARUS     <162 cm              NA                -1.1922619   -1.3094543   -1.0750696
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -1.1785370   -1.4117595   -0.9453145
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2950000   -0.8487177    0.2587177
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.5050000   -0.8100277   -0.1999723
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.7485185   -1.1187628   -0.3782742
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.5344459   -0.7190779   -0.3498140
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.7696891   -0.9886229   -0.5507553
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.7314549   -0.8485996   -0.6143102
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.8487255   -1.0485698   -0.6488811
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -1.2337162   -1.4165764   -1.0508561
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.8409917   -1.0594145   -0.6225690
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2555701   -0.3276558   -0.1834844
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.2244292   -0.4756016    0.0267432
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1615935   -0.2667926   -0.0563944
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.5810854    0.5221092    0.6400616
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.5939103    0.4973121    0.6905084
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5398229    0.4451355    0.6345103
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0593182   -0.2752300    0.3938664
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                 0.1200505   -0.0408976    0.2809986
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                 0.0443617   -0.2056781    0.2944015
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.8005502   -0.8684558   -0.7326447
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.9058108   -1.1324581   -0.6791634
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.7595976   -0.8512159   -0.6679793
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.6853184    0.5746415    0.7959953
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.5148077   -0.0093113    1.0389267
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.5676569    0.3796509    0.7556628
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2325000   -0.4293212   -0.0356788
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.3030547   -0.4073057   -0.1988036
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.3271812   -0.4710574   -0.1833050


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.1156667   -0.4507658    0.2194325
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                 1.7064875    1.6129215    1.8000534
Birth       ki1119695-PROBIT           BELARUS     NA                   NA                -1.1390957   -1.3485249   -0.9296665
Birth       ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.5450521   -0.7653906   -0.3247135
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.6502726   -0.7957520   -0.5047932
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.9997844   -1.1172238   -0.8823449
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.2272250   -0.2854487   -0.1690012
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.5791961    0.5216790    0.6367132
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                 0.0909226   -0.0348636    0.2167089
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                 0.6773192    0.5626171    0.7920213
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.3002632   -0.3780672   -0.2224591


### Parameter: ATE


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1585217   -0.8654865    0.5484430
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0863949   -0.5364169    0.7092067
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.3059838   -0.0852208    0.6971885
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.1674190   -0.0402246    0.3750626
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0560303   -0.1952112    0.0831506
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0423054   -0.1642520    0.0796412
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.2100000   -0.8421750    0.4221750
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.4535185   -1.1196147    0.2125777
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2352432   -0.3948119   -0.0756744
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1970090   -0.3390937   -0.0549242
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3849907   -0.6558700   -0.1141114
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0077338   -0.2883174    0.3037849
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0311409   -0.2301710    0.2924528
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0939766   -0.0335507    0.2215039
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0128248   -0.0895966    0.1152462
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0412625   -0.1344673    0.0519423
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0607323   -0.3105179    0.4319826
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0149565   -0.4326195    0.4027065
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1052605   -0.3418618    0.1313408
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0409526   -0.0730872    0.1549924
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.1705107   -0.6555811    0.3145597
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.1176615   -0.2869054    0.0515824
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0705547   -0.2932806    0.1521713
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0946812   -0.3384822    0.1491198


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0121884   -0.3132299    0.2888531
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0676565    0.0005146    0.1347984
Birth       ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0028641   -0.0097081    0.0039799
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.2500521   -0.7716976    0.2715934
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1158267   -0.1739254   -0.0577280
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1510589   -0.3292986    0.0271809
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0283451   -0.0146468    0.0713371
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0018893   -0.0070154    0.0032368
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0316044   -0.2821337    0.3453426
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0041726   -0.0360514    0.0443966
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0079992   -0.0210110    0.0050127
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0677632   -0.2529831    0.1174568
