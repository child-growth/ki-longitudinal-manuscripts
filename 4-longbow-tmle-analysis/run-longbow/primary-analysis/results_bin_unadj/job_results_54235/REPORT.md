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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country     fhtcm           pers_wast   n_cell       n
------------  -------------------------  ----------  -------------  ----------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      358     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       27     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      179     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       15     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      222     824
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       23     824
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1038    1720
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       69    1720
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      112    1720
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       12    1720
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      466    1720
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23    1720
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0    11639   12524
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       93   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0      166   12524
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        2   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      621   12524
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        3   12524
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       55     424
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      237     424
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       12     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      116     424
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        3     424
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                0      927    1489
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                1       32    1489
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 0      103    1489
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 1        7    1489
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            0      411    1489
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            1        9    1489
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                0    10294   12014
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                1      962   12014
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 0      145   12014
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 1       16   12014
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            0      547   12014
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            1       50   12014
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      358     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1       27     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0      179     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1       15     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0      222     824
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1       23     824
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       89     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1       11     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0      118     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1       34     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0      100     370
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1       18     370
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1038    1720
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       69    1720
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      112    1720
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       12    1720
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      466    1720
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23    1720
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0    11639   12524
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       93   12524
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0      166   12524
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        2   12524
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      621   12524
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        3   12524
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       55     424
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1     424
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      237     424
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1       12     424
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0      116     424
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        3     424


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/6f4f6a19-926e-4246-bf23-4f1412fcbe88/5009f982-1bef-42ae-b985-ea1459423a51/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f4f6a19-926e-4246-bf23-4f1412fcbe88/5009f982-1bef-42ae-b985-ea1459423a51/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f4f6a19-926e-4246-bf23-4f1412fcbe88/5009f982-1bef-42ae-b985-ea1459423a51/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f4f6a19-926e-4246-bf23-4f1412fcbe88/5009f982-1bef-42ae-b985-ea1459423a51/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0701299   0.0238669   0.1163929
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0773196   0.0599210   0.0947181
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0938776   0.0732925   0.1144626
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1100000   0.0485917   0.1714083
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2236842   0.1573480   0.2900205
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1525424   0.0875819   0.2175028
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0623306   0.0480852   0.0765761
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0967742   0.0447217   0.1488267
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0470348   0.0282646   0.0658049
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0333681   0.0219976   0.0447386
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0636364   0.0180040   0.1092687
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0214286   0.0075750   0.0352822
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                0.0854655   0.0581436   0.1127875
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              NA                0.0993789   0.0741112   0.1246466
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         NA                0.0837521   0.0409389   0.1265653
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                0.0701299   0.0238669   0.1163929
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              NA                0.0773196   0.0599210   0.0947181
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         NA                0.0938776   0.0732925   0.1144626
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1100000   0.0485917   0.1714083
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              NA                0.2236842   0.1573480   0.2900205
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1525424   0.0875819   0.2175028
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                0.0623306   0.0480852   0.0765761
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              NA                0.0967742   0.0447217   0.1488267
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         NA                0.0470348   0.0282646   0.0658049


### Parameter: E(Y)


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
0-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0604651   0.0491978   0.0717324
0-6 months    ki1101329-Keneba           GAMBIA    NA                   NA                0.0322364   0.0232620   0.0412108
0-6 months    ki1119695-PROBIT           BELARUS   NA                   NA                0.0855668   0.0580084   0.1131253
6-24 months   ki1000304b-SAS-CompFeed    INDIA     NA                   NA                0.0788835   0.0568416   0.1009254
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     NA                   NA                0.1702703   0.1319196   0.2086209
6-24 months   ki1101329-Keneba           GAMBIA    NA                   NA                0.0604651   0.0491978   0.0717324


### Parameter: RR


agecat        studyid                    country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1025200   0.5529835   2.198168
0-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3386243   0.6595285   2.716964
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.0334928   1.0807070   3.826285
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3867488   0.6871668   2.798553
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.5525947   0.8654636   2.785271
0-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.7546012   0.4764242   1.195202
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.9071023   0.8621358   4.218638
0-6 months    ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.6421875   0.3092258   1.333669
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS   <162 cm              >=167 cm          1.1627949   0.8256904   1.637529
0-6 months    ki1119695-PROBIT           BELARUS   [162-167) cm         >=167 cm          0.9799517   0.7147380   1.343577
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1025200   0.5529835   2.198168
6-24 months   ki1000304b-SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.3386243   0.6595285   2.716964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          2.0334928   1.0807070   3.826285
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.3867488   0.6871668   2.798553
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA    <162 cm              >=167 cm          1.5525947   0.8654636   2.785271
6-24 months   ki1101329-Keneba           GAMBIA    [162-167) cm         >=167 cm          0.7546012   0.4764242   1.195202


### Parameter: PAR


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0087536   -0.0180969   0.0356041
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0602703    0.0036718   0.1168687
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0018655   -0.0101521   0.0064211
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0011317   -0.0077112   0.0054478
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0001013   -0.0013772   0.0015798
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.0087536   -0.0180969   0.0356041
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0602703    0.0036718   0.1168687
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0018655   -0.0101521   0.0064211


### Parameter: PAF


agecat        studyid                    country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.1109690   -0.3408593   0.4105451
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3539683   -0.0689019   0.6095460
0-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0308526   -0.1773078   0.0973838
0-6 months    ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0351060   -0.2604545   0.1499539
0-6 months    ki1119695-PROBIT           BELARUS   >=167 cm             NA                 0.0011840   -0.0161773   0.0182487
6-24 months   ki1000304b-SAS-CompFeed    INDIA     >=167 cm             NA                 0.1109690   -0.3408593   0.4105451
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.3539683   -0.0689019   0.6095460
6-24 months   ki1101329-Keneba           GAMBIA    >=167 cm             NA                -0.0308526   -0.1773078   0.0973838
